Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EARiAlgD1GkwpQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:02:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5E3A67A8
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC23110E2BD;
	Mon,  6 Apr 2026 19:02:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mn4pAXs0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1AA10E2BD;
 Mon,  6 Apr 2026 19:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775502164; x=1807038164;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kz825uWgeFPvQAlm44fscDA+/AZrOQ4WS3N22dW8L7I=;
 b=Mn4pAXs0bE0q+LPfWS1TJsHv5Kj9nJn/DtcBqWR8nD+SlwAKT3JAUbyD
 hk1eF2AidGag/XGJy70qAbexl+/Pfpnn/nOxsPXMGc9p3WbkXH25zPqtc
 0bN0Wgbw4epjLtQxYDZVGr6F45/iFXJiETlqJMsdURj31U9mBODkMUVwa
 JdDYhrlWAtuqGWzlTFkmPWFwMM3DTrGHY4vCqZF1c7T1SKWqMsKcpqctB
 50xWgLKxE6RSN3YgAI64vfS6G4GLwHQiLanXPrgsgKA8w9eQQeZ1xccIt
 suuaTbcONZwIhzfQUbQhPPRwywscnfVMQtwuc4z5gs9Kbf3DKutRt7Iql Q==;
X-CSE-ConnectionGUID: VmwNnTB4SHyHfoOOS7WqXg==
X-CSE-MsgGUID: XZ/fmj8zSB6DvNuDzowVzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87912376"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="87912376"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:02:44 -0700
X-CSE-ConnectionGUID: Q6wInUhKS5G4EkdYAg69dA==
X-CSE-MsgGUID: 5EMQsfOYRiCeZFQgqH5shQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="227892317"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:02:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:02:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 12:02:43 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:02:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HDtcoCGRv+b39T4553ktyp4nb/mD2zN0AWJApvnl8o6FE59CEJK//sE+dadTAFj+daaVTPNbDT0H2oJUfmVe6aDVUe4/8hDxYGf4QS05oTRbxk+SmW3974xj+aSsjkwm2Mtgq0KyuAZRFRaFVe531AYYuBje6xn1aklHP+l8XY7Rd8+ViDgkF0kmwPgJY/1IlgjniRZkLjLag4HYhtBJjGd+LowfYhgMWeF6oUunWz0TZ4xxcrcObrxcqowvMMdlYahLJVijIKAOo1Qd/oOqMn07qjT5A9wmTlTuXzhgiNIVZ0lAR9eyqw5WJmFbYA7+N3dZ3NJfvFAHHLBgaC/UZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HByZZSbDL0z+XSV3TpK1hbQFp7bzcIGgKnyC1nNHMeY=;
 b=n0Ws/4kKbKuputgW3QptcetuFMP7omwPWUrSxVGTmjui1O4y9ahUtudp54RwibKv6TwGS0Slq2I435yZ7MN6ANs74YGoDOFU7IVOQOIZhb9YASsj2DyqZ7VIKmy9QFGJ1TZNDYVhuT12nbQA9TFaccX3NRRTAaq03UQCcQbceKthiWeStVCt78BcwP4CmdG6e3Cvr7n7PsyEF4kXerJHYsYPB0cGlJ12pDcld+M12zKQ3gywPfiEZqU2ZOgTdipjwb168BBz5K+cO/+l5gYoKhaZl95VhsjeugsTvxWll7UpD9H5FsP44giIoy/XoJN+3AznXpTwaUsjIE+aARc2cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BN9PR11MB5291.namprd11.prod.outlook.com (2603:10b6:408:118::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 19:02:41 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 19:02:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 02/12] drm/i915/cmtg: set CMTG clock select
Thread-Topic: [PATCH v3 02/12] drm/i915/cmtg: set CMTG clock select
Thread-Index: AQHcswMO/4JnSkvyNES4PMcHqXGPl7XShh+A
Date: Mon, 6 Apr 2026 19:02:41 +0000
Message-ID: <DM4PR11MB6360BCD95959692051B98EA9F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-3-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BN9PR11MB5291:EE_
x-ms-office365-filtering-correlation-id: 764f5514-9571-4de4-4744-08de940f13d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: XyCsDxobyNiy3ANlcVXsEBT/g4+zW6Xd2fnXchpvDpvcZaU1yX+2kC1fexZFAcUFgzw8PaUfKI/ovAKDw1ZN4GlM39GCuS315llBbIBoJISxTGc2TXk56ibGbMNfZj6IppRRqCASmOaIrHW6vUO2femBnbTbxHEfg+9m3ukYS3AeZRnRCCQKfEp6+jE7/o/cgAmdIaNf7nWsg17yCi2mxAq2whVxPGl77Wd8zU/Dz46LMDT+0Wjh8c4qtDPBTxOv1BGnbADZCQ0vTFVtj6n+I8Jzq8qgZEAOt0DeAAHDYc5x7fLXioheliQU9uW+QZuEU1p4jnTmDgzp9OdhbhFvTYYLqiSndB7kdunRYhKKplER+PtquLtA/m2hgBQ+dlnuxfRFyV/q1c/iLmuiMCJxijU/wBVnNhYLGzKetCJehnZX+5MougkfRs28qSMZVrBXHUif1lOn/HS3dEUO4skrBATETfFGle4dindPTWWDUD/6vll9X62EAGhrTgeZ1xyg77uEPZAVcs4RZxWeBEtJQmEmOXag4sgkShcuN7lNhHZ9j+qQsKI5t6UHXckkO7mDz7Lrn6deepYAaUz05QWDkHTG4JEhAH2+xnhf3ZitYk7XtztMEJolwtznp/+E7WkBS+f1Q5RgCjZTo0j8cE6u/rOxHtvoT5woLqK5IMRFxzIewKEz9/QAKmJfWTyGZjjU3aBRrj1W0J3sXDCKbihZnFXh+HVmsYBmFXStaTHte3rJb1rEpeOkHAq5anJIfc+kRGO8xg0hX7rb/id46K20fqOQHaQzBSH23OjKvnnUnm8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HwAsCgKJTK2ZsQvXEmuFd8OGlkrV7JyIa+tbpdByOAdbjxRDGlRUIjURKEgj?=
 =?us-ascii?Q?ZrRvANHQnja1+hAQ5WFTb6RHR6z1ANusC7RCK4rkIH6YEEFWHaS51buQ0oL7?=
 =?us-ascii?Q?KSqt4DI8fil/Wc/cQyjrH0R8Ivu2YYFKrtQyMOhyEekwsFwYxzTRvI0eALKJ?=
 =?us-ascii?Q?2jxrKh/ZWmjZPLBqTL08BxzgpfZZ821+CQp5lbjq5l/oxJrek6cyAOOEni6Z?=
 =?us-ascii?Q?+hsYSnESqorWidDF3Q6bIlQvaX+u7c6fUi7TCiCaFXhXgd2F5IiD/pQWXqFV?=
 =?us-ascii?Q?wWdqA/ypDRrumuHQ7ONbMj9QIwME1jVEdBG/5XHvrcxyBf1qY/BD3i7pHonJ?=
 =?us-ascii?Q?QvX0ObJTtkD84K5/ix4sL6Ry1FfHU+YdpH7RdoioucPx4y8qduIbPwcf4WYc?=
 =?us-ascii?Q?Dv5DwiMeyLT8vwgpQ5japqvzO+0LCfuZMZozcq0cgH+B07o0pWg5wscwo2Q7?=
 =?us-ascii?Q?xFoUl+ReWRZytfwMdYil5PGGZBpzbU5/2IWtsWb0xs6m8v1xt/V0X2jfl86f?=
 =?us-ascii?Q?ofA3v8zWBBqaSUT6TNLge3PfudzQOykxPG/LlH5GUOuSG85mhW/8HsJa9Wox?=
 =?us-ascii?Q?8IGUDz5iE/ABvKK8IbirD2ShL5hDY3XaiqUtcfNl8ffqMMeHZgsfg3v6ge91?=
 =?us-ascii?Q?y/MLw0I+Vi23CnDi1POm0ihGbU7KaUyeDqPpCaB4Fd8Lf6zw8W9iN084AJN4?=
 =?us-ascii?Q?5L+tpFZLj8iicPXos+hFisvPd4VSDdgh4GtZpI6WodXL5+XJNPFHtoCSberp?=
 =?us-ascii?Q?042PtwKH/s6f66ar4MUtkagK8+E9Dzv7oYlE6DBsXV0Pwawum54Cos3OfxP4?=
 =?us-ascii?Q?or8np7QGwhduNYpXvr0CnTnIWOdwLlkSkYvZlgyOzwfL/XmbHQe1HOTvWCP8?=
 =?us-ascii?Q?FUmynHYpcw21h8QysKsp3sytSQ1s7VQnBcvRLtkiCJvRo8ZYeUr4ZE7OBVMF?=
 =?us-ascii?Q?hCT0vGNVEkFs6QYJuB/dzw1necoiscvpXrRZlfOmQQBUxtaylDfRsGCAh/kb?=
 =?us-ascii?Q?wCBrXS3D45WFDaPfL+3qGMiLXKLP/1t9AXFCLTENPloXKekFh++Y83McsXmX?=
 =?us-ascii?Q?9GlXDKxlvCi5To/mLsfuss01ub356K+3G04+2eeBlZFtDUfXC8C6M0O+iYnW?=
 =?us-ascii?Q?vExCyYNWi4OJ7yQE9y7HTp/KcRbeGCUJ+GLPXyrx1fGZNEuLHGGhwAAfXkiB?=
 =?us-ascii?Q?Z+tYq05ht3hvgRBrBXLcL1mloDQKMOuvemztaajAC6+XWmNZd1ofZUK3VUK1?=
 =?us-ascii?Q?l0v6sd1l9NpA4YW6w/zxKDQGPysqgMRGolefnv7cFT75LO8SWGSCOstHaYGW?=
 =?us-ascii?Q?gEEU5FoH7cwLCIya3H+axnoNBfc85au6QF4nI2YquYASjRgvxg3PMvMeVnWB?=
 =?us-ascii?Q?q6DprKTXX42yAZgxk1YsEZHKWtGvKMPyRci2mcS2DSkEW6ZtknGRGnQv3KAI?=
 =?us-ascii?Q?AasvcRaDKuhsLWOjvVJFunvg7QuYVRrRemow7C3uOomZ+X58viYcSCRlfX1P?=
 =?us-ascii?Q?4KVfCqRPTPswVql3CGhx3e/VE/xeJbulSKQnf5pao+KqwwnjzNog/jZHJFqq?=
 =?us-ascii?Q?ljzjZBw7xaD6qr/sglzyuRUDQxwOLL7t3uRYx0hk60lVBDDXeNmlwh6eqAQW?=
 =?us-ascii?Q?vXL2bWbuMP+/Q/NS6sCGj/U0gx7XFa2Aon4zK9GAuMudijLtozcdKesPNy43?=
 =?us-ascii?Q?r1ERKF1VhIfyFK4H6dWL2+UjdlbvvdKF8QIjLULnvf99R0ROgMD54CJz0yFx?=
 =?us-ascii?Q?tr61BSsIeA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bcMMka9R9PLJd7+f6VretOmOUjpafNoj2AbdTdfcVI3ZR5Gl2pTfPp/sRyv1qJnxrZC4NRGFx5Dz9pONqv167RJWzQ1KfqEOiZil5SekUNDYUSLO2O8YvQP76QwnTBCibOXrXzc3HuRC0iJXhuh4n/g6NGfAbmly1WBGMnjU+vC0lNCFJy5qkbulOyr9TSSmfAIFd/okFd+NYX99bfMtULMToJ3ORcJ2pbh7k2ohVfM/0ZByFGBj/DLtUOlAXUvpRe8VbLv3cASNjPQNIK3fQrx7SMw2RDV8/jFwXQRZKxX2RiYUqjrl/dLoAzTffi7t9lMsrqtyr7G9ckeEC+EL+g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 764f5514-9571-4de4-4744-08de940f13d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 19:02:41.0802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cfFibsxr1q7AIOb9hggv5AE3SFj2Gz/nL1ax/6o8D1Zja66EJH/6lt/yqFHnIuQErmWrp1hbA+tryIr5ZoQrtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5291
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 60F5E3A67A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 02/12] drm/i915/cmtg: set CMTG clock select
>=20
> Program the CMTG Clock Select register based on the transcoder used.
>=20
> v2:
> - Correct mask for PHY B. [Jani]
> - Use REG_FIELD_PREP() for enable value. [Dibin]
> - Extend cmtg clock select for xe3plpd. [Dibin]
>=20
> v3:
> - cmtg support removed for old platform.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 24 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |  7 ++++--
>  4 files changed, 32 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 024d753eca55..644522b96288 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -199,3 +199,27 @@ bool intel_cmtg_is_allowed(const struct intel_crtc_s=
tate
> *crtc_state)
>=20
>  	return false;
>  }
> +
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 clk_sel_clr =3D 0;
> +	u32 clk_sel_set =3D 0;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A) {
> +		clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
> +		clk_sel_set =3D CMTG_CLK_SELECT_PHYA_ENABLE;
> +	}
> +

Use else if instead of a separate if block, that will be cleaner.

> +	if (cpu_transcoder =3D=3D TRANSCODER_B) {
> +		clk_sel_clr =3D CMTG_CLK_SEL_B_MASK;
> +		clk_sel_set =3D CMTG_CLK_SELECT_PHYB_ENABLE;
> +	}
> +
> +	if (clk_sel_set)
> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 7692cc98cf87..660ec513626e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -9,6 +9,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
> +*crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 945a35578284..8a767b659a23 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -10,8 +10,10 @@
>=20
>  #define CMTG_CLK_SEL			_MMIO(0x46160)
>  #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> +#define CMTG_CLK_SELECT_PHYA_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
>  #define CMTG_CLK_SEL_A_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>  #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
> +#define CMTG_CLK_SELECT_PHYB_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x6)

Mask is not correct, use B.

>  #define CMTG_CLK_SEL_B_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>=20
>  #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index eced8493e566..e78f3a00ea80 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -5,6 +5,7 @@
>=20
>  #include <drm/drm_print.h>
>=20
> +#include "intel_cmtg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> @@ -2249,10 +2250,12 @@ void intel_xe3plpd_pll_enable(struct intel_encode=
r
> *encoder,  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
> -	else
> +	} else {
>  		intel_lt_phy_pll_enable(encoder, crtc_state);
> +		intel_cmtg_set_clk_select(crtc_state);
> +	}
>  }
>=20
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
> --
> 2.29.0

