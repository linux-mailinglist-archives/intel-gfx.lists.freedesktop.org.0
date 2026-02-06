Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iG6kMqKChWnpCgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 06:56:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3245AFA7F6
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 06:56:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B848510E35D;
	Fri,  6 Feb 2026 05:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dsb2xTxq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F48F10E34E;
 Fri,  6 Feb 2026 05:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770357407; x=1801893407;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SxP2c3JKWM/7xcfIZUDxP7Xy/yBazs0yvgsE7kKBirY=;
 b=Dsb2xTxqnTqUNOa9nczY8tLCcNmYSQwOTT16EGnSI+tbrx9fLROVm5ZV
 r0a6fE/PRY/7rUm82je8WY9j3umyrgdU/lRh4D/Hx0+JDD9DbsGRSKAyU
 17Unu5e4hpsH/FFP8QzDZfEyN5RMAf5R755CY6vm6M0g4cOU1eP8CYA8h
 y0vf9sTWq6oJwNvMfi+ngvYMDysEsYMqAKepundvZ5eCw7xYO21jL7uDC
 44IJRnqd5ybupJ2PAQXR9KobEjxdnSvn/BveQN40cv7xtAZdmM0ck+SAo
 zApfsWpPW48/OBy9W3umFY6lFwHtRygU/p1X1/XnP1+UPs+7AVUWpLDZh A==;
X-CSE-ConnectionGUID: xlNX5wW8RTugdujbE6xq4Q==
X-CSE-MsgGUID: ZNjkmbDwSGerOF3ZJeI6wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82677620"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82677620"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 21:56:46 -0800
X-CSE-ConnectionGUID: +Ho7bpZKQ4yvc28cPkpD7g==
X-CSE-MsgGUID: vg2p6htwQ3Sx7XkJT50QGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="241454256"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 21:56:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 21:56:45 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 21:56:45 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 21:56:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IebDGhRFqUHAekprbmEwXP6oXkc4bXnilvLWVtkrhdw+KQQ1PaeIvNG7ejmC49nvv1m0RyuJZNynb0iqfZz6lt7W+yGhKF0xESBaymUWXeW3Y/6UNV6GMAN1U4kawhdoNLLH+5LQN9ahBc+vonnWIDxY2o76XIzN5FCeKYUU55oDxWf96ltmA9LY04205f25tWxhH/wWZN4OFRjqDvrQ14PR6pLLufaX8cEZgerI1zcfqDA3XyN74Ix0OkK3nf2r/rSD4C6m7dJmTIg+EDpfQHueGp929T/vuGUqb6rnoJt3mmEf+jeq4HaNsppyBxgZPpW1apzTQb0H3pFMnEE0wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mzayzr/yOncT3AlBAuQVfX2L4CoTU6WlQF/M27m9NN0=;
 b=NwRAg5PFcwocG329KprPQ0ROGh2hKxsd9DrEVtSe+NN9aZJgqdmgMBDzRVNxF64IAb+ak3QfCXzyMnhUlh9lOk42tAsvDHFX3ohri//RjmV773A/7KcRmBbUJ4gt0YCXiAKlCywnCy8Bs1GjJ5x5wMK2izU07/hVI03uWnsY8OBCVe5rjZp+G31aN0xwAWdhk5dSVhY0LkX2rw0uJCxj0XrlaeJCO3xvxT8PjL1IHkrOICGXRtAdaSwf9VM3nW6Bel166FQb6kHjEwZKnGtzx4yrGQKfo2I5mnjvUqrqZUR3COX3i3p8QaAvWaSny1VPognqURkAlPLmn7I+GwXnDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA1PR11MB6145.namprd11.prod.outlook.com (2603:10b6:208:3ef::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 05:56:42 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9587.010; Fri, 6 Feb 2026
 05:56:42 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v2 09/10] drm/i915/cmtg: enable cmtg in secondary mode
Thread-Topic: [PATCH v2 09/10] drm/i915/cmtg: enable cmtg in secondary mode
Thread-Index: AQHclRdU3wr1OujyvESrx5gyzpuZQrVzz4gAgAFf9fA=
Date: Fri, 6 Feb 2026 05:56:42 +0000
Message-ID: <DS0PR11MB804967311BBFD0F79DCA42AAF966A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-10-animesh.manna@intel.com>
 <942f84be55f37e861184d4dc5e4f57679dc8c720@intel.com>
In-Reply-To: <942f84be55f37e861184d4dc5e4f57679dc8c720@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA1PR11MB6145:EE_
x-ms-office365-filtering-correlation-id: 16ebcf36-0570-435a-325b-08de654480ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?R8i7CcOTOoP54G8FEOxnmwYvqeY36h8wkNFFKFl5qCRvx1QghTwPx1g0nzK1?=
 =?us-ascii?Q?J/l6Gb34zcTs4ctl0vjhqb7d/pUsItJM3j30/ad4TLa66k1MdNn6viYm6yp7?=
 =?us-ascii?Q?PpxBrEUqrxNfF6GURmmuxJpO/jS8zrj0PW/AHDw5VYqBn+n60XWu2HLbrpEV?=
 =?us-ascii?Q?GkWzqB1rEVmnwzB7uB0DulvXYBHd2amPiHvXtGEb3hsQuQPbQO6g5m4UcRDZ?=
 =?us-ascii?Q?aFQMWpdG7IIPFESjU12tNgjcJdyiZ9KKeXp8eYk+hP2FAKiHCq46dZroaEIF?=
 =?us-ascii?Q?yVgWfnfQIAgOUOYoJUifyKw2daZOXcEUFoDHoB8DFz+jOq9jQzQpPK/RmpRM?=
 =?us-ascii?Q?d+viziWAAaeeSNsY3JtO8HYks59WpYdKkbNqc9ty3rrh6uEO3yg+Tic68QBR?=
 =?us-ascii?Q?vEo/mydxMFpziMNabhFWb00cXRiN4GaTfNm5vbIdkA7Mr7gFmCOK2wjpH8ec?=
 =?us-ascii?Q?gTGFXGq4ffot9ry2obqgeoinEfq7iTBzBgCSJctL4iFvx5NJDOm5n2R+64Es?=
 =?us-ascii?Q?h2to7zKeiiCt8ba4UzsVd/exXvDs33GlXOIUTK+qAKrdZQCSz8xY+K6JhWbP?=
 =?us-ascii?Q?DmklYbcDJqwY5igYPqNL16PJ57x1U6ydoPqBT6IC7oApdUOyAZtrl1tI8g3k?=
 =?us-ascii?Q?HCtfRJ+TKgtaPou72yvKppndi5tl0ALBfvQjKb6tO25GDOpD8VIFzOGQCVR8?=
 =?us-ascii?Q?KtiEtiNKUp/DrRgyZzIoptSLOx7gaxloOUll+564N5FMKIOeyaAaFGlc5lah?=
 =?us-ascii?Q?DcnAIEaQ8J28TD/6lcA9wXuk1BiscpyBjDdDOrXIAyXYgMmp7myPN0btFd6s?=
 =?us-ascii?Q?HZaoGUZoOtW2x5hw0Phmd9OPunSc0ltSmdmH5J4Uk3RTa83BMf8/yWuQamFb?=
 =?us-ascii?Q?MzATlZb8gZtImGABNqHW+koAZeWW6McIq7MJpv75+aphpYEdBeQ3H3LSxz+g?=
 =?us-ascii?Q?H7x9Hi1kJMR1Y1WztfVvWEWumb4z5QRzSin0SIXUPzfepSnCezRpZIE5DFkM?=
 =?us-ascii?Q?9UvP1pf20tagg5QXgXcH0lOTDBd9tZICPYepy6+oFrHq4uZWOMaz4D9JEW7e?=
 =?us-ascii?Q?DSodm8KfGHW4g+pVAV/TRMZs4VJ6IAkCEsxzqy92h8ntr2My2jlRQOcjy6tY?=
 =?us-ascii?Q?SmW7RSDPSgZQuDxu2KRtyF6Xrsrmh4aVeawv+28PM4S20VEl0LvWrhfkVu8O?=
 =?us-ascii?Q?VtnNnKR2aFzv1Fp0dQa01HpVfVe8m6Y7b/Fl3TCeACxKitE+kit9TjWaTJJY?=
 =?us-ascii?Q?0q0gZMU0D22KfYpzsT53XY8kxeG68FPMuM6TFyLG0kppN9el0GMMnqgzuz22?=
 =?us-ascii?Q?czfcKWvCjVdmxrAQf7vYcgfwmBIwGe0CTl4yjh2r9e0lnWIK9Jlpwsljgzts?=
 =?us-ascii?Q?KGjoRirSmdEACqWTn8Sdjc0ySB+aMvlhmGobSvKtRBrBX3fkFIIa+9FymLtl?=
 =?us-ascii?Q?nLS1nL/1sJNdtcR4h51PgebyVjPDd70IB8e+EXHUWbd+mLMT51NebH4kGSf0?=
 =?us-ascii?Q?162M6HaE0UwCYGcxm4fjvW6Xcrfswu182G+j9efnbAMc2e2JWtAY4ZtBe3mn?=
 =?us-ascii?Q?jGxnR/Ma6MUG8bfUOhoP7j4jtL1Q/KNNF54sjkQ6tMF1NQkQNpH5bNQhS2eK?=
 =?us-ascii?Q?G4echpCuc0gf7Unty/daky4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tM0n8spiJN7TvX7pw5lMH1JoNDPcjijz4tdl17ZHLbmrGdE2Fy4D2LtD1vVc?=
 =?us-ascii?Q?n0Rz/y2irFIS29pCbzE0iNFu7PW72G8pkPFZfHotkVPHbNXgI9M7Q6QQAAq3?=
 =?us-ascii?Q?2o9+GhQZ1H3FZyRMRZjXs3PnpNLyGmbyOKy7aI/stDYdg5VJ/ftL6w9Hbyn3?=
 =?us-ascii?Q?1UjSZ6FzOBpI0zXh9hwgY2SubouQIaC4V6QdYdIPwbUm96Jfe2XLT3SneUr3?=
 =?us-ascii?Q?g1eaa9UX+J4yys0bUg1MeYTAjAK3NA3gaj7qukyI1FNIjK2Q9sk+gclKhNXk?=
 =?us-ascii?Q?C7AlipPHLFH92SleJjZpuOsJeSCmvta9/CoS8q4IMZSqbp4AvjHwajGmcpFs?=
 =?us-ascii?Q?Re0WmujOvMVnRTZiemzWXO7xGji/jp+pQAjnMAy8M6WoaA1Mn28XbMKQy45f?=
 =?us-ascii?Q?TjhI4C4Oqad13DBr4fNsdo6bqrI/Uf8cEYDYiVU10Rp7GFgX6oEOjsK5J0lM?=
 =?us-ascii?Q?iCbsYhFfv6QADAgJzVbjemNOGFAx26HXxOXcN65EHgke0syaENPomR6DMqra?=
 =?us-ascii?Q?fpkZwP3b0ay7vAPO7+SQRsOaUFMY5fTqv+CwC//YW+1oTsmd3tc5HgpZIgtb?=
 =?us-ascii?Q?DpnhDpyWZcWd+fslhc1jMp1cYXdyeEa5K7/Z9nZHKLckCnbiONrC/VM11agt?=
 =?us-ascii?Q?H0YoetPE8esb7aJpO4k1i/ueyIE4HD56BZiDW0z+2kuNumWvDuQDMwN/kj8x?=
 =?us-ascii?Q?rHWvncDMUaISEN0YAON68ZdQQy+WJJa7jV+yRQVQr7mlqnyfbMpC84+J4CUe?=
 =?us-ascii?Q?SXWCreIeEsXmGtPL/kzR3DXfDaNu4JlvcMazTmREDszeCNpfNnH70YA3P13Y?=
 =?us-ascii?Q?nlylnGFNyKdu78eq3UljusBXR9d2CzswsvtSLMu0NRLk3BdjZOeU5qxsC5pO?=
 =?us-ascii?Q?TialUQr3rxA0UWpz7ZVQfq5OIq5yl8Iu1Ls5Y1Rebjgbnj17yhBt3QpMPEW6?=
 =?us-ascii?Q?9axo+QWhiIMqO+IBv/9b+Erp/wTa6nKikXY2+H4yRVJ7IB/hHvdPV87PK64b?=
 =?us-ascii?Q?q8M9edEM97HtrjIfvL2SYeQlwRTzfDxYfTneSzoR2ul79nv1RjxZGSpVEwEk?=
 =?us-ascii?Q?xx/R2oYzeIsHkyPW6z+DVzqi0FwP0AEsbpsxD408LlcxOpdNTx3k178c5sFz?=
 =?us-ascii?Q?3yAD0fwI4yXtvaR7Ic7uSZjDOGXaOtCEnUMbPhbamCRBt2RbaZVnXw74g5jR?=
 =?us-ascii?Q?/+4FsMChHntG2tHUvvnJ3afawHpDXs0+yjHWN7uah5y3wUAj7zwPWOsuqKg0?=
 =?us-ascii?Q?Qo1ei09Zo3KhY/hH4Q7K3JdXUtp2lnArtu6K6N9nvgrxnSdRT5QZMbGa5ook?=
 =?us-ascii?Q?7M9zjqxISJp7fxoEH2iFut4N4o5yVoRJYFLKZOSadkhY7twK7zip/jeYqSHD?=
 =?us-ascii?Q?uVuDsBWZwfGb5HUYIbiZoWUo7AdLCA+4oXQKfk5oVGFLK66AaZ3Sj/vqAF4j?=
 =?us-ascii?Q?1RE9+lp8qW2NQ2kk6XthSvEhBxSTAT7tS+5zFMtL/bMcIZezp43QvtvULfO2?=
 =?us-ascii?Q?9MkO4Gm41yVqR9SMmkEU+RcVZL6dyhlOm6BGY14A6eHwPwmMlVcIKrFgQDw9?=
 =?us-ascii?Q?7kzRUocksBKUUmOfPBcGBQGQN3DHc7yjGZxC3fhyzqTinn8mqPtsWlm7bw2l?=
 =?us-ascii?Q?OxmVYY+ixnmrkHJrfH2yGwh+5PpI/i9luGM0pP36KbB+gX58PGLdkPVk6net?=
 =?us-ascii?Q?bLWSk3Ray6NMjDBV0FmfeVcXE83GZmYqdTcaaKEnmSVpygiZXLbiiF6Qs0yf?=
 =?us-ascii?Q?q13eT2MDTA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16ebcf36-0570-435a-325b-08de654480ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 05:56:42.3804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V1IM5PK+BE5M9o5QzdnwJUuIAC2aYVtpC6f/4vvt6N5ig3pU1YJLfSPEPjAhIfIz07+FI4TcY8/SvRywn2K0iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6145
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3245AFA7F6
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, February 5, 2026 2:23 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [PATCH v2 09/10] drm/i915/cmtg: enable cmtg in secondary
> mode
>=20
> On Tue, 03 Feb 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> > From: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> >
> > Wait for CMTG_SYNC_TO_PORT bit clear in cmtg enable sequence and then
> > enable secondary mode for cmtg.
> >
> > Signed-off-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index f7364c7408d5..d1ec9b79cef2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -277,4 +277,18 @@ void intel_cmtg_enable(const struct
> > intel_crtc_state *crtc_state)
> >
> >  	/* Program Enable Cmtg */
> >  	intel_cmtg_ctl_enable(crtc_state);
> > +
> > +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder),
> > +				       CMTG_SYNC_TO_PORT, 50)) {
> > +		drm_WARN(display->drm, 1, "CMTG:%d enable timeout\n",
> cpu_transcoder);
> > +		return;
> > +	}
>=20
> This should be part of the previous patch, right?

Yes, will take care in next version.

>=20
> > +
> > +	/*
> > +	 *  eDP transcoder registers as secondary to CMTG by setting
> > +	 *  TRANS_DDI_FUNC_CTL2[CMTG Secondary Mode].
>=20
> What does this even mean?

CMTG will be enabled in secondary mode. Some copy-paste issue, will rephras=
e the above comment.

>=20
> > +	 */
> > +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> > +0, CMTG_SECONDARY_MODE);
> > +
> > +	drm_dbg_kms(display->drm, "CMTG:%d enabled\n",
> cpu_transcoder);
>=20
> See transcoder_name().
>=20
> >  }
>=20
> --
> Jani Nikula, Intel
