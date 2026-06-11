Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c6+VFFgHK2px1gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 21:07:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC963674AB6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 21:07:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=L3phKyLe;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3619510F0E0;
	Thu, 11 Jun 2026 19:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E010E10F0FC;
 Thu, 11 Jun 2026 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781204820; x=1812740820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KrxTc2/iJfepfL87IaPJalEmJyE2CCY+vU7CVop5pNA=;
 b=L3phKyLemqwjr1JVZmyv/F09Q+5fhvv2Bly3Wly+dOwnF70CQMYPT/Ex
 M/+CF6jCieCz1QZIC+UB1AXmqmnlt30UwNSG0rFORd4q39fweu4CkSHHl
 A8JRjmtkUEvZ24ZAvmQIeSC4/Uu4PNTPCwjTxQHubJNAInUiff2wRfF2p
 JVu3WNtYA0TuYKOaEtK6yQJkRiH/b6wliBBCsrEr51hlR40bJ1m2FhsfG
 XYfCXiThnYKkY6ikowJrFL2ZEnrINRnHorvq+GoBSBY3+BKWA+u07di78
 h4yd5vN1lCbqUOhZlMA8bgsKvoRznpJ6cSDmMHLMSOq4yO8UVzxy6bJRN Q==;
X-CSE-ConnectionGUID: sLnRBOS/TyOitr6WUbIN4g==
X-CSE-MsgGUID: OFDIqyW3Q2GMlgoUkve49Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99608064"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="99608064"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 12:06:59 -0700
X-CSE-ConnectionGUID: Nx4Xm4eLR02jHEYVzAS8wA==
X-CSE-MsgGUID: GXp0nalbRgiuib9xgR2DaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="246462750"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 12:07:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 12:06:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 12:06:59 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 12:06:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rub4At46Nw9BoA+c+EqYnvBPKLjJk8BNtA+C0c6H+77jou61QNOJ+fzZ0sRyYE/YMM7vIrGp5TbvKtcWPzkYFNDHDR1G0ui0o+q8nU4YzQSEVIIoamjB1ZNUdR8VP4WSq7x0xp82hg2VWXT8SmmqLzbjp9yEGtoTQxZBECi+dO++2YBMgyV0+NALhuepCob3PQm/HKA2XmKrYQSXkWam5k7yRsgCUFidIE5TXXnry3UClboguvPKnDxEk5UdjFkSpQZ98f6HoD75VJCPWK0bgQk3j3ROsLAfpHE3+rRkqRMhnOXM50Bpc9UwOnmePNupnrEfWO6ezkR3rMyYEJxvFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X42mIR1nwaAZNzm5w8HZQZo51kTa3Gt+kvjrCsmmizg=;
 b=aLBFHcGpXINfComzZu+d1ILSCBSLlfAFwjXaWldidGezNnySWy+BcA3CyH2WZSHQTAPATM2BnYLAFuZTjCV43WWcNWQE/3WyOCQZHZ5oa4EJhyp2Oq65Fjwc4r5OVkI3UbdfSeDxEfHVxhYEP6xWNRnsPVaqzGKXtiSU3nhq+pBoYEdHxn0gm+y3cGH5cTSLplftfuNqduyY+cwSsPDBNBfG0SpJZvQaGFvNNy1txeUqYBWPx0ryupb13w4x9DQBh9etATJUzPdRBTNLPQdBT0LxbslBGZkwQp5ae8ro4LZogN1tpXaRsRl+Vv8JXZHTUEgjv/Xawaufudpwiy3KtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5947.namprd11.prod.outlook.com (2603:10b6:806:23b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.13; Thu, 11 Jun 2026 19:06:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 19:06:55 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v5 14/14] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
Thread-Topic: [PATCH v5 14/14] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
Thread-Index: AQHc9Me4FQD2zm712kqWlQo1tA+e/LY5wTBw
Date: Thu, 11 Jun 2026 19:06:55 +0000
Message-ID: <DM4PR11MB6360BAFE9BEB277CD7C7C68AF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260605084421.3912865-15-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260605084421.3912865-15-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5947:EE_
x-ms-office365-filtering-correlation-id: ccd9eedc-29ee-40a5-10bf-08dec7ec9afa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|38070700021|56012099006|11063799006|4143699003|18002099003|22082099003|6133799003;
x-microsoft-antispam-message-info: aLFYzBnNN/VeHyIgZvW+tjTpcuX7erjD4WT+bvbYNIeL49NK714lLOShlsBLYdA1CbTPEkxHSkVlNK8ep5ypJ9mTh/BJDu9zjBu+U+s+we2XOdyI8tDsG6C51oEYCYI6FYiTz/IFHQ7ZAFbuxV4EdOzV87hJCzcvQz8P4Dxd85i4Jl8L2g6D4zvjL1fbj3FoGF7SYmDtRpyvuuMw39tm+IU8hcTJj7Wl2pUbNf3Ty1bRZXy2Anoj4dIbKF9OQZ59KxslIb8zNu0i1Z8F83SAam9Hi2+JlKDAu0By9KbAKPwK21fHQMqyZE9hY/7HdhmVv+RjthA5c+zGvYh84LrcmM3Uh0YfU0U56vcX19qNhLplsnmk/o7QerLBG5olZuVRm8gGSjohFXt+2o2Oaf8QoNXp2MnbCSfEoObrqCSyTdgHtZyy/Vfbr+gFaDO1mKj9evfLKcY8xJ9+9Vn4V87oz5nVaH11qWsNkJIkhtm4nvTPOODFQCP3haf/3mfhM8XTXNoxRtyWBY0lo6HKwKqZJIe444s0Fo/5IBeZPM4mRQeZTSoYB7C/oKogAUyTNdt6FOLpx9StctNbCWMHF5S5jLYuxVC+2vuoTLlPO+L6DnIHRfVTSn7BpFLLIq2bgECEBNhEn1P1NyHYxBiQWn3sqiGiNj3y2WAfpPim9gy4LII0Dd5Kcw/dcKtNOTeB6Qvu+Zpftu1SPmuurdoUiXV9egJqJD5nNFlLyjE/Qeh/ETNBxPcSHZKvuNcCWFLJhdFz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(38070700021)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HesQSzv6apXOd4oPKSbc8mcaS7L5sMsQigDoy0jqwBDloOr2JH8vX11o2ikZ?=
 =?us-ascii?Q?+vMtpLOcAyzueic/TGxr1IQfjKBlVDZbWflYy4KA59o4OPIdLMuhVoZ1WT3e?=
 =?us-ascii?Q?MpZTT7gArsPa14eu9xrZzxVdU1UAxZMCOY/im8ji+iKly2ngqlZ6zMfvI/Nq?=
 =?us-ascii?Q?OMxZuQI40KHsNhHoBoSnLQvqk9xRQNJfU4pGHZft8D+a7Gz1F8XIOmzjfyOu?=
 =?us-ascii?Q?4oBaRCFp8jy2ruBC74wFfrsnoHydfR5yGWATo0nkHj+I+F26qX7+2nKoGKju?=
 =?us-ascii?Q?XQNSakqwc9KELtC1RSRAUkPLIFv3Qk3O7rCwsBaHeyZImuAb94eq/Mxy52Os?=
 =?us-ascii?Q?OxTu6cFDeQodYX/S4dHbMiXYiQFMB2qJRU9hr9loexHwuSk1akthzCmd08M7?=
 =?us-ascii?Q?1poH/OCGl4lV1/Zeh6r7g67z4DlEGG4zW2HyZn0cKZvN9syA35ZxqnpIRKyM?=
 =?us-ascii?Q?uHt0XvKcyfSn23BzS3H3tYhHa2is7aaY26UNRhthY27d21ih42VhSv1A69d0?=
 =?us-ascii?Q?2wwoS1l03DXuzNBGpGwWfAwygT/aLUoRGtlLnO1YTsQTAAOYW2EAPJx3ETm0?=
 =?us-ascii?Q?lDAUvhJBlzZNqfvF6xElG38CYHd01hUjm/nhujmGuO7gE3a4FjYP/QCnD678?=
 =?us-ascii?Q?xIb+WBH5yVTa9Jnw9gofUCv4vZ/Fj5tMJF9w19klqjvMbpSSwgOFrKZsIC6R?=
 =?us-ascii?Q?HPJADX80qeWx+MC9VPcJ0l2IZ5+n4ZUzx34Stu+14BUMlV9LIIVQzhh5pSof?=
 =?us-ascii?Q?JrsmVF+/EY7XHblZkBV5OgxF8wdA9vBbF+BJ7IjY94JbWIMHMbnvCgC0AQ2z?=
 =?us-ascii?Q?FWYs0j0k8M2Q0jemKmY6n4JGLtPWOUER/logJWCQsjVvbDUUdxfWmC1bxOTs?=
 =?us-ascii?Q?q8d7rel0hWRlM9zkFClCfGe7TTlJ/rLQSkhZcEFepKcec6M2Catj5ZPEoXoK?=
 =?us-ascii?Q?U6+b4G0i6sAN5UVIZKYgG6ww27wCGhxZiMR98XD7LFn3srN18h8M53zEsxDY?=
 =?us-ascii?Q?M8qJWjzjZl5pAGmUk+RV1sAawIxFXTbbELWrGGIkEaWxEd4bgWqskQHd9Y3O?=
 =?us-ascii?Q?i9xUh+RnofTskn95GjYtu9tzQR1JSYQYh4zPZxyHLPN5z8E21i2ZbQpvXLu6?=
 =?us-ascii?Q?TiJwPEkZZUK7j4kuj772XVKcHXdj9He+Hq2xkb1NgY+CU0zudHF9BeM4h0TQ?=
 =?us-ascii?Q?F4d9IEh7Xl+7OK7kKGkb+EDE7gM7pifSjuZ6Gaylwq8ZSUDhce9n12ENLLN8?=
 =?us-ascii?Q?tjJY+zTTKk7nH9pyQrH8nTCuubDLTIfe2fKCKBod0XcylbcLCR3Bkp8L4Cjr?=
 =?us-ascii?Q?1fOCSHa4yEEpqhmP7AIpkt7m9OPfqcMjH/Ec2KtudQl6p8rXobDL1SfuOu4G?=
 =?us-ascii?Q?aDUL2p20KIOsSLJBPU5idkn9RIV30TC2GazsWjagc7L8uf6/j656im0EEmX8?=
 =?us-ascii?Q?9nywoXm3IyevFZdSAo9d/k33UpW0D7JFMaGayuccm6tkc/aIB2gQJ2WrAjOf?=
 =?us-ascii?Q?Rvjl7MvwXpEDXdvk+sCCmUaeYIv1TgnS1E+fmFho5gGxf1qTFgrHDcc3DuZB?=
 =?us-ascii?Q?UCcyiwwDPE9KN18FJ1zfJUIi7lZ0DbFlmwHv8SQaN8ooiwnSOdHptNEYlkJ5?=
 =?us-ascii?Q?+bDjXOTX97SFdejcUHM5sR6CgrlPMpVqS2Hu3q3gA69Pn4CD4+a8xr8yKSz3?=
 =?us-ascii?Q?Eg3wMGiF5FshjNwd4RR8/XUC1fNHcDQv5UpU8w+ZnSdOUOKBdmBqW2eA65+x?=
 =?us-ascii?Q?GbNODViyWg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: atkxAnT2TxhZRzFQKoz/XRDP5eDKBQfMWTDvSV35io3nKTGOTld8mykJ4nhnpcftwF9ZvmO9CWfZaT6G2ar4QB3rk3BpYRgwYEzg24SOzGF0EQNQ7PSi4Y7D8U7lc/Xz9tSNss/Mu/h0G9j1x6bUn4hjnn/jBwwYZQA1i6rRg+sURZbAvHiVS7kwj/lngDIyXCLRAOkmd6bHmjpADouyPM3sOJ3eZeblPsbbH5Z837GPpu4Cy6SZvOlr83ouoWUjL4pjttK1KOYcYKKltsvgXiGOcE15g+haeCa7dlDlqcgqf6zqEGrPnChqqnp2mF4cHmonpWG0oN72GkDsUGjfEw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccd9eedc-29ee-40a5-10bf-08dec7ec9afa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 19:06:55.9153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y7QI4EUqjPezsEjYJB12jGk+5rk36vApnHS/ASGUY8rwhZyMVaS22TLr2Gyr2+5B8qZjeZrVrFaW1+C8TzXuyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5947
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC963674AB6



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Friday, June 5, 2026 2:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v5 14/14] drm/i915/display: Add DC3CO count and residency=
 in
> dmc debugfs
>=20
> Expose DC3CO count and residency for xe3lp platforms via debugfs.
>=20
> Changes in v4:
> - Keep dc5_reg register initialization to avoid any
>   invalid access (sashiko)
>=20
> Changes in v5:
> - Change XE3P_DMC_DC3CO_COUNT address to lower case (Manna Animesh).

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 2 ++
>  2 files changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index a133785c815b..5ffe2b1c3c51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1650,7 +1650,14 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
>  		   DMC_VERSION_MINOR(dmc->version));
>=20
>  	if (DISPLAY_VER(display) >=3D 12) {
> -		if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
> +		if (DISPLAY_VER(display) >=3D 35) {
> +			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
> +			seq_printf(m, "DC3CO count: %d\n",
> +				   intel_de_read(display,
> XE3P_DMC_DC3CO_COUNT));
> +
> +			seq_printf(m, "DC3CO residency: %d\n",
> +				   intel_de_read(display,
> DC_STATE_DC3CO_RESIDENCY));
> +		} else if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
>  			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
>  			dc5_reg =3D TGL_DMC_DEBUG_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 38e342b45af0..6b7978fb8986 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -531,6 +531,8 @@ enum pipedmc_event_id {
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>=20
> +#define XE3P_DMC_DC3CO_COUNT	_MMIO(0x8f05c)
> +
>  #define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
>  #define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
>  #define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
> --
> 2.43.0

