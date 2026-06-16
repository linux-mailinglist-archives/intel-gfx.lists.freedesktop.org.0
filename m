Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AEZaNuwmMWpGcwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:35:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2BE68E5BD
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:35:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=me3yhgKj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABC410E58F;
	Tue, 16 Jun 2026 10:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7069610E58F;
 Tue, 16 Jun 2026 10:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781606122; x=1813142122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fTBtL41KiyQaLgkbGMvey0I2TkJHrUuBU0MMM2zj4Yg=;
 b=me3yhgKjnJveKOWOwfCWTC2oD8n0NbCIguhoZP/0LPFshIwfnLUFARpV
 kz6+1a9WB7k2ny5+G97OwQmqvvtiJSg8fYTVjttt9a+H9RraJUQJM/xDH
 ixbKfiXQMGLtnt5qnW0PZl8DMDbDzrouss2UMH4QApupCruLaix0eftbm
 w94zOfPgEkZ69/A/0U/UYKXnlF50ko63IK/aAcCaenooG6nM7vy93yhZa
 I7AvFt2lSp7hV7JcFZFrhnOpXx1JXulYx+8ivapF5QFD9tgIK4lckKqx4
 CntI/EPNEKn9XEqCWnvP29ENHAbpIaT22tLfwkPn9mUm7uGOFY/dfgUtQ g==;
X-CSE-ConnectionGUID: oXeQ+E6uRWS1lCLmSo5kOg==
X-CSE-MsgGUID: yfBfxyOcQxCEKSje/2YZmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93749115"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93749115"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:35:20 -0700
X-CSE-ConnectionGUID: k9byy1ZPQGSK3+I0nnQv/A==
X-CSE-MsgGUID: sZkwngxqSPW7noCu/Pi/wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="249630515"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:35:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:35:19 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 03:35:19 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:35:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cmbRZ4VRxwE50u6nJCKsSZv237cuoULMC8yIxqyQwDtiJkdjkxoOn60J/Y1aPWIBB52RHfJCeuCP8EtEaw3IKJF5rqVEpOc5/HT2aszEx0o6bCVsONfgYvbyH2Zzd5MB1pjxD5Q1Z9aG5GRg52yRUbYuP+kRq988pM7wlljG3PEgcDc2LFNrDhypcro+HXLYx01JC19WflWndDBISuzNWVuFDyGqCnWB6R1Eeg39krEwc0v2vMnulktwvLgkubgawhZ74cxMkMNjGTeSvXLRSM+QojsRs40aQODwoqkqpKyjhAG3OIXqAXQvI7up38z3uxl9YZEQrrhITBBU6xSqOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87hLxVoj91c0VXZR8Adc7MGnaMiaSMBQ5hubvlOqP+g=;
 b=bhUitKsqNZnHZmwhm0TiMCHIaTamCucCGGWRYGhrCmlstTYpyvXTDnWJPYW22mg8GSUL6L2fdnbXUNbWwDsvkXQjdqCBvCtHmDphzege5sthN/dWmG9zu/IbCVGTgSzf/V+lG38aCutLAuH0cs1a3+9E81/3hnJtRbjCnJsmYlEmdcHUurCsUOG++vTDjXEi9Ucxzwide3FppurAKCCI/vBPQSw6YNYPlnAx4Iw+WNgdUguwWDRTouyQUZd80no9xF5hWUa0MsJTAJBTlcYdmpcnxa8Q8QPxNKmpEJdS1T/sXjcs5JXDbBdrGj7+xEjVnCCBt9E7vvQqFuZvqOqG3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB4791.namprd11.prod.outlook.com (2603:10b6:510:43::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Tue, 16 Jun 2026 10:35:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 10:35:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 11/22] drm/i915/display: Rename cpu_transcoder
 parameter to transcoder in VRR fixed-rr path
Thread-Topic: [PATCH v9 11/22] drm/i915/display: Rename cpu_transcoder
 parameter to transcoder in VRR fixed-rr path
Thread-Index: AQHc/Qai9ur6WOv7q06s+7NPCjg/9rZA/UxA
Date: Tue, 16 Jun 2026 10:35:16 +0000
Message-ID: <DM4PR11MB6360669233ABFF82A3FA20ABF4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-12-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-12-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB4791:EE_
x-ms-office365-filtering-correlation-id: e1b821b6-5965-4ee6-d50a-08decb92f511
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|56012099006|4143699003|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 0y9aSwX2VX5/JAxEynohiK5bFK1GDlCbCrutf/FiB+mcTnRGR/zW/EAXwCy7E+AhfEEgrhAOKJQ5xejzsHUHZ2nlSr3Jlv6SLzBGkpf31TZXqtLUPruZMBp9SZ/QybSgYIuspygZRdqHoiSIkfy2YQyYjSFqNYjRjbwCGJEMmNcaR/aabmDQsMdVCLieAhWsjxoQ52Bvwen50FyB0emcZmPS3m1+xVMe9KGryP/92CQ2FYL9G5vPaFhMbaLY9q8Th673WFr7zh/cU2SEtXxGjkA1ySPlAexhaPLhRgTBw4Ja+QPk69fJsDYi0+RuSoFrEvLECFKNiD/+gsuYBH2/FPVWCc9tmGca+0BVr1vvi/w+FUfKnp6CUqd9tn6Wlt6whO1tdPGaleyD8wbL42oyn/BLLchNt1Dk+uM/PDf2mEu2PTJVFPhoVZ5zGmST33yYwOZ8UpzUrJ312mGJ6oY/lMaaNKUZr0RIAgmUE7+C1B1IBbG6qmrBiBLYxMySFY/61j7bYd8NCeqN85WpDYz17R5Tpih7ezr64mz/iXq4UdxG2T7lAMJP2ssSFNSAwLeMfTtCyfGRdE1RNAfEk1lXxntG9hxB5kyvfAfiV8nD2xUbNQ8pWV2ljaRERRQUYOmaqKD1nRHh8uMpRwpqGNJaCnIKNAAHnjGMVHjT8aBS+NRntl8dsDC5IDEkVbDqTvvEnUOKd287L6Ru176sXrQ2MqAFD4zxzOFcnqZAmk1UqkNS8fxik68wvp7QzwqZqdec
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SuNGnbe18FDEmQNYhI6LtsJWx3rdjZj0mAxtjNHtSD2iXNx24IQKpCyM6v+A?=
 =?us-ascii?Q?iQHd3ylVMhHY4HgaJfPimafAQDKsQnDYydRz9AYeOPy9YtuITyASEDALu3Hu?=
 =?us-ascii?Q?kPqhlL816tuybaaRom7EXVhGy/ujJTFj43+ZOaS/OdCFd/1jbgsMwBuyh12F?=
 =?us-ascii?Q?Pm94sdlXxlMykeTfHuqZ/f0sqhaaDPrm3Dm/HBwDhRpgFFqch7XxeavnNfSF?=
 =?us-ascii?Q?xtdcmdfaVkg8fY6CqkkihSFuNRZWCHJMTdTKj8OwxUOKouC2TIz9MeMI29f0?=
 =?us-ascii?Q?N5iTQ4A8OhbkWck/XmVEbdpU/VAlcKVyQvjZgo+HBG2kidwlF9JEqSPv2PER?=
 =?us-ascii?Q?7IlhETDIcXAaDR214JWsodNyicH75XnzG24K0LMqm8TiFEo7gvjstV4sbd4s?=
 =?us-ascii?Q?vHCbsZxd+2R1XQO0g7H2gpGm5ltNawusbgOQigS32H8sfF10GVv9Pu60aE84?=
 =?us-ascii?Q?LG+KFsNBPlmn7ZB4ieDRoezSTpMn94oNWKdCq2+7qjPLz45pEoCqogd1J95F?=
 =?us-ascii?Q?RV1nSIjF9AxUIb8fKCuYepFRy0yRqvUNfq676esO1fQ3qedsNBm5Hc3rmlm/?=
 =?us-ascii?Q?NSUFV0m9/n0UFVx+DUzlkuOJen0PAKMPbvn6hZmz4Y6o2hrk2EPVG7Abo/An?=
 =?us-ascii?Q?F82BMxz8U+xKxIyJba3pcltnmAV8GP4qhLtn37gQDWH9rH1y2KLsGqx3NLeR?=
 =?us-ascii?Q?ZhV/t/BkWzOjnDSUndJ29vlZI5Rp09LVUNKUaBBlL8/3wXPYYIcdOVS46uT1?=
 =?us-ascii?Q?9jIIZ0WeDIAGRs84D/OUV8kkAJAMIJRIXFm3A9n7TwJkxo2LOWDsafzASbll?=
 =?us-ascii?Q?OoqPcgpOiSM2fEoI6MZRGNYDLcx0Zet3kHfvJoVrL+kxzci7ZSiNDqGZBtT7?=
 =?us-ascii?Q?O9/BozcG+6tOCzFx/CNnnZCzda9AjMcZMtjh/b4ukEgsp145nHjWQCgRxoTw?=
 =?us-ascii?Q?o2IurJP/jdMza1BRKkCAKM7O7e8WoNcP474TZuUlIfhvxhhywJD6vnjXx8Nr?=
 =?us-ascii?Q?x7jIVNX0XrzgQeMbwNtEig0p3fi7sDwALNgb2X9rubtdSuX2BzY90BffLrQ1?=
 =?us-ascii?Q?dRgbOgXuCee2zdIbPr4iCdYh4vVFmPitoY136CUu1VLsr4SqnO2wdqlGnTeT?=
 =?us-ascii?Q?efTFpPi/Rptesdqvm48JoF30vFb4o59mhWR1/uifpiRbmMwRwqiIzDtKgC0i?=
 =?us-ascii?Q?32YAmBOJLFrRBR5JhBLr5x8s2gE8V4W4DbrViCx+6C7QK4HyJgC8fJv+8705?=
 =?us-ascii?Q?HVCbmippOkwRd1IrJCPEbE6c56PuDgiU2gTFYSxgUnfaqK+7sSl8jUgO3Wj5?=
 =?us-ascii?Q?UFvL9MtbQk5wmxaonYuBZ/c9hxLivUo9kmplfDX1u6ATMsd9xlvtl4FNH/T0?=
 =?us-ascii?Q?lGoRr/FFuc5E7IxauRzQ8KmgnXvPEScmWaWGYDUpNCFXSw8wJ7moenR55ADY?=
 =?us-ascii?Q?Z0DmNEyFoS0TCAykNZkqFwNq9+b4+55gYkDjkUnVIqSHrM69LEFsT2Z5Gmmw?=
 =?us-ascii?Q?QrgJ7SJi99ABeAGG46gtnjXfHANPGHGu7qQdgCqr1Y7kxjIC+Xa4rKlwSQ82?=
 =?us-ascii?Q?sOMjDSqOXX0lkJFU39IhNTC3RJgShdJNYxA0Wz8EUb4FujDXAVtUVBX0tD/B?=
 =?us-ascii?Q?TutEcYhilsmDQy0jB1+G1a30PvNnjoxNEGxN5Jz7EUWvzt9ZF/AFUr5BwszC?=
 =?us-ascii?Q?pFPUfZzw2WnMNDF0e0lnf6OGlx5tWxED5YjYV3Siq9SZ96LQk+JUlZ4u+0m8?=
 =?us-ascii?Q?CEKxL5OfQA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iz6h3oWOsXQLaHLlrQvC0bI/9yUQoEqYIlCdWJZnjc7Dn0nAH3qVhLSqPWnB7dQAnDywOLwy01w/qzhU+Us/eRAlVKWbMARKryc7ObZauKLyrQL6NLUAVGH9UtYl/C3aAtAkm8STaEkkNO28kcchHhFyJCXVc8zrCd2PycMHhfNRpIg7Vt7nKl9T14/N+VgRTmL2aBNc+/NVU8wXkbiFO263IzPmZe8CRXfzcYSibrlAIvnjmTnBQn/YEjg3UoFZFNPp1zDFsKwhGpxAB7gMlIBd+J8PrWKeZrnUzxsDD6SwEcVokD1+2QLw9kkO9b1DApXVzU0ZOftdXDehp/sa1Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b821b6-5965-4ee6-d50a-08decb92f511
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 10:35:16.9871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jTBkGgwMlxJdUHevxDZDZZX7cHLV1wXHAGkVP+CUprJiKAOf6sIws/naIyH/Rt4LfNlkBAXpAgby6kjn6fqthg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4791
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F2BE68E5BD



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:33 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 11/22] drm/i915/display: Rename cpu_transcoder paramet=
er
> to transcoder in VRR fixed-rr path
>=20
> intel_vrr_set_fixed_rr_timings() now takes the target transcoder as an ex=
plicit
> argument rather than implicitly using crtc_state->cpu_transcoder, so the
> parameter name 'cpu_transcoder' is misleading. Rename it to plain 'transc=
oder' to
> reflect that any transcoder may be programmed.
>=20
> No functional change.

Looks Good to me.
Reviewed-by: Uma Shankar uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
> drivers/gpu/drm/i915/display/intel_vrr.h | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 60a92e8b1094..401a12aee700 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -320,18 +320,18 @@ int intel_vrr_fixed_rr_hw_flipline(const struct
> intel_crtc_state *crtc_state)  }
>=20
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_=
state,
> -				    enum transcoder cpu_transcoder)
> +				    enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>=20
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
>  		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
>  		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, transcoder),
>  		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 57c5e28378db..55e9c429f579 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -44,7 +44,7 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_stat=
e
> *crtc_state);  void intel_vrr_transcoder_enable(const struct intel_crtc_s=
tate
> *crtc_state);  void intel_vrr_transcoder_disable(const struct intel_crtc_=
state
> *crtc_state);  void intel_vrr_set_fixed_rr_timings(const struct intel_crt=
c_state
> *crtc_state,
> -				    enum transcoder cpu_transcoder);
> +				    enum transcoder transcoder);
>  void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
>  			 struct intel_crtc *crtc);
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
> --
> 2.29.0

