Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SA66A7VegGlj7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:22:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23DC9A56
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E8910E281;
	Mon,  2 Feb 2026 08:22:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NzeWgtXF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E5910E24D;
 Mon,  2 Feb 2026 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770020525; x=1801556525;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U36Gf5Zlja9j25ogMsPo7fKDZQGu3QPGf4XnxhBUZM8=;
 b=NzeWgtXF29vCltW60O5Abb238i8JyFyHpuJ4tSwcylbRa0q8GETmklWr
 WAOBxgWRZmz41gmSi0h/h69DbSeoEc8ae9SGakFumy8ZflrWxP4m1841A
 NTufFc5Amlgpm0TI++8TYXwyXmS2V9ZtxNwwLlya6KmuZvr4EZhzBhebs
 0O33eHU8gNpyPNTSNkAZk2sTMhli2aqlDMB6nSUNj/2n19TxY8vyRvHWr
 2GUqXmIycV09x/bJ9d2/RQtfoH06kTGChLGpo2mHjcqtgPpZrdgusdz4N
 +6n7zNIhYR3Z63qvZNuAkBmm6X8KZmL28K62actY1F5bN7oDPBuwC4GKy w==;
X-CSE-ConnectionGUID: faH/1747QwKGJB9WdHB24A==
X-CSE-MsgGUID: aDgS+q8sSqeOsJaNuuRswg==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71258459"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71258459"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:22:02 -0800
X-CSE-ConnectionGUID: DfTWBlTZRomSKO4LAa49eA==
X-CSE-MsgGUID: jh3boEn3QzKSxDxDrMwa/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208555874"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:22:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:22:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:22:00 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:21:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uWti8znSAcWgucR0A3dUHXViMEtyoX7kAaqeyh86YDPh549UpnTL6BIfGDumF5V4renH3sYVVUoZ0LD2fBmHIPsIjcjd7hQBOXvFDMU3rgwpill1poQgC62pdhKGNugaekTfTO0+t30Qsdvw/Fe1KqKgAeeaTuH1NvdGUXm+M4L3fgVhKuYoGvRQc3G37YZ/PQ0+whmqSpBcpK/e+T2JBpWyVd2TEghYWG2WvwqyYWYpQdHyrc43iNuPCN70VQDN7j47iaYIi4VssveK6mX3x9Oj8J1G3xtTQjeme3Eo4OKqzGN99zQsMxauitCiUODWNqPPK0j0ByO8HXJaARivwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ByNFk1HlNeDrZRcO6d20uHmkpqGEoEMo+q38w2dffY=;
 b=fcbOEi0PW7A5aEQ/DE+TVFhkyaOfIEBjwjnDR4PZHNhnxI8xPTjtkYONu/fn4ZrVy8FGnaboXWgxp0pqEDbTeh7xVpSpRMbba8qVIVE/TVCC+gqu3dP9lnpwkVaJ0UptdE8YAj/U/lSh7Bq4uRhq9Ho1oZLGT7X1olQKunUfy540i8VivVu7997J/q/M0LCpo3FYmNpRV7vz+HdfoG7I58+LPS9N3mg0trAnBpKaKDl+AjUXTb54Khrug64YTu6sUPJrWWK+lPji+5BTSVuWX8tH8UijMtEJY7zZfSDoArZcsWmwLl50s+dG1XoE8SnJ6vDGgYw33f19T0EqwpwtJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6057.namprd11.prod.outlook.com (2603:10b6:208:375::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 08:21:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:21:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: RE: [PATCH v4] drm/i915/display: fix the pixel normalization handling
 for xe3p_lpd
Thread-Topic: [PATCH v4] drm/i915/display: fix the pixel normalization
 handling for xe3p_lpd
Thread-Index: AQHckc8nQyylEOCmqU2LPUfGUZ043bVvFgsw
Date: Mon, 2 Feb 2026 08:21:56 +0000
Message-ID: <DM4PR11MB6360325F1241DB767AE40B88F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260130095919.107805-1-vinod.govindapillai@intel.com>
In-Reply-To: <20260130095919.107805-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6057:EE_
x-ms-office365-filtering-correlation-id: 164d7c97-c39e-45af-43b1-08de62342139
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UinFVp3QWmsb70QNAJ+QboAIBBKx575xCMtaksOgVt8lC7BxvDs09OD//i4Y?=
 =?us-ascii?Q?y5DuUoDp+DiiYE7aR/UuGeubO1J3og0VZxVepPpb0YypamgrGQwJpS6pmHS9?=
 =?us-ascii?Q?8hVA1EvD4me2ug5SWER3WfGM4h/qMUMNUbr4C7xdnNkLENTZQ9Z8W8vFY6r4?=
 =?us-ascii?Q?Jx92hs3VlZUWIaq/XiCTe58/EHdY1NRgxuqsOGvU0SDzax8EKb/yjYf2Q7QB?=
 =?us-ascii?Q?d0q1WdEMQl+9YGveLoQckSP1TGreRNtvFnCgevxSlY6MUVuTzhvVO3obV90a?=
 =?us-ascii?Q?Ttgp3X9OUWjlyT542+SNOL/of6Fk+h/hpti1qD253uIsxE+xXA4RFFIwLwQi?=
 =?us-ascii?Q?XmZAlfYVJIwA4Tt4nzcp1ufPT2zfA6HC4XcMdJy0fnbNHtpB1N1pA1rjqglz?=
 =?us-ascii?Q?MNSa61v0q5it76jOF8+HeS+DjShx18cm/euLtCrQ0de0Xa1p7bhUKdQiX8BR?=
 =?us-ascii?Q?xGSxRLJf/xzGXrx7PwG6jLLD3OQSi96P8cK/WBXlTsnvgcbhUrUJ+rx1VH4W?=
 =?us-ascii?Q?WLDzzwFieKfKDsREu2qchIM51FtfzoVXVTxUVSSsx4aE/CuA28VnzngbykP8?=
 =?us-ascii?Q?A0f6l8ZSnBIsAH7/Rs/iDTjiuJ9U/zkikXdxJ2TtRSB5/CMucdjWO2SRIdp4?=
 =?us-ascii?Q?fzG/QFGGPw51UiymkZIDPvPXpL+XM9YSMNXiCU7X/2GxM1lCQnlqMvrtd1Q8?=
 =?us-ascii?Q?1Y7vWyGpvxCM29abvsgdXc+dUMLwCf9mvEfVP4x40uBeyUMYkpTtozkX3iMX?=
 =?us-ascii?Q?i5QCnMofjdUHbKRc2JC2F3hZ3zTRFlJLDzmYcrCuuOp9NAsEKG8PMdmccsww?=
 =?us-ascii?Q?8OGhiZel7C1VEIwRM7r9wO1t3cfZyM5Y4cH2A/1LOmlG+bDsDRYUPz8HA1HW?=
 =?us-ascii?Q?lD1NZrvfBHNa2PRFfTif2a6lziX4lobf2Vyf6LS9TYH0QhEGUysmy0hCVs/r?=
 =?us-ascii?Q?nxMilyyM8zQDyLzmIqZ6Av4YUa1joC06DbWytKBZw5MhXDek3zUdhYRZR99Y?=
 =?us-ascii?Q?3jatu1+DXRKS8tYgVZ1H4AEf9/atTQtutWBTl/jTN8MDMvBw85TigFn1QX7V?=
 =?us-ascii?Q?+N3+d+1rFqQGx+XL+FEJ/5RGZUTQPRYJSHJa4DHM0NfxIYJEwHTygkeUivzB?=
 =?us-ascii?Q?PlwHUqOmmKtz3IUVW+C5Gw0FVlSn3PZfpvp0cTlhNkNcvXWrhgwFWzmmZEOd?=
 =?us-ascii?Q?YC50IGV7Op5Dd72kWMrxhQhvGV/jSsF8X2O9Pc1P5atddFL3a4FJPdfm1wOC?=
 =?us-ascii?Q?v68bg99ub5gNQHKgcDKYd8CJiZwOWruWkkZODuRyrjSDFnZRpxL56ZX9b5qH?=
 =?us-ascii?Q?PwxR3LksHqQdT/mus8hdjeF5iy/0A1pmnrpqmk+t82wRWcr1c/KEqWZ+o1Ht?=
 =?us-ascii?Q?dZhMEyCDwuu9nZw3hgK7tfTLON0gS+jsQ0DoKWfGzYXg0LJSLHv5WE9nQc5C?=
 =?us-ascii?Q?y63EJu5w3D1bvb90NIoQi77CAlvvIm5wfwqcdrjrVt4mbNmQVOVry+6eTa1w?=
 =?us-ascii?Q?MQ4Sz+uL+Zro6Ruy0Z+IkscwnNEXsw1ewRblNsirjQ4nwosWX78ODt1g2TVj?=
 =?us-ascii?Q?QaihwMaLlh98RWa0qY1AgrTdanQvcGx6y8+xuDPO7JZdQP0wUG9iKLN1jWw/?=
 =?us-ascii?Q?2oi766GxMsFJYL2mu8dt99g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a7TP7c66uBTd0bwUvOX2iUWZWKs71GQIPD6PbTfhzekqnzPKT8hJmFL59szw?=
 =?us-ascii?Q?Ntxgy73ale0ML/BzT1PnQS8QMAHgNzr8jnc2Uwidbk0Jwg4V5CmXXuOIuT1u?=
 =?us-ascii?Q?SWg2dpx4SR1/B5awACsOHRrwtFVWwt6Yy52oLsuKsovu+mPCDeuOlZEP9BFz?=
 =?us-ascii?Q?1iNI7CbVlGx+q/T82yzEhgDTU3xzkKFImqrjRT1cuaQpeNjxGYvBxoNYdAA8?=
 =?us-ascii?Q?T1jpUzq4iuzLiyJc5bg6Ew8iNWSF19rdXPE2yBhOhMERti/mqWZMZGwRx66/?=
 =?us-ascii?Q?5cjsgVfz8LLNuNU8og94h6B2JyNMSunj7HoNncY9lThqiDodKegcIzX9+GWd?=
 =?us-ascii?Q?8hnlcWCJCFmyzO2Z9ZtmNkOUF/0s+eiYjp2j+JWVLz0b3VU9Q1zF5SI5JGms?=
 =?us-ascii?Q?Vl5blpIYXE6UyzGlfsV87NNE9bxxUK4HHpjNofZ4hAcMQuaorDF3p0eAIiAu?=
 =?us-ascii?Q?4xxUf63vqru6fZnZLCXsmMA15mxeNJV1g2UZ6SZJbTCU/Y6a/riL6MZoFAKy?=
 =?us-ascii?Q?h4N4KGQbeJ+gf6Oq2c9OVvcR+rF7o72D3a8EMid+Fb0/PLFd6bZF8qAwoZAC?=
 =?us-ascii?Q?265Nlf9yCogttyx3t7WXPCSIbN6EFx1WOj6L/kDVoSy64daFIzHxBRlh84UF?=
 =?us-ascii?Q?UcVAM8uVRURk8US94yE6oBJhPNjfe9lGDSHDyQlU8dKQJL+SFgvLwHk7y2rw?=
 =?us-ascii?Q?c1cYuWIU9PoVaQbD9BpzXwBAAYJTXFrf8t8vk1XFwgSBnRMA3RSbFQjuEEVy?=
 =?us-ascii?Q?hIegN9g0eS49ZgPQFlLBZABcLxxsfC5nfwVh9L9gmNKaf/vuIDIBOyzGxkUl?=
 =?us-ascii?Q?cvO0vfYbi9qWtExobTWkSWVrxbwPa3SBo1prFNfKRxe4zulIdGKTD+/lSyOE?=
 =?us-ascii?Q?kFyXiKgJcAcus0tZx3AmA5PJTOxpITHY9whBehYQWwidMiL7T9/vdLnsqEMk?=
 =?us-ascii?Q?NoU3aXdqRyfzata5rjDsdsIV4Ra8iuk5K+uHQ7z2vACqFRN6i5hgp6ebJdp+?=
 =?us-ascii?Q?dBqizuNtzPmO+DPe0jj7PtORZ8CAcBLg0O0aG1z7D4UqUR4pJL0yoxTC9tsV?=
 =?us-ascii?Q?B9VlMmk4JpIofYuXnm04V6jQ5FJCrAzEuLg71X9/z97YDxDSs/cVex3ixnmH?=
 =?us-ascii?Q?LxlcZnogGk4RGvPxk53f3moRD2byhKwVqR7k9MgLnGaZihbiIVrgcmsqHHYM?=
 =?us-ascii?Q?yzYTO+yzBuQREG6gSCuw4bodQz9nGzTvEApOcSOqeRRp1ggH77BhV3MZUljH?=
 =?us-ascii?Q?yhz/RuW/AnjqBo90UpToqsyBsMK11xVFTsWDuSLxiTzLQh5tJl1eJkqkLm7Q?=
 =?us-ascii?Q?8Mn1EcYow+M2nOtZRZbW9ce5u95gpuBrk3NKwN/euP11SZcsEdkifyj1w/06?=
 =?us-ascii?Q?VQsuaKMMeyoEJplDmbrvApvmKM5EnWD5G/gxGJtQj3kJVX2fSchyemZfP350?=
 =?us-ascii?Q?qUpC/NRsLwywt0/SWwkWFJbYD6nga4SqcLawtSMWWBftnrBddrwXTA6qK9MT?=
 =?us-ascii?Q?DESlspldty/oPUQCQPpwgrF76YrWsr1eAara3KbCMJb4UO1MekyWs5EpQrHi?=
 =?us-ascii?Q?CYkqWzJnnED0XFVyrmw/KgJ8dlKxg3KTmK45tGPu2cxpx67v5HfnhwwQVEEd?=
 =?us-ascii?Q?TonpM219fLWSLIgCqntrB0TbPOuvM+nKUo9opO5ZdQcPQYxMQhg2ZwNgF3aG?=
 =?us-ascii?Q?LBq4GptFOAnvamB34lds0cLhK6Ys8X3HVIFpXVZKtgcg9F60KiecQZ/liO5W?=
 =?us-ascii?Q?R6vk+mxLsA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 164d7c97-c39e-45af-43b1-08de62342139
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 08:21:56.8196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FOsTVdjnRe8hYvc+XWftHp7eY/5Q4jdCaJUsuWle1vxZMdD61dToVGAAqG+fX4fNGj3uAf8WMwFfDYj7wVu3Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6057
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BC23DC9A56
X-Rspamd-Action: no action



> -----Original Message-----
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Friday, January 30, 2026 3:29 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>
> Subject: [PATCH v4] drm/i915/display: fix the pixel normalization handlin=
g for
> xe3p_lpd
>=20
> Pixel normalizer is enabled with normalization factor as 1.0 for
> FP16 formats in order to support FBC for those formats in xe3p_lpd.
> Previously pixel normalizer gets disabled during the plane disable routin=
e. But
> there could be plane format settings without explicitly calling the plane=
 disable in-
> between and we could endup keeping the pixel normalizer enabled for forma=
ts
> which we don't require that.
> This is causing crc mismatches in yuv formats and FIFO underruns in plana=
r
> formats like NV12. Fix this by updating the pixel normalizer configuratio=
n based on
> the pixel formats explicitly during the plane settings arm calls itself -=
 enable it for
> FP16 and disable it for other formats in HDR capable planes.
>=20
> v2: avoid redundant pixel normalization setting updates
>=20
> v3: moved the normalization factor definition to intel_fbc.c and some
>     updates to comments
>=20
> v4: simplified the pixel normalizer setting handling

Looks Good to me. Sorry for the back and forth on this one.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Fixes: 5298eea7ed20 ("drm/i915/xe3p_lpd: use pixel normalizer for fp16 fo=
rmats
> for FBC")
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 10 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  3 +-
>  .../drm/i915/display/skl_universal_plane.c    | 36 +++++++++----------
>  4 files changed, 26 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6c74d6b0cc48..13f2a629981f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -193,6 +193,7 @@ struct intel_display_platforms {
>  #define HAS_MSO(__display)		(DISPLAY_VER(__display) >=3D 12)
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
> >has_overlay)
>  #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >=3D 12)
> +#define HAS_PIXEL_NORMALIZER(__display)
> 	(DISPLAY_VER(__display) >=3D 35)
>  #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
>  #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)-
> >has_psr_hw_tracking)
>  #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >=3D 12)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 1f3f5237a1c2..9f39b6990bbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1215,13 +1215,15 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(co=
nst
> struct intel_plane_state *p
>  	}
>  }
>=20
> -bool
> -intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *pla=
ne_state)
> +bool intel_fbc_need_pixel_normalizer(const struct intel_plane_state
> +*plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>=20
> -	return DISPLAY_VER(display) >=3D 35 &&
> -	       xe3p_lpd_fbc_fp16_format_is_valid(plane_state);
> +	if (HAS_PIXEL_NORMALIZER(display) &&
> +	    xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
> +		return true;
> +
> +	return false;
>  }
>=20
>  static bool pixel_format_is_valid(const struct intel_plane_state *plane_=
state) diff -
> -git a/drivers/gpu/drm/i915/display/intel_fbc.h
> b/drivers/gpu/drm/i915/display/intel_fbc.h
> index f0255ddae2b6..6c96d690a2f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -56,7 +56,6 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_s=
tate
> *state,
>  				  struct intel_crtc *crtc);
>  void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
>  				       struct intel_plane *plane);
> -bool
> -intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *pla=
ne_state);
> +bool intel_fbc_need_pixel_normalizer(const struct intel_plane_state
> +*plane_state);
>=20
>  #endif /* __INTEL_FBC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index b3d41705448a..746e942cafd2 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -891,23 +891,20 @@ static void icl_plane_disable_sel_fetch_arm(struct
> intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane-
> >id), 0);  }
>=20
> -static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
> -						  struct intel_plane *plane,
> -						  bool enable)
> +static bool plane_has_normalizer(struct intel_plane *plane)
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
> -	enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe);
> -	u32 val;
>=20
> -	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
> -	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
> -		return;
> +	return HAS_PIXEL_NORMALIZER(display) && icl_is_hdr_plane(display,
> +plane->id); }
>=20
> -	val =3D enable ?
> PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NO
> RM_FACTOR_1_0) |
> -		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
> +static u32 pixel_normalizer_value(const struct intel_plane_state
> +*plane_state) {
> +	if (!intel_fbc_need_pixel_normalizer(plane_state))
> +		return 0;
>=20
> -	intel_de_write_dsb(display, dsb,
> -			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> val);
> +	return PLANE_PIXEL_NORMALIZE_ENABLE |
> +
> +PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_N
> ORM_FACTOR_1_0
> +);
>  }
>=20
>  static void
> @@ -926,8 +923,9 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
>=20
>  	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
>=20
> -	if (DISPLAY_VER(display) >=3D 35)
> -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
> +	if (plane_has_normalizer(plane))
> +		intel_de_write_dsb(display, dsb,
> +				   PLANE_PIXEL_NORMALIZE(plane->pipe,
> plane->id), 0);
>=20
>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0); @@ -
> 1676,11 +1674,13 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>=20
>  	/*
>  	 * In order to have FBC for fp16 formats pixel normalizer block must be
> -	 * active. Check if pixel normalizer block need to be enabled for FBC.
> -	 * If needed, use normalization factor as 1.0 and enable the block.
> +	 * active. For FP16 formats, use normalization factor as 1.0 and enable
> +	 * the block.
>  	 */
> -	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
> -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
> +	if (plane_has_normalizer(plane))
> +		intel_de_write_dsb(display, dsb,
> +				   PLANE_PIXEL_NORMALIZE(plane->pipe,
> plane->id),
> +				   pixel_normalizer_value(plane_state));
>=20
>  	/*
>  	 * The control register self-arms if the plane was previously
> --
> 2.43.0

