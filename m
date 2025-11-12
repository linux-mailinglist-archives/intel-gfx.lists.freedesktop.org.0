Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE03C509F5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E522D10E695;
	Wed, 12 Nov 2025 05:32:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKIIiCPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18D110E695;
 Wed, 12 Nov 2025 05:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762925538; x=1794461538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2YYgf1Z2e8WxLE29bZbDCvfEABF7YvNNM1MnP6qH3dc=;
 b=QKIIiCPIPzf/a2XEjhB4QBTZm7fi8RNskWMfwApkhpiIBk85IB75NxYO
 RZQ35Rrmo5rLn14c/gyQZCnduQWMLmP/lw8TusO/9YSHPMTeX7t3pqySv
 5D9Qj7u8P3wM443A4i01DvMt/mL8l/HGOXJWIaCzNfWz2pW82B/wLQkqT
 hzpWAMJkYCLaQ7GjMDcxXRseBNaA5RH8zPuQ9jbq7QyRPJGpe80cUsanI
 EE91N7q678TIETsQ9KDoBJTH404mIyhJaNqkFktI7/Hprn9o7p4ewKBhx
 OeODhou9/UInTi1qkbfVh+nedFu5Lkk0QNG5D4XUqt2h6YHEmv0yExJR/ A==;
X-CSE-ConnectionGUID: a39dTojXRkCKRG0qMyY6JQ==
X-CSE-MsgGUID: o80wcOwPRfWOu3YbltSnAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="76331663"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="76331663"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:32:17 -0800
X-CSE-ConnectionGUID: j3iKNYtDT7GnLmtgDrtJHw==
X-CSE-MsgGUID: yq+Sd1VTTfWepvYe+o4Odg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="194108088"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:32:17 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:32:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:32:17 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:32:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bkOqwJHb6k0oENLBJd/dQ84lp3Ej0qddCw8p7UsS/Qr112owP1Uk1MaQDUVEBrBrPrxOfz0r1oxxAkc1etwXgUtmj6CSuVbeeuyRASnSkfYpscaqVNcO5QAJby2cdaLFyfQp3UVK+AR/t4tpzeg+9/hStersS1CA6Fi+thhZn0y3NZ86IT0dHZVYPYeIculGWTnZEl3uztsq9MjNg4S90sO1tLQbNoAK2bnnVCTlM+eAiJc00DYJGmfAGggyQ7c4QFEQN+EkxI/upU9aG2WCpeo3ZiLxQJLJ8zzX18jiycXhdCnBCtxxYFVjO2cQKtbhMlugG3yO5RXllbLCQcSyJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/HUBdbfd/xpaCbeHmQLMI4y3h/N2pt/O5NdQmRbC6OA=;
 b=IpmeUHqoyCUkz4Y8e7km22Q35LFHuhlYa9XdFxBljoUn5Lg1/gYPRYDKJM0BIzztpyzDqP5ll4qXCoO5ZGvM7QRr20ejZz8WXisNqLLfBwfRgQosQMB25YtcSCnNLPgmc/AoHYi9KPcumP1eh0Gb4gAXfUsbe5Iz/dmUeUOvVgbjTpy/mNEJxHzEO1+2iR2yMVvB3USioBFg+zH3/18mWFmiWDSKXpGfKbzLOJDlalYJ+6uDYgC/ZlykmUkfc10pXjTX12Fn4vablV1hoBr2ceN1gPikOAhRWLcGy8csdMdnl3d1HKO+v06/58VG9xINLGphBnAo0i8rHUmVpwF2gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CYYPR11MB8406.namprd11.prod.outlook.com
 (2603:10b6:930:ba::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 05:32:08 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:32:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [CI 29/32] drm/i915/display: Add .enable_clock on DDI for MTL+
 platforms
Thread-Topic: [CI 29/32] drm/i915/display: Add .enable_clock on DDI for MTL+
 platforms
Thread-Index: AQHcSlaK+IZuVlDmREetaRntt/7XdrTulniA
Date: Wed, 12 Nov 2025 05:32:08 +0000
Message-ID: <DM3PPF208195D8D25BDF977D1949D37CD37E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-30-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-30-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CYYPR11MB8406:EE_
x-ms-office365-filtering-correlation-id: 737395b2-f18c-40c4-4368-08de21acd2b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?MlAfPnB0sKX53gSvwgf7xcqytU17Ju5lsOyWFCMEF5C9FzJGKe8TAWMhGFz0?=
 =?us-ascii?Q?cbUAZQDg7heisaa2/PnIGYoi2SnipwbHpF25bTnFsMplTggOwGiyJUXK82ai?=
 =?us-ascii?Q?iIXK5Y4VCzFsn0hregqGQDP1ZbtAw2910l+43JqnPVYdSTvKpZ3x0cqf5YjI?=
 =?us-ascii?Q?9CWHSrbnUp/5HchqgFHRDVXjodwxRsLdkqeAn/Fh2nFD2aAhmNnGWupIrodj?=
 =?us-ascii?Q?lLmEO+Fq+9GkPSClWlOZDahs+I7AVYOeotjB+7VHm/vkuX7fFmgbqEmxx91L?=
 =?us-ascii?Q?P934wJq2eP6pc455m7AMRP/PDd+RYM+Kf7RPAsIMP0etmRcmSjlcOb3VS3VK?=
 =?us-ascii?Q?3hNQ3C9Qyzhh3J213rDpA2peMsXZ2vwTmQiukyaVezjwRBJ5wWauO3v5+s9n?=
 =?us-ascii?Q?7Ziw8J6yTAGcoIL7funeblGLXWQer65G/j3SLOfqHygI9XgUyJBMvxp27dZd?=
 =?us-ascii?Q?f6mWaA9mMYgbLRYgj3EQdJYUVVPE1JYbZfieTXwu3EDwZvs1rFsdd/SoWEXw?=
 =?us-ascii?Q?JAHPG6JYclsC00ofXmwEEIhaEoCijD9SE+XFIBpS7HeTZ32ptWdRhCxOi9T3?=
 =?us-ascii?Q?MlWuBlY5vVRwM6TZ32jcMskejVhgNZ4KeO2yFh7wx1AZ5wdEqs/Y16LJpdae?=
 =?us-ascii?Q?OkOFzBVuZwNEG01pcdv1sUJi3dVREhicTTQYAlDFZ5tUj73egz1nfTwO2k8G?=
 =?us-ascii?Q?fpvjC9jCZNCGN3yAIKb3cZi3j0UPmZ8njTSsGcP8ZS1JJogWrDxOgFBSlkgB?=
 =?us-ascii?Q?H7J2TqgcyDfv18Rc9L9dewB3msIzpjOYIeXw5NWu++r5Z+Mx7VYlg447nd+T?=
 =?us-ascii?Q?J7xxSqilRcnLu4WfF3rAlidivutRPDE2W0CB1s/ybdmAVho5uCh6hptaOnRA?=
 =?us-ascii?Q?wG0UYNPkkQC7KQz+kiVhTeiBvF1NFVPgkvzXyv2Z7j/TBVGQNnK4X5njuFIl?=
 =?us-ascii?Q?L34bZ0NwArGxj5gG8nk2OatrP2oNX6Fs7lfx5eftF0ADfAxXu+4shflkEp+B?=
 =?us-ascii?Q?jRzYgDc1ijYR27vwpYzJWXdwE84c5VSeOv21tkat62021b+BHCcejIn3VFIF?=
 =?us-ascii?Q?8+8+jMy5h2B/I6gisTcOKpxIF4N1OUVP6Bkx0nf9ds1re7fD4XP0BMjL8r5L?=
 =?us-ascii?Q?ntSoBpp+HKcEqZfyzKdMXFpCNzqfAyR9Knpn5IkInrRBXaOcl4PhBryZDuqb?=
 =?us-ascii?Q?Zyo5J4fTBvb5wSXxk1pG4jjw6mNu3Mu+W8e6hGBtycY3kNeN1GBIKs3BHKkk?=
 =?us-ascii?Q?A1SzcRyHcpXYgNYdG5UMpOhT50XvnfUGaKvxIqktopz1OOTIhWluI4bUxo9J?=
 =?us-ascii?Q?711rWxhbdUIQBUgjaBGijrk6UdIOe4m2M7t4pQ1K16b2jYuLA0NVQCTOF74C?=
 =?us-ascii?Q?XAAfk8Bp5LDQNjreHjlTKGiMmWSXh8Rkf1uOvxnhzskdUaTsqN1ltuwljeBB?=
 =?us-ascii?Q?qn6ge2arpkYITl09fofsYo7El9honvQpmNtv0ZvFRQZiw9z7pfCMM0NfHW33?=
 =?us-ascii?Q?OIDiu20eDLMkVx9hCQgoMLC8WfR2VqH6A/cX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6HzbtmSez0lVpsluzDPJGfam1ELlDQ7VxBXUfBBmYMV0UfPnzee0utyMd0fH?=
 =?us-ascii?Q?8M8FLg9EZ00CqKu/a2G+0f3cMReykThyFPtBtxFHtnR18yJs9ys9ZEnjxkb5?=
 =?us-ascii?Q?pSR5g87Pe87AEH6hI56H/J3pqwI7FzmUBEGAlSOISvb/GxpEQ82jiuRYHjSv?=
 =?us-ascii?Q?JjRZR8uSMIXfrdGZPv95dRtXMGamFoQcKiucVhLcAXWPyKS6DwQjN6L4dJLx?=
 =?us-ascii?Q?NsEJFREIwGAhWxrGfJVJNGu2FgRfKTFGOnsLkKajDFC9RNeye9L/mYwgYXlf?=
 =?us-ascii?Q?edWYv59e7wP2DcfpPCHqC578e0HyU4N3VWPccXS/cEU77wLyHdIbCknh3HDx?=
 =?us-ascii?Q?UI0AIt7pUZ2Z+qkCoRaFqMrXDreQQTz9L/YjgqTKrFipDhwgeDspUddHnyD8?=
 =?us-ascii?Q?ShCygTRRjnSJAbbdEBOTLZSVC1/H2x19Myr6Ybon92IVzP3IY26tzFyUedf2?=
 =?us-ascii?Q?D94q8PoOEzfbIwqXoAaontZK/qqC/f/xDKP4vIk0gRtKSCgbvQbKOpOqZhae?=
 =?us-ascii?Q?g73mPJ3+RjrYGZ5cy7eFo4VD7AuXsqEyPDvQ5QKhP7EPKtVlyS01E6Mq+M3X?=
 =?us-ascii?Q?JIcCJrQ4aI5JwdSiv14mogKUa73gGA0SOsCDsRt7K0mpquJSkElHY6lBqk0j?=
 =?us-ascii?Q?vHwDdlTkNHAERkVPGOR8MhrbvQwYhIr2CHp9woU9/x5EWuCr/jB57m2yuMtl?=
 =?us-ascii?Q?ngdSWoG97CRCDFAaVo4sM+WCzDBSERTsnsJz5pWMjJnnIL+AneyuyilD6/Ai?=
 =?us-ascii?Q?qIE07QwQ2Lrn5xlkzUgoo61b7rsBO7OHCv8SMq4vnIzWp8SKgCv2eOqM3IQn?=
 =?us-ascii?Q?iEqDIBFvOSLb3dWXfYtcTtEZQp3aWCn6iS7nj9SfkqDt9u9neX1eEEHpxPKI?=
 =?us-ascii?Q?y3HxV6yjo9aM/SWQcgbtJCsriMVucSoneX6ADKjoghDx77sw7CxrXtx/JkTX?=
 =?us-ascii?Q?MnvVRP1Lgrs9Mow2NNghv+QyBLFh/8gGIKMO3ZypPZf6Xpbdov7Rw9vB3RF9?=
 =?us-ascii?Q?dSA6cUf4hW6Ypd3EBAFwo1stuGdLn1/0/pPf5W3JnWhr8n09KXYnA86aBHqs?=
 =?us-ascii?Q?1dMGymSOb/SoAcJC9xrS+TZX6RZd3zFWoK8TzCVzqPF3nNtWhgW2NnaiZ692?=
 =?us-ascii?Q?+/SUP18XzgmVRHNmqa8DPsUhem/MxtDeyFdH+5w1jO9LfLEcn8D1yMt3qhR2?=
 =?us-ascii?Q?8heU1sLebkUGrwmL4/aBetRglnDCM7OgE5CYlauDe9fFC9Wern2ble2DVGfV?=
 =?us-ascii?Q?DYc3VZrs7JCYxwEfqf+kdMDXz78FJB8vWQi7Z+RoSjdmFAj/jwsoXrQR8kK6?=
 =?us-ascii?Q?1Td9FkwLIfC178c7tDHAjFcNBkBB2Rf7YZARx79/5Q81aYN8LRy4ZiM7O4fl?=
 =?us-ascii?Q?4JMbvhjuZryqUu1oL+L+Jr9hr6iSkDHjEbipxSc4C5y0Cg+6mlCWfBuSNqjQ?=
 =?us-ascii?Q?HNqlbrj9x3eVnJY5f5bVWW9YoUpWOc/AOAirsLQ/4BEqUOq0H4jlOczw3MD0?=
 =?us-ascii?Q?DT/hi9zagliD54R53FMMd8eZzYn6NHb4/ysybWZOpvFXZpB+NIl36AdQWYQG?=
 =?us-ascii?Q?Osul0yqcd5Me9ZSLuJfLh25mpaj5lfGPt5bINUJm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 737395b2-f18c-40c4-4368-08de21acd2b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:32:08.6199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RJrJzNfTTtnZeFLOzIAXEVo5ioPBKtiFhjQkDA3tbtwpZwYnqElXHMmyIvKOQh8edARVGD8MYH8lO/MH8YUKFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8406
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

> Subject: [CI 29/32] drm/i915/display: Add .enable_clock on DDI for MTL+
> platforms
>=20
> To enable pll clock on DDI we need to move part of the pll enabling
> sequence to a ddi clock enabling function.
>=20
> Simlilarly, we do the pll disabling sequence.

Avoid using We do , we need keep it imperative with that fixed

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 34 +++++++++++++------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  7 +++-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 ++++++++++++++
>  4 files changed, 58 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 15ba3522b5b3..b82a1f891eae 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3301,7 +3301,6 @@ static void intel_cx0pll_enable(struct
> intel_encoder *encoder,
>  	 * Frequency Change. We handle this step in bxt_set_cdclk().
>  	 */
>=20
> -	/* TODO: enable TBT-ALT mode */
>  	intel_cx0_phy_transaction_end(encoder, wakeref);  }
>=20
> @@ -3367,8 +3366,7 @@ static int intel_mtl_tbt_clock_select(struct
> intel_display *display,
>  	}
>  }
>=20
> -static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
> -				     const struct intel_crtc_state *crtc_state)
> +static void intel_mtl_tbt_pll_enable_clock(struct intel_encoder
> +*encoder, int port_clock)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder); @@ -3382,7
> +3380,7 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder
> *encoder,
>=20
>  	mask =3D XELPDP_DDI_CLOCK_SELECT_MASK(display);
>  	val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display,
> -					    intel_mtl_tbt_clock_select(display,
> crtc_state->port_clock));
> +					    intel_mtl_tbt_clock_select(display,
> port_clock));
>=20
>  	mask |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>  	val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
> @@ -3423,18 +3421,26 @@ static void intel_mtl_tbt_pll_enable(struct
> intel_encoder *encoder,
>  	 * clock frequency.
>  	 */
>  	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> -		       crtc_state->port_clock);
> +		       port_clock);
>  }
>=20
>  void intel_mtl_pll_enable(struct intel_encoder *encoder,
> -			  const struct intel_crtc_state *crtc_state)
> +			  struct intel_dpll *pll,
> +			  const struct intel_dpll_hw_state *dpll_hw_state) {
> +	intel_cx0pll_enable(encoder, &dpll_hw_state->cx0pll); }
> +
> +void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> -		intel_mtl_tbt_pll_enable(encoder, crtc_state);
> +		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
>  	else
> -		intel_cx0pll_enable(encoder, &crtc_state-
> >dpll_hw_state.cx0pll);
> +		/* TODO: remove when PLL mgr is in place. */
> +		intel_mtl_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  /*
> @@ -3550,7 +3556,7 @@ static bool intel_cx0_pll_is_enabled(struct
> intel_encoder *encoder)
>  			     intel_cx0_get_pclk_pll_request(lane);
>  }
>=20
> -static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
> +static void intel_mtl_tbt_pll_disable_clock(struct intel_encoder
> +*encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder); @@ -3590,13
> +3596,19 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder
> *encoder)  }
>=20
>  void intel_mtl_pll_disable(struct intel_encoder *encoder)
> +{
> +	intel_cx0pll_disable(encoder);
> +}
> +
> +void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> -		intel_mtl_tbt_pll_disable(encoder);
> +		intel_mtl_tbt_pll_disable_clock(encoder);
>  	else
> -		intel_cx0pll_disable(encoder);
> +		/* TODO: remove when PLL mgr is in place. */
> +		intel_mtl_pll_disable(encoder);
>  }
>=20
>  enum icl_port_dpll_id
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 13eaf6d280ff..13fa001129f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -17,17 +17,22 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_cx0pll_state;
>  struct intel_display;
> +struct intel_dpll;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_hdmi;
>=20
>  bool intel_encoder_is_c10phy(struct intel_encoder *encoder);  void
> intel_mtl_pll_enable(struct intel_encoder *encoder,
> -			  const struct intel_crtc_state *crtc_state);
> +			  struct intel_dpll *pll,
> +			  const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_mtl_pll_disable(struct intel_encoder *encoder);  enum
> icl_port_dpll_id  intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state);
> +void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state); void
> +intel_mtl_pll_disable_clock(struct intel_encoder *encoder);
>=20
>  int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 870140340342..d0bfa7f397dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -88,6 +88,8 @@
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20
> +struct intel_dpll;
> +
>  static const u8 index_to_dp_signal_levels[] =3D {
>  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_0,
>  	[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_1, @@ -5232,8 +5234,8 @@ void
> intel_ddi_init(struct intel_display *display,
>  	encoder->pipe_mask =3D ~0;
>=20
>  	if (DISPLAY_VER(display) >=3D 14) {
> -		encoder->enable_clock =3D intel_mtl_pll_enable;
> -		encoder->disable_clock =3D intel_mtl_pll_disable;
> +		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
> +		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
>  		encoder->get_config =3D mtl_ddi_get_config;
>  	} else if (display->platform.dg2) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6cc85a9a781f..8220ef69f685 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4391,7 +4391,32 @@ static int mtl_pll_get_freq(struct intel_display
> *display,
>  	return intel_cx0pll_calc_port_clock(encoder, &dpll_hw_state-
> >cx0pll);  }
>=20
> +static void mtl_pll_enable(struct intel_display *display,
> +			   struct intel_dpll *pll,
> +			   const struct intel_dpll_hw_state *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_mtl_pll_enable(encoder, pll, dpll_hw_state); }
> +
> +static void mtl_pll_disable(struct intel_display *display,
> +			    struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_mtl_pll_disable(encoder);
> +}
> +
>  static const struct intel_dpll_funcs mtl_pll_funcs =3D {
> +	.enable =3D mtl_pll_enable,
> +	.disable =3D mtl_pll_disable,
>  	.get_hw_state =3D mtl_pll_get_hw_state,
>  	.get_freq =3D mtl_pll_get_freq,
>  };
> --
> 2.34.1

