Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ba9G/ccHWoeVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:47:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD10A619C70
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE81112DB0;
	Mon,  1 Jun 2026 05:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lWpfH/zz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27524112DAE;
 Mon,  1 Jun 2026 05:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780292851; x=1811828851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NkpaJ/DfiyInbc1IWAzzHt2yKCehKslrIKZ5RMq4I0c=;
 b=lWpfH/zzgxiYOOCOuI0mT84wGBJ9a/21qBUjC9U0TxeDU9mzIMJkUq5X
 ULlLgeKiBnhYKfdZ+wGogVA6P+6G+kEvvH21WVx+UOFWKk3smU4Di8rLd
 dSeEKZEGNdDjcWvNTNnQ+0vdtbQrqB2mJqBzBan8XGEBCRiQVwMz+SGIh
 0KKhsBkOMQjUQx1rexN1f8d5ka2WfFZHSCfzOXabAvQD2dnesKLrDRFn7
 mMPvBwgL40SyZpx1YikUV2bbdhlLXla39JfzAAZq00XTahTO74Moqw1GG
 w4rhmAVmLljMPJxSu85HxeYyZePHFkPYqXMnFR3wMsB59j2EJSR9V+Dq4 Q==;
X-CSE-ConnectionGUID: cUUW4XxIS+eBLViJFn63sg==
X-CSE-MsgGUID: uyAFgKUCRU+Psomn0pdocg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81035428"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="81035428"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:47:31 -0700
X-CSE-ConnectionGUID: ZVK9NNNhStqWUgCCRRSs+Q==
X-CSE-MsgGUID: zfwwFf6gTNKGcmDRdgxwMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="243592705"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:47:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:47:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 22:47:30 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:47:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YpFqfRN3zebplZFcCw2BKFEJ1PCcglDaypmeAc5sMMjMS38R4hPMLKxKv0fNRFdvz4PBYMc0kFFrz5d3w4enFeWvqm7aB8ryNKiQdCXpgw8znblxGhj9kSfsNvMm/Dx1udWzi/i7pYf9jqwWILbtgGKpyWMuEOfMbhoZsec2ew0Q8bpfbEMUAa1w/ZusOf5GjNq1AQyipwPJQrKYfqcEo579GFH6E+E5p1MjOivbj311LvxX08cdME2GrCyA7/707obg8wLMEzNF+ejFWT0LZaIm6mY41UuXBHmvsxCBaXo8JrSq1TKdmhCZ4q1DFhhtnqjWWt9KUVe/tx6YaCGSeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03+i+BWpi31BoxoVuYtZlggAtkJpcA//ZiMoB6lPC3k=;
 b=FpX06i7iJzUQMHz4xqIprCZqgpc3VneNA6NhxwETPyZ0Dl6NcpwU7GLgLJTpyJ7l4ySRMVEMYtWFphswaBIOWE44nEGwD9M7hvvK7nAHG4ZhSiKc+UoF/1KX91hTJUoTkXNkeXPGORB01Uwdapc5Rpv+NReSsD9JDXLXCAJgSk0RM4Xhv2IvCPaA+wW7/CDZXtXDS9P4bLmiAUE0ndG6UR+9W3pbGYArQD9QFsx8WodhO58tu5C/kZxq0zadaK8s1pVYEnLqyBg+H4LyubKVlFQ+7b7jtD4RXGPgy20kpK9hAoOhk+ErypYmtyAYqZnF7V53q8xKqds7toYqlyDl7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Mon, 1 Jun 2026 05:47:28 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 05:47:27 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v4 12/13] drm/i915/display: Add helper to enable DC counter
Thread-Topic: [PATCH v4 12/13] drm/i915/display: Add helper to enable DC
 counter
Thread-Index: AQHc7USRXVvPmB5oUE2ISD1R7fuvSbYpOWsQ
Date: Mon, 1 Jun 2026 05:47:27 +0000
Message-ID: <DS0PR11MB80491B7B05DFB75A53755C7CF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-13-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-13-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6211:EE_
x-ms-office365-filtering-correlation-id: d3ca42ce-c869-4ca5-e26d-08debfa143ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|22082099003|18002099003|56012099006|11063799006|38070700021;
x-microsoft-antispam-message-info: suBMVPJPLWB21oQS4OZqZBV2rgn887BY5NME+57Zlbz9YyMOmyKg9aWrzreEG6SoGB5b0XoJAX3UM/NQd/VlKL/OFWfzewgHpehdvbbLwMNSHeaSsoywYfecHcVWbfmPgtkss7fhLE+jyhb/JQ+fqof5QEIc2XrBUg4QeGkFaNTSbMH10CPevPsQUq/LJRwLA3GymV5+t11BjsyEO4pSeYiBV90nSWzSmri0vQ3hveZW6RbdtC+rQ1SEjMvxWa4vdFcYB7BApefSMi82zIvLkyXFQRuR1+VBz4rw7HmTKZ5IBObC57GV9Sk3Trzcs5EhNZTiEeI9J/ZtwCfyFRvKd6GRXyhCVYwDLafjZyXd+fXRvZv5n1HyBGY/YPY8A1D0cfYqqjxC3r7A1P8iBIocnvVr/NELpUSphStIUJYwnESaqH7mUFza1UgkJ8SFEdJ8Ao7owNgPZMRUE3orr0cono+8dDVhQT9x+jGEuGLJm/b4UDLIATR8Pro+Vm8iAtW7woFCLH8oRdAPetSMfre7O/rG1hhlJwPFb8cx3R+zmjw8npHi67PgS944ZakEx1b7azgXc6Zhsh7Urwd8qSeRIQnbTpmpuHOIkz3hyCKtIvONFIn+jJMrflxcqcVNK4YQ70dyRtq/Bn1hpsAvvMoq19UCPGPN9V/9FJTiZgRq8kqCXR1hjJHhmzulpBioguJzm0Bmg1VDwPuNF58vVtf7mvjg4SbJ85ZMrSsZsKzAOx45447HVPWknVTYkaQpuHvX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(22082099003)(18002099003)(56012099006)(11063799006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tlz1CR2W1y1Q98zj6B7bvAPa2YO0mEFLbQk31Ow1ZRbwx9f8sBosyBJ0kIGc?=
 =?us-ascii?Q?WGWTZVOvKPoWHdmJzzxjAeCtt7w6UUziCgfGscT44Z13lsIeDRlWlna8Fw0z?=
 =?us-ascii?Q?JZpVIj3alPyUSLEY77JI7bFbKqwmoZv+yJk5AeI62gKNRcnBcSyvbtEk7PC3?=
 =?us-ascii?Q?BFm4G2RQ2l7LkYg89Nqx1Vxa0tBO/veNl5dGVqG1SL9fiXERMEAN+Rp2cWnB?=
 =?us-ascii?Q?1a9SHXLdSS9mE13Ym8TyYdTQLaFA6qaEWQ+2h7GLMUex66pEuZaQZ6gAXfEb?=
 =?us-ascii?Q?h27cGZO3VoCqmlZCTNEca7WGF1n50wSxoInK7xh9cO2e0pP598iLYtq2n8zJ?=
 =?us-ascii?Q?QxE58MbSUGHrhU1Nc7cv9GYhEIsO/G8n4taZTr9yEOevAzRLE01Y0JWL1hzK?=
 =?us-ascii?Q?+LnLcD0tZq0zMpOpjkFNdof47tyA+HxyiQ0/1i30AETx7c76tqo9Oz2P+Dop?=
 =?us-ascii?Q?4/PiXedtiA1mTNGfLC+17Dt3ar74Gt7pA6jkB3PiqEK/P3tw7aB5+17NVRfX?=
 =?us-ascii?Q?5UrWK3s4niyXvT+8Y3Z5SGDU0CfU0wY7y6tevZihvZm8yfvppH8y9qCprNjB?=
 =?us-ascii?Q?5ZWuImYE1i7duUNP5Dh4RhenPyjxPcQRbp5JAqUmnJ2p+lcMA5DdU7Vo8qlq?=
 =?us-ascii?Q?zXGHONH5+Iu0ioN6N6BKWjWi/3ls6ue2Oz87WY2azvCXA5Dfr14Zo3+bYCZo?=
 =?us-ascii?Q?/orsYuC8GSq9HhhKwpFWZMVNpkw/7UJOFyRrmsf3JZCqoZAhmt9dKCoysDiL?=
 =?us-ascii?Q?hBQHUUrYps4KNXuvhb673wdRS4mpb6ytBskzCnDlk7Mzdtv3pIV8cAjYzVVQ?=
 =?us-ascii?Q?lVT79oX1lbLiJBOnbc2I8A6D5fc5MJwqlAJll8eFKf0ReKBC9DFn/QGx5QOR?=
 =?us-ascii?Q?p3AyACb0+Gh1YHfwlIqYMWtKehCHnTZZId3AmIK5a5U1WCXNYZ61TSqbWCw3?=
 =?us-ascii?Q?eTWCh4yAfPWicP0dIuc8P+6YQ5DtMwXPm9RviFwiDAL9LOfNzIfVKmGPm9tA?=
 =?us-ascii?Q?drt2Z+yJ+1u3oBSisx6sBqI8dpkHgPx7/BmJ88KzwKuwHuybB8nuvxJBVV4g?=
 =?us-ascii?Q?K+jOFbVOk+TbHuzRxGBuMl13fhY0GbXADNw6hV0ooBcuzo0CuMlM+cZSAfpk?=
 =?us-ascii?Q?I2Pb48m/9/VcZkaBKGW3SiifougzmvacL4m/BS8eSQfp1tkvwiopvVKCXSEo?=
 =?us-ascii?Q?8DG4xdoA8yjq2UH3m2rFW6++L/u+l0Yo4+u4aRzsCNrpFhXNzXo2vYwFdp3P?=
 =?us-ascii?Q?VH6LbfeaPehXa5dAbCOfZmt+8g7xEve3hDIBvEEtjz5wvYFOUO1DNrQuF3Xu?=
 =?us-ascii?Q?R/gisnmhLElYpJkE58uEyttYpQFZu6QyVIcPqxsQgPmQMKTCNJhTE5gK8ti3?=
 =?us-ascii?Q?A/y5+gB1E88LUsR+Ve0c7FyfGvrXsQ8Kkkw71vQuDYWWq2/MMKuoTxNbZPnC?=
 =?us-ascii?Q?JxUH6FGIeWExw3OenaHJfKg5GfGBh1v8vsrgPt35oMYyq7L+21sXh0/r1R/0?=
 =?us-ascii?Q?rMTHeq8P2qIK6BcPjQFJaJD7Lqe3OnPnDQb1DIlhLXNpwTfkav+icLnXONM5?=
 =?us-ascii?Q?qa3m1MClDrWOqs7fTtNBKrf8jC0ocI4rp6fpBRtDkgnA6QEFyNXcyY/0bosA?=
 =?us-ascii?Q?IuaXbmJisiUDWAeNnxrebVhSsPHovXFuVNlZ2oMSsxWBdoi5ckGXNb3wQEOF?=
 =?us-ascii?Q?FMNjWUUATGHQrk6q3u6c78bCI3O2yGoFekGzr/2lhUm/J3KC86VTl68bH1KS?=
 =?us-ascii?Q?Wq1irJ+bgA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: By0+M/f6XGq+7KPAbEaC6wE2HLTs4kkeM3/0oVT3vYKYlE2OqfsAg775EkhA8W9fdyjwKDAlM5VSFPVj687+V3J2PHOc8+/88vzh4uK31Yr8/CSnAGBJUGn2fR1AVpk0ToWnf/ikMITQTBPkCZVmaMFaT/HjP35IMuYtfjEl3h4LmLZCiDLv342FyI4L4yla/M2g3bC7rVwzCHZdeyGMy445Oough4XcMnHlVaLbpymx3A1uMGlYjtzJK+afj4MHiWjpH1LKreyJTWYmkGXmsGUFnOUMv0Bev3DZq5E5hWYkegGI3ghCUzyu1tAFD3bnANB9O5D51ZZdjxNDVax46w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ca42ce-c869-4ca5-e26d-08debfa143ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 05:47:27.7997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y7XofPGOapYOs4gT/evvajWCQc5pkHFMExZQqNpRedG0mf1BqO1gDuOP2Y2qFpKqiZbUKQvmbCV5hao4+7oEjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: BD10A619C70
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, May 27, 2026 12:48 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v4 12/13] drm/i915/display: Add helper to enable DC
> counter
>=20
> Add xe3lpd_enable_dc_count() to enable the DC_COUNT_EN register.
> Also define DC_STATE_DC3CO_RESIDENCY to read DC3CO residency.
> Needed to retrieve DC residency for DC3CO.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
> drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +++
>  4 files changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 3ea080d0e21e..0e7e6a2b1547 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -866,6 +866,11 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> +void xe3lpd_enable_dc_count(struct intel_display *display) {
> +	intel_de_write(display, DC_COUNT_EN,
> DC_COUNT_EN_COUNTER_ENABLE); }
> +
>  static void xe3lpd_enable_dc3co(struct intel_display *display)  {
>  	drm_dbg_kms(display->drm, "Enabling DC3CO\n"); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index 8f5524da2d06..0ce64b894436 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -159,6 +159,7 @@ void gen9_set_dc_state(struct intel_display *display,
> u32 state);  void gen9_disable_dc_states(struct intel_display *display); =
 void
> bxt_enable_dc9(struct intel_display *display);  void bxt_disable_dc9(stru=
ct
> intel_display *display);
> +void xe3lpd_enable_dc_count(struct intel_display *display);
>=20
>  extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
> extern const struct i915_power_well_ops chv_pipe_power_well_ops; diff --
> git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index efd1a3e56f76..875cd06f2566 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3084,6 +3084,11 @@ enum skl_power_gate {
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>  #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
>=20
> +#define DC_COUNT_EN			_MMIO(0x457B4)
> +#define DC_COUNT_EN_COUNTER_ENABLE	REG_BIT(31)
> +
> +#define DC_STATE_DC3CO_RESIDENCY	_MMIO(0x457B8)
> +
>  #define D_COMP_BDW			_MMIO(0x138144)
>=20
>  /* Pipe WM_LINETIME - watermark line time */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 4785001644f5..a133785c815b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -941,6 +941,9 @@ void intel_dmc_load_program(struct intel_display
> *display)
>=20
>  	gen9_set_dc_state_debugmask(display);
>=20
> +	if (DISPLAY_VER(display) >=3D 35)

HAS_DC3CO() check instead of display ver?

Regards,
Animesh
> +		xe3lpd_enable_dc_count(display);
> +
>  	pipedmc_clock_gating_wa(display, false);  }
>=20
> --
> 2.43.0

