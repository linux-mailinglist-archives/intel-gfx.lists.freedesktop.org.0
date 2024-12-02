Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1679DFD5D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C67310E68F;
	Mon,  2 Dec 2024 09:38:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJ/vceAB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3D610E68D;
 Mon,  2 Dec 2024 09:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733132315; x=1764668315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wupW2mKl2o5eGCd/v5xudxGQdzngig/ElrP49X7DXfU=;
 b=BJ/vceABD1YRLOYbUjZjUZogPSHlhy8UN1PGZoHou/hMSiUtTQpN4w4s
 MMYkFQ131A6xbkqAgBs8rMg237MRp6OOp3bC6ifLjX1WK6cgP1VO7To5f
 93kdzlHkFPTIMe/akmIJ8xOSklZ717u/vo27toM8bT6t40ao801No6JD+
 2RdJCWJ49UOsnft56EEa/GQ5VgRQacKhB/kPuBWHBiaEDdTpvCBBpl9jZ
 +DNj1zmyzfwaKIQbZr/Mm1gkyNIw0nD57ddtYNQVmeOpnciK6P0/6hpcD
 C37rNqKL6uk0Sfk8hMTmj6dnZnz3PCrsluyidMEdgbNpzMge6s0rNrWaM A==;
X-CSE-ConnectionGUID: fDz69j0wThOP13KL9hVcZA==
X-CSE-MsgGUID: nP+B4CvCTx60JObIR27k+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="50810620"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="50810620"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:38:35 -0800
X-CSE-ConnectionGUID: lz2hCwwpQ1Ku2BeWjTPeJw==
X-CSE-MsgGUID: j4c4glCFSO6+U7ubtxcWqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="123992102"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:38:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:38:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:38:34 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:38:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EqE+UuKT9CbzciL7Fcb7gzsTpzDe40WgNBOj/L3lcnFrGCGI1Wxc+yd8EkE2vG8ouU/Hgj9AGw/pSglYaTyg+8g/DK6HKABbzMHP4VZueOtiKIvroBWWSXzV7AZ/NSNZMiEaXxmqqH0E7meYshLirC81Rh7nsYsMsmoSbkLt1XeBADQiSP1viY3b/MaBrKqcKKp2T0Dxjvir+RBzVS8hfMgMcwf0nBmwPiDLNUYVjpTOEWxOTTY//UHCjHdClIiKE3ueWTtQ6QNz5sT3Hdcjz84r2aZ4MISr8sQXyoYzpCsFj5JgsV25kwoEIyHNrfnwrk3hDm03Q9/3w6FuQsPFIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g17s6vdcHJIV2l3Qpuj67yM9pw1ZQlZC6/A34cTKdMs=;
 b=hOkc8eIgSivD6A4QB3w+l/cJvP8poieJ6MopcXgMCgHO5CbCLwTdztkyBhOAyC5s16lOf1ke3P6MWkLHdt2+kV+l+6H2QeCwmZZLGMxYARFzQVDzgQ30Jerw0O06GewFcH6OeBUm6XxVs0OcnWHYU6IaA+97zove219ch/hdoe9y0KZYOBiaQ8LoaeFn2ErBQPxItlJg/5aJWrCdKGF6KxKVuUeeku3lbx+sqMylRvTPVXDEIpVxXLK0bP+kXtHrxHJLFuzhdpyyavy+Cu64AoQtJJkVt/5X2CmLIU2UsVlg4Fp7YL6IgZIO7vz2PPRfyCqLFqrxvpS/K6mMRGbrqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB7614.namprd11.prod.outlook.com (2603:10b6:510:28f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Mon, 2 Dec
 2024 09:38:27 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 09:38:26 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC code
Thread-Topic: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC
 code
Thread-Index: AQHbN3e3b9YbQ6eOfUujDqeSg+nCZrLSzF7g
Date: Mon, 2 Dec 2024 09:38:26 +0000
Message-ID: <IA1PR11MB63485EC1FFEE0806A0B96346B2352@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-4-suraj.kandpal@intel.com>
In-Reply-To: <20241115160116.1436521-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB7614:EE_
x-ms-office365-filtering-correlation-id: 1ce9be03-c64f-4770-3398-08dd12b512a2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VnQ9mMqj6/oX30BQYwafWMmWa0k+XE24nhnmb7D4l/JjfB9xDzAIRDc4RST7?=
 =?us-ascii?Q?rUiWXM1IoMHl/D7dQQVMHRXoa66rnm02ZjPbwAIhChVrF9bmWrsxt9IRauom?=
 =?us-ascii?Q?YGgzYviQUIgtolLUOSwHHgZd9U0JxzOyHcKVx5YR5FiqPs4r/e+kcGLJHagH?=
 =?us-ascii?Q?fMEzg8UOFgCuj2KnYlcNlMtY98XcJDc99DVYuPGZCeWWjDm1ilZfaM7OiWgh?=
 =?us-ascii?Q?T60zJTH1CExP7UcbYkDXfV/qcW5sT0L93VI6pF/p5vxuPnsm6MBF8i1GQz5v?=
 =?us-ascii?Q?kYQ9ntq/l+1wuUisKgt12eN+FPd/sklxC8qqKh1TiU9beuCKY7aSgAOVk1zt?=
 =?us-ascii?Q?5Z8M+tHWs5jzpAB8w+EfHBZg+1M/pPekD9P7wDWZJ4Ow0gQVZ6AFQh1hXIi0?=
 =?us-ascii?Q?T1RrKoh5FAdwhrUa4NH30/ttA/PDOIZIZI7x/eMbtI8Pg1rsS6/Pa6vRY1Wc?=
 =?us-ascii?Q?EoaCmv21msXiYDWQo7QuEOqXUC53nvN9GyFpklDXYBOnn9bhuh7uF+5RWRhp?=
 =?us-ascii?Q?qBerLgL6LVBni51ZoOcYwBvKHqCAdC/BC+DtWjayB1bzNb3AJHHGRKNfnNsH?=
 =?us-ascii?Q?3bWt8yPW0BEvD+i95L5GGiExtphLO4BJD0K8hypCAfgz2KRnCpI6D81wwutT?=
 =?us-ascii?Q?LGwYvrY7Xn8ku5KmllvDm5BLnUHuU1b7tf76VYG6t3xKvHuP1JLSB5BKO2vU?=
 =?us-ascii?Q?hYrsT0vvAGbmlAxjv+7Xp/w4Vg1V5boknEMDUW5++J3k8JAYC2R20LW//XIN?=
 =?us-ascii?Q?ClrAiO134bYo1voK1NTZoHnwO4rzNTN/XQacJVUGkboJbfZLtGgzc8sKDTkm?=
 =?us-ascii?Q?W9betume6rYHC1ccVb57zMQN/eL+q2BcXrAnnTLHBkd4mSvXOKJpYRkYgoE+?=
 =?us-ascii?Q?0XyKoC/kM1huSPjCoUePTVIEhsUmXTb4RZT96+02rcMRyH6X7nwXawd20XMn?=
 =?us-ascii?Q?qBKMFRfNRALDpcoo/wuFgV8DetzuximWgBYtv7u2qiXO7rcWpWfx1gmfm+gO?=
 =?us-ascii?Q?25W70QWLpJR82ipDCK7/Gy46RMrYUflvPaU09WEH2ks6LsjA4OBp2QacaBKD?=
 =?us-ascii?Q?QS/KD4cNgRtNasGdUDLUz7SmKgPR4GvG9c13pu4evmBwTzUAIqO54GyMb5Nz?=
 =?us-ascii?Q?hG3isopuxxtKwMxMezxqastAuNXO2/hKaByH9fXuznwQ4XXHbRfEzgG7uXZx?=
 =?us-ascii?Q?rfh0Nl2zBkKc/CdwJLc2j+Xcwd7v2ILMbQ6mYiYGy7TwJTUJry6iLHLc14vL?=
 =?us-ascii?Q?pogfzf8kM63B5vXKJedNuK2IQBw4u2JXDX6mCmQpNsVf10+6Z2K+jgyc3Mjb?=
 =?us-ascii?Q?0FapCS+fCYmZ2V6pOhW/2+e4I0u5r9Cqqxkjaz8zZbNmEDlf6GFQSEok7njE?=
 =?us-ascii?Q?SgkTFbpnccYAsTxE7Aid8p5J1fTQAe98YkulqpesjzQBjeESgw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2dBkcvcQCghJWMPxE2anAVFAOXAHW8mKwFJ3tPejCddlEfNhfUauwlniNpcH?=
 =?us-ascii?Q?JtGWI/Q/JG+IUpzQv0mO4/JNhXoFdFiecexU6WlLpAh2haNmNEnrzQ1sKCUS?=
 =?us-ascii?Q?qLMMQiCqUIGoYGJ+uJGXrBR4UD2yCwrEoSRjA0OjrUdsQ+sk1q7dyg1yW+R+?=
 =?us-ascii?Q?8UiaQMDClTgeFEToINUyDvoPDji6wlDZhd+eNMZZa23rR/CiRCMp7bB8eEl5?=
 =?us-ascii?Q?KC+n98H61jiXMFpDc4hA/mBy3QyEhIuS4QdJ4MvvPGHdu52p1kRplOiSzdhP?=
 =?us-ascii?Q?ObVlKj4HukPZxpD5j8/wnVQBqtwBY21Viu2yT20i9jegykV1MAPbE9Dk1Vxi?=
 =?us-ascii?Q?fT4YI6Lv0AaqBs7H2nd18NLAdRWsxm435qdgX5+X8wmq3IqYpacInfG4OKoP?=
 =?us-ascii?Q?IgD1fOMGZ6WesYGsPqq2+BX4zAkiZ+Q+gBkP06tYzES32A6L7zAWhF7m+sDT?=
 =?us-ascii?Q?bbBUCUooH8q6F5klTYvXSMN80mCOMep9aFDRt4dZtIJvUyMvPthrW4lnu4A7?=
 =?us-ascii?Q?/a+P4d909k4kbq9xMeIAWXcvY29ssqCK2LdHEvHRvCJPGIeFu9zrGwcTyXUH?=
 =?us-ascii?Q?HJA+PtTWMCXdUowsSBWHm53fIC6uuenawvb/ty1hz/EYSm4RfEzAmumi3Gtb?=
 =?us-ascii?Q?xtiHkBJDLbNqPfT7lpgFUtr/Rcb0hFYoLe7IUS/+/BOVmb7iY8x0vma1ZU96?=
 =?us-ascii?Q?xmQvVliZ0U1YENfQoTonKiErmZRJ24j5hIPicHcC8iiS6BijhCG+v5bev5nJ?=
 =?us-ascii?Q?DiJzgjTJ4uoh1dFxUDPgW8m84fKV//WhbinU7HCM7AyDvJrj50/RblSj0Te/?=
 =?us-ascii?Q?5oA6bnZ6jm0+oKltbC9KlXFHIlGy7lUEbAkNy3eSyjmE89rvmvX8Vs6qGgJQ?=
 =?us-ascii?Q?3V++Dn8ImOj/VLgIl2Ev0PvIfWes+Ml0cIAn5B7wFSuPBJr2y/Yb2tYHI/Oe?=
 =?us-ascii?Q?5UTSeGPYU7s/94wNpTtAz9h2wXxAae4Q563o6rdc2k+p0HEk3kwJv7OdTYRY?=
 =?us-ascii?Q?2voRwOAxQG8FtpGnehYfoHZtAT0cB90aPaWMqmpAs0Qcuw+hnh6etfp3bN+U?=
 =?us-ascii?Q?rbG9N+dwNOUgoLHptlmRGG5DvHqIt8SGnejw3f8BBjCqA87NDcWOM92d56Fd?=
 =?us-ascii?Q?wWKierPkLBlk7T8fgU2mHXaS2+a9urimJOPITBHUH2mXUXNBd9UAuTXlBTGZ?=
 =?us-ascii?Q?FKMzowaR5p0rg8Qq6Dxqs97DCZgvM4yDndt8QJ09yXQYLnikpLR8Py/HZTPS?=
 =?us-ascii?Q?VO8laoIPwy+BMRjTMrB5wGJuZ3yKFP3dCjtH7X1j/9nEvfh85mgdE9unF0ge?=
 =?us-ascii?Q?Px+xShmCRQgIyHonuoJvqPcXMGJ/W0nOutPsX34bSC5T2ZPbfBH8McRPaplV?=
 =?us-ascii?Q?xtrqy2uGTBIr40wU9sFj1psJyPhEZg9r2dcRh8tGYEEVqJdNqjF1ogU51Ttg?=
 =?us-ascii?Q?n2s+qDXf6y1+7539/W9tAFhDnfBBABsOOp5O7P8sYG5Y/Usy4uu8wJMlSjAf?=
 =?us-ascii?Q?2lK4s7GqS6poOrR8TROcvY5K0jajZRxybEuBmtlAcMi6CmNDLswBwE8zWTIt?=
 =?us-ascii?Q?TpI9isZqJ0OSrSrlssViI77vRPqjl1qTQ6CZcJKMhX7t+f6es63eSmQbf4ml?=
 =?us-ascii?Q?ZEAB5KNAZwEHg/MywXKcElU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce9be03-c64f-4770-3398-08dd12b512a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:38:26.6982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FMFLwfG6McPFgIGh+7MC8aZ/GOHOLT5BYSElzXvJXx7f/+YOREsViA9VoBirBUQqaKujtdHgUXG/aJw6d40SfRCQloYPeEA7+Q9dN41uj0rp/+OQzhCMuJe2qBU0AFY+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7614
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 15 November 2024 21:31
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC
> code
>=20
> Use intel_display for DPKGC code wherever we can. While we are at it also
> use intel_de_rmw instead of intel_uncore_rmw as we really don't need the
> internal uncore_rmw_function.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 9ce3b5580df4..2deb964daed3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2858,10 +2858,11 @@ static void
>  skl_program_dpkgc_latency(struct drm_i915_private *i915,
>  			  bool fixed_refresh_rate)
>  {
> +	struct intel_display *display =3D to_intel_display(&i915->drm);
>  	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
>  	u32 clear, val;
>=20
> -	if (DISPLAY_VER(i915) < 20)
> +	if (DISPLAY_VER(display) < 20)
>  		return;
>=20
>  	if (fixed_refresh_rate) {
> @@ -2869,14 +2870,14 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915,
>  		if (max_latency =3D=3D 0)
>  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  		added_wake_time =3D DSB_EXE_TIME +
> -			i915->display.sagv.block_time_us;
> +			display->sagv.block_time_us;
>  	}
>=20
>  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
>  	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
>  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
>=20
> -	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> +	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);

I would always suggest to keep 1 change at a time, rest other things looks =
good, but still my suggestion is to separate it before you merge.

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  }
>=20
>  static int
> --
> 2.34.1

