Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGdrHcHD1Wkx9gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 04:56:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52493B65E4
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 04:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F91510E501;
	Wed,  8 Apr 2026 02:55:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hEEedLyP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D376910E500;
 Wed,  8 Apr 2026 02:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775616958; x=1807152958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=isxXHefFrRj5oc/JHUL53BmgDwCulc4xu+57lNhh/GQ=;
 b=hEEedLyPksU6zLQIdl8iwnLOA+qvnsynS5LAyFJFiZom+5ZyIuO/BPmo
 lc+tTZXEJvSNzXbea+3oM/yjAPfA9QZhpZDeqtTGClV4G9tmD8E/rTmAr
 nJHaoGgsOMcOIg6D7lyaicq9oRUf7Kn09WCFOImob2Kt2fjYmVGh3is9c
 /McaekuZXuNgKNPJsD5j/JMJG+4bJRPLms6QGPiHynEB0itJSZTSBEb6/
 4Xe7GY1WcLtvUUTzhvpmHpBhDADgB5zDKPtrqZ1lVc4qg5PL55w/EVIZe
 eSEnf1luB7BofHKD8FLudmKg3JViNWmcFqaNK9wiPqyJk6tSea2cZ8uUo g==;
X-CSE-ConnectionGUID: 0Z7jjsEMR7a4cwW5wjnuoA==
X-CSE-MsgGUID: EM1HDJwzQM6StaLvFBSX1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76603608"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="76603608"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 19:55:57 -0700
X-CSE-ConnectionGUID: XbMLXlFVRIKYHCNWQ0SA9Q==
X-CSE-MsgGUID: PQBqPhw+SCOByAT6cvXT0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="224042894"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 19:55:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 19:55:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 19:55:56 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.33)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 19:55:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fd7wjwfDDCRN2iwSldT9NcVKuG7YO0Uqu8/UFDIY6Q4ovhdgkBqJljC8HyxM9ZDWW90TuLivrfw3Rc/c5bwsawTafpjKQfd5IzrgjNM3yJAAV6eP6+BFhWlvc/RjZToBSY8d9H/2kbE42tqvljOoB/UtdVRwG/9wDMdoE2n/eE19JozPieJLl/ud71485n6+F1Y6Dzw92QTYNgrwOspiZtZH/kKPzYG1BTb2Rv2i8KL1K2ezaW9Z6R5WBjr8BqgJcb4oE0RuFrTDL9rO57ciAuuVp3rV8K41BTnHrD9y4hF9NsYrofZ+C817nri+pNfdpk+6zlmK+x+nc+ld+zr/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jfsd1DQe6T6VkLKTwbINSQIUqouz2hmKWm+p5ff9cYY=;
 b=EFKuRjpEzNRNAULJXr4d27Ci86cFR5J149EQ0fe0CRtai5afOrTeJfhBiB9341k7jqB4vnMCuGL96WRM85PCPXsw5rxH7WQfkgmODmBZ0qV2yyfVKGT/MEB9MwoLGRpMvZoSdzBwmLrl9uv10o5Jxz9afKEuROK5BpJb51nqNOdj1Tbspu2dvWjoBGyKBJRogmjDN5esYKNd0Sm22FkXbazCdoHMQ9mwn+rmQvDZT98quIAwFbBxvBJY4Nuo6o10WGGJkJBGTUVTDUfEQfXHNPnIWV53x0FHrVRVePXtSX1W9Fb6qd7gNk0jpZoomA91P7AhFLR7/zA0GQAoIQKyoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS3PR11MB9672.namprd11.prod.outlook.com
 (2603:10b6:8:38e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 02:55:48 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Wed, 8 Apr 2026
 02:55:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 1/3] drm/i915: move intel_fb_pin.c to i915_fb_pin.c
Thread-Topic: [PATCH 1/3] drm/i915: move intel_fb_pin.c to i915_fb_pin.c
Thread-Index: AQHcxnYOixxivfS5pke4Dkg8nyuvi7XUeUyQ
Date: Wed, 8 Apr 2026 02:55:48 +0000
Message-ID: <DM3PPF208195D8D03A5C5F4A4796BA3D6ABE35BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1775556190.git.jani.nikula@intel.com>
 <ab1ffc08bcd1364715396142f91780b6261bbe65.1775556190.git.jani.nikula@intel.com>
In-Reply-To: <ab1ffc08bcd1364715396142f91780b6261bbe65.1775556190.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS3PR11MB9672:EE_
x-ms-office365-filtering-correlation-id: 6fe99b1b-291e-4652-ebf6-08de951a564f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: vNSSo7uxk0nuyTixc2P2C8GqeOqST1ep5TtKCrwOYB0wo2gTWovKSbYs9MG6q0RWjXpHmxixcm24em+I9IbM5F0kyD11bqMscyzVR2SyVFiAwhdSpMpCYpXQvr/B8X3DLHuRYiIHsbz3VaaYPnyWcF9xnZjNxo6J91/7AHvWwZ8uBIeWkS733/wZI6IFM9ECJwlr7OkqMG1CA+5bz0xOKtGkJ/vLvZ6BK7MX2bXkXuGfsQeOvBeC0gyjIyNugPXadL3h4zaJhx1IB7ICI4LCnDqCip0TQrGhGR2vGxWxYS3j8uZ1hIjGgm9+cfuXqwELbf/jWQtiqz/Zp9eZhp3SUuXqya5Zlg1Gu0DvAuCYfxBQk/dn0Vgji2+T9OSEFTkm7kelA9BgtF8f7rxfdkMgJ/a7jfxZv9czccebguuhXp/zzhyOPh/j5hMSw0/cDZa6A9B6lv0NYKjVClZ5ckwyhoZFt5WN9GRVjPfXpqrVcSO3rjzh2SMbNXgNwjS+KvrLR5Y9kIi++q1IexHvs+xQoqJd/npDUQN0YRhb27wpTtge7qNUbjS0qbMEPs3NTLQ3uG8lC/YcGWpTkii9sZqSsGVp/ezlVIizlLP78UNVHFm3Hi73rzNyBtAy/5BU2lhDdMGE73Lsa3BH7GfGjhTb7BccCtdE5+C6ARSFtCgdelAdv5h2hS+kzl3DM/443ipS0ggtxeruP3dG9BssllNdpRZ/jGKXVElEipkJdXieNjnp83zmfP55BOl//XW9kaWEbl5i4oeBiiQ6vmGHwSW1bZQZPpjJY1UBQtr74VVjE90=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ay15WbxympQ159gZYukDNMtsXzw4gb8zqcibtv54D1OAORux2wBayxmGRtBi?=
 =?us-ascii?Q?h7wFhijtqIenR1lIrsWWbb9dxzClRw/ZMrKU1e8nGdRfcOKY1mOlSndNJI6c?=
 =?us-ascii?Q?SflR8FW2A/+IzHHwDcu4RJXenzGRtw++T41nA8gNNYIPEn3Kg828JKPL20BJ?=
 =?us-ascii?Q?jIHTW8nez7WWzQ8A6JCDLtOHiqb/LL9hp/kMbHY20Obe/7Vd3xlZ+qiOvplB?=
 =?us-ascii?Q?+oBLuKyk2LlBbwOS6eAWo7Ydc7ZAQWYgC4WfacLahXhZON6KGihShsjmA65n?=
 =?us-ascii?Q?A4T9TfOLu0evRqLlojLKjK8tdw/Zh0d6Es73RKpGC5qeABwzCKKzZKN4CZPu?=
 =?us-ascii?Q?uAocSv8RKggkk3p4v2gFuVBQxrk2LaL+SiKFQrNWMBuBV0eZzOv2bkEwtUYP?=
 =?us-ascii?Q?ct/5wGdK505Opbi/kEDPTbFgaqZ2RsboLmAPUmOW4yYrb2DswCjm/rBoP1A7?=
 =?us-ascii?Q?ILnKBBNbjj+ER7sABwR61bKBON/RXyjlyxmnQWwWZC90PauByTEikIGCsxWB?=
 =?us-ascii?Q?q6zrui12XuTKA+J2Egd5HK7xmixDFi1FgPypCwOGHgD4X9TMgNG0qYqDtNOR?=
 =?us-ascii?Q?YE7hLLVZRq/lnjy0a/XZ2E+arwpY/lSozhDa+9Z2ekBFH52cQ4OgmcnsvjQL?=
 =?us-ascii?Q?8AHoj+Nf+/VRBBFMQCaeliwCxImpzJ60LMC4WDSxggiXz7q648PK90/wtuQB?=
 =?us-ascii?Q?fAMhEEr1fj1SISVd3A1ZwPiUmYoSY7tG3ukxrxBLiYOywsLfWbHY7CBA110l?=
 =?us-ascii?Q?ft2isVRr9D7T0OhaiHV7X9dy3XNHQnVfmc6+W2MU63SAuU0OPC/swduZyIuN?=
 =?us-ascii?Q?rpejtqI+evq4p/PoOQiljIuI4s+6tpJU49VdmARjXQNQWCRs5dA52tm/Vvte?=
 =?us-ascii?Q?NDOhkykz3OuuD+8H8HcszQtZNJMe25RtxcsXELZ2MD50evTeYD/45NGVjoF1?=
 =?us-ascii?Q?E/rKQtbur34j58xTwBh7HlH1W7iRASGB6OO8OAVPgh0q9QSr3QcmLz3kOJgd?=
 =?us-ascii?Q?Ycs7Y4tqp6wWsetw6ONuZ/mPHOc17WZf17V5S0aOM99Ql9ZQ/savZRme+5HQ?=
 =?us-ascii?Q?MLa1IekXznznQyWODgmawpLXKrx/bEyskyniZboYvx0zBwAUA7wpUPraYM1g?=
 =?us-ascii?Q?4YX1+QjZo94x+zKvlWHf0MA4xK7XLAVbkISHRuDrnohAsQuMvseJQJKLphLW?=
 =?us-ascii?Q?Rr8UToZSQKYyTUrcuABBfKW46oEUlzGssEDJIeQSz+HlG/Drnmwd6IoZc5Li?=
 =?us-ascii?Q?Pq0kI407ZuZJRdL/BjJhi3+0WgqZ1CgHN9RmlD1jPy8g8EQ8nMsuFTqYzd25?=
 =?us-ascii?Q?szHNG/bu1c3QEo1rOYCr+FA/n8i4aGVS2jiJ/6HfOH+cRmPNESfCVAeF3NaR?=
 =?us-ascii?Q?w/y28dQgYoYGN70c/lC2wawI64KAOtkeX5pOwKVe74rpSLBr5qLP/AYezM8z?=
 =?us-ascii?Q?YMSJDMZKKyngsRuAJaDZDTdi8tKEgOsFbWHtk4/lgKcHKIHTVn+ICghNnaMV?=
 =?us-ascii?Q?iBM3tq0RmXhoI0gr9CP5Kx8kzFIm/CDPkUOkTl46iPa8y5oe36144nBAnVoW?=
 =?us-ascii?Q?emqayusu0s628CwLcKdzqFysGPnq6oFCjEYtYjJYxuhKhBGXghTWRwDtl9sh?=
 =?us-ascii?Q?x2m0PR6SGMe9G+r/wOPkCjzFGi4LLJ88dGTItRXJa0Kb3ZUY+cu+HIbuLsQf?=
 =?us-ascii?Q?ShoI182vjaCp1qo+ldb2ZCdP2EDqFMuOPQadce2zfvuTsxO2QU535Q3iC4Pm?=
 =?us-ascii?Q?u39WI6i+GQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PuoL0xrkkKPFSViH5/NMTYYfCPKQ7GHPXqSaauhv/1zHUubSklwSbF++/cJ1pi65b/d6SQQloa0CWh36opQcIdNmdOcGSzipx9Qxqxy9a9wMoGtwCcCq/Jk/pir42lZk6BCA/WNNSkR20MkwBpM65VDMCjKJrQW4j7cOtD4GHYIHGHNceVjNnXUi1QJOw4pSKLMNAo6CfsCnnfXm9duRofZ4UGREB/aEVX4drNnd3O54m/C+mwFHb1rT3msVHPok5ZuL7/IMDeOr5chjNHBGfWn4l1SkEoxRZkkdeUu/p6se93ZmGkG35Aek36mVzSyM3TT0Z/vtwTIK4C1bvViQlg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe99b1b-291e-4652-ebf6-08de951a564f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 02:55:48.2703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XqL8WYdzV168ILHAVNbiSddOtv4qTWHVmdwHMOLzW7O2AXWpalmUFwoPfBnfJBhLrhIoG5nnxp37nuo/mESLUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9672
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C52493B65E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 1/3] drm/i915: move intel_fb_pin.c to i915_fb_pin.c
>=20
> intel_fb_pin.c is the final file in display/ that's specific to i915 only=
. Move it to
> i915 core, renaming it to i915_fb_pin.c. It'll still depend on a lot of d=
isplay stuff,
> unfortunately.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                     |  2 +-
>  .../{display/intel_fb_pin.c =3D> i915_fb_pin.c}     | 15 ++++++++-------
>  2 files changed, 9 insertions(+), 8 deletions(-)  rename
> drivers/gpu/drm/i915/{display/intel_fb_pin.c =3D> i915_fb_pin.c} (97%)
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 272c292f06ed..fa632f4e505c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -80,6 +80,7 @@ i915-y +=3D \
>  	i915_display_pc8.o \
>  	i915_dpt.o \
>  	i915_dsb_buffer.o \
> +	i915_fb_pin.o \
>  	i915_hdcp_gsc.o \
>  	i915_initial_plane.o \
>  	i915_overlay.o \
> @@ -279,7 +280,6 @@ i915-y +=3D \
>  	display/intel_drrs.o \
>  	display/intel_dsb.o \
>  	display/intel_fb.o \
> -	display/intel_fb_pin.o \
>  	display/intel_fbc.o \
>  	display/intel_fdi.o \
>  	display/intel_fifo_underrun.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> b/drivers/gpu/drm/i915/i915_fb_pin.c
> similarity index 97%
> rename from drivers/gpu/drm/i915/display/intel_fb_pin.c
> rename to drivers/gpu/drm/i915/i915_fb_pin.c
> index 738d77a1468a..580acbb14ada 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -9,18 +9,19 @@
>=20
>  #include <drm/drm_print.h>
>=20
> +#include "display/intel_display_core.h"
> +#include "display/intel_display_rpm.h"
> +#include "display/intel_display_types.h"
> +#include "display/intel_fb.h"
> +#include "display/intel_fb_pin.h"
> +#include "display/intel_plane.h"
> +
>  #include "gem/i915_gem_domain.h"
>  #include "gem/i915_gem_object.h"
>=20
> +#include "i915_dpt.h"
>  #include "i915_drv.h"
>  #include "i915_vma.h"
> -#include "intel_display_core.h"
> -#include "intel_display_rpm.h"
> -#include "intel_display_types.h"
> -#include "i915_dpt.h"
> -#include "intel_fb.h"
> -#include "intel_fb_pin.h"
> -#include "intel_plane.h"
>=20
>  static struct i915_vma *
>  intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
> --
> 2.47.3

