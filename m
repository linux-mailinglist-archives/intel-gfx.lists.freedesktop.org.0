Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GtNRDbpPMmriyQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:41:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A93D6973D0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:41:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KT5zak3D;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE41F10EE61;
	Wed, 17 Jun 2026 07:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5AA10EE61;
 Wed, 17 Jun 2026 07:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781682102; x=1813218102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oHZFnrC1SzrIXvzKf+N2G/v0L2VAWirzG9u8mAImJLY=;
 b=KT5zak3DYesA53vJ59/mCcym6utcuPuZjZJllECu/iMcCAnWTSW2NhIE
 L7wMIxEHujdPSsdF0R54qwQj30oYvi76lJSfffJb9kbrCrdVORJukoiOm
 KeYWgGhFrXJyno3ehSgs1vsEzK3PWPfPf6y1sxqz87A3pJAqJLGsafpm7
 DrfxmVaKiAvfI28f6Thd17FrwLsLZN5tFSPS5/iRuDGprNdJ5E62E6KhE
 VijEKfky+YWEWj6CZg3hx0P6VrX4dl/GwHgCPhvguTPIKW6ObK48X1EHS
 eOp3MtXCyGdmTYr6OecUC+SZudJLtBOuwF1WLeeeORGVIzQT4LDGzH9+3 Q==;
X-CSE-ConnectionGUID: N93tjVzvTpuaQL3bp4HKFQ==
X-CSE-MsgGUID: 9mmINEObQt2iXNdYae+aHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82525592"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82525592"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:41:42 -0700
X-CSE-ConnectionGUID: 5hrBSYAzQ8+msTf4Cm+OEg==
X-CSE-MsgGUID: QyJJv6jlSQKTjS+hqJ2KYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="251905338"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:41:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:41:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:41:41 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:41:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gZbrfgka05iKYwe4Pc1fLsoipVc2qxzl4sd8uDCurqMLd0xcG9EnMRXyzBnN0iVH0YrTGAB4FbaUYaNl3OXdqfkTaDeZIl5gxbFc266hR7z/0zdPF3RZAnWU5TychlqpvMmyq6ENaSJGctq6KExOrgCE6MUXrP1wUqNmhiZ+iPtT49XKFgyrhhBGBtweQ0hC3O+B8jZAqZ2F58S1STB5UsMLa+SS8LD4eMp8lM/nhQ9KoHuZ9PvRYCrmfgkYLSaMxGR6pFb6xMDUxJBMUS6nlieUDvb06CZqBooFDBKb587WBVyeHNPGmEjh/+wP8u3rlUlb5WS8473aeDufMPTXRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41JVA7y+AFqvOqZ5rpmgmaXKBh5n7WMaaGvlLcXiGv4=;
 b=E7yPFJ8nliAXBsPIHMPN4WWU6ultPmb2FH1Fwb7z85Lob0QaGspM84C0Y2NBr0z86rbtvbV27/0ap6FM60q3sxBmFZX7foJ9+7AjJso6fFjUaWwWTI55hn1LtggTBxW6bPVIn95m2QWp8l9yTEWjq5beKT6aFFvP/GZ309CqtMJH6TZspGZfrPMO30Sh8Jd/+W03tLSdGTkEO/JtzGZlzt+bfrpqPILaebCTw8UheCFigKf8cfxXRrqKZ4ga47Dg1h2G2ShDsILZ/ZakzjsGIXij+Ivo+keeJ0olQF04jvEvZJUjBatQZQCBHi7jMjmwbRx2NNsKCv+GMSmgm6Apng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 MW4PR11MB7103.namprd11.prod.outlook.com (2603:10b6:303:225::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.13; Wed, 17 Jun 2026 07:41:37 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:41:37 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 07/16] drm/i915/psr: Add psr2 deep sleep helper API
Thread-Topic: [PATCH v6 07/16] drm/i915/psr: Add psr2 deep sleep helper API
Thread-Index: AQHc/ax+l+lF9+nap0q5SNXJkANjrrZCXdsQ
Date: Wed, 17 Jun 2026 07:41:37 +0000
Message-ID: <DS0PR11MB8049CD289A7C94F2AFD64FF5F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-8-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-8-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|MW4PR11MB7103:EE_
x-ms-office365-filtering-correlation-id: 1425b50c-1602-453d-6bfb-08decc43dcff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|38070700021|22082099003|18002099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: Pcuw7zEVTzaxEHIZQQ+zVvdk6UjfNH060H2uRRRJHTEEJBhOofcgkXYVLdeWJKUwHoe5+6GpeWdLcZpbkEkCL3zgezisThk3Z3jd8oAqRX/gGDw99XoILJwGyIoH/o06OYYjtC8J+Z1ul0LecJI9T2q4f2msajA5WUayIAI4GQ78Kg+2muvOrzQQ1JS3h84V5h+kr6DTt51ptLJuUeyp2amKS10v4yuWeh2yiLiwvbhgdx7b31xfy5rkD16X65ByDdpZet0Sjix3sfpw7aDFU/Oz3pS/huh6TstXXzJhdJsFTIgG+ZOxoxJOzlyIprwzrBeX5pIJM9eos4lZbBxQ3+NTBmYfPTSMHl9HptbvGK/HpVFAkoecSTVNFQ8uRKmKRon8pO3+yFHzIGlCgMO8hH6/fWVQ7sZi7rzNC2ajAlzZYl8QUksu/BJRFxH+LIjezIh1E6Oky+2cbgx3NKUMJXmUb5pHYXWRxn+19ctf9knhIvznpoFEe4AaBTYnD+Gk7Ay4C8e6OF7IiazwXfEPV+QwWoWMeKPv4lR7ZJT7519JnVUbAFBxEImwVa4TvRb9jH7z++tYVr+uZmGPpaM9peNsnzdAdQJC1TE+YDYYupdpWdN/k3uhqygle6B9cLW8UvGdNmCoCUDQCPKswOp2vNm6+qZfV9C/eNQr6P5oJWyqiyFkOixzgiADhA1iZK1iUACBeNZ0JnQ0clCfQV4bAjWm3AeKjnJAQGLqqeQJ7Eu9mPpVEd/ZobF/AGa3ppgV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/zAeJJlN7rG9Sl70sBvkQd2KlhTJppKJMnbSXxunBU8mISmVr68SJ4fIa9T9?=
 =?us-ascii?Q?B9Ea/r1QPuOBu2GwkaIlfWNvo706GNyFHCY2lIO5Eeh5RojEL56RjbRkWAiK?=
 =?us-ascii?Q?Ihhgmzfj1RWIljJDixH2Q7oKhq47hLT8CRaC1DeOLWuiDPtsPfB19XNE3a3z?=
 =?us-ascii?Q?ffY6qgFDa4hnMLx+CrvVlPld6u17HVbV5Ll61K57S3P2Pa8wKei4BdvxQZZV?=
 =?us-ascii?Q?4fHR51Xl2/WatK4cncMlvOpDH7rkpZ3EWyZ2127b/oq0TR9tdNqVZ91stsET?=
 =?us-ascii?Q?KSciGnzntedgrV9yxNvmXqG0dw+CrC+dI8J8kP8nyec+k1Z0Wt/A4ITtWo3H?=
 =?us-ascii?Q?T0E9iP63Jo4mmZEPk2hcZJn3/tdWDWOLy/U1ZSYGXiac5CfuSbrklul4InQ0?=
 =?us-ascii?Q?OwiLhE/TsOPqHbgQo23D2hTQgKpGcFGKwnsQC2oaYYa6rOrlJOXjqQkD7TTq?=
 =?us-ascii?Q?3Uda5iwo804HO2olTxeD3vMNZiFrzovjd0t0HQORMJ4sg0keNpUEdlIhoTzb?=
 =?us-ascii?Q?MIgYoCiSXpsFiLnhfi2XQ8NdU94tl87eKvuqKhZgVKxVEeo/VIIjF+l2l+Y9?=
 =?us-ascii?Q?Q4LdPfaeslkLBrhbHzSG0ilw9xCHwbIyqRrcykhOXMFpY6k7MP0HoqHhVh7f?=
 =?us-ascii?Q?Rcq1mOPEX0v8wECWj9hLDqqJLToZU57nyIXQQtXguVi+aJembK6yGGalwY7J?=
 =?us-ascii?Q?eJSmISJPBMqNjlW73SdoNSNArRguTUQUfbnQSZt4FCyYqF1mKmTPCDFzJcXV?=
 =?us-ascii?Q?m7Pq7yb/WwSOWBvIrESdXZDx5NAdD5GjxTf78bYv3s3h5y1FWE0jCy3VIQk7?=
 =?us-ascii?Q?lXXpBF6LasGSCstmV5sv93bzH0kXgS18sL1/ydmegBgJ3XwmqDPJe3opHPh5?=
 =?us-ascii?Q?DJhUldZq0le6j6RnsSf6MAJnXK0NXFpgBylIFFz2ptKJAEZfUt1XawaRf9jZ?=
 =?us-ascii?Q?/jFdWddh45HRK+9YlklN+QGykCKvS6QGdVBj9ehkww5kWuw01hLhdttmmD6t?=
 =?us-ascii?Q?uaTGdSdsTPt4f9Kv9aepVVBBguSaqVz+nVpS8jDz7wNN/BJooKDzz2eoipxE?=
 =?us-ascii?Q?x35T2lC//p89zW0gmB7hV9gJKtryjcDXQ5AlTwc7UFAl0Nw+zig542SipJmh?=
 =?us-ascii?Q?aGG/Yyshpk9pPxtZYG35bFcCnhO+UP17gjW3ONdwFWHIH+g9oFYa6iCBWZq3?=
 =?us-ascii?Q?X7zbobsaylmgUZR5za60km6iVEpa3a7zs7YKgbJ3c6xNKG+l6PW0mjUVsEjt?=
 =?us-ascii?Q?qLmpyUJdnNDBolbVohYEaUemFDedQ/TyQQtlTjg9kFmaeuPV3DYbMfCBR8K8?=
 =?us-ascii?Q?7ooO2esHs0hCw0qG6PxZkTE1yUk3tDa3YPGwGlgRzRCEW3pe4RQQy4npGuoH?=
 =?us-ascii?Q?rieX81vOAnXjHcAxYEevOyjU9GGD1U5eSfr6uGZIzwbE+mksdbWIPFXn8QLW?=
 =?us-ascii?Q?QMrpYFKedtoQ9Rwm64AA3q+Z+e3ODSbC/f9BtjkCSDVJu2MZiz07ko7gVniU?=
 =?us-ascii?Q?jU1OBBj422CnDHLgwYTRhesoW3VH+vdwwjqZyeWYFea5ilmPJF4WUDH74OJr?=
 =?us-ascii?Q?bEfa14MbqCINLfKHnAghFXxmaclm4EKyDfPvEaSzr6R6DcEcR5sJpG4BVvx7?=
 =?us-ascii?Q?JJujWQVLVHd+LPJl4eAl6B4qKVBwLNFvK9+eXxE/ZSKd7yZXDaBCBrh0Exab?=
 =?us-ascii?Q?jJin1MC1PPZ+Y+PStVS1+zoz70GCqiFtreqgRNomaf5hzMrX1KAnuQn+sTFc?=
 =?us-ascii?Q?xmGy6ZKnlg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: j1cnQniopVVZ+al/haWK0gUqDBnEkDyJCnvGCYL+3Zo3L4UIb7LsbdASmCODnvCqK5jHkY5ApySD9kFbmi6r+X9bf8UKtqNb8FkkceZRnRrZlNrXM6m8EXuDKv52AZwNMweSq8fUtw/OxRfuyTdy03hP6jPPoNRlzoicDVoe+tIEPrFqgpSH1+N7x1nbGlx86jJv4jizm5bgMoSxCINQzXQkKCCGHVPM4m/O2/S1V52dm9A3ZPbP8b1jqbjdVSPQ5IN3t18E9Lbvdv6DHzmpQ5UUbpgRvvCxg2xW8hHIxn29YeSGmNDUy3NCo6D7r15oov4N+/tR6TB7H+fdPcFdyg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1425b50c-1602-453d-6bfb-08decc43dcff
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:41:37.5710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uUneFuaPvWbpKfuVPyYaxcVeD7WKWd7KBsA3Seq5WxlWzIH6wOI+/W4RuvcKISzrQyZ+duF0QWcZCtOLQRxjuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7103
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A93D6973D0



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 07/16] drm/i915/psr: Add psr2 deep sleep helper API
>=20
> Add intel_psr2_in_deep_sleep() to check whether PSR2 is currently in
> DEEP_SLEEP state. Will be used in subsequent patches.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 21 +++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index b7344f2b865e..932aff386023 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2219,6 +2219,27 @@ static void intel_psr_exit(struct intel_dp
> *intel_dp)
>  	intel_dp->psr.active =3D false;
>  }
>=20
> +bool intel_psr2_in_deep_sleep(struct intel_dp *intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	enum transcoder cpu_transcoder;
> +	bool in_deep_sleep =3D false;
> +	u32 val;
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +
> +	if (!intel_dp->psr.enabled || !intel_dp->psr.sel_update_enabled)
> +		goto out;
> +
> +	cpu_transcoder =3D intel_dp->psr.transcoder;
> +	val =3D intel_de_read(display, EDP_PSR2_STATUS(display,
> cpu_transcoder));
> +	in_deep_sleep =3D (val & EDP_PSR2_STATUS_STATE_MASK) =3D=3D
> +		EDP_PSR2_STATUS_STATE_DEEP_SLEEP;
> +out:
> +	mutex_unlock(&intel_dp->psr.lock);
> +	return in_deep_sleep;
> +}
> +
>  static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp); diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_psr.h
> b/drivers/gpu/drm/i915/display/intel_psr.h
> index 29723e63888f..d545fdaa0de7 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -87,5 +87,6 @@ void intel_psr_compute_config_late(struct intel_dp
> *intel_dp,  int intel_psr_min_guardband(struct intel_crtc_state *crtc_sta=
te);
> bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
> bool intel_psr_pr_async_video_timing_supported(struct intel_dp *intel_dp)=
;
> +bool intel_psr2_in_deep_sleep(struct intel_dp *intel_dp);
>=20
>  #endif /* __INTEL_PSR_H__ */
> --
> 2.43.0

