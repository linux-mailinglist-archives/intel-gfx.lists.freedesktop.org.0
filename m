Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BWhGFZjcIWpIPwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 22:14:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D55643259
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 22:14:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Y8VvBEEM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 507B71129AA;
	Thu,  4 Jun 2026 20:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E341129A8;
 Thu,  4 Jun 2026 20:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780604053; x=1812140053;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iVNXlNezH11e3i6l2LmEH5kUedxxN8TUw4jEBSizA1I=;
 b=Y8VvBEEMZHhJDJ/xyuVzLmrcwRKh5NBmg2JvvJJ9rc7b+l3Im5MhA2h6
 0auE4hOucf0xuYkpMgI/7EypZOh8iuUpj+jLEMmfP+vRzACT2A1ISOJEA
 w+2/Q6nlGoyuC8LLO3yQ2YuRd23zF3FmrgWQQcSZXWtZYL3hLNF4s2ypc
 bOuoNw/8fAbtphpqrXIKkylCYtrlrbbK/8hrL7v+Izi3RG9BAJti0NSTE
 CJFO7FNYvo3SJUiYls8MoQ6TQcbkoab9mQK3GwuyH6mCNYwNN/xJLJajR
 NJu1fmzQrsXLVPkzc91SKBsKl0hwOma6d/OLFu3ZpmbejTI1gh2nKgozb w==;
X-CSE-ConnectionGUID: pDVP45WtQruktTpf7gubwQ==
X-CSE-MsgGUID: nsrh7cKVT7m8gziS1IzEcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92813996"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="92813996"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 13:14:13 -0700
X-CSE-ConnectionGUID: WN0Enq2fQO67UM48i6519w==
X-CSE-MsgGUID: rqmDgjkcTiW4cY93inrTrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="282733284"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 13:14:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 13:14:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 13:14:12 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 13:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BdUB9v9Yj4HUg99e763+oxPPctyYtawBT/wO5DIXaeAKGtP0FRCc56VZ9jSZBP+xydrx9g1U1gGtMhUaPaNQd5iWo+ewe/Hj9BTIwLy2Ym9Emcb10bTdbIJWVVVvsOLql+few3+w0pCXvLUtrZxJejC9oqKILGI7Qx7JSjU5zzND1UPwQNLzyjVbXDrefrNA2Y20pZpYrPk+QH3vb/GG52I0Em0VX57G+m8GhLPVNLhs7JGRZM6XC3f5juWDc6DaaWokx8K0J2bhFPA8AoqB1jBzkRoen8c/uIMsybuS0ZNI3WUsSl/71z2PpE1/A5hfYaqK005dduQNw0gmKjcA6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZg0igFNNhRehclRrg0aRSsbd2GZLppSsjsBPqJ/l4M=;
 b=RcIPieeRKj3GLv5XhPkg5Ip9M/W0UUWmOt7rfRb1mjUo0spSdUWrZPY7mhUU2G3S2nW2L0gYPYqUyaXtljn1emNkumEVkA0q+6/My79qiW6+Mf2pftaSsXeVd3uGizMe+cUGRGWtz0ARYTqk/JUCjMRQoQXiU0SvbemFwVagOkDhyb9uSr2hwEspM0zpLkZvJfOMTXDJfYBNzSB4Jq9Q3hALjdKYMUd2kXcs6qpratxY6Wo7KMLJUrLQVkqyGyQyNkid9dpxf9L83VX1IIUm8sZBVW60GU7xMau+rJ4TomZ3jSpMKs+i9AG0AJbkA3tUu26j7OIqglsW+irPrClAVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2717.namprd11.prod.outlook.com (2603:10b6:805:60::32)
 by MN6PR11MB8196.namprd11.prod.outlook.com (2603:10b6:208:47b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 20:14:04 +0000
Received: from SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90]) by SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90%5]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 20:14:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/{i915, xe}: Refactor generic_handle_irq_safe() error
 messages
Thread-Topic: [PATCH] drm/{i915, xe}: Refactor generic_handle_irq_safe() error
 messages
Thread-Index: AQHc9F408afpEvvoeEORX1NliKMnyrYu1Eyg
Date: Thu, 4 Jun 2026 20:14:04 +0000
Message-ID: <SN6PR11MB2717AB3FF1B5A0B1A52572AEE5102@SN6PR11MB2717.namprd11.prod.outlook.com>
References: <20260604201005.3771198-1-jonathan.cavitt@intel.com>
In-Reply-To: <20260604201005.3771198-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2717:EE_|MN6PR11MB8196:EE_
x-ms-office365-filtering-correlation-id: 6e8bf337-4bd7-4c7e-1bb7-08dec275d30e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|6133799003|18002099003|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: mM9mAbcA0zZjfFp7Ir4Bqh1SnjRxchw/hXLBg6c2ecMo2IbAPfCQfEqN/6WCAT0GrkY/apnnxJJbK1tFUKPpwNhPQFqUy9OpUIm3NYkmLNibcTqEkB6AqVdmCu23O4eio+g44OoNKygtVZbt9ORkVkzZZu/l+MlU2dWh/LE4Yjubhg9FS2Z/0RSsRB7+Kfd3C84gzHCd6QuICWVi2jc+woY2tBPdpSoG6ufgTO8+CBK1A0vTCpk6z3juLqJnpdwsdNe+GTmf9bIMnMDTUM7rq1sfo0BKS0xODTnNmc9E0jL58WTY7voeUbFZeLAHCPjLNDwRGID9Zd4Vxmdc7TxJ4o9NXay5MG8UnpVUL02u8wGi00Nv44grUZYuZlk8s4Hk+V4n6l+yPgf2pM2YCYfeYayhvwP7UosZ0R2J6b/pCfbNsDCwTC8jyK7DkRGLOCSrKlXhGL6IsDB6WIsgDkocZWrTlkwWUedzrG4erpPyDmUKEfzykA1l4iv13hBSD/LUja6zEVHq/pwIoqnUmf01c9Gq1+6MwgjswTizyqsbKSB5etJSO6zZk7feqRXZOw8zMDbD5fLmX27EpRjX94hhgy0uZKf6bpLezPVsukJpmWgX10LJKZ2AN9cx4hSY6Rm4yCnbWGWenTalggFh/fQyW4QFJjWsyVrTavuvk8vStYY+ZSIOPN2wtizMe9YNAARTvBkeeHFLiu82QZLSncPKYrTHMtmk9RXbwWq3nJ6Tf3cYzbQpDQ74hvv9DfgP5yfe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2717.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0ANTc9d0xpNctW9VT2vNqXaZvld5OJBOQNlNjZ6wz27LqsHRZgA+lKdtivj2?=
 =?us-ascii?Q?v42oeTU9b0Yqe7UD8l63uCgOGHrlObhEgorymuz5M8p98gZmJlDKAvYf+DpQ?=
 =?us-ascii?Q?uEaUHIjxS4U3MS4GKbqO+IjAdjrcDuy9i+hPqwDHx8ag+dDq4sz6/SvLFM++?=
 =?us-ascii?Q?15/R9UmNSaDFf3Rp6Y+Xt5ozBI4JK4LWTDM6cFJTgBCcFIy8bXiVOz9C5R1O?=
 =?us-ascii?Q?CYcLZJsqGbkueqNjTlDUq7WYROvkRPN1bziLXEISTTCUeIT8hnfBjfHggywq?=
 =?us-ascii?Q?1dS7mpX0g9GG7fPA14VFGIHQym1z4sbyIpIKdXZsx/9wXNUWsvhE5g1ZK40B?=
 =?us-ascii?Q?q7V5tEJqjGf1IH7DNFtRhWnlSRretmukDwAA7q55+EOUDuyqsSOCpUWeJ5Zd?=
 =?us-ascii?Q?AmlxXovRFeC6BS7ZaYfzNEJOU6J9DZd0X02bbdYzyib0Solc1itiKBO8iZjc?=
 =?us-ascii?Q?ZiwPwhpwyrkp60dI8lG+kIYn6dMV2MhePjcywjE6oGQOxu3VGX3Pbu4WDAx+?=
 =?us-ascii?Q?qg1RXTXQhbB2vq/zbG4Gdmy2/MuUzjf/A0s9LVDwG8nRoCFt1YxtVfMIAfBU?=
 =?us-ascii?Q?LQj6rahuOW4uQyDW/8hWhVXIl7eQKDHCIFT/JtfOAKRpbc6XwOgfz6S5pV+H?=
 =?us-ascii?Q?Gd16yS1b2/ZlGQlNkroUNk1uSq5loYPtP52YR4iX6wDfBU9+c8EPV8nk50ox?=
 =?us-ascii?Q?mGX/qk/qUz0uHF5LU7Uy6ZBIIVmasuRKXySZkUdmWXdx/bF+oSamN+IfBD84?=
 =?us-ascii?Q?abdUhqrCEVjOf2mNhIp1a/38JQ4Z+QrPq6onewMlOEQMS+H96rg/L/XKUdWq?=
 =?us-ascii?Q?inQalRXFiELlkCHLbcXWikNDOi85qCG1EEa1ujFtEdvgC/iBraOQTQavsdSP?=
 =?us-ascii?Q?xfnCstxvu8CSzBzDKcEDlTvX9sUfcg+BFT/O9T2wZLBtO/FfOJ/FgDcJEQ9h?=
 =?us-ascii?Q?EeturiJxYPX4r+d/1Qi2bg8CgXmAHjuPeDqyESFEZIDLB11ISWFv6aX8m0qr?=
 =?us-ascii?Q?QnK4YqkYp0fezARqDIR1iVvbiZvDoOpQ5wvp3FDcLrMuZCZG5ERH0YpVDBQ4?=
 =?us-ascii?Q?NUxhXuvUZbec8ij9mh9Qw8enDfOqiWwiXCAAZHI17e02sx1Tdh21VzIFcddv?=
 =?us-ascii?Q?BcogcvhCZ9BnBa2fXOAzpi4pL3kwEHATB/9vWMug8tpAAeIigF9dsXtg0OBK?=
 =?us-ascii?Q?RPufBRSkR+6dwDdTg4fk+xBqpBMvETZNSTf2JWUohvOI8sfcxU9W0iEJ34Z0?=
 =?us-ascii?Q?0ac5yJZuuqMY8tPfmNTkIqV9d5av0mZbOd8T3YsxHzEtcAv9fq09hl8UEgNY?=
 =?us-ascii?Q?W1YPSRAT+vt+vGkgOcLcq7x4iqyV3SJkh/Crls3Y+nrIngmYJdrAu5wKeE2M?=
 =?us-ascii?Q?aPgbemM9hPI0cPVHfw0xq3Oz+AC1ET8UzzEJRN1RbjrFYOW9B38Eq5rjzzD/?=
 =?us-ascii?Q?G0yY/VIf8eexKkIVWCrnMaavHL53Ze9K8kxLxU0N15YqWf/ID4Ihz1rkX/nh?=
 =?us-ascii?Q?dYOZ1NdUT60wyEJ4LUZZl5E1OeRLaz3iWkamfOSP80hglW+He5UHED4ilwSn?=
 =?us-ascii?Q?/d73XNI1tu8aEmuzlIYv/9PftDRFgvABBU06ahhQbPsp5sPlxhuPMCV5wTNn?=
 =?us-ascii?Q?OCkcUktAZ1aXyd2+vErhfnpLgwyVgrSCpJ6iBPlFPu6Bx3x28shTPhm0HE33?=
 =?us-ascii?Q?2oIP67zv7awzqTx1K5MkmSWiqoubIoO9jbyMTEV4x66VzEA+ZaF2xOO2dlsU?=
 =?us-ascii?Q?myvkJNSzaunJe+AIYdPeVOGW3L+9tpkAhems0h/6V88tidGGd8FKogj4IH1R?=
x-ms-exchange-antispam-messagedata-1: t8e5wqNSmR/lAw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rrnms2UEbHSm13WgQTzM4NuDYszA0J1eh+4Sx3oGLPKELqtY27QdVM40Hnvb2w/z5cYZOZbmyIDUlgOfpohqTOP2BH8Vm1OaxAQmpFY6uMC+Wff/PXc8jp6XWB1qi3ZpQ2KgChyXvyILRm9i7Pe3Qw5nGe+kqEfdrnhTPEmqxmXnguZizbYYT1PXrWgRuuaD4oADgM2m5M7YLnZp+6ChMAaW3w/LYGQxFWC2zg2KqtIQy0vWDZtB05111THr20VTKh6YlbvhQ1+OYEl71eN9nRG1RZBk4cyAiKV+h08jXLXEwKBo9v8h8Af5nAJDlTRL2EUU0q6s/VZ2dj/jxrMufg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2717.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8bf337-4bd7-4c7e-1bb7-08dec275d30e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 20:14:04.0927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1vYTJiYOp28QGOqdFLrZbrP/XI/y+HU6KAiRJGXDeliMgvo9Na/L/6CxgHLjXgkcGyoITmCZRerW8tvHhEyB714Yhn9xujYbknO64/19noQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8196
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email,SN6PR11MB2717.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1D55643259

I forgot to forward this to intel-gfx@lists.freedesktop.org, so I'm doing t=
hat now.
-Jonathan Cavitt

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Thursday, June 4, 2026 1:10 PM
To: intel-xe@lists.freedesktop.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Jadav, Raag <raag.jadav@=
intel.com>
Subject: [PATCH] drm/{i915, xe}: Refactor generic_handle_irq_safe() error m=
essages
>=20
> Currently, all but one uses of generic_handle_irq_safe() report error
> messages using .*_err_ratelimited() error reporting helper functions.
> These helper functions declare their error messages in the following
> form:
>=20
> "error handling [COMPONENT NAME] irq: %d\n"
>=20
> .*_err_ratelimited() already logs "error" as a part of the error
> message, so declaring the error is redundant.  Reword it.
>=20
> The last usage of generic_handle_irq_safe() is in xe_i2c_irq_handler(),
> and it currently lacks the same error reporting that the other cases
> have.  This is not intentional, so add error reporting to this location.
>=20
> Suggested-by: Raag Jadav <raag.jadav@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_gsc.c            | 2 +-
>  drivers/gpu/drm/xe/xe_heci_gsc.c               | 4 ++--
>  drivers/gpu/drm/xe/xe_i2c.c                    | 5 ++++-
>  4 files changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu=
/drm/i915/display/intel_lpe_audio.c
> index 022ad18044bf..e756ed1d1132 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -265,7 +265,7 @@ void intel_lpe_audio_irq_handler(struct intel_display=
 *display)
>  	ret =3D generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
> -				    "error handling LPE audio irq: %d\n", ret);
> +				    "failed to handle LPE audio irq: %d\n", ret);
>  }
> =20
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/g=
t/intel_gsc.c
> index 050d909fb4f8..c2d76b0bc5fe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -286,7 +286,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsi=
gned int intf_id)
> =20
>  	ret =3D generic_handle_irq_safe(gt->gsc.intf[intf_id].irq);
>  	if (ret)
> -		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
> +		gt_err_ratelimited(gt, "failed to handle GSC irq: %d\n", ret);
>  }
> =20
>  void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
> diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_hec=
i_gsc.c
> index 5af8903e10af..640db27137de 100644
> --- a/drivers/gpu/drm/xe/xe_heci_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
> @@ -224,7 +224,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u3=
2 iir)
> =20
>  	ret =3D generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		drm_err_ratelimited(&xe->drm, "failed to handle GSC irq: %d\n", ret);
>  }
> =20
>  void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
> @@ -244,5 +244,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u3=
2 iir)
> =20
>  	ret =3D generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		drm_err_ratelimited(&xe->drm, "failed to handle GSC irq: %d\n", ret);
>  }
> diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
> index 706783863d07..0f689e210e26 100644
> --- a/drivers/gpu/drm/xe/xe_i2c.c
> +++ b/drivers/gpu/drm/xe/xe_i2c.c
> @@ -177,12 +177,15 @@ static bool xe_i2c_irq_present(struct xe_device *xe=
)
>  void xe_i2c_irq_handler(struct xe_device *xe, u32 master_ctl)
>  {
>  	struct xe_mmio *mmio =3D xe_root_tile_mmio(xe);
> +	int ret;
> =20
>  	if (!(master_ctl & I2C_IRQ) || !xe_i2c_irq_present(xe))
>  		return;
> =20
>  	/* Forward interrupt to I2C adapter */
> -	generic_handle_irq_safe(xe->i2c->adapter_irq);
> +	ret =3D generic_handle_irq_safe(xe->i2c->adapter_irq);
> +	if (ret)
> +		drm_err_ratelimited("failed to handle i2c irq: %d\n", ret);
> =20
>  	/* Deassert after I2C adapter clears the interrupt */
>  	xe_mmio_rmw32(mmio, I2C_CONFIG_CMD, 0, PCI_COMMAND_INTX_DISABLE);
> --=20
> 2.53.0
>=20
>=20
