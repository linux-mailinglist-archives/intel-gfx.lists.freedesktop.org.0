Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FBAB4866E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 10:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4987510E1F5;
	Mon,  8 Sep 2025 08:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXqpU9Yo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87ED10E17F;
 Mon,  8 Sep 2025 08:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757318918; x=1788854918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X8C87cIv2tIgDSFb1Hh+7ntRzE5bYR0v0JGK46BTDIQ=;
 b=EXqpU9YoZSoqaQfgrAzdG68uRWT7aQTU86JtIxNLLyT8bAbki+Oiqwfo
 iANhctXPbMisFpHMEOFfJge12iSO+e9SaCAk9FNN/dPIzRrheYNj/bMSY
 fJzwrDQFUF/hqJKNdgnKocoNVIqYCDKOG1xNh/x2DS74tp9E/ws0kSWk0
 OUmM63LwhJ8mSdN1TpZsboULZuvPPLSYTIjaS5BnxOcdldOWpjCTSNXML
 0H/GMtTr7p3t+TZKix8w3sDZcqQwiZh00+wKPLzoP1tBUmK9kSdVBoQkX
 VkxUTsCbR9QdiaNiUz/GgfziARGCE31kwG2PAjBOwEHM0tvmSHdUph+Qm A==;
X-CSE-ConnectionGUID: BPhTgAq9TaiOk4zHDH4lkg==
X-CSE-MsgGUID: SVKoWCrbQviBPZ2vhL/XaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="70947077"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="70947077"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 01:08:38 -0700
X-CSE-ConnectionGUID: avuaoHdzQsOxYkoQ0m7Rzg==
X-CSE-MsgGUID: CihKnLrSQryqXk7TKVZFtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="176789630"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 01:08:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 01:08:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 01:08:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.44)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 01:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T006HOJmF616KAxl/qMmNehKkgulOz9Xzl+lfD9leEAk9T4kZLWoXFCa+BSJhbsffHf5Nb8pbMbJuWL1pG46xnC+CF/4KCEn3cLWbSPWEAv/dmrw22URPIuH05CPp5zHYdbFGwnDUIk3i8VmohiiWF6OAzdRGODdrsx2btwNHJBDdUXAyGjD/jZHqjFWtAKZB2KJOoNremWTIlOvdvlorUD1MI0k18pUMOoUHMw81drzqhB/ecxGP8O3PrDGtTtVnGGxK8nX4j8C2/528b3LoqFz639VE+FSeZn/YcOiVo5FbraJwk4b0TOAH1EZadY9NcBVsMLZGlSksmS5I+ZZ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xOwRSKWPLtFxI3YoLnTY4J68Bi8JpIf3mheHLMNYFoE=;
 b=H7+D++Md7amWKnQW49LSr78vc3g886jisyNG0A3ENHT8xvz7T1c6vFUmN3pCWcPUhkWqGJoXibazFw5SoSK4z5YFVrfiztG6sfHTo/WLy9C6rT97vUsOo3Ny+a9Ey9obNG9AHZcBOlrK4/wfXiNPlAF1ctS5Iba6jou4VJdlrJ7dhhWrz03EW0eDm802FPJHs8WOxifkHxcIhRUgX/5bReI7Jj9iwSuIyn1BROCz4EnQN8nedvBGk4atQvTGzvtEMbAtS2K2B8qVNrbWClbQWqEParap19EC/3Fq3I/fy6EgvqRiPYh65V6Tmtq1FpnH6ykEUwVya0qBKRdzQ0+dhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DS0PR11MB7926.namprd11.prod.outlook.com (2603:10b6:8:f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 08:08:34 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 08:08:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 01/14] drm/i915/vrr: Use crtc_vsync_start/end for
 computing vrr.vsync_start/end
Thread-Topic: [PATCH 01/14] drm/i915/vrr: Use crtc_vsync_start/end for
 computing vrr.vsync_start/end
Thread-Index: AQHcH8uROlzbFFOXi0Cf4HG0IjvgKbSI77DA
Date: Mon, 8 Sep 2025 08:08:34 +0000
Message-ID: <CY5PR11MB634476C44335E9867F926E8EF40CA@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
 <20250907073241.19632-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250907073241.19632-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DS0PR11MB7926:EE_
x-ms-office365-filtering-correlation-id: f971a3e9-7bd5-4496-b965-08ddeeaee850
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dchE9reTnz66QThiDbS+mRFRjVxqsml1JwM2b1KzOHVz8mU/96VwbJRcWTvo?=
 =?us-ascii?Q?kBx06227GxP4t1yIDN8d08fbwKOigHasvMULoDNLH0jaK2OnzONAJ0Z9ZD7S?=
 =?us-ascii?Q?trU/vyJZz6wxeWmSLVqh6zoxSltRhxTCIqINZtpncRZ6ivL36rJ6TDWvrGPF?=
 =?us-ascii?Q?y18GtSxA0TYyMRC8qvXawoYgXZiC7lH9aZoYhbRykVTlpGA7S83KDzjf8uLC?=
 =?us-ascii?Q?RdSTCSpBCBt3K+EjE9qcyuhqAtTGCJ6IGRyIcjWSkwqCemy2007AJkMJDeLE?=
 =?us-ascii?Q?Ex8A5x9N84i9Dgb2cFxXXeIunlmkaWw81d+d2m4AaVR9fGaoJcXSLrn3DQRw?=
 =?us-ascii?Q?QDrfY4f+c14PxB3mXJIwUVeZtybaGEKQJg5oMLXuwuPydes2rlJI0/s29+qm?=
 =?us-ascii?Q?Udpg5i8XcsyDUunt0yEU2Tw8bDUhlESJdMK4HKPDNGG2tKKzauQxBf2hVeYl?=
 =?us-ascii?Q?yeJXQc5zJoDYQGgQ709JJl72mHpRU7Ze0qFGGrQm7S53/R3VZacZD1rOwi2O?=
 =?us-ascii?Q?i12xnAY8LVAV4AVyInWdzyvSWNW7ufrao9IsJLZyuVqT726+jbavHeQq1BQt?=
 =?us-ascii?Q?WsPXEw4DenJR18k8lhGeOqPc7lqu8/WkMOjNmdTBA01i/jSik9lSWLLrwSMR?=
 =?us-ascii?Q?leklDFwudmE++YosRlF2o9v3fxZ/Ti96vNBlCwVfPT9dyGbHu69dGnxFvplb?=
 =?us-ascii?Q?7U6tCwqRXcGBZJT+vsljdbqYkKFUfvTS4HEHD2g539EXR7RQZNFwmh5Mwfik?=
 =?us-ascii?Q?4KJK0Xc3N7QAkt+3+7FV1Uf9VRlJLqzbSH2UMLrDXycwEyPA9PBGYrYwQpsd?=
 =?us-ascii?Q?C3uZW1ToQf8yD5eJJHyHNLY/HHeTvYzLpau9nHvDTPE6njrNwWutfaZUtnOu?=
 =?us-ascii?Q?AB6cSQXaJ1nZTiMx4HQx0DupRi9fgViBrMA3kqA8CFJDU3L1YMxR8tK+2ZCv?=
 =?us-ascii?Q?oVr/l16Oc2Pq00gKPTHKFMeVbY6JPHb/sNKRz1samm5flOeOBd1t/93wWAMi?=
 =?us-ascii?Q?5oP+F2P8sdMVCdoqGl279Pu0O9S0wDrr8kr9zS9WcKjY1r/lwjYdIfvaWwEZ?=
 =?us-ascii?Q?ylk5ffUaN7uOGcV01gbUzExfMjdtc+gz+J7B0SeZmycLVV/0zEPlHgcSzmP4?=
 =?us-ascii?Q?iraJoJ1ZLqAzBbzr0PiO6WlJJY0fG3itTIGXTvQCxXi06OR6OQLRHlUxJ4h2?=
 =?us-ascii?Q?Vb4raT8giUHTpVLOZ1wseotVbtS32X7VlwXpIZWtu/OrY3gJyh9P8Br7Vf4e?=
 =?us-ascii?Q?Y8EdJeNvhrN86ihNyKFZzPnOSui2xvIQglBtL4FEvQ0QLTWfrHkvkQwwyi45?=
 =?us-ascii?Q?f2h7V9xzPXxVkDUc+XRsKrVokl1LIvBH1PWEc2Sg6z7qaWxJKMKUGuVgyCCy?=
 =?us-ascii?Q?3kC5y+avjCcPKl8OApIQ543v+q6+ISEVfXzIPfK4MgnMKv9ynrpahzUSy9V6?=
 =?us-ascii?Q?RT0YnxPIW1Kff77NMIB7eMO21ZdoKon5TMvyUtfOhhIzZsnEc8KwFw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yJtpWEZwSz/YRfHlEBmSnbrmreSZJZBhznZrGpdeh55/Jd7fc9uydMEcKC3C?=
 =?us-ascii?Q?V4Fp9OQ/MAYMbxEPg08cpsvobme3+KvVf/GbTEdv0hcPv7faepOGXZSXRe/J?=
 =?us-ascii?Q?SSpDjMSaSRFqlmQdobITJsl7SyBZ6vMU2CMEQ0fSN8j9wEoEfoYDMWS2C8z2?=
 =?us-ascii?Q?SVsvCbOvqwkR8+yl6GON6qKWG9empKpumViPUyL1N2gXeJGn6yeCsF45vAPD?=
 =?us-ascii?Q?y7MhVm5rUX0mpIxoIddu8fJsgpHhIn9tna/8XdygbL1madL1PcXJD2KhwBfd?=
 =?us-ascii?Q?JUgrlKCqFU+IUoY6n2m6LZmFV1r136qwf3sEk1uk8PioKEvzi2IKTCDiqdNu?=
 =?us-ascii?Q?7PKONEqfGrGHJuWl7LotpngUmZr27xtF/LVIsHWepbDcSy8wpnmVgcU0TzlC?=
 =?us-ascii?Q?mPwN+Wj1FIHclGuK/nM8p3UdsIer5it4zDAipKo/Y48NaKtBCqQdzNCaUrHJ?=
 =?us-ascii?Q?jC1ULmwbj12vG7ZsHe5uNeWpwBhY+Q6gP0M4hl5IffpzKafqge7jqxUv5IUd?=
 =?us-ascii?Q?DGuzbfobbiSiFEsKTJghm+ahfR6UWlUXIRmWEWPDLsLT6WQ72zVBrs6OAeTq?=
 =?us-ascii?Q?MQdi9q1DiwQ6JpC0qOTwhrMrqAMngbh5vA5KKMldu8bh8JmvrrV8JC66ofAL?=
 =?us-ascii?Q?3jzUxNpAuZoEzfuHqcGr/qbGuhdCwFv4cFrs6nUwPLqasQraPe7JvUvk3cNx?=
 =?us-ascii?Q?51Q3FE41JbkcsIyZ9A/j+iN5uGJUqCoF9JcX8JGwUoTGwDX/gxAhcR4AAx9S?=
 =?us-ascii?Q?mCZMhKvo6bxZFKtFJYTWYlq5xznjshEBQw46gnp1kHA9Gd9Cfyhahfumowoh?=
 =?us-ascii?Q?rlfn+eakZfc1vtj875PW2KnY1KWd4KefMILD1rbFir61lf+pNNuWpZ0wJdb/?=
 =?us-ascii?Q?M8y3dZs7plEMjS6KFW0+v4x/5KkvPGiVm0imjh60s3q3QHkGMqpQvQCD9g3R?=
 =?us-ascii?Q?Oo3y2W76kVUcMl0FD1qNugknn9b1ODpUKzZ+gu1KQWpPHPbIE3rj/kGxaqVE?=
 =?us-ascii?Q?EO/Teopy2O1hAYq5GRkOohEys9cWORqKjTAE68HnkpQfWQRuPgto77DT5SXL?=
 =?us-ascii?Q?bacUVN4tm+v09Fd8hY4Ws3yCKmXpdo3d17ZjgvoWkrTT5jw6/51j4WYrNd6d?=
 =?us-ascii?Q?hnAkuOl/2fVAgsMfaP1w/VTg57k/6O1faDIJXlNp8/SJ9w6XfzeRMEHEdITT?=
 =?us-ascii?Q?MyT97RzFmOtNL4TbYb2CJmiKY8lAco518Z+5F9KPEg+D1lkS6tASUDd2NE7g?=
 =?us-ascii?Q?4k5qLw/Cv0puCqwj2v1jSLmrMNpbPx0GKEFGNwzKdwoQY4A/tSaTrlqxyaYx?=
 =?us-ascii?Q?nb+lcbgXRSwnSncExwZt97b4ZGuB7a8G0z9uNQl9Tykk7ook7ePtjiZU/HBP?=
 =?us-ascii?Q?DqRYBL4tR5Zcdqd1PmNoC5PSCdtpg5dwW5tNDolsNJ30rH5tc6as/ZxaRbM8?=
 =?us-ascii?Q?v8DwtBgYHhUcBtR2nghScT/U6hDImKcpPRx7XQPdN920Vf6D3E/IcuaVjZca?=
 =?us-ascii?Q?Rd9nJwR7DFh/q8+RudWn18HcCKL7R2mUd03aQiXWmH2FCimkT0MFIhKScxuR?=
 =?us-ascii?Q?FBKdQe7+DsFjQJaw6d3/kU33Yf9fjKvgpioiSriS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f971a3e9-7bd5-4496-b965-08ddeeaee850
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 08:08:34.5350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U3YFPqyReQDOaV6L//j12m7EBTFalfeehodC3p77sDHtVFOzeuc92x89RLDzSEXt9TCv3p9EKQFIng1NJN732A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7926
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Sunday, September 7, 2025 1:02 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 01/14] drm/i915/vrr: Use crtc_vsync_start/end for computi=
ng
> vrr.vsync_start/end
>=20
> Use adjusted_mode->crtc_vsync_start/end instead of adjusted_mode-
> >vsync_start while computing vrr.vsync_start/end.
> For most modes, these are same but for 3D/stereo modes the crtc_vsync_sta=
rt is
> different than vsync_start.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..266cf5e1859d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -406,10 +406,10 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =3D
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> -			 crtc_state->hw.adjusted_mode.vsync_start);
> +			 crtc_state->hw.adjusted_mode.crtc_vsync_start);
>  		crtc_state->vrr.vsync_end =3D
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> -			 crtc_state->hw.adjusted_mode.vsync_end);
> +			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
>  	}
>  }
>=20
> --
> 2.45.2

