Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML/nDxdAcGnXXAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 03:55:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8D50159
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 03:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5332010E684;
	Wed, 21 Jan 2026 02:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nMjRM0PW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6A510E10F;
 Wed, 21 Jan 2026 02:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768964115; x=1800500115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fBmOIZzK1XiHFQCo1Ms5VDFG+UA5CGjMkecYCdw7tZA=;
 b=nMjRM0PWEWC0sEFAYJSemTobesJkCj3DY6EI7DnlQSOKple9+R8LAAqQ
 FrY4b91Bb43XT0Lx5L89C3KSedEr1SjefmrVIjpG2ovi3wRx3HRR2WJXN
 e7VcNQYQ4+1+BYaN10VpDsbQkxZMvgtZQ6sO2oHmk0ymvG+WIqrMHMYeP
 QqFr27zY3xQtYWuudPeeGpmkXW1+YLcEna5AJK1Se7XWItPL4JEn+pmJY
 E8Yt9lo9EAmiS1CsBsHxF/0bN+bqko2inSX/iUKYblA71ETYEQ2wNJRiO
 Cccr9sW/oFWUlTrKjZ96x6bTOWKoeclmoX6NbRNeYpamB4eZ67amJOTMg w==;
X-CSE-ConnectionGUID: 3xKxX4yOQ625n/zxba69tQ==
X-CSE-MsgGUID: rmf6pJh7TsCy0+5ESaDWbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="69383941"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="69383941"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 18:55:14 -0800
X-CSE-ConnectionGUID: ETKlqfNFS1eSGvuh9ugKWA==
X-CSE-MsgGUID: OxzzzjEIT3ms7INKqO4TJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="243868371"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 18:55:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 18:55:13 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 18:55:13 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 18:55:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mnxz9FnYhOvazkLiKYUh+IjP8JQ3HyPj/9WGj6mOocdXWySz5Alp/VD1Xn4EQ3U9B/9h4dJr0GFuitaPH+QcpMLEJmJ0hOxvQCcC/w0LJay+MUWKI3UjkMp/mqWd0WeDjHHMVwBEisvfr2mL+oK929HoGWd6qMFpT/paB2u44TFlz/EssYkIxEWhRpU+u9vevtvfQmsupDuJkSdMDtnuJj20RUZ9mgBmfIc14hcJG4MAKblahTiWf5t8ZwdqtiVkUYdxCTXvkMmzTfZF9LD2lzbCS88o1+KpwpUXJKrjGDSpVBX3/bND+5q+xKbjMXlgiGbUcaPujFbgYKJlIxrEWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7SmWpoDEaxGJeW2XjmSuX+qq6SzgN1EkqK+EnqhGha4=;
 b=BwNniXeu7I72p9DWi/EE3X/qUyV5j3ICDMR2D+z7+yu3pvkqVSXL7d1pu/8qnJZ+800MlbDoPhfEMAHqwrLd0vIeh27nscuguBzg+upGy3e6b+xFK+CqLfagx3b4TzqJBoM+l5nV72EYKZnin8k3Ag40ZjoNGorvzO7y5XVurn6qGEiesaLDg9SIEZIVaHG9EdCConFUB+YzTb9fQvgQkSA1ieVuaJYV6TanTb8hFdOGanWZM5Au752JO8GmNDMeElD2TWmNxINzObste0xB2EEOuV1clSqM5fE76U2qT9pNO8H76nWKFIcnngNTfmfNwiSyNvVOAoZHTed/gbntGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by MW4PR11MB6691.namprd11.prod.outlook.com (2603:10b6:303:20f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 02:55:09 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 02:55:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Garg, 
 Nemesa" <nemesa.garg@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/display: Disable DMG Clock Gating
Thread-Topic: [PATCH] drm/i915/display: Disable DMG Clock Gating
Thread-Index: AQHcicnKY5SkyZHXMUi0dPRJk+pvnrVauHqAgACDWICAALJDAA==
Date: Wed, 21 Jan 2026 02:55:08 +0000
Message-ID: <IA3PR11MB89377C7288C45C13949C0B44E396A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
 <IA1PR11MB646765DC8252C407F4218656E389A@IA1PR11MB6467.namprd11.prod.outlook.com>
 <aW-po67khakWTsNR@intel.com>
In-Reply-To: <aW-po67khakWTsNR@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|MW4PR11MB6691:EE_
x-ms-office365-filtering-correlation-id: 563bd894-4d24-4ab3-6c43-08de58987cfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?zoFYwbkvGT30WmoMCSOYNc5pAwRjdiy8lSU8oeYVFhFraWRFCSZkvOyk7s?=
 =?iso-8859-1?Q?azs6poEf1fCAbVWO/6v2B+t1j4c+mMaOSlpkMMzFnP5Dyazdy8/xopEDU+?=
 =?iso-8859-1?Q?oG23n6AjDW+CBSeQx03VV4z4lVUl2c6INjkBpMON2RJJJCFPXw1C7yc8Mw?=
 =?iso-8859-1?Q?mu1+OGXyNoJZYcU61NyemMV6sYDbmG22lPOO2agzrLxuJh037JTqL1tIyc?=
 =?iso-8859-1?Q?50eJNpCkcra0ymwgrrzlju/Mx9NH/CJiZyYLqXJ/WoNxM9Og8UikEaCEkS?=
 =?iso-8859-1?Q?dYUajpVgXILUMlPYCNESiN3/fVkRLXjOu6ANOg5DiFxQI3QmIG2Xl/RVCo?=
 =?iso-8859-1?Q?IK56WMP2PuNsPRoV9EnfdIcwYEjXfsl2NQeF7QtYDKAMN3yGY7h8cVFN0D?=
 =?iso-8859-1?Q?DGtmhXuaQg6r1Z6kKPhaYeYYENEvDuMMOUr/7fBxAgwhIV5ErKFS35+nqB?=
 =?iso-8859-1?Q?gGRcn+80HcBtSd+hGApQiZB9JWvLRfddA30LpoGzaMqz2/fsQY0skWdB+3?=
 =?iso-8859-1?Q?V11T0T7CFbaqDGmeqJN5s+brarp1LuEACI+XEr+TOcubYDdKNBy42eDNkb?=
 =?iso-8859-1?Q?JPajSqAu/ttvld4aXpazOuYQlh9Rb3Z5eScjXmLDfrg/GgTiZdMU0egpjz?=
 =?iso-8859-1?Q?MHSxDQv+ncLiQhSL6x3jaDBY21l46PNFYKfXDF9RUvZa95448Yv0yNpUAS?=
 =?iso-8859-1?Q?qmUhdwljVfQACFnhsA0uyT2Tm0IdEp2lH/kDmY8scwN9+gc9kNSgtv7fIv?=
 =?iso-8859-1?Q?nlUi/SGDh8AWyFYE9R5nIg+/7X/C85Xs8LnzeUnkucKRsx+TbN5ZqFNu8+?=
 =?iso-8859-1?Q?t69Q+wLlwyjyMZIizoybeeXy4GQzD/xxHd+FiObLcFadFqq1tC2DdM6gah?=
 =?iso-8859-1?Q?8dyD3Sza/u6zUSzmbr/8p8FZm6l52Ng0WziqiKrhEHhEoQ7He1ICwVZkvu?=
 =?iso-8859-1?Q?7MAtpsNxF5kDP8hR01yHYMFbkhrhZ4tsZXeShEWHfQmt9zGDQZSQsICaln?=
 =?iso-8859-1?Q?w1JUItsRq5ozfQgpwHVocPF7S60oDfAn+woeuBqZbuDP54yULgWMYoaw45?=
 =?iso-8859-1?Q?sfNcrXyv2HwWUGDbqMqCFXhDmoG8MSyuZhNxmgRcXkNucevjWZip7LDSc0?=
 =?iso-8859-1?Q?c65KnWhwofmZDIEReI37fAN82sEfRnW8o6oR5vRXcp63U7h2p3M71iOZYu?=
 =?iso-8859-1?Q?T3vPKbdKEjqeCUn3nlXfTZCiBNejovw76TMxlQ6alCJPl9BpEzIBdAkZCf?=
 =?iso-8859-1?Q?ENDZtF5HjhF/cNDRHST+fYGz1bLreVA0UNEB+tlmr/2da49gp3R8+sxHEE?=
 =?iso-8859-1?Q?X63N+kBorXWXveKO9DVh2g8d8SA5fb1633Aks1ywFEm9AX8pZumD6FTLn+?=
 =?iso-8859-1?Q?W0YwK/4HP5hJwCeWY9qiVwEczGo2GJ1Tq5yvcsDLa62e6xCN+l3WJrZy53?=
 =?iso-8859-1?Q?FCnHUSM9apWhNE+suMDJIFSoOBIH6zjpctq3thxygyGZj8JFP7N4xpAG5D?=
 =?iso-8859-1?Q?I6yTCWToK7JD6lLQfPes1MjQN8EYviEk8jCnRGAzPgkAGp4SuTvsB7rkX+?=
 =?iso-8859-1?Q?T0OMtzV+Mpzix6Ukp+5x/ZCswEtomr+dwadtga8CaWOxevM5gmdnnBpVxt?=
 =?iso-8859-1?Q?VosbV9xkljBJYeY5zNi8ry5wf3NhHkDnEZYj3/0Q12dlblZ0okUHmzkq8Q?=
 =?iso-8859-1?Q?sd+m69zbjDZNYxTvI3o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DJ2c+cJzSp5go3CDMeM1ow4DWs0rw6B+2KeNFaEpUwwRGsbf5Q4vB3EKDC?=
 =?iso-8859-1?Q?IxpG8GnAjK1bg6gI/qNOGH0PB7GOVFKF+7gebSHtJi3AY8exd2kcfBIgI3?=
 =?iso-8859-1?Q?zFIWoVjJ3iDpdw8oDN/mGYq9c4ikfe23T2eMpygXNe9CIHYF/9yKkT2nGe?=
 =?iso-8859-1?Q?xRFyu3Six/xpZRBPQ/3fduY4eUtGACleb+5GPdsdDIdC+MmaskaZ++Om5q?=
 =?iso-8859-1?Q?65dma29bgVSBn2NepfyJC4IM0rcW7zqds7RjuCJmXJlm3zrh7V2SYadZyF?=
 =?iso-8859-1?Q?D3xK/R9kjmpPbchQA85df05p9iZowyqWrcxCCdDpGXs/DdY4jBoLRlG3XT?=
 =?iso-8859-1?Q?e6xx9XIWk92rrj6KFCuI37tVe0xrDSBCnb8FV3kyeDOXTT88RJMJoYcZap?=
 =?iso-8859-1?Q?j24F6N7SN5FdPAeGJCfrLrEcWT3nSXCK3FyX8zez4/+hKBID6amyAmyKc8?=
 =?iso-8859-1?Q?v6uXV9kka/zTg/ziAC2Gc3I1WFfKtVTyfuNPcBqrlPXowi1UJX2+34iuzw?=
 =?iso-8859-1?Q?W519iuMBRtFZhyTnSLlke2pth+o0crs06NurIpeC/1eaoim2RkN9750mRR?=
 =?iso-8859-1?Q?vHL6Rk/icC+j7h2+ENopBy4HW2vXxlAl4NjW5TGdnzfW21K8MKUQvEdRed?=
 =?iso-8859-1?Q?eZVmHLOx7IaaLOfLL2S3UANH86n5IbF7uTzIIG1pliYkkZTT61NjDfhqzP?=
 =?iso-8859-1?Q?OfEKMgI65OavSbp2FB27T53+fXqWwbeTAo/xSDI4QyCujB8OfUjeDGrMZu?=
 =?iso-8859-1?Q?B3yJ6whVSZFAwekNV3ecTp8i1Vsq4Pve3XpL8O8q9Y51M5Uh6cbP3AWpIi?=
 =?iso-8859-1?Q?LgYgOZg5X+oG1RD2QE8ptkXDTGfCFdJm3StI3OJE+SsrHIsZB7jwTiRA9U?=
 =?iso-8859-1?Q?R8+nSGnrA/GwnNY5DlCI8oBVBxM4qUyE2SaHRIM+cs3D6joFV3Q20G07pm?=
 =?iso-8859-1?Q?HzOsdEros7ckfBAIOHq6fCuDCRhszlLtNIXYKJhm7LtUGmu/4W/IN6IDMw?=
 =?iso-8859-1?Q?wfVj0PHi6zs+s1/eaW/bNG81qqGwrVhDBvIrwUZ86RZiUdMsmmEMwvuubG?=
 =?iso-8859-1?Q?h7iJjVf6FcFw7tZ3Litg+aywpqqZLiXz6ij4ucjFMA0Rk7EWZYBD0Ubo/6?=
 =?iso-8859-1?Q?1z799cTo/jZS5M4kqgj/zu6lOeOP9TI4+TnuOBNIhNuyENjsHPqHNw/Uvd?=
 =?iso-8859-1?Q?bBdgqEDsq0yNWz57KIR+efCr7v4iQ7GQ1zVYSTh+ZPMiEw9bvslWnSorS/?=
 =?iso-8859-1?Q?XVxg833qWm8LZpPbDs5fVGuEPxFYcA/PKL2ytwniWvGQ5aewv+jXjpL2gA?=
 =?iso-8859-1?Q?ZyTzNMX3GXN6idv9uvzWqp92NhQYE9V5nA3MQrfOZh8RZSESYrQ3z9C3AN?=
 =?iso-8859-1?Q?5UcbOexrLeCSBLPs8w7UCaRjFvtAmMWSdkumhza7mNpW1Kb0LRobxmF8li?=
 =?iso-8859-1?Q?Vf1r6UnV0cPgnPsCku3NPknzm8ArD+buefFZcxRkwKFfUcWCH1zrNjwa3D?=
 =?iso-8859-1?Q?KPr+X4yFKhPgNJduJZ2sMIuqYCC4OUbZnYw+AAjaTFBApBU4+uTY9SdizQ?=
 =?iso-8859-1?Q?vVaLA4lBtSGQrLUwX1reoWc/fKZ3v7YAEhHNAZXeDjDBHEBItQyTdbQ1ee?=
 =?iso-8859-1?Q?RMCY9IQcixOrVzlbFSzt6lm1E4/wTyRe5kVBOZaTZYc9vOgywHEIAWTCYE?=
 =?iso-8859-1?Q?/IQOcTYCclIl7iyPWaVsk8bLs1z3zu2x6cA5TtQQ2mXew8aA57L9V/eOC+?=
 =?iso-8859-1?Q?VB9ZIXhHwYtz3tcG6wU8KPhhHc2x2O2JCDBeO2uZfv09EwrJqQtCYqqzWL?=
 =?iso-8859-1?Q?n0dhHbIIrw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 563bd894-4d24-4ab3-6c43-08de58987cfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 02:55:08.7638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i2AWTc/v2Et1bMLY6wtaDOW7drtawV5M1fq3dG3+iER49hFUFGXQLIp8ozoLf4KTR0oia+S2xPe5eVP2hWrXbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6691
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,IA3PR11MB8937.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 79F8D50159
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> > > Subject: [PATCH] drm/i915/display: Disable DMG Clock Gating
> > >
> > > Disable DMG Clock gating during display initialization.
> > >
> > > WA: 22021451799
> > > Bspec: 69095
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 7 +++++++
> > >  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
> > >  2 files changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > index d10cbf69a5f8..2d46f00bd0d8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > @@ -910,6 +910,13 @@ get_encoder_power_domains(struct intel_display
> > > *display)
> > >
> > >  static void intel_early_display_was(struct intel_display *display)
> > > {
> > > +	/*
> > > +	 * Wa_22021451799
> > > +	 * Disable DMG Clock gating
> > > +	 */
> > > +	if (DISPLAY_VER(display) =3D=3D 35)
> > > +		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0,
> > > DMG_GATING_DIS);
> > > +
> > >  	/*
> > I guess we can remove the comment, only wa no. itself is sufficient.
>=20
> At least the commit message (if not the comment) should describe what thi=
s
> does. I do not want to have to trawl bspec to figure that out.
>=20

The problem is there are varying suggestion and opinions when it comes to t=
his.
Some don't want the why for WA's so as to not tell anyone whats going on in=
ternally in hardware
And it is expected that if details are needed one can go through the WA no.=
 provided, while
We have our general rule of writing the commit message on what and why of t=
he commit message.
I will add the details in commit message but someone needs to document what=
 is the right way.

Regards,
Suraj Kandpal

> >
> > With this fix LGTM,
> > Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> >
> > >  	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
> > >  	 * Also known as Wa_14010480278.
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index 5bf3b4ab2baa..f928db78a3fa
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -763,6 +763,7 @@
> > >   */
> > >  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> > >  #define   DARBF_GATING_DIS		REG_BIT(27)
> > > +#define   DMG_GATING_DIS		REG_BIT(21)
> > >  #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
> > >  #define   PWM2_GATING_DIS		REG_BIT(14)
> > >  #define   PWM1_GATING_DIS		REG_BIT(13)
> > > --
> > > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
