Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E90EC93CFDB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 10:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D1B10E2B3;
	Fri, 26 Jul 2024 08:50:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XLn2vNF3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC2A10E2B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 08:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721983851; x=1753519851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=srj/LvKpqzusolEwPRh/kd0LeXDQ2VXVpEc1PfDY3Ks=;
 b=XLn2vNF3yLs/PRYdfKWEo8JtCvcs9eUSgZFoKHoHAGCLcKdbZfAAbB7V
 6dtFXMNevruqiaAtbdMbzNUJq7qavBjhHo0CQm9fLGj1qHWc+1HKAqeGI
 RC4JEAlVaFNnbffk6rT3D/g9LWh5v5MKs/0I78a1r5DtJ+Xy8OgmtBVKK
 UcTkH+1EkL6aCrAk1fDhJ17IrNDBVpRI8KJcPPEMnwKly0JdIezOqk/G6
 x3yNyY2ptnNBd5uTE37my012LrUW+zTwAXu/z886RPnyOznEBJxKCUsJD
 Aa0a5hK7g/nnUUdRY8B+9VGF21lx+VgNhbM0dcd+RD88vlCSagd0g5+UA A==;
X-CSE-ConnectionGUID: Utb7hz9hRD2HEfthlrp3Jw==
X-CSE-MsgGUID: bJYhU5i1QEm/MdJ6wU5jgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="23566845"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="23566845"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:50:51 -0700
X-CSE-ConnectionGUID: pXuPSCiuSRGNiLbdhxlBKQ==
X-CSE-MsgGUID: N12CSftYTbSlgOCWbvZMVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53803796"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jul 2024 01:50:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 01:50:49 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 01:50:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 26 Jul 2024 01:50:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 26 Jul 2024 01:50:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NHxYPCnH/TVMWS1e15jwcyzDdkSozCzZ2cv9Eo2CEf8jsEiQzfE9x58WCft/suR18paVb7hnZcDXsnALEb+40V+6kxx5j4jD1w30umUNGsmLlrhXxRAFSsolHDxpit61/0MaF+x0535lzSXLbRaDmrMTa7NiyXmzx0ep5mWzwVCNOWKW1INTrOu7RHXZbYyV5a2lj6bqfNyyBmJ9y50gcuoyrOILXo14ya+oBPpoOITDGgIBojHA/iE54fbA1S6jHgIcJR4vveex+6tfGyLvo8jBk1ztdZi50i8vZ64T5oHFw7nGcoz0YULAunZDz+thpAzQRk83biV2jx8XmEwRqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/p3Jo8hUSifRauGdufSkuGFl8f+HLbusCNU+zBFktQ4=;
 b=E+nMRoK2X0ZWKaqjUl/ulNOqYe1tsyQQ7QxW4vsbI1xgGVudAWMtdPbzemmMOCzVFbDNqjl1YpDqpL6glzW8IBcp6pjoY9z5PCazS6w+/SDYnuK1jL+NnvWkMhhj/w+dNwAcT6jQNSJ60lPJYxA9LBxz2tV2cpT05diwMkMcxZs4Aoc8f0M1ct8An5HzLU9+0D58HdQzTgWQWfydDESZZVsD2t8t7LHgKvDFNJXEcg9Q3Z8pFplYz+MwQhP5aF9+kgMFeV4hqDYL9zJYkiCxMDG0S1i0x+xhFAvOln+uNjJnLQg03mOZuyLtTAP8TfYfbBsSvbUhUmHQ2UXW6Uqzrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CY5PR11MB6090.namprd11.prod.outlook.com (2603:10b6:930:2e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.29; Fri, 26 Jul
 2024 08:50:47 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Fri, 26 Jul 2024
 08:50:46 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] i915/display/dp: Compute AS SDP when vrr is also enabled
Thread-Topic: [PATCH] i915/display/dp: Compute AS SDP when vrr is also enabled
Thread-Index: AQHa3pbqt2VwKlahtE+3xXVk/2n9VbIHfEEAgAE4N3A=
Date: Fri, 26 Jul 2024 08:50:46 +0000
Message-ID: <IA1PR11MB6348815F3E5F7D158DE402E9B2B42@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
 <87jzh9zhk3.fsf@intel.com>
In-Reply-To: <87jzh9zhk3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CY5PR11MB6090:EE_
x-ms-office365-filtering-correlation-id: 20a60a86-1de7-4bd3-036d-08dcad500ab4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kc7mzBiiB4gc4kKzIaTA+/m4DpyB43jvG9nVQbHs++zIE7TWnWGAKoprHWi8?=
 =?us-ascii?Q?XmXjmttZ0fpRAcBvnCOHmgQkkUAiS9suzS1HSHVUuVAZnHpcQclHFQ/ZAOJY?=
 =?us-ascii?Q?5fnr5FKQMHb+IQ+APfFYbL9jvrBwA2ShIXAIztvFTCux9PQUDnkl/uTtVE83?=
 =?us-ascii?Q?1HebQF84vTT8nK078rMtnm9+Qp3WGIMtigRR6ukQiMKp1IEqFdU51Pg4FTjm?=
 =?us-ascii?Q?h6bOdZW/8BKOkIjEGn5jxMin2Fb0MslX8gE39iUcJIFAnLhXqiyJkni8GD3r?=
 =?us-ascii?Q?uSccVbwxaF2ePR9xNx9cDLi8eomEQ0icgXKfoge/jf1kyNvcZJu/vX8684nn?=
 =?us-ascii?Q?PfqFkg+a3ZIo4GIW3Zv8nlZtuqA5pBrQi+l7I7yQ6UFjWZsdC5MNqngfFkA1?=
 =?us-ascii?Q?6r6gNKW4uBmaJnwgAVfjhJUsVa6LhB7S+9uP8TTlIdtatH4+ztYoDsU+S+aE?=
 =?us-ascii?Q?PuGhcU4KQWdUvrvCIzqY8w9oRJpXPM/0nMfOsTXgjvpYih49jxiNQXjjE4Pe?=
 =?us-ascii?Q?eAzGdQj+v+ez+G1kKceye0+2GiDW2EupfGVS2lKlFDrr09ys9Jw3B4n19/pb?=
 =?us-ascii?Q?xaRt/jYgrCkaheQXgp6mIoNvK3hsgm4hc7P9H2pLy/Qo/K9ip0TbnqLvEu/0?=
 =?us-ascii?Q?SeziuuWv1CD7Pp24SbSMY1m4u7obFnvw5jHWr68LoLCFHPyB4+5OIOMe/SFz?=
 =?us-ascii?Q?AwFLV4sBiigbhqLGXm8qnbrfdSbgLrHcHjlMqxTNiNXdet2SVB3UGVk51efH?=
 =?us-ascii?Q?VjGq3iLeg1aHVaew19ad8DXKnR15Gz4GM/k+GDSu6rK0cgzjspK1qJp31csc?=
 =?us-ascii?Q?JYat84TAhF7oTHTiEbYcsZ9Deo3AObW2yWEl1rPG9Hw1cf4ys5/J7pIk1s4n?=
 =?us-ascii?Q?85TjRUIivSDRvSUvV40GkzIvKkOa3T67ow/2EBmgIVdI0g47cheTcOvb8Ul9?=
 =?us-ascii?Q?aijHneI0YrH45RBg0UZJ7MQA1Pz7CxAcX3L5O/+Xsx6TR/motvXsgCmlvf71?=
 =?us-ascii?Q?lmWt2XPKlQlv6QwpVSaVLsSLIQ3fsb2gtcGA4DK5V8RDC+qOj4uVYYzrFCaZ?=
 =?us-ascii?Q?d6NAs2QF4sDLEP2OWPw9uo7x+ixyp5ZRFl6VQgSaOtBqMWbpG+SgMaYhVf8P?=
 =?us-ascii?Q?uPreRXRWzkjxRUSd9wzUE5+SatPYQtOSwHMbkWR5DWQaSzZfGUurg7V+cZls?=
 =?us-ascii?Q?pyjXuMG5+DbEgqWo6RFINPUeu05CMW2swukikLOPD+rpmX9cuyD8B/O3wPh5?=
 =?us-ascii?Q?gMz7FHj3tPAdsEWB0YRDCx8i0f9cPfbEPaKGcO3NI9N1zCZwh8IsHZQnjx8g?=
 =?us-ascii?Q?trU8vjSgd5gkmasp1SGm7MA5Etdpz68yniorIQwFLKA60TuGf3e1OaHDaHRW?=
 =?us-ascii?Q?ZXX9kbDOKVtjfXrAn+zIELTeOpkn9+uMZdkJeYgWkZprRm46HA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U2DjmLi+UWA/oZJF7zfmtqXT8I6wr2LvkkWEYgj3NP5nLYMhztBP60UVwOBY?=
 =?us-ascii?Q?cCTrr66h63ria9i3P3fUP1spCRZDw7hRxF7Pv+MqGU0oxZEU57GYDFZa9L2b?=
 =?us-ascii?Q?0rEv/9PL/h/BrN/D2pPMB3W48U/Rpr4x6NPCl4nFCc5AaC9Cu+CxWT9D6gtj?=
 =?us-ascii?Q?7/Y3gfIK5Pq328Lq3cXfPhj7J58v2Ltv8A7vh/0yJuwlJpepbWBHauCM2P72?=
 =?us-ascii?Q?IEZWCxYhSTIcjn0NVnGCyWJSi1Kl+4RccFEM62MZxoAvKHj6Dz+2p3lDP/qy?=
 =?us-ascii?Q?N53rTbXXKdIA69pJ2vonxecSmKUZiftUw/JRQ9VOUuboxur+NMpRwcZwlav4?=
 =?us-ascii?Q?uuCtUYi/s4FbjoNm2hieiJhb/BIOMz/TVC2nb8P9lTQHVnvmV8VOyUhdfqSe?=
 =?us-ascii?Q?4vjAy8GRCJzjNySlcQjP4FazHVSzu1e3qiII4wFEdTq5Ben2UeQIpExHp+w2?=
 =?us-ascii?Q?Adj0GNDU70Oimv9BTffwC3/X3Z7TO3L+wFm6WP0a680gZzdBTjysa9JWVosA?=
 =?us-ascii?Q?ZCnlZLIRqEbHahg98J5cmIcPYl0D+ZzvSjMNqMtBPpSagwNjHkCwvlo91n5I?=
 =?us-ascii?Q?grruO5QLJh8UNUtZEAl3i0nwWgK9mb6akI90ppAq4brbvXd2ldfedz1WvkM8?=
 =?us-ascii?Q?+cbKhc+rzq2JXtFf4hXHkvsSMyiN4RS6i+fQCayU3IZMJVkX1UrqqK0jp8ou?=
 =?us-ascii?Q?bzK4lKbIxf+iURCWkSTjgh4qIaXn4giNbMZLwnfY7ZVrBXLPXe/WiaQ7tB32?=
 =?us-ascii?Q?LbMY9U31kShmB7fztj+Yuiv+XR+D2ZR8QBkFoYRxAm28qhfGu3m8L7JSTJ4q?=
 =?us-ascii?Q?dI+lb4NNoz/3O33gYlPm6Fv8/gh7esp1i4K6Nf/Rt+R2q4DO1HdrxPUEXr/h?=
 =?us-ascii?Q?bpNgsWQXEhqQsoPMalnGVoJ6nQZinFE/Iqq4DusYBwbqzZ3A9Pej6WMzvhxr?=
 =?us-ascii?Q?1Nm2EMc1O5dDVJ2O23d3tzlOgOB/hHrGT/ZNSWMGJVwwh6nqr6TUlZ61CiYH?=
 =?us-ascii?Q?4wDhtEmxlaMsfySg+jK55NjzBfQHVs3DTtyCJ3kwzdEEto+yWerzdZvs78Jc?=
 =?us-ascii?Q?TMcnHrIxw2LOjfxVq0Ec/JNyy7wtUm3bv8Opz0u3z1chCs0AlCiftOw2BQAO?=
 =?us-ascii?Q?/gFFOe8CEzMoYYETkAkvpTBGCMlb0Tb5MUYY9/rEOSqu4lmPKwLOZNFtiGy+?=
 =?us-ascii?Q?Ys81KeNmZHiRhJhYiwK1tBsPRUmPgGNbYGk2de3O5mXhi+4U2zVRNvlpxH3p?=
 =?us-ascii?Q?D3nZ88Vicr66drk3UCTzYOZwXYLf9szfPm2ikFnnVB9vGF2g4vjE+8Kxmcju?=
 =?us-ascii?Q?AF3taUTI+yv1xYVa6EvEhBDVbg/Hw/sQdaZpMljvQzjTCPv8hLdMTb5XPmgZ?=
 =?us-ascii?Q?Or+jHSS/m+q7Kc3yPe1XspT+WKdcs1rVZ7lEMFcKfJdEsx6cJDqszvoCfJST?=
 =?us-ascii?Q?P1CLh9O7fDLKm5qm7fxv0KUWuR45EV7Pun9Rh7B38nh+q8KgQwvL1Sx+6zQa?=
 =?us-ascii?Q?B5USYhU3PHc0AJWGQIn3832bDxTftBStJbd/QZc8232HQe+4Mq+bSsd4q/Qi?=
 =?us-ascii?Q?aS1K+afupjvUIHZSZ4vsWfxAxQD0jq13i9AemLjr73AM1UhaBbHGJQqGrtS2?=
 =?us-ascii?Q?mbbBUZ1Fb7bssEYyXvYTw8U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a60a86-1de7-4bd3-036d-08dcad500ab4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2024 08:50:46.7928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: owd6fcJ4RBSRLmP3HVW441te/3kxyJ0Bd4RjezdVgxVkwRs7qr5fUDUnL9gz2mTI4dSyStIj5rMCt4zpbAv8HlW92QYDaSlTRQspDRPLSJJ5Lum4uuwmEd3UFccpyCwv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6090
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
> Sent: Thursday, July 25, 2024 7:43 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH] i915/display/dp: Compute AS SDP when vrr is also ena=
bled
>=20
> On Thu, 25 Jul 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > AS SDP should be computed when VRR timing generator is also enabled.
> > Correct the compute condition to compute params of Adaptive sync SDP
> > when VRR timing genrator is enabled along with sink support indication.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 5d6568c8e186..dc75d1c14a94 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct
> intel_dp *intel_dp,
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&crtc_state->hw.adjusted_mode;
> >
> > -	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
> > +	if (!(crtc_state->vrr.enable && intel_dp->as_sdp_supported))
> >  		return;
>=20
> That's the same as
>=20
> 	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>=20
> BR,
> Jani.

Thanks Jani, I have addressed comments.

Regards,
Mitul
>=20
>=20
> >
> >  	crtc_state->infoframes.enable |=3D
> > intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>=20
> --
> Jani Nikula, Intel
