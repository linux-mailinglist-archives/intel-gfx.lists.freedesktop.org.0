Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM8sJw8ZHWrtVgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:30:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04552619B2F
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBABC112D9C;
	Mon,  1 Jun 2026 05:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LriwBCjr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15E1112D9C;
 Mon,  1 Jun 2026 05:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780291852; x=1811827852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MtMG2YcYH2Fvcz3nT8RYv9lUmd+Snl0uPlMqhWf9Ens=;
 b=LriwBCjrGoT7xsetVc+Leoot6BS1L3y2iIzuCvK1hiD0m5ZbUoR/sCSz
 eYrXMEmqi1vM7Ihn3bteklzFxAPek683PhQmCU0/gNdD8g88UvgDj0vXT
 vRDMBPG5JUBriqXhjwFs0uhsyEbcujAy0wfczzzo4fYe1mJX2Jfxc+M0S
 muPj2CZby1Bje1Dx//ZBFDKnb8ax8eAZuGzlqg2FBTeyWa+GwzJDAfjEG
 +d6Ufp5B6Aq5lKavHDf43i3oUZHvVcbPKQP956c79jHBm/gPYslKrgDUd
 ITtR52XZV/A620grRlHaX8Qv5eNJnlSLFan7suFIh2U6XO00h0iDOKITR g==;
X-CSE-ConnectionGUID: nej3vulJSTWEqprxBOiDrw==
X-CSE-MsgGUID: 7xRCpNWbQqGwfXQLw32UUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84668978"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="84668978"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:30:51 -0700
X-CSE-ConnectionGUID: 9a4HpVmNQd6xCM71s+iCXA==
X-CSE-MsgGUID: 5n8JLTTZSdqSfLKNcUUoQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="281594582"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:30:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:30:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 22:30:50 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:30:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uo5RkE+YHVBJY5l0MP5zS9rkqtQDU0KowKiJAo88+RJDF/16pufxWIbcA/4GyYkO7jsXw9Xw6I7snE5ZMOwItK/9Lc2H/KAqxlKefYOkTc2cBkm3yPHjYdcL2WOyV9xKfj86IW6m8KdunvMaf0cQgNO3raMJwPG7g+oyYpjOI9Tf02Baih6WmXIl3ghleHYxqQQgwGx0lyHrApyrR+gTLIhUp5D0LDjKcnEue9bL/CarcAsy+6GMo8fN9n2i3c6WAvRI+KBKkq0jaD0UG30259nSsCuTB5lBV9R+bxdgxF1A2wonEQWwPWHV3VLJimM/MgA6A6HnmH8oNX/A/q2txA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DNuHl0+gVS5JrApfCNT5ZumiHGZwecxCyVUTydcuG0M=;
 b=Jaf9EQksCsOEf7AjYBUfQACptgkYZC79jaP6YFLCRKREf/nZarHOR2zkBOL2HUxZfYa5NGlLKFChKrPpJfEJiq1k9Dz0d1TpWQ5Pm+gso3sFZSlhRuEYhS1OhLSjt95aAx/Orq02uEuMHVDjX9ZZFxoePJKj3S41L8zGP7AUYfdOpyGy8Gv8sQyiG5/pmwWPXp4Eg3A4ACGfL4Eh/jvN+SxWlawIKtSQWyFPS86Qu3nCNRG0esdXKvZUZGpviNWG/nebEXYJucd2hW0P61HGjILg6XaiDQw2NeVIGFUS5uxy6MKCwi19p6V4RfuOffE9Pw7mpJ0a1r347hA/vImgRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH8PR11MB6853.namprd11.prod.outlook.com (2603:10b6:510:22e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 05:30:44 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 05:30:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v4 03/13] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
Thread-Topic: [PATCH v4 03/13] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
Thread-Index: AQHc7USH4UepBR5ZdUSXiO7iQykIebYpM+TA
Date: Mon, 1 Jun 2026 05:30:44 +0000
Message-ID: <DS0PR11MB8049CFAA900C74BCCF64F89FF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-4-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-4-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH8PR11MB6853:EE_
x-ms-office365-filtering-correlation-id: 4d597efa-44fb-47a3-8647-08debf9eed5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099006|11063799006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: +3jl/RS+QYFFO7cg1onpS/F1NkvgAQ2WZBs5NjosbCmbDVjeu5N2ofwApSSRs+WFsM3jJhePG+cND3savV3sU3IqFB1LIZsxqNKt+BAKVTqmtaip9YD6PwZ2ZlncnO32aD+WSCxj6FYnh+0vmd44Vbg2keTYOmPGltF+CHLp7fbc9JUn/krzc17ASv83pvcaigSdFM/uSmV4XuOf+wY4XaV1qXqkE5SwIEA0onwLIgsHwaFJpWsr7Pxx435ZeHPVNTRtwCzbsKpNjP0UcdGfIPbQxTgN1fqLzR638ePMafyZyFvE3AOkf06cGPQ4VUInddBbY50izU/KdqULPKPtQ8Hf8P3T3Mv0nn1IefaqRbWvyw9Wr4sDmpFfJ3ZcAs3YoT7iSpiP9ZtkVRzFz40gZVkll70VQEHZASWqIrfSiNSZQ5r0IzVbUl+5MWbQCtL1rKyPC7trm3XJgmARHmZOE9ZCVvtnVdXAGrVUV0zTmK5tlQq4Gmmc/TZFPMJCtwBIwS2B5FfsmkIgLpPCgMB/KT1whqNs99VSBd2vKoHy98H9EL+bJbeJH5tVifM/fpkz+4RujhVBRTALGebdo/NCaiXzHFun0TNYX9g1ny3DzcZFIZ8fSd2GYqpx+KAIII+QamdRSJYo8tjNb8njp05ITwxMqieCCKaekyhIUM0hXsO2j+74812Tj/7Nn1Y1Rbc2mRBq/c+Cx9Ocx+MQJXSucX+kEMEW0XtJ5XNXuEUoI70PRoz9wp0TU0GNQxddAuu2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bljrRnSACDHoPxwwwXdwreHKHNJC90zfDkX72LfA7AqxnfL4aMpGrHcFX+Xk?=
 =?us-ascii?Q?oVBLALqGLQi4DWHF3feglB5+8L7d4xHWxbGchWA8COadTxWU/UXKOuZZTZ7S?=
 =?us-ascii?Q?kIlaGtDr29/SkDpMAOW1TFTU5SIqfbYDIIob/8zURwMI2PZc19rbwgz03KCS?=
 =?us-ascii?Q?I6K454uW93iKSrHha/dGryJodFBrKqBedZlwC31iOY3rKTgdoJipPGtJzW7w?=
 =?us-ascii?Q?O8kOIk0HPJS/5flraaKRpBGqL3KSuOHpKjeVKLH6eljhOUYy9i5JvqRJ6OCc?=
 =?us-ascii?Q?TnfgVuvW6lnGXpSnF0Df9NXbu1deMzHzEhWIFX8l/2PwGS2fpXe8cafbBVOV?=
 =?us-ascii?Q?JogGg9VmRTIyARgK4HIQSIZmxwpBlOB4a1lZcuBOT02ZyewQZHfziBPGhIpE?=
 =?us-ascii?Q?d0GQ34yY7NGvBiQwW/OwVKJ9F8MG2MxJA2+qZhMyo8aziU2JeZWlJwPsL2Lr?=
 =?us-ascii?Q?kzhQWGhMYYZDeWNLQmGm9PoDcvQEhfIi1oc861P55ZnNC7iMlHUNd29JfxNb?=
 =?us-ascii?Q?C3p7fHDAcI+e2iqqHkk/9oZQRyCvsIFf4+hZCrAwJmbxCcehL9ruPbyVojU+?=
 =?us-ascii?Q?bDGaNCiX6Kdl1cgpR97ARs++iBhk0x6kd37uT8ahwLDQS/+3wLSWQKyx8H7N?=
 =?us-ascii?Q?W8XR9O0N4TjFrpUVBB/iU7tU5r48EZ0EiQy5opL6ZnZXFxWkEkpjJWyD1L1T?=
 =?us-ascii?Q?8H8l0FQ+0Y/RCLAEv5dzR/P+mqvfBM3odv3HIRBOCIWzbFBl023Zoqpavdt+?=
 =?us-ascii?Q?zs1R+2VEHiArejk+WXF7PwcBMCdl7rKx+BidHTip7Q5Jr7c0tdPvXZvB9Ozt?=
 =?us-ascii?Q?T2EfWujjoscDEQPMS2zOZfvokaGVqTY9wU3g9T/c/oVDQfvhHgKg+AixhK/A?=
 =?us-ascii?Q?A9fJ1kQFi2jMAh9CiXOYXCpxPWJfEZf2eo9FU96jn4iJU9Rg/hE8Ey8oxIKX?=
 =?us-ascii?Q?IaVKC3fQPg7xf3tHUgUEV6hgcxTnTB86BvP4WhN0If5zHdSLBqge0dkQcJ4X?=
 =?us-ascii?Q?08880qMQqDuQnZFpKXaSGBCUWDWgM2ExG8npfjpCAdNF7byZnFmWmLque/r7?=
 =?us-ascii?Q?XBg4AI/ixbCPQVtew4ohcViFEHNUdrfc/IZm6hjFwJXTKaNIZOe8dA9wYjn+?=
 =?us-ascii?Q?wC6tP0anrTaw+ZUcnD2E/TsXQmne+v+919+sdabxwd3PZMgjUbHZMp4rKkzv?=
 =?us-ascii?Q?UhYM5rpPC+uJzCGCiG8OL4BNJG+7fGiGRzRWjus7g3B54RYGqP13SQgk/2a/?=
 =?us-ascii?Q?Oh7mOqlgCSZ2Uo+M3sHEZxR0Ag4Z4nl1Px+UosrP5iiC7wOUFxJ6CtfL4M6B?=
 =?us-ascii?Q?baWQtfoiNhZ6ZdRZ7g7nr65NrfOdP6HuN6C278UVy5coew4dlRmkbuLUVM3n?=
 =?us-ascii?Q?A1wh2DXXYqkIjaYT2uVpLgNknYgNWB/Nxy809chDa6PLFdirrTRUcVHNWA9R?=
 =?us-ascii?Q?cPZUfFN0Zad/sTS7BHq8CyARF/9vFnq43UPIWWATR1IxXerBwcejejBaUxrC?=
 =?us-ascii?Q?I2oBYUEu/nbWRtERxdOvpZ+vUftH7TAjc4RX9iTHNc6u2J4t5vLubSEVgJuv?=
 =?us-ascii?Q?pkexgl7T/ssyIPBPzEzgKf+uKNA533L1P92qtL7oUj9dYQbeOvWorxSVXYqS?=
 =?us-ascii?Q?uxNjHoFTTc0ggJXRLi7aVHTXA+PPT5USlR1HZGqhK60zTI05hzlJeOXSE7s1?=
 =?us-ascii?Q?XBzTT9ZDM/2V7kEe13IHO00xaCxh72YI90UcTfocBvpmveALHAc+hLC8FoH/?=
 =?us-ascii?Q?9VJUqlY1pA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WneCwX0YGpGa1lm+v1KJL6Sg54VTqDFOjCeuSzwYD9U4pu/KL7X5CLITopTemxs0vvVy2qo4MGgzgA6hAoQVGFxGMZRm5tioRYRuqHy1S5Do4wtudSMfu1MFozNwaKQVFf2ZASxwNBpsLiSdu6t/P3QIIZkhQPnstSMxOwf9qoInXYtEB1kenhvRFr7B6ahAl1JH3CLmHdOCOxK+PKdv/HhpvrY8nNtXHfFfA3myC83Z+v6zushID2YmE5icLyioFCkBWAK1HGAXGyLs8cXVE+nkeKTMrXhvC70lPh2aYaO0g6DCEsH4Ff8txraKxjdSTO52kHXIuHY/s6JVnyivhQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d597efa-44fb-47a3-8647-08debf9eed5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 05:30:44.1048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EMKYmOgCGZBhFZDBBV+C3V4J+2th6b5LEX1K8LIegWk99uzQ2jS4AbDK6KgGBUMvL61TmyRvaKcv/OqbCtk8wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6853
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 04552619B2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, May 27, 2026 12:48 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v4 03/13] drm/i915/display: Use FIELD_PREP() for DC state
> enable bits
>=20
> Replace open-coded shifts with REG_GENMASK() and REG_FIELD_PREP() for
> the DC state enable field.
>=20
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 680e7dfdcf1b..efd1a3e56f76 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3073,11 +3073,12 @@ enum skl_power_gate {
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
> -#define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
> -#define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> -#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
> -#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
> +#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   REG_GENMASK(1, 0)
> +#define  DC_STATE_EN_DISABLE
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 0)
> +#define  DC_STATE_EN_UPTO_DC5
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 1)
> +#define  DC_STATE_EN_UPTO_DC6
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 2)
> +#define  DC_STATE_EN_UPTO_DC3CO
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 3)

Misaligned, need extra tab.=20

Regards,
Animesh
>=20
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
> --
> 2.43.0

