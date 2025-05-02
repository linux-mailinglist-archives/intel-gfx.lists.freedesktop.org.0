Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2663AA6DE5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6649410E173;
	Fri,  2 May 2025 09:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DzxMeAn6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE83510E173;
 Fri,  2 May 2025 09:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746177578; x=1777713578;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5NuPgTHeasHP/ZTLvRwZTrOTD2kinUdwosV88JDqBCE=;
 b=DzxMeAn6c+0nO+KlVYk6XStqzZY/1bIoHAihi2Ih71XVAOIU4FCqPDJQ
 //5sJtFXjCs33tTBQRX2N48kMH/hd8Yq3XPSyW+vUyEVYBQ+/ojbRpY2e
 GWT6+y1bAi8HbDj2j1JEYlghzw+wOrVnFshD6oswJDii/LgvyiAD9sz9G
 27mvjrrXb1liZs4gC5ZvF1fUpKSQLdvQxGiPatLRIRztvkfWMhuWXHF85
 3m/Y71robzC5C5N3CIHHFKHUcYG25KjZK4O3vq8c3P5b4BjRIX5nbdog9
 dRjcJxGnqqu2dXSaS9l7Po3H/Twynu823GEjrN+RybpxfzZCCvsYWwC/t Q==;
X-CSE-ConnectionGUID: NEoKMCftQvmex+kXjf0kJg==
X-CSE-MsgGUID: cfQi1S18SMCVap/cfJmAKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="48000431"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="48000431"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:19:37 -0700
X-CSE-ConnectionGUID: GxqgVPygS9ae4cdzSG0/4A==
X-CSE-MsgGUID: BhSagcB8SqaUsPQBpYjV8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139741972"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:19:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 02:19:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 02:19:36 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 02:19:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZEA237fcJi7wZip0ZrQ/n3lxSBluIadGhzIsM8VF83J473f0Z8DxI2g/7mCJoxbp2OIw+f0qn4lwNwaFtLbRCEMM/OhzagU2Z17JeToe8JUTN69BRO148DANi5xtx0Krl7msGJuoKaRKBRwk6tHrTgXA2WgK636gCfksD8s7Mr5cSZol5eJWwdUe1Op/QNsaOFfSpUdjXHIIPWtCc937czZuCF9TAL13HiSb+hrTFDG2zswlNcmknb4n3c/c1F4L9eoqyXOGbgBOAMKsIHpmhTsrN3rpqOTEvJ20omveuhEtNwvpWWWznEv0jibm/nloQoblewbVtBIt2CtNNpmkXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dWNH4HoQlTGyZvohjr2zN9ujVoPSTAt5+3Mf7Dr+hww=;
 b=FxzW8x5ePApzGkY0IWdDmaBmMMYYUpe1TjbvBGgcptlZOa5gYFOzsOWuf3LDRCu5uJJcnddX26ZNdDOssw7llE0QbKR7dGcL7jnscWkjsg18gqMyDr5m9cJukZpUj1HHqiGxF3optJnrO1BD539MCwt7Ba7x7IWU3x2Wf8OBo50c4X9bLGHmcJIdGGCsvPiufgqWQbKBnj5P+IT1ORMqnFT7K3x+pSpjO26NkBxGNPdxhDmufVYadT1kr2Afg4DG9wBKXIIT36ix+kzAZ72A617qCHDnEOnhjmALTqhcbrm0V+YrzPOBCrz+lQv5fSecLQwa9SxRmsY5mxNoA6BtoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6971.namprd11.prod.outlook.com (2603:10b6:806:2ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Fri, 2 May
 2025 09:18:52 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 09:18:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
Thread-Topic: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
Thread-Index: AQHbtVPcEOSans61YEaEeWj9LixJJrO/GVLQ
Date: Fri, 2 May 2025 09:18:52 +0000
Message-ID: <SN7PR11MB67506BAD789777010E86BFAFE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <bf9aa8e44e18eef41e3077a2966935b4e2649b62.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <bf9aa8e44e18eef41e3077a2966935b4e2649b62.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6971:EE_
x-ms-office365-filtering-correlation-id: 6924abd2-8868-40ca-1c4d-08dd895a5afd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8jFZxGCefUZ9TjHoL54OnzTyFUOxOhlZdD/6Nxclp7+g6CGsoVaa4fErW/2r?=
 =?us-ascii?Q?u5PUe3gl6QSzrRQGAa43XoMfUhBewzYrGPxnXSpYfmuiE9SzlI41u64GgjUT?=
 =?us-ascii?Q?hHiNqNShvFEvcL27kxTvp8y0oJwDG2B4rYjGc4/aGwKEUdIDliG4TuoUhSUz?=
 =?us-ascii?Q?i0k73yVFrWOMFOB/LkjHs2CHdBfgBeNnzykOftENEDgBWuI01v6q//7c7M2y?=
 =?us-ascii?Q?PrMLLLV7BlIHNHYudzZCASAjWw2p0DiMK7dXVW2ILwNV2CRoZUfixrdA03sH?=
 =?us-ascii?Q?3bzZnqu+XnxpYHEiJms8U3MPkf8oM33ilMAPiwX3mYsuASmCmZaftz6lp59X?=
 =?us-ascii?Q?4hmmq66xI11HAA7TT9vWsDDU6eGDAYRrOYSehvvIPNeUGNvfBUNOl91m7npg?=
 =?us-ascii?Q?6z3qD8/fEB174JbbsMBInldly4XP+lxay22e9HY27NM7YrJqJrelWUzWPmIE?=
 =?us-ascii?Q?gdkzkBiMsoe+8vQuD36bv4NnRD/LWNc9iOR29djlK4TYdIFkB4UcURv6FwEv?=
 =?us-ascii?Q?zKMH2NZCJJv5UHi7qMoIig5by/QvSz6kKkCnF98hh3u4pIyWyEHIrNqinNSE?=
 =?us-ascii?Q?xjR6vOfYdvx0E62VkQwpQlKLyDq1bLw3dsh+pcQJp7x29TkZcIbWm3w2s2ht?=
 =?us-ascii?Q?GyfzVqFQaZYy/lOrVk1MCcl3D+UQ0LTUSFzig6/MuqjChFDDpavskklaL17n?=
 =?us-ascii?Q?cWNpJzddiPtl+IKMHMjrcwH04XHD8XKamRIJ5So3TqOv3yTU98XM/DR0tcrC?=
 =?us-ascii?Q?ndSnG6atnptpbTrneV+7j6/DYkmjyje58RIZS1G3qzgInmTeK1DcgRiPcDGd?=
 =?us-ascii?Q?W3x9pkkzDLyMWDCIzr3Ytd8Ko4oTzkd3FgXk+L2TYXrhln6/tOtryazAabn2?=
 =?us-ascii?Q?pD/x1NvK1CgySWUxKuuGuBXB9FOg7CtFwJ7JR1jeOV9czmV5g3iOQIhbuqIa?=
 =?us-ascii?Q?w97AHJ4CK+22ybOjcHLc9RxuR5ONJ2YZto/p744FDd3yAVZNGNTb3dF6uDrb?=
 =?us-ascii?Q?eERGCFXyoGmTvIa1zuFnvB8DkKYjO9BW2stbT8juYuykxu/q4Wdlf/MFKc1j?=
 =?us-ascii?Q?271GdWQM+FYLkHhUUVFUKMb2zdYBU1Zbe0XkrJly4pXiNWdqvpQLuxULTRu1?=
 =?us-ascii?Q?yNZNzDhC/Bjav8sZFdvYOuvfcHpEH+IwA2uL+rAiE65bPr35YGPL2UhrleGI?=
 =?us-ascii?Q?N9O0rX8xHthbvRyIrdTwk93Mb8MirMJHSt7W+3yPa0qZDOiSm2L95F1/e3uP?=
 =?us-ascii?Q?uKnA+pA5EoqsrrkwXCjLTTjQFgx/SCLpinz1L2aH0v503qnZ2ovEkzPW15pj?=
 =?us-ascii?Q?IjEtNIsL0nMpi4SSyPpNK9LaBd6Vw1vhINfEoMKDz7U6tLsK1fqi47eEcdmz?=
 =?us-ascii?Q?Ib4SkRTjnHZEKQKYwzVes77J/gblgKFl9WzhQXyBdYGDIkOYTByeZ3I/uO8m?=
 =?us-ascii?Q?qeyoWQ7mtidvhRyrs8QhybFgY4cL+VCcNJ/poJ/y0plmHR11E4Y9ww=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jPD1Z4bDO82DQ6g8P4zEYL0FbG8AeELpb8J7UFLAyg2k67twNrzpOi55elnZ?=
 =?us-ascii?Q?gbOVDybLeIsjHSIukW+ytcWj4lMAjoaIt0CZQMQpGAnrrpK1c/z1c+Je2REj?=
 =?us-ascii?Q?z+gu1E9ua5JBQBuFHMQBW49JBl752mi/PmGzKWDtVeB7X7YlFv2UWyDaVFP0?=
 =?us-ascii?Q?E8pCajxiErPFekoPpPHG65vW2NKqmCt7zKNJSWFX6afq4tPEzzy6FH+r4xWK?=
 =?us-ascii?Q?rUK4tWUBS6HiQFCT5fUBpGzVwPnY8PIt1lNK7b2tzLVLDGkh+MZYucETnvUs?=
 =?us-ascii?Q?Jmqp5Ijg/pqGrpM92+zGqitL3fyuRMQBZTkSviOCOMZQXqXbu8CE0jkEFts7?=
 =?us-ascii?Q?UQLpoI7r7Mi1HXTbmQKjlJ7V8JiGa7Qr87aUfPdDKuwi7xGiYrks0vkgPDgA?=
 =?us-ascii?Q?29lJRmCz5jMOxP09XjdwV2/GKwONV1BtBNVmfYbSWBcipP6+gFj08tn3ogFg?=
 =?us-ascii?Q?gv4DU3az4+AnHSH+gpkO05uePtPpNn8MjxYhGlWWNOTwZrRC1moeVgW1mM80?=
 =?us-ascii?Q?B8bHw/gnyBUN/14BoHZABv6DbRCBhvYJxqKTR2XCxacqGFY6XALicc/pCpGG?=
 =?us-ascii?Q?9lp0HDsGdQ/NUPCuSeiUQMn6S3JNnVTlsi4W5/MoDOtJeWyT2oNB/R/rPovA?=
 =?us-ascii?Q?aWpwb0al/W4wGsGlRyT0l1+NXV7A2Rr3pFE5qMyBLbG/Q1Nw7kZQa+mte3Ff?=
 =?us-ascii?Q?T6FIJbT9eerM9i0NZm9q2qFHVxoPROUtfkUVlnAQTX2efOsDhmQB9FfXi17p?=
 =?us-ascii?Q?e6QTV/ocsJhPS6B4rSOyAH+Ita4zxUKChr+ClV/bqxz17ZtBwCYji48+BoGB?=
 =?us-ascii?Q?kRddNkvi/60uDh5qgdN/tiDU2FVG90YRBaA8A/NCBqvd9kPVLYQDxAhzuhZN?=
 =?us-ascii?Q?LR7iCHXdBOYxZxgScHGNGFf2fWitkzQ1iXgienhbvC2A1dwc0GGsvGk6TwqZ?=
 =?us-ascii?Q?Gm+jNvs27oQ1YmkabE8qc5mRjufwnkJOvoKdkTNWh7qaxBpp9M/sagW1VnVo?=
 =?us-ascii?Q?CAtCbvkj3c+aiEZe3UbVQKhQtQjaCH1IMaXtSVJLvFx1U05OOiVU/iXhpQaC?=
 =?us-ascii?Q?7cObrdPj46cg6wMlAGXw80ZdGnzfB92G8ep8dHlwu95LRx2SHxEapzRq1bEd?=
 =?us-ascii?Q?bAaZJDbBieeZsQCyTPzGemeYAccSX5Ar8CFH+o2c6p9YWu8nxGq0RaFkXkOL?=
 =?us-ascii?Q?5atBChfugp6LnGsoZa6V+ql2NbCIoZdsDAlc4bMOBgnv17G1lxfD6GRdfHCP?=
 =?us-ascii?Q?TmB47HpfDgRbbLIIuQYT4/Bin+1L8gYRrO+2tyRFTWOClDll2hnLdbzal4nB?=
 =?us-ascii?Q?bhFz6uH/v593QpgWDz0utCNUUhmqxawCKW/5Nnby+dvV0MyjYBPbklCkJHz5?=
 =?us-ascii?Q?R0aQXI4vV5ldrc3d8gKL1/V8O6MNutuoCgnst1SwY1TYcA0UGd9UPMvkIcme?=
 =?us-ascii?Q?My+UIaEeRH1ElHWggMoZz2FtwAlP9luL9urdYKBJbUOWgWV/6Baqcw4vIPLq?=
 =?us-ascii?Q?UmKLjceIOHkzVyUIfkhIdwNYxun+x3O5Osj3c+pYvXVzzTpobkXm86xDww9H?=
 =?us-ascii?Q?VyzfNAmj6hxMSEStKzbSgsJNcIF7UroXqUymdRUO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6924abd2-8868-40ca-1c4d-08dd895a5afd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 09:18:52.2894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nCS0apIaTMFgJtLQH1sFsvoChXPqvDZXyU8caYqFbUNc0VYoSeUZO1vCbNs2WHXXPFx5SjqmdnaNxGe+OkvPDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6971
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
> specific HDCP GSC code
>=20
> The driver specific HDCP GSC code will eventually be part of the driver c=
ores
> rather than display. Remove the struct intel_display references from them=
, and
> pass struct drm_device instead.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    | 12 ++++++------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h    |  6 +++---
>  .../drm/i915/display/intel_hdcp_gsc_message.c    |  2 +-
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c         | 16 ++++++++--------
>  5 files changed, 19 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 39bcf8f3d810..3e3038f4ee1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -254,7 +254,7 @@ static bool intel_hdcp2_prerequisite(struct
> intel_connector *connector)
>=20
>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
>  	if (USE_HDCP_GSC(display)) {
> -		if (!intel_hdcp_gsc_check_status(display))
> +		if (!intel_hdcp_gsc_check_status(display->drm))
>  			return false;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 4194ef77f7c3..6a22862d6be1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -19,14 +19,14 @@ struct intel_hdcp_gsc_context {
>  	void *hdcp_cmd_out;
>  };
>=20
> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
>  {

So the thing is this particular function won't be a part of the drm core se=
eing this actually is a intel specific
Check to see if gsc cs is present or not.

> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct drm_i915_private *i915 =3D to_i915(drm);
>  	struct intel_gt *gt =3D i915->media_gt;
>  	struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
>=20
>  	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> -		drm_dbg_kms(display->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "GSC components required for HDCP2.2 are not
> ready\n");
>  		return false;
>  	}
> @@ -87,9 +87,9 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	return err;
>  }
>=20
> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> intel_display *display)
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> +drm_device *drm)

Same thing here this gsc context is the message we get to send to gsc cs
Again intel specific this initialization will be specific to each driver ba=
sed on
Whom it wants to send this data(mei or some other fw component)
 Too or do the calculations on driver level itself.

>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct drm_i915_private *i915 =3D to_i915(drm);
>  	struct intel_hdcp_gsc_context *gsc_context;
>  	int ret;
>=20
> @@ -103,7 +103,7 @@ struct intel_hdcp_gsc_context
> *intel_hdcp_gsc_context_alloc(struct intel_display
>  	 */
>  	ret =3D intel_hdcp_gsc_initialize_message(i915, gsc_context);
>  	if (ret) {
> -		drm_err(display->drm, "Could not initialize gsc_context\n");
> +		drm_err(&i915->drm, "Could not initialize gsc_context\n");
>  		kfree(gsc_context);
>  		gsc_context =3D ERR_PTR(ret);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index e963c1fcc39e..e014336aa2e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -9,15 +9,15 @@
>  #include <linux/err.h>
>  #include <linux/types.h>
>=20
> -struct intel_display;
> +struct drm_device;
>  struct intel_hdcp_gsc_context;
>=20
>  ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_conte=
xt,
>  				void *msg_in, size_t msg_in_len,
>  				void *msg_out, size_t msg_out_len); -bool
> intel_hdcp_gsc_check_status(struct intel_display *display);
> +bool intel_hdcp_gsc_check_status(struct drm_device *drm);
>=20
> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> intel_display *display);
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> +drm_device *drm);
>  void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context
> *gsc_context);
>=20
>  #endif /* __INTEL_HDCP_GCS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 4226e8705d2b..98967bb148e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -645,7 +645,7 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  	mutex_lock(&display->hdcp.hdcp_mutex);
>=20
> -	gsc_context =3D intel_hdcp_gsc_context_alloc(display);
> +	gsc_context =3D intel_hdcp_gsc_context_alloc(display->drm);
>  	if (IS_ERR(gsc_context)) {
>  		ret =3D PTR_ERR(gsc_context);
>  		kfree(arbiter);
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 078916072c10..b35a6f201d4a 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -30,9 +30,9 @@ struct intel_hdcp_gsc_context {
>=20
>  #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>=20
> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
>  {
> -	struct xe_device *xe =3D to_xe_device(display->drm);
> +	struct xe_device *xe =3D to_xe_device(drm);
>  	struct xe_tile *tile =3D xe_device_get_root_tile(xe);
>  	struct xe_gt *gt =3D tile->media_gt;
>  	struct xe_gsc *gsc =3D &gt->uc.gsc;
> @@ -64,10 +64,9 @@ bool intel_hdcp_gsc_check_status(struct intel_display
> *display)  }
>=20
>  /*This function helps allocate memory for the command that we will send =
to
> gsc cs */ -static int intel_hdcp_gsc_initialize_message(struct intel_disp=
lay
> *display,
> +static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
>  					     struct intel_hdcp_gsc_context
> *gsc_context)  {

Ditto=20

Regards,
Suraj Kandpal

> -	struct xe_device *xe =3D to_xe_device(display->drm);
>  	struct xe_bo *bo =3D NULL;
>  	u64 cmd_in, cmd_out;
>  	int ret =3D 0;
> @@ -79,7 +78,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  				  XE_BO_FLAG_GGTT);
>=20
>  	if (IS_ERR(bo)) {
> -		drm_err(display->drm, "Failed to allocate bo for HDCP
> streaming command!\n");
> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming
> +command!\n");
>  		ret =3D PTR_ERR(bo);
>  		goto out;
>  	}
> @@ -97,8 +96,9 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  	return ret;
>  }
>=20
> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> intel_display *display)
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> +drm_device *drm)
>  {
> +	struct xe_device *xe =3D to_xe_device(drm);
>  	struct intel_hdcp_gsc_context *gsc_context;
>  	int ret;
>=20
> @@ -110,9 +110,9 @@ struct intel_hdcp_gsc_context
> *intel_hdcp_gsc_context_alloc(struct intel_display
>  	 * NOTE: No need to lock the comp mutex here as it is already
>  	 * going to be taken before this function called
>  	 */
> -	ret =3D intel_hdcp_gsc_initialize_message(display, gsc_context);
> +	ret =3D intel_hdcp_gsc_initialize_message(xe, gsc_context);
>  	if (ret) {
> -		drm_err(display->drm, "Could not initialize gsc_context\n");
> +		drm_err(&xe->drm, "Could not initialize gsc_context\n");
>  		kfree(gsc_context);
>  		gsc_context =3D ERR_PTR(ret);
>  	}
> --
> 2.39.5

