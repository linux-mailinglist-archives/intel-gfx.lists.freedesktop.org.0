Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZRyjFNsDMWqpaQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:05:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F410868D066
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:05:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FFXeYNWR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F72410E8A4;
	Tue, 16 Jun 2026 08:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4748E10E88E;
 Tue, 16 Jun 2026 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781597139; x=1813133139;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2/egnQHcdxVt4Mt7B92ivjGK6AbR5m5rlwDVpV4Fsuc=;
 b=FFXeYNWRIts2z+NoQTWcAwc0tmAQiiejX1W/t3nL4srr/WYxtSvxcmY2
 m7lqvk/xQVGNDBkRnhuqKsd8bOtxgy/LHhVPgEW0+Jzfb7lL9TydDhM7l
 cckzXp+072KxYqPXLvG19VJd3oNzl3OZoVpBc8VM180YrUso0v7dGZ3rI
 8Hn+mtA11BEiDRb3ZOA8dhbpq0GBC0wOF6Pf4zSEHG/ku80sqWS8OTeLh
 hjl5DR34IZ5pbELQrbUz5imRntSM9U5lwKHQxah4Cc0fIBf7ebpsq2ykw
 6FU+xslOdIbZ2HbC4BLB3n8XArgrR5RLS1tkWcStOodSJ6LXMXnyZ0ZiH A==;
X-CSE-ConnectionGUID: I9XslXCCSieXxTYmsmSj5Q==
X-CSE-MsgGUID: bOYPLRR7QpOw5k1QMchT+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93026535"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93026535"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:05:39 -0700
X-CSE-ConnectionGUID: tIDJ2g86TBq8OEMuoO5GmQ==
X-CSE-MsgGUID: ZkDc3QVmRZ+zd5qSHLww5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="251618015"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:05:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:05:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 01:05:38 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:05:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kVFPK3FHZG8ggxabQVg+XaT0HX79FpDbZ7xnU1WZrcdytEYuumPcq3GZRI11QMeOuyftZQujwwV7QI/scEUxUN+h+WckXiMo2iMXQkyYqpgMgosys4fBmShZYYa95/2TZF2zZdUM1CMo+1CM75VzyaswKPHqARVpW8yf7uSLlLkJWIPaWfCGgM3ngNUmeTh6gBAnHrm1d2g0Mf38B5xevLXWyu8KwhzohO7tyeoY/VWcI7YtKofYfIQzTEI9BFE2xFkI8F6Zz3+ETEZoL8PHYfEsIYBnZAoQXqXStYyOaFrtpzxyGRdd4cDgiMHYMNaGwB9rKHw9ylQZ9yQ12Zio7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAuRZ523CSu+twJFLeRf7z7nY8MdyQtRRTROaoAIGgM=;
 b=Bj8sIO0CWQHLdlQzaZC1zhWmDUrWDNqkjrnTdZiLgChE7fQAL0J8N91+ezuqWC1JdRBJjGqZZ82LllufplwU4X7vSdKoRz4x33l/6hWjBblKOlKAndkwv8Urh652SsCnDQPpdvzmJDRhk8T7YlTdhzGEVnxW9mz4dm6kO1bGo9v1EQ4CNuLH9nFsYn8JOnqcwH84gEMT0smO6FCLUy76K/7f0CZX/ctyYCm+dNaRTaxhp/3EdSRy5arBRuObgSjDcFjuj4NO4rqJOv/hRO+Trj+vKAdmGNPjQ9utnPQUg+c7C+0UZs2t6QNo1k17rz+zLbFXD0JJM4VSpxqZn2WPEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS6PR11MB9919.namprd11.prod.outlook.com (2603:10b6:8:464::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:05:36 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%2]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:05:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/drrs: Synchronize drrs activate with debugfs
Thread-Topic: [PATCH] drm/i915/drrs: Synchronize drrs activate with debugfs
Thread-Index: AQHc8dUnBv4DB3stOUasJOT+MvRGZrZA6gKw
Date: Tue, 16 Jun 2026 08:05:36 +0000
Message-ID: <IA0PR11MB73078D7B4B2421E9237DB3E1BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260601144255.1481931-1-arun.r.murthy@intel.com>
In-Reply-To: <20260601144255.1481931-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS6PR11MB9919:EE_
x-ms-office365-filtering-correlation-id: 536ed89c-ffc2-4baa-4f77-08decb7e0c21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|3023799007|22082099003|18002099003|56012099006|11063799006|38070700021;
x-microsoft-antispam-message-info: 156r1Fmnf1roGT7P3FaMBuRXzFnkMLrTJq5qr8WyLf/fFKG+2HebXWc854vIMLgV7uHsJxr2dfE1cgnD+6Gd+lPpuw+8N+qfM3j7QsqQpklJmVUcrGgYaijEtHEOOY56FYpr1zjrigY89Em72BDKyxyNjTiE1cUgW+PmFew//ZslnAxF8JgSijmMDNUDIYPvvxLsvvqjPa39EhHLfW7v6aCjyn623hKBpTxLQ9eV7PMjIlOtwMe7S/bs5mG/aEXF/Gggf0FVNP5x1ChjGNUVgnj4TNVy6qAc0Fe3Eu+49/n1zzOBjqMnGTIJS7ixr72t5WBM6QKgqpYlDD9RnLiKvaEhTlUbJz9QludNu5K6RrmFQGoETXSPWix3aZvVY6VypJQvAP2Ksqc2SnF2DgU5jtqw1rNoqr7LaK78zsJGc1rb8ojGTw5Tc0wFLSLBJCRmouVI6LiImq3CcnAvejDIaKfh5gGSZmZ/v/1ie2w75ATVQ8IauB8fFyA48yrROXHwJKp6AiIwUQw0sSH2D/UCtzXvEf0DmJJAtuhIgdZQMkYXgoJz39gRHLE7vAlliCrmvnKoA0zXWzNe5WxtKklbaf51xB3e3DosXP4s66Wy8jrfpd+PsQfevB/BTRDTqw6xHWhvsTtz9zKj6gxTv6fZhXaF5Kl8nDzZQ04MdoIdag09MoNLAVfNDy2jf27zLb6th697y1gN5L9qCaQwuqGn19DO7cECkD4m8wjGfvVK3V9bQ+XF9jPBG3CDbyqt+3yI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(3023799007)(22082099003)(18002099003)(56012099006)(11063799006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SlTafs8CRHsMFgyCkv6g4YZj0rLMAcRpiUChOobn2Ve8o4QKfPcT0qKO2HE6?=
 =?us-ascii?Q?Ur2dgT/fYaNenr+1b2iTbFoqY4L16j1gvfouM62Fo/ZTV5/eJXiUHvVjMjCv?=
 =?us-ascii?Q?rR4RpmeOgNUiK5B+ZdrGmG/oCHPpKrFrgztWp40/ihjGqVLMZ+KJPeNVedIX?=
 =?us-ascii?Q?5H+ZtcVycQzzh7WKOoO2ERUvMtkVU3k8RONMhxrJwjjGe8xq91gHWRJSbM7N?=
 =?us-ascii?Q?ByQFoORyGuWxMCtVxs4fxIJFh83WNt3qpiNrnY1y1qKASP9yl70hB5ogZVgu?=
 =?us-ascii?Q?8FnzUclQwhrd4gh1H2pt4gXAhHDMffBDlKtTROirZdI24U/Rry6yvvbreKKF?=
 =?us-ascii?Q?1turAXIxH12pI11XtJBCWqaTIcSLYMWOQsuHndXSEOKXt3mdZI/u9/8xYxwY?=
 =?us-ascii?Q?K9wdSgvLsunaXw2J+Kazk+v7rV57vYhSFi2Z350BYVg9RmJDvm9BQv/W3cST?=
 =?us-ascii?Q?4KOVwqjD8G9Ufx5av+R0KRiXuG50F454oZI1yoxsFuI87/RgWLcOGlccnDLO?=
 =?us-ascii?Q?X9NwONh4de1fimDJAZPQNgOeov1W/GQIwzvysfR96swNX4snbRUbMyKOcRXC?=
 =?us-ascii?Q?Ly78l1etLQQxku0y/f2MtugtOT2JRmg9b5Su4BgW5oOfhKTNf7J9OXFOqyMO?=
 =?us-ascii?Q?blj3U4Nwf3HTn2G2zWcfhoownykE5BiM436GLdZu7+J3ydj+ufVZAag/IRZ1?=
 =?us-ascii?Q?RJyUYtrdOZb5KmAArg9d1ybn9edISdzhAblsC3sIXHi2ZjAriVdfopgBtqWJ?=
 =?us-ascii?Q?ZeuW+lZ+EU1xHsqPUD00z6vu10yz5Sm6YvbawhLSEblNRjfUcol7BkNzS4kE?=
 =?us-ascii?Q?wrnCW5mo7R9MrEjIs/Xb5cXLnA7mk4LxJzN7phhl82mGz/Mif8E+Jy7mznjL?=
 =?us-ascii?Q?h5CLcgh5xzWJhvMjPZMUMDQMnPFSaucsadFkE2qR9c0hcid8xW5sAofPbSDA?=
 =?us-ascii?Q?1YXkqOc88cI/mcTzc3CAdSiZAjKMfiSlPTquAlMNtKWO69+GQpE5tWucqGux?=
 =?us-ascii?Q?xnZwwhgKNulbeHZ14s5Yx760j9+yRs4MK/Pw43XvQO65D4rq01WH4rNTrkER?=
 =?us-ascii?Q?MO3jJzDQiXwJR29xxwynrycRjN+P9YPS/9JQLSYPXC83tOdc0X8m5flTGu5l?=
 =?us-ascii?Q?+YZ6NlS4b3CgeHyKLFrCtjcWyppaA3usefY6T3POqbrb8IJ+H+MkG/ffBq1X?=
 =?us-ascii?Q?qJEOwkGdgva3b1pIkzodCMWhmyEaoMT2ylsJaRpyU1tceXv/UgV3dcqDMMRF?=
 =?us-ascii?Q?bHv+nwY2r6BEs/kfDWLExD3zcBgmZDOCqwZIJP6EzRDJLTB8CR5ErMmNsHsj?=
 =?us-ascii?Q?kUG6JBVfcCxiOv5fCILiTTlO1cnc6DWD7lnG9cLzJYEQSISKMrmMupWeCTpd?=
 =?us-ascii?Q?/Xv4HC//eBngTAgliK/GCARWQDByqKEYiTC9Nm4uv9NNHqNskmsVnu8/dRnt?=
 =?us-ascii?Q?LSdzfAnveCdspBniGGYuGYzGLkZCML2lqZv0JcU5XDeLZt1KblOzj4Go0Ivx?=
 =?us-ascii?Q?RCm4SpyJ7tf4z5YOOq9RhgJG6qAGLY7XNVyWC0StRZO3dO6Lqb5E/EwXEOoA?=
 =?us-ascii?Q?sLx2FNBV/vTJA1KNXmsF12xcteqt2G8uDRmKtOIyneWgOSdIQ7ivMJ6lQ4Ro?=
 =?us-ascii?Q?Yz1VhAN4BOvRRQSFbw4tj/unSfIcB4XRyB5h0jWDG6mjj+YrvosrPgemH91a?=
 =?us-ascii?Q?R7jpAw0nGntT2PrV7FsG+8pKuE6JnzgJmO5FM2DmbYiaE/Umo2TuQvLZTZnS?=
 =?us-ascii?Q?qqyL0j1/WQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VX42F3IMRhFjzVSvvxuUXtCKy8LBNzmOMfoNtI7QDlTKgNYuYNpAvsq0/8lS0Kxmky3FJOoRWwO4uEZmMorfqmCvIKPKDB7B66W+46odhsFkMqwjxZxWPr3NWuY0L81WglGVDwFRf1D1f3ZOc41IeKsOe383nfLoiMAVc0Bu2+RtdDYaEuMQ+35xoFGJl4u5/MoLtiZRb2EOiwzfUG4/+ZVD+VQDZ4PU5ly6CCbbQjEeYmgE06Z3WJSC10ms/osQEHTktlh+Lk8QtQLClwBCgjoJX5NxVThISH0MQLpo327QdtubT55AKAFdXSRWL6/85X/LkEZJ0K4fiYl2P6f/Lw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 536ed89c-ffc2-4baa-4f77-08decb7e0c21
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 08:05:36.2566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2m306bxZEL3UgXri3gVXmxG5JW0QgSOzEfZwzuKUjgzYwxkacqn8vdyiRUX4b34sc7pJuFURl7ZzcvJY9eI4kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS6PR11MB9919
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RBL_SEM_FAIL(0.00)[131.252.210.177:query timed out];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[IA0PR11MB7307.namprd11.prod.outlook.com:query timed out,intel.com:query timed out,lists.freedesktop.org:query timed out];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[lists.freedesktop.org:query timed out,IA0PR11MB7307.namprd11.prod.outlook.com:query timed out,intel.com:query timed out];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F410868D066

Any comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, June 1, 2026 8:13 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH] drm/i915/drrs: Synchronize drrs activate with debugfs
>=20
> Honor the drrs deactivate coming from debugfs and keep it disabled until =
the
> same is enabled from the user.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_drrs.c          | 10 ++++++++++
>  2 files changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 84bd0d993197..709595bde8d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1537,6 +1537,8 @@ struct intel_crtc {
>  		unsigned int busy_frontbuffer_bits;
>  		enum transcoder cpu_transcoder;
>  		struct intel_link_m_n m_n, m2_n2;
> +		/* Runtime override; set to keep DRRS off across commits. */
> +		bool force_disabled;
>  	} drrs;
>=20
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
> b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 0fdb32ef241c..6bebb04034e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -165,6 +165,12 @@ void intel_drrs_activate(const struct intel_crtc_sta=
te
> *crtc_state)
>=20
>  	mutex_lock(&crtc->drrs.mutex);
>=20
> +	/* don't re-arm DRRS if forcefully disabled by debugfs */
> +	if (crtc->drrs.force_disabled) {
> +		mutex_unlock(&crtc->drrs.mutex);
> +		return;
> +	}
> +
>  	crtc->drrs.cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	crtc->drrs.m_n =3D crtc_state->dp_m_n;
>  	crtc->drrs.m2_n2 =3D crtc_state->dp_m2_n2; @@ -376,6 +382,10 @@
> static int intel_drrs_debugfs_ctl_set(void *data, u64 val)
>=20
>  	drm_dbg_kms(display->drm, "Manually %sactivating DRRS\n", val ? "" :
> "de");
>=20
> +	mutex_lock(&crtc->drrs.mutex);
> +	crtc->drrs.force_disabled =3D !val;
> +	mutex_unlock(&crtc->drrs.mutex);
> +
>  	if (val)
>  		intel_drrs_activate(crtc_state);
>  	else
> --
> 2.25.1

