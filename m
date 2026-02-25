Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNUnIwt+nmlrVgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 05:43:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B93191A45
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 05:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795FE10E68D;
	Wed, 25 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gCKHBatV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D79910E68D;
 Wed, 25 Feb 2026 04:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771994632; x=1803530632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5yGTkAbV0LM5cMu6lY2bqa/jHjWlYty6bmcqq80fIGk=;
 b=gCKHBatVG7AfkEfte9GO0O5fv93gqfP2H6cdyObx5Lqi9Ktal1jMsqRN
 ++GothTf1eoID6Aspkwy+oAGYaKuKS87NIplZyrCMOkAOad75V8n51sMg
 RoLxhQkr47gD67Uj2Q3Pf+o53+B7DH3BuLRCUdBfabqpP9vHJi1XyWECe
 HXjsvkciO8yCWvBjrVOSovNXqUFVLarByl7roQnN7XZ7WV8NSK8mWB0kl
 mx3NLT6f9Ox9uXinhhzxKYcKk6eiDQ5m3NIquod+AcEIYvhdwQr2QdZOw
 13OXTn/ktsEgp0S+5eqE2XDJm1X5vnwomsTVjj6UXRDiK3s8DSMKP8KIo A==;
X-CSE-ConnectionGUID: OQNAGKQvTtuQTMzHH7dNxQ==
X-CSE-MsgGUID: 4MWi8VEDTueQEu0S1Qif0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="83737376"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="83737376"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 20:43:52 -0800
X-CSE-ConnectionGUID: qTM4ktWARLyaa5MkT/kKXA==
X-CSE-MsgGUID: dtKgugHtTvuaT1Cwywx49g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="214274027"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 20:43:51 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 20:43:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 20:43:51 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.17) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 20:43:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U0MpAtq4joFwSHJUz81/nh4yP6JtAWswUBCH2HsjVn+d7JVsm3dy7sJA/cIelU5PRIOxgDLbqSGnpQKCqp9xUsvJUQHW96eRlQGfbAI4NLFfhi3l9XqSMPVRsbNISVwSHKacBK+p1xv0RuveUyOUzIt2nx6DheH4acnXYnBhx0/wRGolLdr7VE3iDvtEoS2m/yePxVJhh3LZYGoyt4wwQYEEgOlx3X8tcE2qv30d7lmpFvwz6dtg+ufk1mnnXMB9EhKFr4CwBP547F6bhSKBjIShLNnGf40+5qAp/B4fPjHhEMvSHKewRE7lT4rwmQ5Qb9Rg5N3rxMlGNmRXldNsJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TvQ0O9pX6qXKh+Q2805B6MWsO/SSAJDw3pm8iU1ZVAw=;
 b=Nj8lRdZw6txfreW5lBFvE2ml0DY6IdpaXFA6Y8PHuCxyvPSitIWAv1zxYaa6LHD8MpfIh+i7XBaAr9Prvubs9rs+tNyQT2tp+K31dme8/rre1PTJnF249MBIgyz8wsc/ZChcdJ6l9sc6m8yOxWABTP7yZdNHXLzg2AFz/U7uJvgkZTz101Z6Y+4jHqY2r3mm/Fb8j8JAsuTtFwjXsKlYF4joz6Gb6iUjeMc0965jEP1/QJn0ItHiwcZ3EQyp3DHNNeBEzpw6k5cJoAIqTj0g0QXQGn7MQmbDE4VwEoQzrM9ukBkG9ZLoF7nYZyrrmYj/azhr0sP1z2RzTtQzTNUbWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7538.namprd11.prod.outlook.com
 (2603:10b6:806:32b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 04:43:49 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16%3]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 04:43:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness for
 VESA AUX backlight init
Thread-Topic: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
Thread-Index: AQHcpUAMEnCYLJATwkydhRK/TgGzdbWRyHcAgAD89jA=
Date: Wed, 25 Feb 2026 04:43:48 +0000
Message-ID: <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
In-Reply-To: <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7538:EE_
x-ms-office365-filtering-correlation-id: f9ac8d23-338f-403e-923a-08de74287791
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?KMerGaXFO2gPAkttt8gmVt+ZufS59FSdaRIEQCCHaTBBo50G7RfxC/QXE6Sp?=
 =?us-ascii?Q?NIa2/qOiZvRZQr4zyXK/azHpP2ixIvzIGdVPZtFjVJj1jfwDOr79E86UxlkD?=
 =?us-ascii?Q?BiJZRAOaW7fhkBW395x/wqMTkN1S48k1uUv6zysTd778pt+aqqSlhHS6nXLb?=
 =?us-ascii?Q?nR/W/3fb8ifW+Q03O2lKCNleQph8/e/WKISP0v1uIJhKGBo8GP/IDGOfpOfB?=
 =?us-ascii?Q?kFdmgtFSX704+IgvuvnnCSNPhr0c/DhdDglL8vR4tMXZu6CyyXJ0xE1WofMa?=
 =?us-ascii?Q?MiS1ubFlndLoyLSzt/8pNc/ErUCVBeoYkpi93zOLOnMEQdTguXmviLDoO9RA?=
 =?us-ascii?Q?3oza3NCORGaxLD/0oW+mIFN3dEx5Uj+bsP41NdJ5w/GKr9dLzLKIEf9AlV9k?=
 =?us-ascii?Q?z5ADI5D9yH6fH4MRWMA4ITKu/Vsn9frBuFLRAyQgmK4Dv1lFy8lxkCvq2FGf?=
 =?us-ascii?Q?P4wyvtK5heWhvv55eRntDEQJzkv5V818PjObZnMOeXGp6C6GpcFE6ZVeeFL6?=
 =?us-ascii?Q?XUW4im2tvMXDwTpLxEID7bepmbGEJYhgRHAx3H79jzh512TDdhgaLSb4GGPS?=
 =?us-ascii?Q?1TUPSi5zmeyHHYFDVM/03GE21U6eKX52LoREZqrpXiSmhvln1kgpqe56jwv7?=
 =?us-ascii?Q?LJ8UecYX0PXiIV+Vt1a9mOw27SyUmqSHdNBY5312O84VngCbTKHhwPMMhBuf?=
 =?us-ascii?Q?cHIWgdGe/RQXbVi8G2iMfeMSWzmSKO2OaLvW0P+IwtHGzEtSzf5F7/hcCpd8?=
 =?us-ascii?Q?PfwsyHiw9r2Wh+Onvs1KE2obJU/BinZsTKPSBbR4e0Er4t6xhWggYxcf/59p?=
 =?us-ascii?Q?LTkVnDhkNTt3PWfFBQkQzForCQC7gitLF9n023YzfrVrn5OjwmUyfP3eWlr8?=
 =?us-ascii?Q?2DUCkabov2qdiD5AQv9bmky7eXVaMnTKhbocu+HgjQ/2VjIS4NoMAN1jVlx0?=
 =?us-ascii?Q?1EJcCgxRPAYLcyB4hvNsdzvZDUSbWfsbe6HfE3RQmYBJOM+JaT4Tjv8OA+XI?=
 =?us-ascii?Q?iejGxjJQrZufKqOVuT/24WzxvzDVAS5AVVdP0kgYtBeq5n7H8B/YMbUmBflQ?=
 =?us-ascii?Q?XAFosy5cYA8IYtC4xVDrBj6+SWit4pks51+6uEMhXQLc1At0tWIwCDTCX28v?=
 =?us-ascii?Q?aCAgN5U3zysghozivaUqpZbe9yicOGcXEYhGp7annFdCb88UNVIcGNFsS58s?=
 =?us-ascii?Q?enpU5MsA3sqd50WFT4q4qUgJUMU/aTUn1cRI4qw8sosogBqaEkvILqf8A020?=
 =?us-ascii?Q?ZbuLcUrnEhVjSXEQIuwvqcG9zpNrGbHq6yMCNtD/3ZsOCzcII9RqLX2n1Eta?=
 =?us-ascii?Q?PX6U9+D5EU4G6nlTJRkKZrUY1rns+VfgGFm7izUpPi4LmkYzAnnxAoE9GEd1?=
 =?us-ascii?Q?jgd+Tuu1k3pl/koxbppBDn3pez3Qi2Sr1w8fC8rrDz9m+LdETEp+gMAAkEyb?=
 =?us-ascii?Q?mXkxTkqT25o6l1IC6boRBllpJR2YaXCtu257FxoBSMk0u9Pmbh3enGeHo76W?=
 =?us-ascii?Q?2mkM8BfDk39NwNkpky0ejsQkKskjZS+o1dWmasOCGPdbGu9SulKaFrTo7UlO?=
 =?us-ascii?Q?NSG3tpg69dwgrOOx5wI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G19IBP5wPxUzHKds3pFUj494trvkdCNoRtn1R1Dz1LJRAkSj9GJraPgEVKFw?=
 =?us-ascii?Q?sNHHZcjctXYWePham/dsuVOuoLzpxT3ok8AfnC0hUq3ZPjImB75mt6+k3jX2?=
 =?us-ascii?Q?51Tc/rk1ES8DEYilfwWJq3Q1Raz4gbzCiNt/99RBDAPXEJwv9KI5priwc83T?=
 =?us-ascii?Q?P0Lu4EIS1EhnjCAXNz9WhKMp9Sq79m42uQYMLsl8cT/wVQz9iX8wqh4OFIIu?=
 =?us-ascii?Q?J32U0E5xxwfOcdhSLv6SbfPTpPjPRXlK62R6m0D7xTYXAVNkxZoLDrGG1vVj?=
 =?us-ascii?Q?ixtstKaWXpL2BLMwmPv0WzdHqXPIrhEIQS7lwwklAJg2/Z7Q4AZtIc3QPJ4J?=
 =?us-ascii?Q?dp0jMJ0Ec0S3LDFMuVqWroVUInCg9jWUSkJUoXsSksrs7YhPwm6SfNL+nUb3?=
 =?us-ascii?Q?tZEgU6eIaq4dYcEpml/fWZEztrWO9QDfjv7MH/EzB6y8pdGPGYksYTYcWw2x?=
 =?us-ascii?Q?dCUYzasVZ07mzPM/BQekFc49GAN8NPDpccmiqSLy4/Q3ye3C9xgdfLnwvpXd?=
 =?us-ascii?Q?5oe3iWYug0Piyjrx8p16X56d3UC/IVjGSDF/7h1gCbC6VQ7gsPRH3j0+YnjX?=
 =?us-ascii?Q?EUpD0m/ZRz5RiZoBXTCjOvOiD0mbbMWz2R/B0eVApeEES5qkn+fECRts7cjk?=
 =?us-ascii?Q?VrZT9wkTHycSsYWEjd3d+YQq3YT74Ox1ypAM6wqpzLTTcy97RKj4qM+FZmWe?=
 =?us-ascii?Q?PJ9D0hmS/cqB0OUCaC4ZbLMxe+IBiXsavOMFOZDUqhYKXoFOAcqAozkFEQC3?=
 =?us-ascii?Q?PYi722cxHAyGsZc8aWqIzooFgK9dHQKdZ+7wsUXtE/0pmeTHRbUg1ZIdjXgw?=
 =?us-ascii?Q?VI/vm3YMS8VRmhpiJQgjsGFWOnISfNECDCvdPTNRWl17A13bxq8wc6Hj3hxW?=
 =?us-ascii?Q?U1U8b6ZLytlLJ/dJf09jCI7HD0eIsh3AStejczBjQ/5u/QtLwRzGE4VTxPLX?=
 =?us-ascii?Q?ViFw+TnQrYe75SbYtnspFAMLVcIn9MHFuxJrjArt9lcynNbd8N2wqORy0bAA?=
 =?us-ascii?Q?LfZf3PXcFl/b6RW0O7OCuCfXAvHbq1bVRJroDxESlhAusFcQP5sIAt0pQKvI?=
 =?us-ascii?Q?2kOhWWxFqsr6AUBlhli3XfPKcFDHWmyBTxfLiMc5bjCGZ9SrqRYcGABNQ/iM?=
 =?us-ascii?Q?jK1ShlSn5SrjdzYjVqo+06amggF8uw3lWx6Nf+aX8UIgF2/7y41ESZqKur9s?=
 =?us-ascii?Q?pGU7bUvi/+X0PfgUmv9juS/tXUuVCqEKBlhZE/dLhd6IXh9Rh2ISIrdu+QIS?=
 =?us-ascii?Q?6gSBwgVnP7nse5y5FAcamJQ86L46kksEg/3wf1rhmEeKgFoqgo8UmwqNR1t5?=
 =?us-ascii?Q?5iGqEg+yNBv09ljeE4Yvm5swOGWQLdrWuWGnRjvyAwC/2sLJQ9s9KiPorbWf?=
 =?us-ascii?Q?vXMH7JNnJ4MPan+1GIg2W3FAr/mJuIx+M6SCtHsVrivVVRNopQ43pbNUd5hl?=
 =?us-ascii?Q?9TZdGGV6kR+jnW05G9RGD4VeWfxPCpBmOsumNXWSnXJMqPreOhXWCZ0T+R8O?=
 =?us-ascii?Q?mAqa/Odbqci5IQcO5U424XtBkVAtc+UWU/CyS29F9fo7IbHQX0lJQaU/f45f?=
 =?us-ascii?Q?TABaPuSY8hcZ3LzhHir+mjCQQ0YktduipjsIH0Y6zBfQdIbjBcamK/VdLnu6?=
 =?us-ascii?Q?oz/nvkQgHjHWqc7qLsiY42xijbkFSruWWG9yxFsZMX8YB2kzDzJ72iilw5Hf?=
 =?us-ascii?Q?CbAUq2vMI9cZNNCmw9ZLxkACGrcjGJx9Aqw2lqHpw3w2IQfOdFSe1HvalEt/?=
 =?us-ascii?Q?L+h4121lVA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9ac8d23-338f-403e-923a-08de74287791
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 04:43:48.6701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KabT1G70GfEJyvZqi8KIlfRNZj1l97x4ra2MQ69uDoAYILORn+VKDqzT13k5m23NlQB3bK5R0Qcjjw4KP1I40A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 05B93191A45
X-Rspamd-Action: no action


> Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightnes=
s for
> VESA AUX backlight init
>=20
> On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > If the brightness fetched from VBT/previous state is 0 on backlight
> > initialization, then set the brightness to a default/max value.
> > Whenever the minimum brightness is reported as 0 there are chances we
> > end up with blank screen. This confuses the user into thinking the
> > display is acting weird. This occurs in eDP 1.5 when we are using
> > PANEL_LUMINANCE_OVERRIDE mode to mainpulate brightness via luminance
> > values.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> > v1 -> v2:
> > - Let users set brightness to 0, make it so that it's just not done by
> > default (Arun)
> >
> > v2 -> v3:
> > -Update commit header and message (Arun)
> >
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index eb05ef4bd9f6..c40ce310ad97 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -564,6 +564,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> intel_connector *connector,
> >  		}
> >  		panel->backlight.level =3D
> intel_dp_aux_vesa_get_backlight(connector, 0);
> >  		panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> > +		if (!panel->backlight.level)
> > +			panel->backlight.level =3D panel->backlight.max;
>=20
> How does this help when .enabled is still based on level !=3D 0 above?
>=20

Well we keep the backlight.enabled as false if we read a 0 back from the DP=
CD or the current level state is 0.
This is to maintain the policy that if during setup we get 0 as backlight v=
alue eDP backlight is currently disabled
(which means __intel_backlight_enable needs be called). We then change the =
current level to max so that when
backlight enable is called after setup from intel_backlight_update, we enab=
le backlight with max level so that we
do not end up with a blank screen. This is also where we set backlight.enab=
led =3D true.
This is  to tackle different eDP behavior where, some preserve the last bri=
ghtness value programmed in them (in that case
users want the same brightness to continue) while others don't and just 0 i=
t out instead of having some default value (in that
case we keep backlight.enabled =3D false later to be made true during the _=
_intel_backlight_enable call).
We face these scenarios in some compositors during the pass key phase where=
 the compositor is still totally not doing everything and does not send
us any explicit brightness value to set thinking eDP would have some basic =
default value of it's own . We end up getting a 0 from DPCD and we enable a=
nd set the backlight enable with 0 value which anyways later causes us to c=
all backlight disable.
In this case during authentication in some compositors like Fedora there ar=
e cases where we do not get a explicitly backlight value till the user has =
to blindly enter their
Passkey, after which the compositor sends us some sane value which we then =
program.

Regards,
Suraj Kandpal

> >  		drm_dbg_kms(display->drm,
> >  			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level
> is controlled through DPCD\n",
> >  			    connector->base.base.id, connector->base.name);
> @@ -573,6
> > +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> intel_connector *connector,
> >  		if (current_mode =3D=3D
> DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
> >  			panel->backlight.level =3D current_level;
> >  			panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> > +			if (!panel->backlight.level)
> > +				panel->backlight.level =3D panel->backlight.max;
>=20
> Ditto.
>=20
> >  		} else {
> >  			panel->backlight.level =3D panel->backlight.max;
> >  			panel->backlight.enabled =3D false;
>=20
> --
> Jani Nikula, Intel
