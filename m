Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEtuFmvkjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:44:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3051342BC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA7E10E7B3;
	Fri, 13 Feb 2026 08:44:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zb9Mgmhe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B70310E7B1;
 Fri, 13 Feb 2026 08:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770972264; x=1802508264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EzjxPpFr3g9sfKQKO8NvB+SSZYOBKIr6b2QyJNpjAIw=;
 b=Zb9Mgmhex00knTjvs/RgRwoYdtL2hAFW9UcY+QUYPtlue0+CNzphthVC
 6LLThtfabeNlaEXY2t8Q+Y6Lr0Hi/ewHPgpqzHG9/BFcAZ5Mosrehh0PP
 mXpA8bbsH0zvcyMbG/ANJKD+AzS8DNUXiwLYUpNgPyE20y9sfSnZiNbHH
 1nE/4EWtCe379qw7XfNpOE235SQEuJgqHuDegWuXC1jX7R44NxXfR920w
 42Nr/2gYO2dX9ryPKMYHtCSk9H2B2tSwYjM/D0I/nAnVKxcvW00fzIh+O
 JshnqHixS79Md6GqgqTqMWv+trX/G9c8W8OIxW/qh/TuI9E9Y9vOaSWo5 w==;
X-CSE-ConnectionGUID: uNF8eNc/TG2mKhrYPbBO4g==
X-CSE-MsgGUID: nOsOZmNATKC7SZbNncZdVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72049332"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72049332"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:44:24 -0800
X-CSE-ConnectionGUID: KVef4IzKTg6ZDPo/x2y2cw==
X-CSE-MsgGUID: H9u+H6NwRmKb09sb9FFpiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212111531"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:44:23 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:44:23 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:44:23 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:44:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TTz4vCOMnDOo/BAh5EWc8Om4EwWbciyjbOHzn1XYP81rbb7T7NZrLHDuEt4y2tVASdkO7KVBXs6KWy1HZ61EVYByBp9niQLUu1SWFFRnL988MYsPTearSOMusm+QIruX8IW/D4piXL7w83J4eceWHXpBXwFrck+76pvmwlEJB3oQn22kHaQst0MezXgjHbd5yvnOfIP/pJeZXyN+qswgNEw3Yul4SVuC93T7bAtckBAjTa+0X2Oen7tsW0ONY06PhgREkobOtAaWbl9ONWw6ZP+N3yexvDlEckNt0fvyAunIOCoKMifhvW6pq2XQ3i8PY5DvToRJMgZkt6Nmosbgwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6VwtJzlptlrhTcoioLaUcJdOIitJrsOD3WvMgJDNPI4=;
 b=GahHB5s1a05pHLceQ2JHBYNHmp0JcHtNyks+L+voGx0KpsrCzeH42kjQGpCnC+dFBcgXzeWXBD1qUkGki7He1pTl0Ijtd/6n2XpVXUZvmxbSb1F5fzSXny2AQykb0KIB+QWunfUgbKr1iO66uoj/IzWAPvo1GXKox7crkkmDsOqJHiJ6htZNMJ0N58yepIzepl4sK3JdsophV5NagmvaBht8kiQO+KrG9P4VJlQCAFn5Yjc27734MuU4uxzYkfv/3CDJvbx1+TGHakqvNAU9aeYzGWu1KV/BwBDosR0O40/Vf/5kAZlOv6i65UOg98I265m5xtvDM3ql6zeGSCpj3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Fri, 13 Feb
 2026 08:44:16 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:44:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 03/15] drm/i915/display: convert W/As in intel_cdclk.c
 to new framework
Thread-Topic: [PATCH v2 03/15] drm/i915/display: convert W/As in intel_cdclk.c
 to new framework
Thread-Index: AQHcnFBFkbp98tAeTUKIee+QHfAPfrWAUPxQ
Date: Fri, 13 Feb 2026 08:44:15 +0000
Message-ID: <DM3PPF208195D8DB0996DD45731EB8ABAAAE361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-4-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-4-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB6399:EE_
x-ms-office365-filtering-correlation-id: 363743a5-7186-497f-2357-08de6adc11fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?B5T81bvnP8mfrefhMmPgVzGB1wi1qXpXvFd0WeXXkr7VPY4yq4A/VBfx8Tl2?=
 =?us-ascii?Q?Fyl8AKl/1TeUsS/SN/P+QIr3/1jnJHyTJZdPMm9Xx+JdZXcKICHuYaIf7exf?=
 =?us-ascii?Q?KKf/D83u4YQJLI9dTGZBH5Mr9hOheNJCGGMczB2YAi2zjtz5ry2Sy6O1DA99?=
 =?us-ascii?Q?Yl+kmShQbqcrGLPSCZTAdR1fRLIU7c5FM7c4kmBYhoVn9yC7O0jJUjR6c4o2?=
 =?us-ascii?Q?TM+ShSys1OhZCUBRkWdMOdA2mrYsiEF2lhy5S5r1TjCjafCBXlL/J8riH78v?=
 =?us-ascii?Q?P2084NjKkhOqFsKcUSzknL216mA8fLNjCKB22E0l5iwqR2G7riET+Ov4KqEN?=
 =?us-ascii?Q?O8Uw8E+jJwriqGb8GZ5aBSfs6kNH08x1ovWBh7LHuRnNflzFnXIgJ2RV342s?=
 =?us-ascii?Q?hg4RmZzerNELPbYPgKAtf+wehL0dCW+MmLu8VZ2bnVmjJTQALzXyaNK/Fbc8?=
 =?us-ascii?Q?n/D4kocNCRadj4Np13AoOc+cQy4gRMan9L1q+EPLqKRgLs/l/eFQHV2jik9S?=
 =?us-ascii?Q?zBMQVztAYanCfE+jr3K4Jtgg6Vz6szRMV09XQzSNmX8H3B7YJXJN2nCmxTIS?=
 =?us-ascii?Q?4kyuoR/pbmRm1FdK4UKbgBpAbV512YA2dUVdS9swXdZSkTMSXlKQ7x0kLnfn?=
 =?us-ascii?Q?J2gvPtLrUKA0Lrj1ejkSbn/qcuzEvE5mPaA+p5GZTMMEVxEGg/sjZ8bhLWzm?=
 =?us-ascii?Q?NPp7V4/NuCemrOHVOcLx6qFghw8k2nOW/U9Y0S3DmJz9BjnSgs6hIDvmQuJY?=
 =?us-ascii?Q?49O8WwwBrTOe11e6DujFagvN/JDupB7uGxW2lgEEuUX06UnnY3pwk8hgq6+b?=
 =?us-ascii?Q?gLffjpJ87Ad9ZksuCyxylVIBuSae4XrDgJUxZJWd/NKpXNacBcEqrwGnGR+2?=
 =?us-ascii?Q?jmXiP8UCMnw5AMMS4oYBItf8U3rV/c5fIxVcYqZRbeIIYf/O0PQCIOVGcTRT?=
 =?us-ascii?Q?nOlqvgCV/RJy0BNDSoWLaeEAXvM+8b3R2hJVBo/UjtkP3MMwFtQGcG2lH3Bv?=
 =?us-ascii?Q?e0djX1tLpLOxh+asuMrxjxH5JkX7JmI7jQDxK5uI0TSK3JGQtfAQBF2gXgpO?=
 =?us-ascii?Q?87XB7ZX571iTchZLK/7V2teo9Qv6j/DEEd4jaTm3WXHA8hW1Bx23o5dgqa+u?=
 =?us-ascii?Q?Ji14U34aLGOF225MytwTmRjub/lZdBpKTnwq2Bm5wbf6YN7RuVTL5p9M9W0l?=
 =?us-ascii?Q?22BongK7VtLXuOzkNlZEAluhsTC6MVAXU6Y0/H6+UtV54fcw2HBeWLpJZcPB?=
 =?us-ascii?Q?j6E+oBFZs33XMZlZyptRu9Z/0/waXUct6KrwkzMK8dIj31K2WHO0mAwB8W1T?=
 =?us-ascii?Q?a4e68vY8tvYdPHH8RrCMpCshHO99QYZADjaFX+D3sip3pC4pXya3e/4utRei?=
 =?us-ascii?Q?OvXsGnKMvfc8KULvkwTTIYhegZrkWtQP2LohaoV6janBL5/KVo6I5WKhk1TX?=
 =?us-ascii?Q?BtOXfvyPBKG8HgE5Dsmq5zGGj21THc9pDUah7FX3ltm89x/YBAfCZYkrxOgp?=
 =?us-ascii?Q?H4a+V/2Yu1W9cIjoPfAB810YpmSij121xzNmtCwdU8LUWDbSrlrNBJQsPk5X?=
 =?us-ascii?Q?gb3XFjZ1xmDfcI6s9D3yFT7AaNEPblwIBNCXpK294yZGXsXVstfNUw1AwljR?=
 =?us-ascii?Q?QIiEJ0kQD4OtPuGBMYwbe4Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uZ7TKFe1c9HCmXJlIK/PD18ayGfKTBdlqcu8yL8R7cBOcDIwZJudhCR69QSn?=
 =?us-ascii?Q?iGc37jGbE0EbnOs+xuOeq8eEHGC5cB1C4rITfbKJDgUq3Rc889V0kLzy0MhJ?=
 =?us-ascii?Q?DY7+Vvlnlo88YSr27Z9Tzfj8gxA+JYLHjI+E86VHEu6E4bPEBLNOCuwUWdQf?=
 =?us-ascii?Q?sERAeC0fZ/OkdSBBLqc+CQp/iQuSjgFpk05Lyxq/nI70e/GLX7T+LffPZ7sL?=
 =?us-ascii?Q?9trWHHA8veLnxs3LaQW/6ni+3dKMtLwkF221uDaK3wztHYz+LZhyZkINQ8rs?=
 =?us-ascii?Q?nKRhPfEj25kBZSng9ckUAB9oL+/I5fo3A7B/IacqnHjrOLHi23Rjt2CfwnRn?=
 =?us-ascii?Q?UdT85znSQyA9tq0VcIS/O9cnl/1RMmhjCFr1BKII4FdLDd9gCVlrYr61qg3N?=
 =?us-ascii?Q?dSFRjBh14N8cg6FK0h/8YkEzYvWE08hyJ7yfgyfCv7afODbuzxryhwVdTAnH?=
 =?us-ascii?Q?kDvc/UNYbCTTQkGDp3g/RlcJZ5nb/G0kk0TV6k92o+RFywVXMh3q8jiF7XRu?=
 =?us-ascii?Q?14MkKsu2aq0IxazzqWrrX/Runq1uyFKBGDBx2a/aYzp9HeZ0fpc28Vp80dCq?=
 =?us-ascii?Q?R8XcjaB6xRMXjAHTI5Y1A0kTpMVFsIbOWm1CNupt9evxLGf99II+z+87AtjN?=
 =?us-ascii?Q?mKCAu4BDhIseAeGU60mzUtKyMqdh9Nnf8XdytEIwX2ZJ5u7W6F4gENISHGox?=
 =?us-ascii?Q?AjPJ/pqp2Eelb39E5qzOIfmAzfYwksp9fITS/B/wH9RoawEKukUiA/TabwaU?=
 =?us-ascii?Q?gXwrCmz0CtU74xhynVMua3hNpICw0rSnJugyOgo5rM7ztJ9krIGjOGGCe3eg?=
 =?us-ascii?Q?UlZ86mT+PwQzV4PmbGyHylT7j2zxSbH538/8lGqxAKOdiI51sAgzZDu9D1i8?=
 =?us-ascii?Q?DM/vWgRX8uFBlr14oBI1KfRFoNnZjQxzpxn97wQh3bKhECbwys5ZfN6vjClK?=
 =?us-ascii?Q?OhVzH/z+iyrzeObHYcb9n8ALnS8VDNehgTTO35HQqNkVZFOmxrLV+zaOz/Bs?=
 =?us-ascii?Q?ARIsGKwgpegesgYLlqFVjNOphyVaycc/zP8sBAJ8JHYl6MY8HVZ6C31djtsy?=
 =?us-ascii?Q?TJaVvNhVs77R0gKikGoQmOuEJWYRRzm41Ji/zG9Vn3CMCaNwA0xXIB00DcNG?=
 =?us-ascii?Q?Bs7xTJRRqLxi0tpV74Zy7raJY4Hf0QbrV3ZiZYHXQvY+qd8cvj6RXNAzUjW6?=
 =?us-ascii?Q?OKeNNRQ0uHhYw6wG7AbzyTjDKviNNhIUEZj4A6piov6lPQ1CWn9OoQp0TxTO?=
 =?us-ascii?Q?MEUDvrV6TvKU4e3vQjhwhqZtpHoq3ikf5hZq/jct5OyKexv7zDWQpo0YhH5N?=
 =?us-ascii?Q?GzPBfXplcI8nDcjzOrqscmehhcFatcvygWewPRVS5xJsiKwf9m72Yc7K8hBj?=
 =?us-ascii?Q?k3F9MYMoVBCxByrWHu6JMAmtyGfNPSiz+hd9IEE6ZSaYSuDDiL9ZF5R8hyP7?=
 =?us-ascii?Q?ml2t9EmN5jB7fjeMTMc6CXVzfSBeUTsLABiaHyXLHi5PV998+cIKrgMgli4K?=
 =?us-ascii?Q?jsQI/7pKo0xyvhIC2EFRSXIjjkXFuVtcSV7fh8XxF1OYjyhElvVxSbgalrEj?=
 =?us-ascii?Q?o9YXd9MQ2LUkAlqr9D2nMVen2B4Fj6FNfm+MKMPNWww8NrAuZt5r8OzOAcGw?=
 =?us-ascii?Q?iLC8hDeQhbuiZMHtyRaGKeEjljiuZHPxZX4CZfrxvZIKzXoJejkI28tf4nMA?=
 =?us-ascii?Q?s35QHIsFknM/fjRyZYls/YGg92Y7OiDL4FbmeaCrw4Z2AyBqnO2C0UzvPGqi?=
 =?us-ascii?Q?gWWCHpEhAQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 363743a5-7186-497f-2357-08de6adc11fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:44:16.0146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bPoCVbhTszeLBNSQolc51lRuJi8+xdfOyMSZbLg0SQ6lIM994WE0lTnZ8EpFwxwXB+aInxH1uE11SgvxKkO1jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BC3051342BC
X-Rspamd-Action: no action

> Subject: [PATCH v2 03/15] drm/i915/display: convert W/As in intel_cdclk.c=
 to
> new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.
>=20

*intel_display_wa.c
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 3 +++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  3 files changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 29d90d612bb2..927b05038e2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -4006,7 +4006,7 @@ void intel_init_cdclk_hooks(struct intel_display
> *display)
>  		display->cdclk.table =3D dg2_cdclk_table;
>  	} else if (display->platform.alderlake_p) {
>  		/* Wa_22011320316:adl-p[a0] */
> -		if (display->platform.alderlake_p && IS_DISPLAY_STEP(display,
> STEP_A0, STEP_B0)) {
> +		if (intel_display_wa(display, 22011320316)) {
>  			display->cdclk.table =3D adlp_a_step_cdclk_table;
>  			display->funcs.cdclk =3D &tgl_cdclk_funcs;
>  		} else if (display->platform.alderlake_p_raptorlake_u) { diff --
> git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 80eecfd33a28..f0311cd477a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -104,6 +104,9 @@ bool __intel_display_wa(struct intel_display *display=
,
> enum intel_display_wa wa,
>  		return intel_display_needs_wa_16025573575(display);
>  	case INTEL_DISPLAY_WA_22010178259:
>  		return DISPLAY_VER(display) =3D=3D 12;
> +	case INTEL_DISPLAY_WA_22011320316:
> +		return display->platform.alderlake_p &&
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
>  	case INTEL_DISPLAY_WA_22021048059:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 54f5ea05b293..0d0501fc276f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -41,6 +41,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22010178259,
> +	INTEL_DISPLAY_WA_22011320316,
>  	INTEL_DISPLAY_WA_22014263786,
>  	INTEL_DISPLAY_WA_22021048059,
>  };
> --
> 2.51.0

