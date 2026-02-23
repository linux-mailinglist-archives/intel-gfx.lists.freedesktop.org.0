Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIGZMiB6nGlfIAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:02:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BC5179466
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77A010E102;
	Mon, 23 Feb 2026 16:02:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FJkO+z3j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B2B10E102;
 Mon, 23 Feb 2026 16:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771862553; x=1803398553;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JeWRSQrwjj7PhepoGXBEEkqBhqnXcg4/yalXXL07fik=;
 b=FJkO+z3jdJY59zXBHxo31wBmCuHHp92IDRWSq9r2/H2Ll18T1Ii0cBtk
 SUusRG7ifjlkH5h4Q6wTnSKyLXvzGeYdsGIGGB3GTqlFcd8/Qg7JaXFLH
 jYmVLMfuvQoluHtzLeNjgbQcf/C7+7gi9RfkSxtNMjyVwCQp7aJ5w/1xi
 gWWm8WNiu4kCBdS4ThIgB1BQwbrxErJYxvorVfD6UsFY59ZQ5cz4uX7AP
 k7drQUhkFkaZViQ9eWybFi85Hq/iGv2VciZS1ayfUMojoCTepObsiXRiv
 ry0PM8GtZADy1Qyj3tb6eS2KKvvA0SdM8MnLSQuFVcDplU/OGtb7mV3Aj w==;
X-CSE-ConnectionGUID: 0BxL4qpKRrSoHTlH/voa3A==
X-CSE-MsgGUID: px6EoK0yR/aaoVbsB8RgGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84312915"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="84312915"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:02:31 -0800
X-CSE-ConnectionGUID: U0viCKUlRDSOse+dTHiqDQ==
X-CSE-MsgGUID: sRocTNj0Tpuaem3h+88o2Q==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:02:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:02:29 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 08:02:29 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:02:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OpfLHRhid3XG9wny2+5N1KscT9P9HBHxqvGaLn78y8rIPZJWwc8taDNHeAEPLg+GicyIZ/v7EJ6QimczFoecUpWaQnuUOHvDFsXJwPbE3JxIL50xf78xhYZHI7maIWOFORc0g4Ti1d97GMFgNfxDxx30Z4vZF+TQ94F5ByJGA5TE2QVTbgkb22DYfAARRaP2vdSo+YOyTG7Qt2IKIMFZJNIOJ2l4hVUJ57arnJq9peKX18yI3h9teI0Ovk5xOGtN36S9MlwznRnshqCVu9l7ArytNikE3L1ZtyBJkuTaOq96Ysp9mjdrYzaqRmlI9PctEgnGtRpzi55tNSRj/pjAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i3KzflKBg7KWX97FGXxMi0iCNXc7CWNNE49h1v8VMnM=;
 b=WTHglIPDLPV21KAps7dBHmLdo0H3ScdNm2xcHB5WBfxeWGyWzC4HZWhevnZ0WAAYIVcNBTB+CH1Sl19KBycy574QGfNZ43EP8MWa8s7IARTYgdrjDbN5//zFBb3UlnhjJY48ezRkbqlUz6ujPmdPy/FTgkllGsqQZjNCJh/UyWaCB4x57zkVO8cBFqfD4VyB031UvNJJ6Jj2+TT3nlSJGO9TOdp0HDC4QJ7BUvWaTvPYhKocBtTaDFDWUuhqBe7z2mxepkI+q0FGaKyC7gFl8HE+LknP102LkQFxkjcMTa59b+Fszehma2FDg1FQ+qA4VJM5Me/OpW1bYrHviFtqrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SN7PR11MB8111.namprd11.prod.outlook.com (2603:10b6:806:2e9::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 16:02:26 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 16:02:26 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW
 change
Thread-Topic: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW
 change
Thread-Index: AQHcoc24U39bGXNVfU+1Yhg5vm9sMrWQdgww
Date: Mon, 23 Feb 2026 16:02:26 +0000
Message-ID: <IA0PR11MB7307F5E3DF179F283F94D4A7BA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-3-imre.deak@intel.com>
In-Reply-To: <20260219182823.926702-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SN7PR11MB8111:EE_
x-ms-office365-filtering-correlation-id: 61ee4d9e-1cd5-438a-01d6-08de72f4f0a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?O+iouURXM4W0/2KW4TyHraEVYr3YWqut8diDJW6+y23Z1eiMw2fM502gPf13?=
 =?us-ascii?Q?hK8D6LONFMtqSdo9tYn0jiJm5anwqTIt3yMSfQieLNFg8wdH0BJ/sck2p7tn?=
 =?us-ascii?Q?nuXEYmUk9bUgUKGJmSrr0ujyu0WjNTJUgZUBTVvMf1ipzBB+4cHKFCszot5p?=
 =?us-ascii?Q?G59PW5/pbF9bmgePMqXGd2zK/dzyJpHVvOJK0Db+d1jLvLYWD7b3xJg1b5Xw?=
 =?us-ascii?Q?Zdi9BT6psNuawNaEoVsyfDWyolwydndIuNFDJBRYiIJgzL9CvwEvAwVbA+Fo?=
 =?us-ascii?Q?pcXd0xc10ZdAi5X3oZqr/wEYhuBSwJ8zikp6TdWc4zJItv8DzPPXLc22f3Gg?=
 =?us-ascii?Q?XPZP3T9Wr/bEt4OtYu9sFDp6hK+T+aacwPoyPOj5qxoapi/uDIwcLJ6xDkoR?=
 =?us-ascii?Q?wQFrsqC4+49IrGqq7ZLDE0OfXhddLIO69ihyYyMI8ZrlmyAuufYmuRpnr41g?=
 =?us-ascii?Q?FD6NReQ8bd23Tw3Cy0cnlCq2g79jXjlr28ZxabF2S8r6sFnY+5i0CIQeYpBC?=
 =?us-ascii?Q?S/bEpSBcMrH9XYNUXkcxbtetNn4OrsT7Ij2OP6IlFiyflKDwklWG0fJSxQ8Y?=
 =?us-ascii?Q?RBFaq3bkVxGsswORG/Tz3vaUphou9MKvY7jTp+AfdKWnvb+dmQZJ9itf0/6h?=
 =?us-ascii?Q?V+3Vk9WW1LYCAf1UB+XP9Zj0l1sgFJhsCZFgu/jR3XeYAMiNG2ItrY3yqF5w?=
 =?us-ascii?Q?V3ZhRpKE7h8DOVrVHBoG1tKkicoBsSnsrhn2FWc+CAiLK/5+ZMCJf9U8Bt9n?=
 =?us-ascii?Q?L9F6d/vBPFLvEOBcICBwf9ZbXIOrgm7hfw10Mv1gF9D74WL9RWQclGpThXka?=
 =?us-ascii?Q?B/2ycJD4vVee44UtNnpqYtSxNbGiRKP2EQMXNtxg+LQr4wcu4J26pOHPs+M/?=
 =?us-ascii?Q?Vlp4ND/YZoDE0+FzLLbimgdOZdmiOUqkVsErRMfthKjR7KEYT+P04eji5pYl?=
 =?us-ascii?Q?QxK05p57gyV8TDmfCMUxK5IKwNeLXEi9SLKBnTcJHihm/UujVbDS2GS1ExCL?=
 =?us-ascii?Q?HFXkKSK59VfhXXMDvTUlCgIg62A39s3rzYTf6eBKT3eeJArvOtaNjc5qsId9?=
 =?us-ascii?Q?F5RVxqYBe7nr2gBRE93uzeShZlKHu40psXyu9H3KlwgSMwILXbuy/owKWbsj?=
 =?us-ascii?Q?5g6arT2cRagiiyoVnnbOmNZT6iTvrs1BuJnYULO0L4BhB+TmnbAV0d16Rk7b?=
 =?us-ascii?Q?fXkwWdr2NPqSWiP6TX+fTJhGqt6I2fAaVmIblUSUYmkospz7TyvV3VuCbTkz?=
 =?us-ascii?Q?EzNJ6fUy+g3KRBzIRj1CixrrYovGmkcAc0nEsXDF/obc8SGamY0XvhtuG7Kw?=
 =?us-ascii?Q?lOQi90VGhMkoytaSeTN2ADRGviy7X8rrleu/jdsDibksbMBikuVdXPM56oQx?=
 =?us-ascii?Q?5oUj3dMM8YFAt/YVhlyn6g44PbKwsONugnvjMiq5qnWHCOajFUq4/CdqcHg7?=
 =?us-ascii?Q?Grkv1Ipt/dIawwyn+9Q/j9MaFZEZmUPSJXNi6lEfcmsiZ7tXitaVZdC0//gU?=
 =?us-ascii?Q?LH8i+xMyphOt/oDrpwqjgGab3/hvUTbgyEfttBICW7I7NiSp7M5M9ldCpMGj?=
 =?us-ascii?Q?o0Oz0keV1SK6ybOZfVwClQJkcc/JI1f8/A5dwg8x61WNZNX8iqtGAtUg0ZHK?=
 =?us-ascii?Q?0ft0rCCl1G7GfbXr7q18hSo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uOypRTDiMYKVXfdmGzG0f6Uo0cdaS57V1Z3qCNaIoqKFptFe9fDDGxYz8tfF?=
 =?us-ascii?Q?Ut8mZddvH8Swwm2FXmaeyiYFK21e9Hsu3RzY925wjY66sGoxyKcUZtQJfFOw?=
 =?us-ascii?Q?SDi7Nabd4zQJIwNVFj+Y8DMirMPRn6hyb2CMf4rIXMOANzotoPTvezxTwBFf?=
 =?us-ascii?Q?s8lvbNKkMqbJg0EVIXBhxk4bapp8pidQwyKbQkaEh0ce2yQf1ALHPeWInY1M?=
 =?us-ascii?Q?Pvot97ZbDFyE14BHLdOgJBZNCDrokK4cM1IAX1EHGRxLCqJrZ2UVWxcdOVxZ?=
 =?us-ascii?Q?C0UaGIshgALBPgD0CQ7yN8+dRELrDKFzDnkp8TTeJ0bz6WS3IVXhCvsvwSwU?=
 =?us-ascii?Q?QrMnpWpHTdxs4Vh9pJrUD8ryBRQ8MCY+/f9bAY6SY5yTY0Kf0bJlZNmErhyg?=
 =?us-ascii?Q?oG9QqG2mtZuZbNB3M+/TrpMv5EbUjPn2HaKJK+FzhgVZ92oYok9bwFIF0r08?=
 =?us-ascii?Q?iXtQYaxiwTwjH7akIh20avSwkfrYAnMRN0y+X/oWTpriIwF7CDJI2FfTzkjs?=
 =?us-ascii?Q?pUywrDvnDM+XJJyBDPPL74xMsJq6F5fVBEiPkjF/5KBxuKNAy0Sb7ARe5iOB?=
 =?us-ascii?Q?AhZbsCaXFzg6tqeS5SdfzXMszpwpoxZfzU4ziOjeDarn7hfJctQpEj6yo/zt?=
 =?us-ascii?Q?uFXk+FBN9TP6LfH0yTf0PcedWSzWbAK4lrgbzvvi+c3JygurH+dOKVddJ6g0?=
 =?us-ascii?Q?MvV9iO3c1//t1uCPMFZQgEcVpDf0GK+RtWEOpWRUX/MLmSLEBglWJOuygp6d?=
 =?us-ascii?Q?sRgTJw79H41CPV76zVPRRlGdaGvQr+cdykmtXKc5wmWhh6NoqSOUEXdfnYjL?=
 =?us-ascii?Q?kQVy8haIovndHIQwbc1tdbiy1laoRIqjNI8CgSTFQkynGd4vJWY34RCKjSJL?=
 =?us-ascii?Q?jjy1fVDqkHC3yYTUtKFz5LoaoblUls4863a3Pp/LpAfYRTmY7vQtRcr7BR3d?=
 =?us-ascii?Q?loK5nmVanZ7VDntH62AE7rycbxzQCiUBgnCbe+65Pq7s4B6On24mMYCVsZ5k?=
 =?us-ascii?Q?KRWlP6qevdL2YpVr/hO6jqzItAodxvhvWbtR4tR/7K/YFA4lQS9nSaxW9oWf?=
 =?us-ascii?Q?mhlrtn2ljYH1+94xA9hF0KJ0crvLKAvOMaQv7FPwq3O8WJQzE5ICkVYVoTbV?=
 =?us-ascii?Q?AfVg7DWV/ASfG/Nz/U6G1GQ2m2KEfxc08CoaauOUliExEdSsOo9SW1Dm7HOr?=
 =?us-ascii?Q?4BszNuWYJ0BIHOAHeFkLft442+05uKJfXdwxg75WF/JY7cFCDJNHpSbpkEHx?=
 =?us-ascii?Q?s3j97ulL5xQgotdG/Lusmp7RVlyTEzxEFkTrV7VDzHCBZsuf5Rtfc19LJDYP?=
 =?us-ascii?Q?zjAzN6oUnr3FpE7l+7oBaiKPHr2skSfI19rUQGVqZDuuIaRhZfqf8OMFDaJh?=
 =?us-ascii?Q?T8/VHbDifsWuO1TPFofc2pdhGJig+ePFCZbKBniRqfddwBku4DfM8vxUcBZZ?=
 =?us-ascii?Q?dPjHKto7ALV2IKdmGZDb1qrmQQaR+BLS/65xUkvp/31R8ZbCJsr73nT2ynsr?=
 =?us-ascii?Q?NIZ4n851VYgJ+yUUUuuz6Gqp5+A6kzuLr1DXiDsue1Yl2BlRW1la7X5pp2Vw?=
 =?us-ascii?Q?QvsxTG073YwgXCaDjZy9Aps9S2RV80ZgVxeakBAGZSKbGjDLwrUgfrqDAR9m?=
 =?us-ascii?Q?gpk1yt/obPxa7yLJISNYAeK0rQOAoWa8RpB11YtYLtZui6X/ZLZNgsbpb8Cp?=
 =?us-ascii?Q?CcZnXbVRIs57nkyBZV89Fl8o2gp/a99fdKQZ4MT44KX4TYR2C+v50eTxYMwf?=
 =?us-ascii?Q?xHH1pWb82mdgrhqciIwnerUUcXHEud9LIPcS8yMO1qO9OPDzRxvvF1Hs3uBr?=
x-ms-exchange-antispam-messagedata-1: JFWsO+5bNBAa8A==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ee4d9e-1cd5-438a-01d6-08de72f4f0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 16:02:26.7387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oX5BDpC8g6sKV2rS+O8hG6a1FgbEH3m75lZkHsoWXiUNTg2zqNwAA1eW8jVqklAJ7FFHB2Xzl+muE1PmM6KriQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8111
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA0PR11MB7307.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RSPAMD_EMAILBL_FAIL(0.00)[intel-xe.lists.freedesktop.org:query timed out,imre.deak.intel.com:query timed out,intel-gfx-bounces.lists.freedesktop.org:query timed out,intel-gfx.lists.freedesktop.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77BC5179466
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Thursday, February 19, 2026 11:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW ch=
ange
>=20
> update_tunnel_state() checks whether a tunnel state change (e.g.
> available tunnel bandwidth) affects the list of valid modes for the sink
> connected through the tunnel. If so, its caller sends a hotplug event so
> userspace can re-enumerate the modes.
>=20
> A change in tunnel bandwidth does not affect the mode list if the bandwid=
th
> was above the sink's DPRX bandwidth both before and after the update, sin=
ce in
> that case the effective bandwidth remains limited by the DPRX.
>=20
> As get_current_link_bw() via intel_dp_max_link_data_rate() already return=
s
> bandwidth values clamped to the DPRX limit, the condition for detecting a
> mode list change can be simplified to:
>=20
>     old_bw !=3D new_bw
>=20
> Remove the explicit checks for whether the bandwidth was below the
> maximum DPRX bandwidth before and after the update, and rely on the
> clamped bandwidth values instead.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 18 +++++-------------
>  1 file changed, 5 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index eb1eed1c8c7bb..9f3750035f68e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -54,30 +54,23 @@ static int kbytes_to_mbits(int kbytes)
>  	return DIV_ROUND_UP(kbytes * 8, 1000);  }
>=20
> -static int get_current_link_bw(struct intel_dp *intel_dp,
> -			       bool *below_dprx_bw)
> +static int get_current_link_bw(struct intel_dp *intel_dp)
>  {
>  	int rate =3D intel_dp_max_common_rate(intel_dp);
>  	int lane_count =3D intel_dp_max_common_lane_count(intel_dp);
> -	int bw;
>=20
> -	bw =3D intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
> -	*below_dprx_bw =3D bw < drm_dp_max_dprx_data_rate(rate,
> lane_count);
> -
> -	return bw;
> +	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
>  }
Function name says get the current data rate, but we are returning the max =
data rate here.

Thanks and Regards,
Arun R Murthy
-------------------
>=20
>  static int update_tunnel_state(struct intel_dp *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> -	bool old_bw_below_dprx;
> -	bool new_bw_below_dprx;
>  	int old_bw;
>  	int new_bw;
>  	int ret;
>=20
> -	old_bw =3D get_current_link_bw(intel_dp, &old_bw_below_dprx);
> +	old_bw =3D get_current_link_bw(intel_dp);
>=20
>  	ret =3D drm_dp_tunnel_update_state(intel_dp->tunnel);
>  	if (ret < 0) {
> @@ -96,11 +89,10 @@ static int update_tunnel_state(struct intel_dp
> *intel_dp)
>=20
>  	intel_dp_update_sink_caps(intel_dp);
>=20
> -	new_bw =3D get_current_link_bw(intel_dp, &new_bw_below_dprx);
> +	new_bw =3D get_current_link_bw(intel_dp);
>=20
>  	/* Suppress the notification if the mode list can't change due to bw. *=
/
> -	if (old_bw_below_dprx =3D=3D new_bw_below_dprx &&
> -	    !new_bw_below_dprx)
> +	if (old_bw =3D=3D new_bw)
>  		return 0;
>=20
>  	drm_dbg_kms(display->drm,
> --
> 2.49.1

