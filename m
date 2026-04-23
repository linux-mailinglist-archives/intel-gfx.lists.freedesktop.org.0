Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDJnCWmm6WmzgQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 06:56:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48EA44D1A6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 06:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31FF10E2EB;
	Thu, 23 Apr 2026 04:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+i+i+Uo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67CFA10E039;
 Thu, 23 Apr 2026 04:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776920164; x=1808456164;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jPvWRYmilJaklz7t3RcLEweKDyiCMj3NbI87eML8U4g=;
 b=O+i+i+Uo4/HLTkGmUBCP9HuJc3bKq8LwltEHnNDUUsHRB/OT8MgwPKhr
 jrf6hARn8Ka61dG2LibYwjTsWIK7LUxP9PGq3eJyULfKf8RVG/DkSqqLh
 nszDX8WG/UbNMKysnfY2yp9SRxmPFrQ+r25F3WP/zsyaEeYhNScotJYJD
 rkwtvvIVmlthf6vLfgCXU6GFnu8ugAbhzlgmhjSKmAksAGtOoZg/t2ZsM
 jZFB2R88heKW2eIO5QJTrxci/cN+tUe5gZnoTwxBxkNA/pQDtBakxhTeE
 zF/D+NT9fImvO8QOvSKaJlrdsMzyeYwqH4HjcNUEIfPL4xSkoguB0KfPP A==;
X-CSE-ConnectionGUID: JhFBT2ikS+egG3C+Lj5bPA==
X-CSE-MsgGUID: 38qAJpxDT66b8fkA9s896Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77759424"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="77759424"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 21:56:03 -0700
X-CSE-ConnectionGUID: qQl64d3HT3e3ivOejyxv1Q==
X-CSE-MsgGUID: q63aNoA1SmiGmaU/gfyRkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="232403411"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 21:56:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 21:56:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 21:56:02 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 21:56:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FKonxK/jem6dXDQ8qQ2um6Cxu56+LYHZNksVKRmcCYkNqJa/gAXzLiLt6zSPsNAHbpufISWAPoHnyOF3BEWwcaPUy0SU9VUy+MsnN89Vkf1iAEfsg4sB+YDXvfLHum2RJ2KvmRoilygNvYRZ2Vm8ridwtzHgZVsIwhgVqhqQarGRMXaOYZh7uxciiOssiYGruh1mvod78aMOcDjnsISxI/4oE5WpUDZmKN5iEdHt8jF563GiP3SUVx14V546bcfu/LUZLjvjVhB9DPTbZvHuQdVHYxP5XrvVdutzpAfOOjPuGZVCOKTOz9rLqKfWG4Rr0ga5TTYLYXMNrif/J0WWRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hfq3LpvcNBqhjoBqnspEHmwxMQ6uUe/+HfHg0MYUeh8=;
 b=fVWKnrK1AIlXOumnxXMkNEcIwiosuCzXnYZvzTVjUL3+HnZgUYhaz8crWRu7sAPu073R6B6pHmX6oMKsGHlUMs+48RcalmzMfzIWhzbt42qcYlaCjoKnRD3Wp7+YXFISWRRhOLXssT5tlI0D9qC1fetXuwNbW80HDLC+W0XtYMz+2zK5PcrRZX9oMoLjeP1mIcAOxO6u8VQcsXswAVdVO5+esM6be5TTTHu/njYIQDyoBukBAIr528ljTK9imv7/CNuCrbQ2W+cXxjPX/aCetuQgbu6AxwnNlQwcMgfJURVTuRaAIiRfBcTX0WwcZvPCLa5eTO6TifmMg3/qiyE/rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 by DS4PPF31CEE2CEC.namprd11.prod.outlook.com (2603:10b6:f:fc02::1c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 23 Apr
 2026 04:55:55 +0000
Received: from SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d]) by SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d%3]) with mapi id 15.20.9846.016; Thu, 23 Apr 2026
 04:55:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHcymygLFle3YrMBUK3c+JVuOmCk7XekaCAgAQ3pTCAAEtSAIAJESQg
Date: Thu, 23 Apr 2026 04:55:55 +0000
Message-ID: <SN7PR11MB8042195650F92982C02967A8F92A2@SN7PR11MB8042.namprd11.prod.outlook.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-4-animesh.manna@intel.com>
 <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
 <DS0PR11MB804961654148D027B4F03601F9202@DS0PR11MB8049.namprd11.prod.outlook.com>
 <aeIK8oEzWAkDJw5i@intel.com>
In-Reply-To: <aeIK8oEzWAkDJw5i@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB8042:EE_|DS4PPF31CEE2CEC:EE_
x-ms-office365-filtering-correlation-id: c2eda070-b261-4486-378e-08dea0f49a25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|38070700021|18002099003|56012099003;
x-microsoft-antispam-message-info: 4n16+9ba8CMZkVOBFCwzjzcpQHZrZMu2ebC0fieH9sLs/UvwjsXI+2Kzhs8k+jMQUx1XdkXVZRuiRKI6Mtlna77A2t1YWzsFovo7wKx1+hpZQQT1iGy8DMsWopA0agZO8ZwLzLOVT2JV/LL76ZxS+klP0rsGTjU94TcED2Wo3PDVu31Sxop6L914u9+Gd0UYHW1uayCgzI/aP/02052gHFm+FUwsBdjS92Dg57jQ2/i8CJ0aUcJOL8hEoz1ZIf7KrhFzeMuhqhJMjGHGUrIy+AfUaFj/LXqnanZFbmgDC3wlssHTfPMU/07n7fKsxqsqVu2pHiXrNHqcn3ZPe4+FlxiVsvh28qQ2DXtA+Jkf3m4VADXDn0SBprUGdhRlfSZSah7Ir7Av8W9f3WDo01S8ibxdMLQQB/g5G598xS4JaKLHj1lZzjsMmjQx5vUbqstzlifIoTDrCloZl/udeDfVtLJANp7T5u/Nyxb8CXgCYt1eCiViqO2QX1Adv/iwLE/zgxL8DDCZebR7N5ACq4b7e0tfDit0jRIiZHL2icmay72drfcXPaWMAOCJtBj3tf7wolnNw7YoWezIIwIIlVvaD3ZcniblsiMDBV9dohcnkbctzbp0f0rVnXSTUxiobYeZLVmHlag4ued2dwV//IeX8bkE9Jzvf/uGh9ZcyKqzZ5DEhu2ekgK8m5aKH7mQZZTAB26WnMWkItvf+I95Vaz+Vq+0Wf0lN7bSXYHWNSE8uP4ECN5TSFkcK4Fy27hnU+olCd4gtVzBQ5giXLkOVeVv+g249kXZjzWzVdINSa/4MUk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(38070700021)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3Fr1mmRXXRMz1aIUtulepE4GbMKw9hhchSRcx9g/5U0Fr7vCL6atGcKLRI?=
 =?iso-8859-1?Q?eewrH1OHWuDb+OB5bwWFLVfMNiuYwWPtES7vsbBUzCpM9b9kHsEliBv0e0?=
 =?iso-8859-1?Q?0WKLhNDmGJZJ2S74EjQlTadHavNrI2B7Yp4nt71NyLZr5EKi2iX28bFIkw?=
 =?iso-8859-1?Q?d2cnXX/XHT3Clm09SElD+556WkVVSbMGT08kC4EexnFtlBKtS0sFTJ3bXa?=
 =?iso-8859-1?Q?g+PKGE1/7SApjrQgJX5HIMv2J97uotkJmOOqiLJ4UT08oD0mDV8CG2WTzy?=
 =?iso-8859-1?Q?bbWwqkqqjlN2h4n6y94nbVUPygNC5sVqc0fD+jwpkRzIdpubm/FaDUVwc1?=
 =?iso-8859-1?Q?4NikRHeVCeKFz1ysRq74m2RirnwC3QLImYwC8iAN61yGWR+aFQndTPU4S+?=
 =?iso-8859-1?Q?x2NXITxjNHUunlRm00HL28GDfY9elXT0zWylfrU6Wrr8j+0HRA26CnqQ+d?=
 =?iso-8859-1?Q?XHgzH4Ns2xob/xbY8ujC9+MGxUiKMPMKFquPbsGYVL1kNiJlqifavJIcgl?=
 =?iso-8859-1?Q?fdPVyoWdL/t7nE6P3gqv8QC1SaRKFq77pWOjCqU6jC38tXDELso9NXG9+Z?=
 =?iso-8859-1?Q?inatCTV8nFYaU4JprYjhr+mR9xLRLzIe9F3nVae26wJfjv1F72XtHljvLs?=
 =?iso-8859-1?Q?iFVdy/oZajw92/mRxYJdH9ijy36959itILS0zCqodLWK3Eg76xG/N3NxXM?=
 =?iso-8859-1?Q?BrZx2ZtRyET+NFpnZvS5v4s4pTWzQMXloS0wZG7JBeHyFuCNm7W884grHe?=
 =?iso-8859-1?Q?NnM4sE4ZCgbbNsGk5q26+1bHY026BCq5bCeLheX8OKtoUCMbnbc4r283FU?=
 =?iso-8859-1?Q?OmmjGFS9y25pIr7EJ83m808O7LcUZvxscxcxQTREOqaQgshK6e3bsOxg8g?=
 =?iso-8859-1?Q?Q3bTJ9XfLSeWb9o+ytp9+Gpmup5xsfWWA6OJzB021K+uatXb4vzfsYoA5f?=
 =?iso-8859-1?Q?JzuSrHsBdm5F81WqAPVPFtOFPr/uqqWIzC+/YXhOGCJbA6rfnhbIFsxD0+?=
 =?iso-8859-1?Q?8J+hkAQ/Vyw1Wzh74Ndq6q+pjyydq/YqNfvqNflTVavy7K80NRHgE0Q6As?=
 =?iso-8859-1?Q?trv6vGNz8NgKsQE/HXK0uijvYMYlXGUKQxM9aq3lAhdz9s40SSD/1r5sFE?=
 =?iso-8859-1?Q?38XfP8m8OC1nxX5UENyRKbXnpTUSnR3f0K0XmuVCO8T1x3p0vvo0r3QJTr?=
 =?iso-8859-1?Q?Ayw/710fhGob/MDRF7oMf/vf/I58cfbx2C6PJgen6r42s/9KHNNSzhzNAx?=
 =?iso-8859-1?Q?x6z8M4Bcy03k6dxgsz++ropQlCJbgpguBaf9qBzDPyiMlNRXj7+bpRVJdt?=
 =?iso-8859-1?Q?V3vIVfFaXqZW/mNfRS8SsI8Wfp0EyOEz1W0jA+C3Y+CGSxpkDwZ2Gg9zDw?=
 =?iso-8859-1?Q?ONgH9JoG6WEk/uPwZcrnKATMn7lXEfzUd7IwU6Xr6gmpNrbXFFTjO/6b1E?=
 =?iso-8859-1?Q?mDLqIJoW+1+/kzfA9rMfpxKCx027B6lXr6n+FgjyWdFmCsIo8F4qAOQ2KP?=
 =?iso-8859-1?Q?pnIAknfKxrLGeyg6oOXVnzxUWjQsf0i4z1h3wqiXUPsFOkqyFPrLbhK7FN?=
 =?iso-8859-1?Q?xfq6Zc6hDIvTPyDPMDdqktZmXGJ7DnGliAqswJDnW8hM/ozrA1UVyFv7GP?=
 =?iso-8859-1?Q?Mer4hzQcBjsFvF45hf06BxTM2xZG+dh4gme6NlpTNNR9WHSQKpHsG9iA2C?=
 =?iso-8859-1?Q?O9n2g93Lj+yjJr0E0Ot38ikF2kabqMV5sVqfBmDzwI9ZZRADL0+nmvhbuk?=
 =?iso-8859-1?Q?x/fLdZoFJHSWpokyilKIg3UrfyiQzZo4Got5xy74kXpjF1JsxvyTpPfcLE?=
 =?iso-8859-1?Q?1nPum5zk9Q=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UG83UQawhVzqAjD0dInLUIrF9DwL8B1vnA/zxGAB3FSKB42wZRAJIsAS1/oqQcLmar52otOczGMV/9YulAhMf5wIcHusNia9ecB1v9IPhlHQjHltWqFpTPST1C+2L4JnO1v9fWKVG01ynpVwXQ1+Gxadf1o9B8eEkfO0FjA5KYa9CEJ0OxWyCzee51y2cDiRY9idFog8QUQXJwl5ifQsThEWlrLGOsXvHFfTgN6LNffcnk/1xbobCvpJUtFU5F74NGYBLqLPOBVaOqbD4YtvN+IRWDCejmGg7STuebvZ80/FgX/aqTQ2DqtlULSjihaBVJZSzGL3GLb5950d/+0VBw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2eda070-b261-4486-378e-08dea0f49a25
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 04:55:55.1639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e10GVxqbxBFagxL5nwtQgfV9o9XEOszkLSGQy6eIr7FbmDm3z+UPWAngu6Hkq6SyDY/Xw9vzgQDn5k4IzgEZXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF31CEE2CEC
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D48EA44D1A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, April 17, 2026 3:57 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
>=20
> On Fri, Apr 17, 2026 at 06:03:52AM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Nikula, Jani <jani.nikula@intel.com>
> > > Sent: Tuesday, April 14, 2026 7:03 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>; Manna,
> > > Animesh <animesh.manna@intel.com>
> > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > >
> > > On Sun, 12 Apr 2026, Animesh Manna <animesh.manna@intel.com>
> wrote:
> > > > Timing registers are separate for CMTG, read transcoder register
> > > > and program cmtg transcoder with those values.
> > > >
> > > > v2:
> > > > - Use sw state instead of reading directly from hardware. [Jani]
> > > > - Move set_timing later after encoder enable. [Dibin]
> > > >
> > > > v3:
> > > > - Replace id with trans. [Jani]
> > > > - Program cmtg set_timing() along with primary transcoder timing.
> > > >
> > > > v4:
> > > > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > > > multiplication. [Jani]
> > > >
> > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 61
> ++++++++++++++++++-
> > > >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
> > > >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 ++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> > > >  4 files changed, 98 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > index 403f9e10a8dc..a3db1368bd83 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > @@ -4,7 +4,6 @@
> > > >   */
> > > >
> > > >  #include <linux/string_choices.h> -#include <linux/types.h>
> > > >
> > > >  #include <drm/drm_device.h>
> > > >  #include <drm/drm_print.h>
> > > > @@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const struct
> > > intel_crtc_state *crtc_state)
> > > >  	if (clk_sel_set)
> > > >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> > > clk_sel_set);  }
> > > > +
> > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > +*crtc_state, bool lrr) {
> > > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > > +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > > >hw.adjusted_mode;
> > > > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start,
> > > > +crtc_vblank_end;
> > > > +
> > > > +	if (!intel_cmtg_is_allowed(crtc_state))
> > > > +		return;
> > > > +
> > > > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > > > +
> > > > +	/*
> > > > +	 * For platforms that always use VRR Timing Generator, the
> > > VTOTAL.Vtotal
> > > > +	 * bits are not required. Since the support for these bits is goi=
ng to
> > > > +	 * be deprecated in upcoming platforms, avoid writing these bits
> > > > +for
> > > the
> > > > +	 * platforms that do not use legacy Timing Generator.
> > > > +	 */
> > > > +	crtc_vtotal =3D 1;
> > > > +
> > > > +	/*
> > > > +	 * VBLANK_START not used by hw, just clear it
> > > > +	 * to make it stand out in register dumps.
> > > > +	 */
> > > > +	crtc_vblank_start =3D 1;
> > > > +
> > > > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > > > +
> > > > +	if (lrr) {
> > > > +		intel_de_write(display,
> > > TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > +			       VACTIVE(crtc_vdisplay - 1) |
> > > > +			       VTOTAL(crtc_vtotal - 1));
> > > > +		intel_de_write(display,
> > > TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > +			       VBLANK_START(crtc_vblank_start - 1) |
> > > > +			       VBLANK_END(crtc_vblank_end - 1));
> > > > +		return;
> > > > +	}
> > > > +
> > > > +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> > > > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > > > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > > > +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> > > > +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > > > +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > > > +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> > > > +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > > > +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > > > +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > +		       VACTIVE(crtc_vdisplay - 1) |
> > > > +		       VTOTAL(crtc_vtotal - 1));
> > > > +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > +		       VBLANK_START(crtc_vblank_start - 1) |
> > > > +		       VBLANK_END(crtc_vblank_end - 1));
> > > > +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> > > > +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > > > +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > > > +	intel_de_write(display,
> > > TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> > > > +		       crtc_state->set_context_latency); }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > index 660ec513626e..53a44f505dd2 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > @@ -6,9 +6,12 @@
> > > >  #ifndef __INTEL_CMTG_H__
> > > >  #define __INTEL_CMTG_H__
> > > >
> > > > +#include <linux/types.h>
> > > > +
> > > >  struct intel_display;
> > > >  struct intel_crtc_state;
> > > >
> > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > +*crtc_state, bool lrr);
> > > >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > > > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > > > *display);  bool intel_cmtg_is_allowed(const struct
> > > > intel_crtc_state *crtc_state); diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > index 4a80b88d88fd..f7fc812d8ef0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > @@ -20,4 +20,35 @@
> > > >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> > > >  #define  CMTG_ENABLE			REG_BIT(31)
> > > >
> > > > +#define _TRANS_HTOTAL_CMTG_A		0x6F000
> > > > +#define _TRANS_HTOTAL_CMTG_B		0x6F100
> > > > +#define TRANS_HTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_HTOTAL_CMTG_A,
> > > _TRANS_HTOTAL_CMTG_B)
> > > > +#define _TRANS_HBLANK_CMTG_A		0x6F004
> > > > +#define _TRANS_HBLANK_CMTG_B		0x6F104
> > > > +#define TRANS_HBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_HBLANK_CMTG_A,
> > > _TRANS_HBLANK_CMTG_B)
> > > > +#define _TRANS_HSYNC_CMTG_A		0x6F008
> > > > +#define _TRANS_HSYNC_CMTG_B		0x6F108
> > > > +#define TRANS_HSYNC_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_HSYNC_CMTG_A,
> > > _TRANS_HSYNC_CMTG_B)
> > > > +#define _TRANS_VTOTAL_CMTG_A		0x6F00C
> > > > +#define _TRANS_VTOTAL_CMTG_B		0x6F10C
> > > > +#define TRANS_VTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_VTOTAL_CMTG_A,
> > > _TRANS_VTOTAL_CMTG_B)
> > > > +#define _TRANS_VBLANK_CMTG_A		0x6F010
> > > > +#define _TRANS_VBLANK_CMTG_B		0x6F110
> > > > +#define TRANS_VBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_VBLANK_CMTG_A,
> > > _TRANS_VBLANK_CMTG_B)
> > > > +#define _TRANS_VSYNC_CMTG_A		0x6F014
> > > > +#define _TRANS_VSYNC_CMTG_B		0x6F114
> > > > +#define TRANS_VSYNC_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_VSYNC_CMTG_A,
> > > _TRANS_VSYNC_CMTG_B)
> > >
> > > I though there was already feedback that these match the regular
> > > transcoder registers.
> >
> > _TRANS_HTOTAL_A         0x60000
> > _TRANS_HTOTAL_B         0x61000
> >
> > _TRANS_HTOTAL_CMTG_A            0x6F000
> > _TRANS_HTOTAL_CMTG_B            0x6F100
> >
> > I am not clear how to match?
>=20
> #define TRANSCODER_CMTG0_OFFSET 0x6F000
> #define TRANSCODER_CMTG1_OFFSET 0x6F100

Ok, just to double check my understanding, I am putting below all the chang=
es which maybe you are suggesting.=20
Can please confirm or if I am missing something please let me know.

Step1: Define offset macro.
#define TRANSCODER_CMTGA_OFFSET 0x6F000
#define TRANSCODER_CMTGB_OFFSET 0x6F100

Step2: Add trans_cmtg_offset array in intel_display_device_info structure a=
nd initialize.
.trans_cmtg_offsets =3D {                                                  =
    \
                [TRANSCODER_A] =3D TRANSCODER_CMTGA_OFFSET,                =
           \
                [TRANSCODER_B] =3D TRANSCODER_CMTGB_OFFSET,
},

Step3: Define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET which will use trans_c=
mtg_offset
#define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET(display, trans) \
        (DISPLAY_INFO((display))->trans_cmtg_offsets[(trans)] - \
         DISPLAY_INFO((display))->trans_offsets[TRANSCODER_A] + \
         DISPLAY_MMIO_BASE((display)))

Step4: Define _MMIO_TRANS2_CMTG which will use INTEL_DISPLAY_DEVICE_TRANS_C=
MTG_OFFSET
#define _MMIO_TRANS2_CMTG(display, trans, reg)       _MMIO(INTEL_DISPLAY_DE=
VICE_TRANS_CMTG_OFFSET((display), (trans)) + (reg))

Step5: Define TRANS_HTOTAL_CMTG
#define TRANS_HTOTAL_CMTG(display, trans)	_MMIO_TRANS2_CMTG(display, (trans=
), _TRANS_HTOTAL_A)
#define TRANS_HBLANK_CMTG(display, trans)   _MMIO_TRANS2_CMTG(display, (tra=
ns), _TRANS_HBLANK_A)
...
...

Regards,
Animesh
>=20
> --
> Ville Syrj=E4l=E4
> Intel
