Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIzWIu2AHGr0OgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:41:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3284A61785E
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8617E112BD4;
	Sun, 31 May 2026 18:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HluXXedb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0EFC10E49C;
 Sun, 31 May 2026 18:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780252903; x=1811788903;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f1MQoGTV91exe52JDZrm4s4uk01+N+1mJCxEnPdtzvg=;
 b=HluXXedbU0AO6PdP7ldf/rG5El3KENKukBdy7WjF5jrTwxLsuXQyzC0s
 x4+7SLaUoWZKQaeuBPJle2JZT7DF/29kw8lD98XXnb/G5TB5afviIHmH5
 pEpgq1+EWb3aBOjRwi9Hx/gYBmeT04YLO9gTYN8inUwJHBfbo5Tiw4GXk
 tsKVxaJksPf+jRZ+E0uxZ4on4+YZTw819TprHNBx/Cucbpffv+icprhxY
 yLa0CqR37Fz4XOxoSWtSxAeIrRdNI1r6XhbneF2tIO+4Bp2OcHFo5yfYQ
 XUIV8XmdNofB0SasWK15fX2EdCb9tm7QzgpWOrGv7/oZMpQbIG2B4Z8au g==;
X-CSE-ConnectionGUID: jzyIxMB8TUK3Uksd+g/hbw==
X-CSE-MsgGUID: nKuSU0t4RSO3DxgVJNFifA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81014847"
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="81014847"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:41:43 -0700
X-CSE-ConnectionGUID: ytJ3iPctQyGlccrXZ7+7Mg==
X-CSE-MsgGUID: MUeKr8IHQX+ISvChu7MkUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="247634976"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:41:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:41:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 11:41:42 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:41:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lWo5iVBweeRx/NGrJAjpDeL/tpJopc8CKg4CZ18wtavsP2DbR8WsWkpcZEtP9OcFmBHpJA8K+Hy9UIzPobp/MZYD+9zfdn/0FChZGmWgGB3KcISGl07fuzjjyii0Dv6jcKvNmOXboONPf9EKNYf2G8qmYuqmz67iMjwg5ReFFL3dOvUKwbKaXYh5si+GHRmpHAvr2tvVsS6+SWD+34yq+C3Z0BJY9QyVs1MDiqVQdeh6YbCxcmRd1djCnIVEjSjfnFsCvWrpuc0wX1lr3t3/3LXfV+o3dqiJu6D+IWNYVtIVlp/OfwZ6bf0MIRrWfpG3UjUFDudCVlJ4xeaW2Dk78Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Z0/HQlEX+EFLhtgptBuh1qhBekvF4WCakzGC6Jvkbw=;
 b=xz8HO6cCluVyFT8/2PH3qh0VP8Z7eHIYUWkTj1p1hv/7595rRgrhc3KlMq3Dr9QU8Pf02V944KZjqzSY+Ie0vE0DT5HoPZ30B8Pd8dsDZ9WE9lOR/LqjoZQaBjEk5czlJJ4Nnw1AX/AW85EfKZNf7k3eIdmyspk6+81yB2nmQPW++umXetq2DT7Uiz9ARtScczzsoveEtLPB7VPIV/jrSP+DRC3lA3aXfaa1i8LC1cswZ2tDr42QA+yx8uPe7OrqJbQCFAPqzNag4jOst36xFgV4XDa7n7QIriWDLRJYnBl/c/5ilSmngzQywyG8f/E45m3pUrORhcqcg1pw26uUEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB8499.namprd11.prod.outlook.com (2603:10b6:a03:578::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Sun, 31 May
 2026 18:41:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0071.015; Sun, 31 May 2026
 18:41:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Sean Paul <sean@poorly.run>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
CC: Sean Paul <seanpaul@google.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Subject: RE: [PATCH v3 2/2] drm/i915/color: Fix step discontinuity in Pre-CSC
 Gamma LUT
Thread-Topic: [PATCH v3 2/2] drm/i915/color: Fix step discontinuity in Pre-CSC
 Gamma LUT
Thread-Index: AQHc7vbrgH1LqE95rUqkaWSpLbmpuLYofBtQ
Date: Sun, 31 May 2026 18:41:32 +0000
Message-ID: <DM4PR11MB63606C3DD9BEEFE74F95D76FF4142@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260528230817.2455072-1-sean@poorly.run>
 <20260528230817.2455072-2-sean@poorly.run>
In-Reply-To: <20260528230817.2455072-2-sean@poorly.run>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB8499:EE_
x-ms-office365-filtering-correlation-id: a0ef8617-9b7d-485f-f96d-08debf443c26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|4143699003|22082099003|11063799006|56012099006|18002099003;
x-microsoft-antispam-message-info: kuqjGw4TTbxTTz8Z3Aan15lP1gTD9CfkyqLQ4SDQBvrL7ZuaNWlsxjlMqah0WEHUBzFt3WBytrsX8CMAxzmaZmVctQVw83waLBnv/XSCguAxrP0AgElhscsHoPcW54mbTI8tS9WJkVmg1xCulvfd6+ltafekdDq09LzIW2WHEYQp+MyIvWD4UMoOkpFBfyaQJx0dd49A91byjyRKq3wkjzKmYqmfpA152BpfN9Z0Ep3bckvGvKfhIZ28r6exQ8XKEbvUy6f9bdsjbK/sxABiEZA9YPUi3yRL1CcbrYhnVeodUVFpeeC588GsIecxheXn3VNUNJ5GQs/1v60F4irkQrUbAa4bbxJVI+eqEjmcl6l8kJESy1YFh27xChZCQ5OvSTFl9XZfc3vkYTbPYJCTVbs0kFIY6YdM/RwBDlVFEhq9TCasrkgkXWB4x9DKjbY7MVCknzZ+Rkr1rnTPYtuAAGEdEFN+RG3WGcLN7hWUKkpiT3fvVtOdbUw3Zzeu6N7xm4N0Z5weJD42LfbQizy+7VZixNlbtRZB03bqZoIKY+WRaY3pQ0vf7p4YgDooKdNMwakqPsTSOHD2PofRcL3glccrkqO6ZwtjOcgwXV8n4Pe13hxvcy/rK3eMO2D8CL9qPFG8U6xhbS98CRPkJdZmG+jBzCDtIp38F2xhNe491ZsDPvEG7WiKIBvIB4XrQEoEyAAnv1Kclw5HHyIk9XW9Ytz4PATKLd5PNTwbnJ+NHHznx51zCwTa6kAM4COjKQIW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(4143699003)(22082099003)(11063799006)(56012099006)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J9sGkRKGqJB0m/kN0t4NCgSAy+lX5sJWgp+tHqkf7YIDTCPJtMG7iABV0Ihl?=
 =?us-ascii?Q?cZhmejUm0HvIfhWFeF3oc+4Cu+tXU9MvF4SOlIQbS+vvDpNMBbis2LZzRTGE?=
 =?us-ascii?Q?kbobEw8Hx6UB0nFKWuacocxDWZGrUxTf/P5oGBRkRsfJ2Obt1NEKFD9dal0+?=
 =?us-ascii?Q?cF7nRxFMoe8Qg6IqoizjBFvCYZ63nYqe33vGZ6Tte0CRFfdm6GxJWkdHvwuK?=
 =?us-ascii?Q?0fPnrpk7JibtSFP70huQ2P7BDQF4DsTtGiP8QO8HvPdDBouYurCLVirTGNlY?=
 =?us-ascii?Q?IlT6N7rhmqx1U3S9HDt6lxiYr2p7K4SoFW0ix4y/FAw3zv/it+4KXbkemAVf?=
 =?us-ascii?Q?w/X5yZvNVxLXRw85m1LRlGToZut3Bh06ZOv3B6779Os7YlVUS60BTu/l5uKq?=
 =?us-ascii?Q?HW6u/xDMwgQm0SMQWsmrl2RPRpdLCMFVjaQ+OMvaqT/+OU3d7GcPoSbbyGMU?=
 =?us-ascii?Q?Pn5Mk5IsjXlPnGF70pSGHvj+ie3olgasoHsMmMb+xQLFgj+0MsY1iFwahNIz?=
 =?us-ascii?Q?JUoj0OrAezot/BYV2grDTLI0vypzWW/mrimrSPL0/nJqw5jhv5jTJhlRXa67?=
 =?us-ascii?Q?RvN7RsQwwGFjvyjRcYuFgMV/hXTltCiPxyKski65LALKZfjc3yfQacHteejx?=
 =?us-ascii?Q?P57sV7a1OZGg2w8ysu8UKfxgWxKPMXT6Soj7JPCdLWP3e71uskUyEhJ8qGNh?=
 =?us-ascii?Q?R1n8pZKk69IUh8SNqGD5sEce1rarKzR4ZO6X+l5qWDTg/aa0F2Qj5Z2PskMD?=
 =?us-ascii?Q?QtoSxwzsNkgru/AUtaZntQ/s7bhHLsiEES7p4F4deZIZUqOA6z6ACmIePCuG?=
 =?us-ascii?Q?e/Ea6xsTN7iiGvq2Z0desR0bvbRZagiMmYjdnrlc17JPfF6WwgGQd8LdC/yn?=
 =?us-ascii?Q?N+wKfrf0bNRqJUR7o2taA60S9/sNiXDP3fqZZs/AvnOcyxZWskzqHnOPCsyA?=
 =?us-ascii?Q?SEzRvERbb6YaeMgEkIrztIe4u2CSKB4tC54u/d3BFwmgk+HTHBuNNj+R3dVi?=
 =?us-ascii?Q?0L6X5f68PORtIoXnjDkHiXVKLrKqXY78t5RStGNhvj6r/dzUrW17wJXyHusH?=
 =?us-ascii?Q?h5RyvYqDq1xmxps1Rr9X+INVAazI5Q6WlpsGENW1ipTt0b8egbVBMSHZSVRF?=
 =?us-ascii?Q?j2FEa/Owx6bB8yYIEeEyNTd3S9zhKnqegIiUdoal7/oz8i4r9Gqz0RzBh+bY?=
 =?us-ascii?Q?VsDx2fa+JwcCfAgJY38QfD3aK/XdeQSKn9H0uNRQTvXmojr2iF2yMJyDkhxm?=
 =?us-ascii?Q?IdtXeydQpcQV0ide3LEHUQwxOLsS+95daxWLOT4QtJU2ksnkxIMBehsVUK5f?=
 =?us-ascii?Q?ZWQuVI7JYQxtQ/eFYFGxGvMgN5hpbq/z1hb8z2+NXsZneq8odS+QLaPpX9oe?=
 =?us-ascii?Q?4ctMvhZXG7ehdG2xpnKp7cK8pVNe8f0PrV/3XeW6rc8aWvgY3JLSbr6nFZtL?=
 =?us-ascii?Q?GRVsAldF9mkpI+QrAerAJ9P2MTGnWzApJSaZRhTN4+wf/wZgcaj7Mr15Saxm?=
 =?us-ascii?Q?4pK+YhgAOhZn66qpO7In21SepQYLsNvrXCb8R9BurVjFKq1RPK9r+OHPriwt?=
 =?us-ascii?Q?X6/LxNpeuHT9j+y8N2MW5GGaxtz2bDY4EaIMIJ/D1G1LWEAxcVwApLp9MQr8?=
 =?us-ascii?Q?p6eJ5IEVg7vrCumijRV7hlU8VxKmgOjK75184gS+D5iTCJYiE1g2W6bOTIdw?=
 =?us-ascii?Q?bO8S+6CuYe1G24SiA/dgn5lkQFFNPzs3+tW6CpQxF8uA9OCwxP886Lz6Sh4s?=
 =?us-ascii?Q?zoOSEsgCHQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OFncv+reg8V42GHdf3MkJ9qi79EJP7dsH5PxpiVbenPkF/INusk/i0A4dYXNacWcU4NDFwvmuntPeQE6jLJ2ioVoFr4cxH+hUTlswWxk6JTo7Yw+JyxDW5/gBW7TELz6bwmxb40FJ6RSYZRlovokFyf85ibjQQ/jvoCLSA/nvzRrInI3Y+nVB/ByebqHhpTSt/0YHZpwf49qfYPvxEThZJ3jd3q1YJ/xXqAyCVKVS3hGXDwqraPbLXbR+vGSq49H1OV7kckdJMbCTAdEDjfrVvWpcZGChEZBRemx/UfDQ8Ns0VuOP4Xbf5Rg8JoUfnVQgO585C6yJlNEtTxdgpegTQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0ef8617-9b7d-485f-f96d-08debf443c26
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2026 18:41:32.0733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6cdp+A8u12iwp12bBSWPcy2BLjEnHzRD5Ej2kKkym+XPxFYl4fSEHRmbjn8fTDiM4Q+DmlCC7LIF0jEL9EYpDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8499
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3284A61785E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Se=
an Paul
> Sent: Friday, May 29, 2026 4:38 AM
> To: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Borah, =
Chaitanya
> Kumar <chaitanya.kumar.borah@intel.com>
> Cc: Sean Paul <seanpaul@google.com>; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
> Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Tvrtko Ursulin
> <tursulin@ursulin.net>; David Airlie <airlied@gmail.com>; Simona Vetter
> <simona@ffwll.ch>; intel-xe@lists.freedesktop.org; dri-
> devel@lists.freedesktop.org
> Subject: [PATCH v3 2/2] drm/i915/color: Fix step discontinuity in Pre-CSC
> Gamma LUT
>=20
> From: Sean Paul <seanpaul@google.com>
>=20
> Clamp Segment 2 to the last user-provided LUT entry value instead of hard=
coding
> it to 1.0 (1 << 24) to fix a step discontinuity.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com.

> Signed-off-by: Sean Paul <seanpaul@google.com>
> Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-
> sean@poorly.run/ #v1
> Link: https://lore.kernel.org/intel-gfx/20260525135730.1122696-2-
> sean@poorly.run/ #v2
>=20
> Changes in v2:
> - Split out into separate patches for pre/post csc fixes
> - Dropped loop bounds fix in favor of [1] Changes in v3:
> - Fix stale commit message
>=20
> [1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@inte=
l.com
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 7185f3628dcf..458508bcf1f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3968,6 +3968,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
>  	enum plane_id plane =3D to_intel_plane(state->plane)->id;
>  	const struct drm_color_lut32 *pre_csc_lut =3D plane_state-
> >hw.degamma_lut->data;
>  	u32 i, lut_size;
> +	u32 lut_val =3D 1 << 24;
>=20
>  	if (icl_is_hdr_plane(display, plane)) {
>  		lut_size =3D 128;
> @@ -3978,7 +3979,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
>=20
>  		if (pre_csc_lut) {
>  			for (i =3D 0; i < lut_size; i++) {
> -				u32 lut_val =3D
> drm_color_lut32_extract(pre_csc_lut[i].green, 24);
> +				lut_val =3D
> drm_color_lut32_extract(pre_csc_lut[i].green, 24);
>=20
>  				intel_de_write_dsb(display, dsb,
>=20
> PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0), @@ -3990,7 +3991,7
> @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>  			do {
>  				intel_de_write_dsb(display, dsb,
>=20
> PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>  			} while (i++ < 130);
>  		} else {
>  			for (i =3D 0; i < lut_size; i++) {
> --
> Sean Paul, Software Engineer, Google / Chromium OS

