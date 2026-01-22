Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DinMAPAcWl+LwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 07:13:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B53622F5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 07:13:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F03110E824;
	Thu, 22 Jan 2026 06:13:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUCwm0if";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7870D10E1D3;
 Thu, 22 Jan 2026 06:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769062399; x=1800598399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m0FhvyHnprOp+i8eMABHGjAHuRSctP/NbGXtE024iwA=;
 b=mUCwm0ifw9AYWTAeYDQBNjnulseDXgPNzGApuSH3AV1x6lysqDgHsk9E
 0q5ypyT7tcm5WT/tiemCaZeVZZ13hlTn7G6xrcWps24jKhJb3ilhzmzwH
 X+tuU7qo7VwL1XRnZXU3mD0DItfBKH9LwijqOrQAEVeuqtYW732fWqPvm
 jDPUmq7k2Eh0T0XNO4TTAa91CiWS8q5HnzVbHCvISIlwiPUqq86Lkr7oK
 tWQZEyH1hkfvayFOjB5EB9b3tOWGkO3G606JxLSsvb2Ex/FJ3SYeyorRt
 fGxKdRnfR5yJotd9Q3C//U659t0rigjBr/fcvLcqaFGhXPOjZaBnNNCSX Q==;
X-CSE-ConnectionGUID: um+rSzzsSjmULeQQxNMc4A==
X-CSE-MsgGUID: MkDppDUTRzie+Rn/GHhF5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="80601174"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="80601174"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 22:13:18 -0800
X-CSE-ConnectionGUID: T3FogGZWT/uAQ7Xpk9sogw==
X-CSE-MsgGUID: pci94KH6SraAxEkfOXIsXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="206711314"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 22:13:18 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 22:13:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 22:13:17 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.69) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 22:13:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wVombgfWanqFzeMAI/yTLgRHDpGQYNdeLEz62XDw11MACsTy5yr0NojUKLLorEnJNq+TTOFbeY7jjZqII69114uO+3jkKZxt9F6GNDj3L5cAt9Gise2eUgtssHkZjABs9LL3JDgy2yTpY7plLp+oI9nbUeGMHR7YrcbuQesu57isvVvvBDXK0IlBf5k9nzXSkqkvtsTZPmhTC8EJMXWn56gruzUCuLalXnqVKH/2yrA+17PlOwWtBb9kygC05tk5dtGBqRRYKZ1rx86QpAo3vK7g4pNblvbZhfuWpWHzeVuLJzxIxAPdfArsx+0H3SaG40/Ue6IuwG3/1lJliy5SCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K7LGrnpeT5eTJv+Rnxlp6fm3G4D8XiVZgLxtNnjAi+g=;
 b=Tu8Gb2OJoHzErqhTakLrJKbNP73XcW7Rl7S0+eS1GXOYx9MUbjk+2uLjDU8vnFeWMt8tSelBkfcfuD07oRK12ebKizAar0yvdvQ7IbfMfEMYS9yRi4HPT8Hbyquz537Uks7YG8af5z1AM3JBIGCjXe/4tTQuynmuyy0pmHeZtJOVlOBWJXUcFnLiZ3EMlCCUZbu1KjJ+JoBgtM+ge0FlpL2F2gKPA5aw2eqkg94A6y5H8T3K/FeaNOsS/c2KVQ+NWVj5sjlM7/K4AqjaejCSKwacxrv1/bUARhfwQAnkdyVwkrGC0PZxGDRMjHYPgddajvNZSX7LElk5Zg92hCO1vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB7094.namprd11.prod.outlook.com
 (2603:10b6:510:216::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 06:13:09 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 06:13:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHci1aviHFq/wjGHUetjFwRlKp50rVdsEeQ
Date: Thu, 22 Jan 2026 06:13:09 +0000
Message-ID: <DM3PPF208195D8D1F01121C17C996F8727AE397A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260122041133.757072-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260122041133.757072-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260122041133.757072-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB7094:EE_
x-ms-office365-filtering-correlation-id: 76752e6c-0ea1-444a-8ae4-08de597d50b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?lsL+FznxY9/tJPYqK1lX7CbRBz8N7WpUNc6U2f3EVKfMzS/3jPAars4O+l1u?=
 =?us-ascii?Q?pb8BkBjVhY9I5IXZQHplJ/3pVOzTkfAHD9PZNkLCvFqjy6r3v3Cwq860TJSn?=
 =?us-ascii?Q?w6NoLxzyIfMfxgD/HjcQtSMNL7Y8AfrWU0zhkjOERCHntlej9ZgNwMw9wDiR?=
 =?us-ascii?Q?fmu3GoWmnYg+1KZkgwyT2sgW3hBLWd0zbCkSPnZcUmHlSUqrgS2e9GmtTFgT?=
 =?us-ascii?Q?kcK0Pv3Flj4Hqk6T0ZX7nifSMdAHhHtimYrmcwu5SGenDYSWwcQB0pqFmPBu?=
 =?us-ascii?Q?6/SbN1WWyTx95QBuc60t6bM52caEiBdqNvJXVjSr/s+P2qq6bGiVq4a4Cq+L?=
 =?us-ascii?Q?OU4JUVMrznp4WwKvfxJLKHKYXHIUmi+YH1Exk2Z17/WhOcp/dMG2WFb8GYdQ?=
 =?us-ascii?Q?hl+sA9nWn14G4w+LwKDzjEYxzDZhjEGN15w95iHeI+doZmQobJsn6yBmSW6x?=
 =?us-ascii?Q?Q/UwwCqi9cMXValDuMpVKqS47hcMqy1TV5KbHb51Bhrvz5NVQX2lcA6+VFbm?=
 =?us-ascii?Q?xdwo2DIVUaVZR3E5YbLZtfKHfUF6UOwStrUo0NvMI5Vw40NqYDZqwB8A0mHe?=
 =?us-ascii?Q?HpIsnQRo7iXXjb4itXK7irlN7LpSGD1yKeLtNMtdXsVjSrBMpV/6mlJgBC6U?=
 =?us-ascii?Q?wFDF7W6ZS91g7WcYxA2iqjt1qHlBkOQ/apDCeZ+RtFt3P7JWbTbKyA9lQlI4?=
 =?us-ascii?Q?p4cAmzL5jVWW2mdVJt0ReKhHUftHm9hO0CmQWboTq3zgaN7VyT1UvV/uVZ4p?=
 =?us-ascii?Q?r8b6vuSb7dFaVKlBu9oU3++rxzU/ZvDnUGtMhzNIiuYV8DBlnL9pmi6C3QJG?=
 =?us-ascii?Q?txgPRI4fVAbRVbjNgDBtSjOXwA6wutHsL16RKJGbUqLGS8mh6ccHDELlAzIP?=
 =?us-ascii?Q?sKzGqN/LLheD+ViHUnSOlfkDNv37t5/7skjyTkys4ma/z6Q/WtU2H/9u7k4V?=
 =?us-ascii?Q?czr5UJy5BfNWAJmFnMFbn0/OROAdHT8KWemBWdEH4aHs+cf2D1Wb5R1jxBqf?=
 =?us-ascii?Q?W5sBajE3VhhzBdapfjryLQ86JWI8XyB1jkKQ58MRSGG+K0vFDJHkUJ4PMXNc?=
 =?us-ascii?Q?CuWalYc9lGJ6winSvZI+y/+IUYjy0Zr+1nHz4vLJnzgcJIrfMOz9fG6RTOIG?=
 =?us-ascii?Q?eZCiW7JmCUnX0cP7n73PCXrVZGcbHptgqR4WbSkRNEd8751eh/QSfi1ECMaW?=
 =?us-ascii?Q?LDAYYlL4CsM7PoV4pj6yQDeeV+xqRaOEd7Pp0flC90QroWVhTGRV+DGK57+4?=
 =?us-ascii?Q?uOlkolElf3j4lbP/jdEWhwM6hvTM8V/MzMex+Ajij9LTzEVEbO3xHbDyPzHb?=
 =?us-ascii?Q?ZOfGk9W7XIV8ZlHbDik0FZe9NHna90zcBFBv34OMkylUJo59VGzwEA7Pu4Gn?=
 =?us-ascii?Q?GnztKvthMDqj6NExehGV/MolOYGzoQldd9P2tj2AmewvM8qsxgqaSSB6RgH4?=
 =?us-ascii?Q?eovYY+OrN5Nb+yNvjhaBfuNiTCxpMGIBwx2cA9GivGg5/v6Z8RmYCdIJzy0D?=
 =?us-ascii?Q?6+2pcCcC11AsAYageLEvF3uwCOf2AOvCuMBIQfX4cILQkrILdZWTPBpazn0y?=
 =?us-ascii?Q?V8q1O/P3EuEKLTR4NNECV5q6RUxRucgtohkhv37x1kzKVotyR0lpSnDCaHgi?=
 =?us-ascii?Q?lfDSPJFcNuSEL55mmBEhJME=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gT4IXoKz8w/eevNBAwlj4vJPwYoSfwNLxIH2oxTpqKPUDDu+NkoB7IcP31QO?=
 =?us-ascii?Q?VrVwMb2mbSE1XPphHgh0S6De19ZySq6z2xc5VnOHevFkoulplVVVa2Inbvh3?=
 =?us-ascii?Q?MccnkXVMIDlR4AG/eWQswSqk6N/8CQM8L9lMLQGXIdvbkWq4AZH6igwSIgTj?=
 =?us-ascii?Q?RwSpQ5ZxsyHFzR1jiWLX+0XkTn+/rY8uq339C/ggsQ9DiANoePxKO34+dbEx?=
 =?us-ascii?Q?0hWGGzhycqyVKyKPfv/y0J86+T67mCZEQ7Ewy3tGojEn8LEgsJdW2G8UggT5?=
 =?us-ascii?Q?j7NPNCVBNA692qw4EDs8NOE5bpz+BK5eThrImTS016WgGzH1eyRU5RVS5DAe?=
 =?us-ascii?Q?L1/SzJlFWNdsdOs6mKCySfWSBD4RQYdgveN0AgVNc0aBfgXk31OLcbc2fcnv?=
 =?us-ascii?Q?/AMT2sVsL7OiMfyiCU7gwdgIPLuysWfaNT1U87OovedrqWwYmXTIMD9vFJLo?=
 =?us-ascii?Q?SCqegb7t/GdhxV/3mHDUpDAam0kFN+138qvBkDIs8DYlMuxsp/GK9cY8gj/m?=
 =?us-ascii?Q?EnThHevswpNU1qH+nNNTDNyWi/8IGdHJvi9gqr2oY90P4Kzx29XbKvfWx11r?=
 =?us-ascii?Q?HLbNOqqCgJVXQGM9/0o+/7GtLRvT9yXitNIZ7TtqfMlFhyNiBuYKOwoZ125m?=
 =?us-ascii?Q?qnHr9mee4YBhcuOjS7JPB79D5X6sp2dXjx4s67S1JqwPuUBNu5LKkKtDSSGN?=
 =?us-ascii?Q?n+/piZhSlLLedYyJcukHd28+byrZqGDXfPM1yAkBznFPWu1WlbQk2ec5bGR8?=
 =?us-ascii?Q?ss5Jn3ZdTm9SyF/iZhRdMuiEI12jqfqkis1KOt5BUD7aEQ58eQ7yRDu+mgqP?=
 =?us-ascii?Q?0EFdARiggBS9oHMvu2JBImtodYsWoR+p7ogpKNc9JdXD6uKKbD2fK2qtXwhT?=
 =?us-ascii?Q?nGTRTkMTFwsNxqUhnI7gBQ6QHxBx71Vaa5i7Bi5yfaTnqUtPmJqYR04Rx58X?=
 =?us-ascii?Q?Q7jt3TcYMO56a8XW581bQYvdkAQLA9nDXQn+aEZKCjJk1WSrGNOOjNo+YOmC?=
 =?us-ascii?Q?vOcZVsKL1hZcDRdo+gIrqtZcysUuZf8bZoEwcUDZVza8loDcZwBWkpadN6rA?=
 =?us-ascii?Q?m7vPnHAkn2G9Om+C6XfJyPVnO8NTVGqN3H5tnBczzgMu9sQn9S/t+j71GBKc?=
 =?us-ascii?Q?SfRydQWEuJAWies7swl/HdCttDntDJ5o9vf9kBl0DSXBzsBqORBQcXaB+UKx?=
 =?us-ascii?Q?HhcG+MSzwdRA9xN//t7fGXo6DxfLp9DSbmiibm8VFQTOH7jI43ZQpbFhLWrt?=
 =?us-ascii?Q?b7QEM1RWfmrzG6Gnf6zaE2Yqwy8SPDWsSBkiQaRfmfiRvTUfiN/V440ozRXC?=
 =?us-ascii?Q?1cL1DDFc/Y6pNvoxYJcc82e0QE/KW1Q7CY72TCiigCRHVrVWM+HgqX4R/Q2m?=
 =?us-ascii?Q?+2L/oEXY325yVJRjSXeyD/vVsH/pH5ITB+TXRtbZeCeWFLpMgGHrbOouNbaY?=
 =?us-ascii?Q?FxYmLxP4+cbCCDdCB8bwo7Uk4nfNtA70F8DNK0FrGLL0hZkXvKXRQFKbSEOp?=
 =?us-ascii?Q?5ziwq6Nv4LVOeEsSI8iaMxxl1p83B3uG2loZlUwvqiiRvOlycS8ZfCm0a6px?=
 =?us-ascii?Q?WBEfi7SWdoQ9wSazlSAFjlllBtzBriQQlC59xcx9vioVOoupuDT/v7iPYV3u?=
 =?us-ascii?Q?VImzxkaMInGG8ya3KlAVQUe2SEm/anB+rKSqY2Gx7dI0ZAq/qTBD9sop9yR4?=
 =?us-ascii?Q?PNgYbyobLIrp5oMDQnDmmJuRcLBO+oPOzHVJvC7oLsjyQH6UXU9l+X/K2sf5?=
 =?us-ascii?Q?o//JaNVwaQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76752e6c-0ea1-444a-8ae4-08de597d50b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 06:13:09.2886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a1JRIcAJOmo77dYJqEBldh0nZodvlRIxUBR1zgtIQy/mN6JuS5x94P3ZdHFkhwOhfimAPjlazbAAjx0815JDpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
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
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[131.252.210.177:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.18.126.91:received,52.101.56.69:received];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 21B53622F5
X-Rspamd-Action: no action

> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
>=20
> Reject PTL+ platforms in intel_ddi_port_sync_transcoders, As port sync fe=
ature
> is deprecated from PTL onwards.

Instean of using PTL  use official graphic display names XE3LPD here

>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..be774c6d24e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> intel_crtc_state *ref_crtc_state,
>  	/*
>  	 * We don't enable port sync on BDW due to missing w/as and
>  	 * due to not having adjusted the modeset sequence appropriately.
> +	 *
> +	 * Wa_16024710867
> +	 * "Deprecate port sync support for PTL+"

No need for the ""'
Same comment for PTL that I gave above

>  	 */
> -	if (DISPLAY_VER(display) < 9)
> +	if (DISPLAY_VER(display) < 9 || DISPLAY_VER(display) >=3D 30)

You need to use IS_DISPLAY_VER function  here

Regards,
Suraj Kandpal

>  		return 0;
>=20
>  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> --
> 2.48.1

