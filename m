Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lFpNC4MEH2pwdQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 18:27:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81F6630303
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 18:27:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=c3PJ2ezK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E8810F35E;
	Tue,  2 Jun 2026 16:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61FE10F355;
 Tue,  2 Jun 2026 16:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780417661; x=1811953661;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YLxBV7t+4BiE61Q4jo8zaka9ErhEmB8QPGRLr2P1SF4=;
 b=c3PJ2ezK8lle+rU6xaf/3x3RKjRoxAgaCHDI09a74lk9tKThMKGbc89O
 lmYN7IoOhGX9gFf2Yr2RgWfSPJQjviAm31iLQMEbq9EuI6zcaI1dtoP4g
 eyiRnWjjz9weJ/6beQkQHnyLlGIAqbfC0rbNC+83BvT5LMvvu9wBRc2Ga
 gPD2X/LQwRL2aLF//N6csCVnA/Isk0H8KA+xuDSudmi/tyuDo2Gm1j693
 YOqBe+TljniHTN4mPfipnhuJEehEx6dfQz6Ujyn+LDTTmm3wky4y7IPlr
 qqKm4l6JC9YAcHifPNPwv2iX7f/vbgEEuKMjxcQzc8DD5cK2YE+MDzZGt Q==;
X-CSE-ConnectionGUID: foGyTu4nQ7ejEb50KE9gKQ==
X-CSE-MsgGUID: HTe38Vt+QzycegtFDMD/6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="103869259"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="103869259"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 09:27:40 -0700
X-CSE-ConnectionGUID: bcJSp8yaSgiciAkJLqIMZA==
X-CSE-MsgGUID: /ShoujFPSvKSovHDaUqLTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="242919331"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 09:27:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 09:27:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 09:27:39 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 09:27:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R0HHC9jyyKPvEKA01OQrEOA20qcTXtD2guFrJHF0nxyxa7mC0zRg4dIBN2h8sC2l0mUF6IjfbMHL+0ZgOZVowPtZAVFgmI/K6WKmAsV5MMYJi3Oxxtz3Fa7oF7N34qsVvIXuLFWBF6/jw9h8NzM9N0vi++YOeLErKTdkDDiRmBRDsbmxnYeYnCDpsCqlDLRB0yVMTiYkV8zK1UMoqlliC66Esqy0wvc18swfjXVJUfCGms1BwWBsMKlkOtn7iGU06XS9MjMLXteXS+sZU1m1FU5Vz1nvbPminb4uYZ0eWrf6bI47fgVsmWgvHhXuL29LIcGALwXyzu6OnRTWfpGliA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3T5gLt5+PrpfqCPj4ESbFfQVVUpo2Mk86hgBI2JNUhs=;
 b=ruMxHysDBCefJi/c6vPLrgUHVJA3o8Th4cvFNcoHv3LlvhZ2g0c/lngaYRQ77IuwL40Fo/LM9gF4zWuymKNXpZ3ot2MJPoC6tgDctxVWTzff2x0pykuQ/UwxR9EvVg3ykLfYLIFbx4Vbs9b1EF9aoZwAhSIrHyOoROTX+hqnOl0S8TzOu2WGkB/BNP/9WPgbXudWBdjBMJ7i0JKGrisxuN/eRw62iDmzW5s9hIcwgacrbZrOpioYmqmTd7Yod6ZniemUqbtdFGnqTqa0ZWzNK8VO/CXSSUj8/KUB7KWtUpryOd7L1Lr5TlSbQsD4GXfz5J6J51Vq/yvLpLq440Sj3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB8071.namprd11.prod.outlook.com (2603:10b6:8:12e::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.7; Tue, 2 Jun 2026 16:27:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 16:27:29 +0000
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
Subject: RE: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in Post-CSC
 Gamma LUT
Thread-Topic: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in
 Post-CSC Gamma LUT
Thread-Index: AQHc7vbrleqgSncwpUWoo9Fznu/EBbYrez2g
Date: Tue, 2 Jun 2026 16:27:29 +0000
Message-ID: <DM4PR11MB6360196DB582A4489F1B50B2F4122@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260528230817.2455072-1-sean@poorly.run>
In-Reply-To: <20260528230817.2455072-1-sean@poorly.run>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB8071:EE_
x-ms-office365-filtering-correlation-id: f731b531-64e1-41dd-7d08-08dec0c3d733
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|56012099006|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: aYImlZUFXVTunOAsQYDxEj8FFUda4QHGjglvay7i36L8kOdvQ3lHwW/ViFqBCRNKYvv0xXSUgzU4dJTZgwImLj8KCzh+QKk+5/TrvNOJlhK1xg3Ef6/A0bfk0EmK+6121F/v2jsrsM++VPOEnMbjt9hxAdUTPcqat49DzP5LGTq2TCOLoEEshWhHPNOc3vNWDlJzskj09utB9fhAE1esqNe8L4JE8463Iu0qlNey8TbGHVNtVeW9ZJcHNQnc5fE7tu6pQZa3xgpbmPDa3km5CjGjNKSEgyT3w5uUNcjCwCaR76EsJ/OYFPIU0hck2HmE8jNNlG0QLjpMziFDSjKlVqvR+pbVLQSt6kBMTZBVlyx8voQ5Dk9jduI72RI5HvtQ6nAyqhSpUesIi3cC/id12Xi66lDbZ67CZ9HPWk4jLswwiL7FiszIi4f+3FjjtfXSA9iUh+GDZ+zfIKTEBT4HoBm4tgxy+KkJhOREU5tOCluhdOmMy02p919r5CZ6T3WU1A5Pm+SRASW6NIYzCEI5r1A/eIlu5H/J2K8K7Cumoz7SVru7UXGnr0uZ9dlqgoO/qgn1D0OAMDaBRQn975wX9H7u/KUrkU4u6pmdfRIrSxgNKN8ToIp9JPoqqw94ifUgZAEqYCERFmRR2tOK3OSONgPfOhdvg/pjILYyFkGKIuQWs6JS4AhGXEXBvyJ7Ay8D/QDDL3lUyohh10NN9jTz5+k6n9OfYez0G4iUOVWuHvVMyOAGdZhQ6qyFDk2ozvk/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/YbYwwXbHB1O0vV699wQHt8unBMSTanPqxWpk3CKR9lMo57kLY11M7e+fy6q?=
 =?us-ascii?Q?7LqJxRy1kWt5fCEnhObGB4r2LBa6QdFRBpAfcVDxgkOSyTJ9dUnwZF8iYAYl?=
 =?us-ascii?Q?c8WN6AyJ5jZFIJSDsJmAkZ0akJRaUpBKk4y/CDQ193GA2wWOspdDVfjpJSDF?=
 =?us-ascii?Q?dywoqqPuKrYNzOjI33APvAEi+7Y9idFZIrKMi454xgTJZCCXD7X2J8C6sM7u?=
 =?us-ascii?Q?zYWlZgyXdWoH9xXnyRBJZhc3ATl+NfFVV4/Kqjzw3Hg1XfdzzGOeRwyF1TAX?=
 =?us-ascii?Q?CdFOVd2apIDNr3dqXnSBlNk9Dj62dzMkxYs8S43k+S6cS9Hp6pni3S8LpZis?=
 =?us-ascii?Q?OMnYnzK5yYOl6/h5n10fXQIHyXgnrlAVPAC2h8gYl5FiKc9P6yxVwwyFDwAn?=
 =?us-ascii?Q?FwTP92ZVSRTz0Kn9nEDQl3Lwy67FfZ4dMUcmtjDU9mANcH5ct3ALynWlDLKO?=
 =?us-ascii?Q?AdD9GfT5e+0SYQfPSP36LRcxO7NFCNR8eFFh1vqEmKPwbYDIPsXGcbbdXzMS?=
 =?us-ascii?Q?AIQLJUHXre1qsvCMOM2QVcOWPdA8MhjpSj/aseCUS8CSPRVNRe9JvM2D/afX?=
 =?us-ascii?Q?ycpJvnOZA+UwtaOwiZAm5z0dDMPTRRB4kADaTA1WwWUTEwOiSlryA0xotv0L?=
 =?us-ascii?Q?1ceJc1cqHPB5lXbPE3XWp0TpPuicdljlztzda4ZY2Ynfa48l1d67u7UoMWPE?=
 =?us-ascii?Q?ZlOw9q1Ar/+VlWR6Y5uNKs836CBivUxTVriL1/7NeNV9TJbdTOO4mJoYh92Z?=
 =?us-ascii?Q?03QgyYHCR2iTm0RX7vCpgc1tUJPozgrgUEVx/N7B9QkIcWpU+sjV8GBufDPK?=
 =?us-ascii?Q?V9L7aznofxVpIXl1c3l0e5CyXQ5fyI/1ozeaFcmZdJ0rSe8cCAQA2LfjApOY?=
 =?us-ascii?Q?49dEU+0QRkBAyVMqkIRxYlD3frISN+OFiQZkqM1D6Zn7HZ3KUDC75xCGjod1?=
 =?us-ascii?Q?i/l/HjXw30tHZCOu+jFvcWltkjhjrtfnMh5rw5tg3JjL1ZY/yc+l/Z9Axlzz?=
 =?us-ascii?Q?1dj8KZG9qvryrcUQRb8p8mlIev748F6NnaidG77XjcCgPIQY4JVueM/CWusW?=
 =?us-ascii?Q?h54+SriKjuJ6X1vY8u8TvaOw+kmBZeBGlP+GXV85i77ui1Ui3UFoutLl2Cwk?=
 =?us-ascii?Q?HGh2yfck6hua1GT0uMYvtkRi8ccZLryEHCVl7AIePENJfT/bz1LdMHV4b3cq?=
 =?us-ascii?Q?qMciVMvptTc2PfxvtsL82uVQQfd4dWEwroCDYn8rJrIloYrqPM8/N3y5K+kv?=
 =?us-ascii?Q?S1OsstMUO7vC6bHFEuT8HbdRWvlGuTcobgoEJI/AhTHwG/Ap2iEcjEqpiZY5?=
 =?us-ascii?Q?+Ta75C5QGz3TkhgQf1VrXPoH8Ce7b/x3Rr+arAaKFovY2kbSsXGKjXvKRzPr?=
 =?us-ascii?Q?hBVebpV1ylNprDWm/fzyQ1rdr56UhM/ta8xU2eNGuOBB2NsQEQBlGJ1KRKos?=
 =?us-ascii?Q?S+b9xHT3w8piKZl1vKI8AuGvPhZNf6uPKTV5YiOHPeqfZTEtSVJ5xAkvNdnX?=
 =?us-ascii?Q?Ijs+jpmYPFVkiBnVhKxeCj2yJuxRfanzYMVdICcoatV+0V7zFNowILruum9V?=
 =?us-ascii?Q?y+t9Fx89ZJcsjqEC0U8XTLyfLsi0YaLkzdmQ1m28yHlQ0PTQgUao25XWdW+w?=
 =?us-ascii?Q?fXZk8Ce0hhFKL6GwwyHIgPQ6f/u1CnX7tAmOTmGsdLVg3bxt5o9VlhS2RgeZ?=
 =?us-ascii?Q?T6shXU0CSfa+GvqJosEPa9vlTcDNqZ1d9+CsHMXYAvaoITEsKoFhRvwzQTiY?=
 =?us-ascii?Q?Z/Uu75E4qA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: S4PoQjT2feSU3n22pSgnFnU6POHoUQC/+EAZLissr6T9rQeKedl6JUcVZmXAJYje3B0QDdTKk6aeYDUXO0RbfvR1GPGDj209W7bK1wEmq20TePtXLRnE0EMVzBs5YLqMtNqefF6+0+VubWU36TdkzxiUAF5K/P6M1i297A0T3UCwe3kxGSt4BcCBzthiJciy4RkWhMUnAAmUcvuoPKAscJ1W5m0wbtxCQ9eAWs6AilNYPKVPxtlapwUSg31h2ieM3BP+A0EZaazFVGX5VY0PlI/tayQP7RZmld4NIdQ8ty528Sz9HaPfOwmeN4Vy+5UCGo7D09dPdc/fxhKXCUoZ1g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f731b531-64e1-41dd-7d08-08dec0c3d733
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 16:27:29.4075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1QCsXdjsGfO6rCOvS5yvGnOX4VAz9jmIoVPZiF1c5s4FNe4PqsaWg3b8Tsh+kbaIWZjHyY8mI3X4Ns1/rp+Ebw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8071
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[poorly.run:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,ffwll.ch:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C81F6630303



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
> Subject: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in Post-CS=
C
> Gamma LUT
>=20
> From: Sean Paul <seanpaul@google.com>
>=20
> Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming is
> active by clamping Segment 2 to the last user-provided LUT entry value in=
stead of
> hardcoding it to 1.0 (1 << 24).
>=20
> Signed-off-by: Sean Paul <seanpaul@google.com>
> Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-
> sean@poorly.run/ #v1
> Link: https://lore.kernel.org/intel-gfx/20260525135730.1122696-1-
> sean@poorly.run/ #v2
>=20
> Changes in v2:
> - Split out into separate patches for pre/post csc fixes
> - Dropped loop bounds fix in favor of [1] Changes in v3:
> - None

Patches in series pushed to drm-intel-next. Thanks for the fixes.

Regards,
Uma Shankar

> [1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@inte=
l.com
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 7ef870cd9a16..7185f3628dcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -4038,11 +4038,11 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb
> *dsb,
>  						   lut_val);
>  			}
>=20
> -			/* Segment 2 */
> +			/* Segment 2 - clamp to the last LUT value to prevent step
> +discontinuity */
>  			do {
>  				intel_de_write_dsb(display, dsb,
>=20
> PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>  			} while (i++ < 34);
>  		} else {
>  			/*TODO: Add for segment 0 */
> --
> Sean Paul, Software Engineer, Google / Chromium OS

