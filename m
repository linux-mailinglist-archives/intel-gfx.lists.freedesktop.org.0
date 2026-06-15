Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Er6qHZoIMGq7MAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 16:13:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCA6686FDC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 16:13:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hGv4OmWa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9EB10E45E;
	Mon, 15 Jun 2026 14:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEF410E45E;
 Mon, 15 Jun 2026 14:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781532823; x=1813068823;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZieU4WARVsuEb5Q6r11Nn3yg2GLy06mTdtcmWvVqJDo=;
 b=hGv4OmWaRG9SZwSTOyxbQkyzUzKV7rO/Ms9L9SY1ZReFmCm2rMOV9jMI
 sr4T3cnfUmlUyu2BSS6z/7eI5LuQ3a7qPZuB2QMOzQWW0ySOQS18VGouR
 NNWULHnPso6RT+E5h25xca3V/AlC7vMlsAdTZYsQbu0jzF72npCzVFeNq
 5Bsxj2e7u1QhgHpXq/b7s2Txc6TaRHC5XnKACgo4rQJfXyDvp0KBAFSBx
 xPXJGL1OK+ADYBYx5eQGBtmlRyP414OPueJ+TcI31u7lTcROfnGP3wBS4
 rxbP8dPDcvve3w9BjX8S7VvZZ49IlD05f+8OU463qt88OzbijydY7uIaK g==;
X-CSE-ConnectionGUID: CdZtfMBzSHy5BIOAUctXQg==
X-CSE-MsgGUID: qxOAu2WCTGClBsFVqDRWDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82336346"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82336346"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 07:13:42 -0700
X-CSE-ConnectionGUID: 2AkmeyNBT76uum6dOuz/xA==
X-CSE-MsgGUID: i8n90cfeRpaPtcsEgSY4sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271563415"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 07:13:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 07:13:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 07:13:42 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 07:13:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wi6+MdVA8bNl/MIFTLPnYOR+FvUoQV5x++X81RWDAMJhVlIIWyAO4Xzy6ECgnHcwxTQaYrTIK8BKvoFOf68aCUpyV3J+lMEcyaXl+GXYXrP5VNJ6lx6liXb7KzdQ8xvzhReqGUZaojC+BcoMx965y5mt6BdZODWINqvnInAcVqcVD+Yn1jwdsjS1EIYUhYyu8GyNROsQSw8f6zEDa3y6I0tiS48UJhqiTIt38wzXi2anQFMlxKLmYiXdV1Z8xf2b8QDyFC4dDZji7ocMc83M33SsrQmpx3RiJj36i9LCCDEO5xwaNyQjXPyAypgShUGbdhrXUWCaD7/tw+hCF2/2mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Py77gawfQLHfdpPgwzjw4RJK0jt0l/3wLha0/FOjP60=;
 b=IUnhYch+8l8NozRAXVZAx1tiTk5e57RKCBqLTCThcftnMB5A7jWdEuDJ8sk/E+J7ECiSKwzzPa5N85KPrdGz0jK1j0mzKIQP7Jj+5VbTmJcDLB9pA95pMgtTXFCupaGklwgi5GGy+jObwLdPMK1xkJ8euY5+unWHPjMyY1mZwG+gLKzbmMNVvsC7lDZqh2SGJEBsXW66w3DELfD2Ctb3uH2K5ZhF5hHNBFlINWA9nEI+T5uvuVcEvR8SyaikfiLalitos+mPn7RKGM6tMKpw4fEcuYtuCcR9kqyR/jpw+gDbuJQ+xMchreHQz0/IpqOxqXnG39oW7ilJnrKB6JC39w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DM3PR11MB8669.namprd11.prod.outlook.com (2603:10b6:0:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 14:13:39 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 14:13:38 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, Vidya Srinivas
 <vidya.srinivas@intel.corp-partner.google.com>, "Lin, Charlton"
 <charlton.lin@intel.com>
Subject: RE: [PATCH] [RFC] drm/i915/display: Fix PPC-granularity and limit 2nd
 scaler to 1:1
Thread-Topic: [PATCH] [RFC] drm/i915/display: Fix PPC-granularity and limit
 2nd scaler to 1:1
Thread-Index: AQHc91DGTnzM6EoiJ02g2a4BEviT/7Y/qWMAgAAJmrA=
Date: Mon, 15 Jun 2026 14:13:38 +0000
Message-ID: <PH7PR11MB8252A98BA1CC0FFEE69F24D189E62@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260608140510.629170-1-vidya.srinivas@intel.com>
 <3150787bd3916f3a2a51ee222248d0e81ee4d996@intel.com>
In-Reply-To: <3150787bd3916f3a2a51ee222248d0e81ee4d996@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DM3PR11MB8669:EE_
x-ms-office365-filtering-correlation-id: e2eca3d1-5c0d-4808-3e70-08decae84bdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|10070799003|56012099006|11063799006|4143699003|6133799003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: JAxXNDeezExA77roocNQ2NB5g4dJhMmeTSgt75qXXfhilhCYsTeciILB8kwRcg3Mx/OelaKKpoFSljC75mVvxWqrLY2V+Tendq1w7I7SQBoq6wjt3ulCAgjYeqJfhfoxykTb8/A+lpRo9uxHUcOMA7+QSFUFabDp7zuE5QmxsWoXwjtpNkPaQpwNyif1um72/XKKdILys4f7f/P9VvH8ZsrgjCJG6It086FMERD25vXq82JjWherOcBh+X3C5IV1aqe//2VVyWfPyzQEp8kVvNAxGsktMgw2s1E4vXRaErYJGoK7f2NA8BGDweHKLDjY1RHIKY56G5hgVtDkJoKVqCjUoKDgp9EK5EMD6SgehdiRnEKwgnS5TqyJiUrKPQ/Ht1Zf5k0tnJERC4POClb4VcfVV+l9V+wyw3rtS7XM9dD7qlR3aGxOQBL6VelOV+MXMdBFjtxFxJZcc9JoMH+3ThtzDNNClUO7qfZIbM2R/PATJQx2SXycZ9PHrPJW2R6aFYLBiJYdahfEjavyZAXpwcGcrOjU8aWtwimr6mC3Bz9Es1xsbjj0WHVPxe1luCggewLzgOvZUuQyxhg0l0ue7zhlwEKLsr7/05LuzJZkhOgS0/a+uqQsndXuf6n6Jcac0PuQHFNJK6bFrrg9k3XeMjB1WoFaEz2YUV7iX4CJ8/EDpw+ZxNFA6UfJYmwpo/UWca7tKiWVjxLeh7mLqs2ydD6kHdNDtm9PEFxZacVNTcVJIgwOi090etjdAAJiG181
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(10070799003)(56012099006)(11063799006)(4143699003)(6133799003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LfX3UMfbkZ5ce4Xf3xybDME6LTXXOW/Tt3/St9ndrGFd9WuKEkXTQwwyWo5t?=
 =?us-ascii?Q?Ee08C4yWkXYC/3SckiQux2YJsvLf4zBsGFsjFDYuj074EbhD++WeaC2j8mIQ?=
 =?us-ascii?Q?kQ975MBi33tDMAzvz88aICBl/sxxduS8Oy+ilyiJ7bFr10qvIH3tLzst15qF?=
 =?us-ascii?Q?c1Uicfto2/epPs+RXikENbLUf8isjq+dhbgQPYJ6fGhMHNXoNwGzUJPRepMg?=
 =?us-ascii?Q?mtRc8Z74ZzFWd5shRxWmmjGY8KZxJGj5CNrQQxIerQ2R7dTLNdYQf+MyqZ6t?=
 =?us-ascii?Q?m00+A10C7CQBbJiiVz+BFCBfatJNLpeyrDAjkbSBNco7hkqE6FsewsG4CvnU?=
 =?us-ascii?Q?ED0Tg+BQwocjN2aul4AH5JLQBNQx1Zd8Q+xWdVer9fKGyzdfooLqeDbeFvBZ?=
 =?us-ascii?Q?xjLkhUz5K40dwCfvH7n30ozUC+xA6iL+CCCJ8f0oGLNZnR+vdOzlE9w2Y4Ah?=
 =?us-ascii?Q?+Pfmfb5R24fOJakktnpGq/mY22u0wiLhDf6R3vnkgCcuYkY+LNKYLi8VR8L6?=
 =?us-ascii?Q?CaAGxP3xNDoVr6RH959x6wZuUTSdYVvGBd/4AmMthbzI/NoiGC4ghAaATdxT?=
 =?us-ascii?Q?VWx5zmg+EArIsq6FouxfqD00AJPe8LfCbFcFLHih5riVWeOvG6RG0Rgg2D+R?=
 =?us-ascii?Q?BW/to3xvxgRpPyJZUCQ/EeWQT2abu+7oLAq385tNQO4P51DsNcxURqKcDGTB?=
 =?us-ascii?Q?Yl/hQXNBrMIFZdCPZ0eVh2Jg8wjm9UnVOHT0OeldwFfhseUBL168P2LWP5/P?=
 =?us-ascii?Q?HbH1z72CjrApV90dwNQ8dtK643uFr7H8XISb5lJh79g4v7auYxhMqtmLhnGz?=
 =?us-ascii?Q?CIIEcmwhKJZnAoUW5vs241J3IuyA9XqJn7qK4sdbucikdEt/Zk2QR8NjR0Sl?=
 =?us-ascii?Q?kPiSYOisme4j5Fv9ECTYGqOmKonahnBFK1KL2Vn2HTGO512Uq527k6wN0R5t?=
 =?us-ascii?Q?0b62JuNgbJLPhapa1oRVLHv8GH5LqNA7Rtl1JrtaJrGKveRfJhTCvGBKFxyj?=
 =?us-ascii?Q?sjDPxoL4JMBR5tbd4iAsQGvZGbqWEcWqSykGeYKGHufol4791RYMDv+oyH+k?=
 =?us-ascii?Q?r1bOwur9bkaWx2BpAf9eIbNWVAvrdkq91D1gnOA0hj/MwfHtbGSEW+R0rMNx?=
 =?us-ascii?Q?X4Uj9WZjoUZwMLT4HBS2cIZb50+TDxQPsdvuJkUEGqSuuaxj7jo2v7L222yQ?=
 =?us-ascii?Q?xKqaySNkOIJxRCeib6pqfQkKTqZ+5fImaZ6QDMJieTBAM7eAEEnEa2ctbYop?=
 =?us-ascii?Q?2dE5R9RKbqt57hAwAbmhJNOafO5J0fJIVS2SKL8grdwSqg7NqlLvX2WhEsBj?=
 =?us-ascii?Q?NjId5VjlLMfk9llFTzzq4dulp2uzKQC8F43kZSMFZMB+vs7AxpnlXGd3SOkE?=
 =?us-ascii?Q?6t2KjISha/WBX8IPwB8i50EB0kbXEcH+zcrVldXTUjO85ZRQx59RbtRGXMfq?=
 =?us-ascii?Q?IIG/JJPHBzz7tTrnzNDWxl22Wv2p+L/5GpGTU2FmPv8yZDTgD1eYpt81XNF0?=
 =?us-ascii?Q?m2RA5ow9yxZTsN60RTvNxJcaGGPB01lfuMxG+CFIVJqYplYytpjYF8w0cr1O?=
 =?us-ascii?Q?4mzC6pLUDCWczlrxM6yuO9KCmT2ZAreQTRjRsQifumx7/9dwNmwAVlWxpY8K?=
 =?us-ascii?Q?D1o7BJ5lw5MXCD3gJR0ukdw8CvG3Nl9imFnUUkWMNkEa+BqZy/FLDoGZklFC?=
 =?us-ascii?Q?bxdeipruTjAN/uhATenoNZoqa2EdFtdeTNkDwY7XM/ckhS2YjRwpbGe52VfK?=
 =?us-ascii?Q?GmHiNttWmB5CGI/7UGS2OvJUdcK6fWvrTBumqckS5ktMuBy78sPAEMTT+fZw?=
x-ms-exchange-antispam-messagedata-1: E/0CGTGtODpmLA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FfE9jEmS/IiO29HlS6o/l60xDg1tsY/dy3gyWV777nEQYI4b1zsKs7r4HvpWTzTBx1D16IEuS4b2v0CO4Ya6HC0EfHoPFH3Te6nPIlYUpwXxPQ8tntl9Dp2nmLWQnM8SxfqlasRnjqw4Wgad7PhUEK3YQuexECyYOKclbKBE7/t01/w8N6TDd9IBRiSlcX2Fcl5hO7/Sn9Mx2EK5JvIVjTezZD+iFnKUX2TVma6O62NSuG2zGQw2S8EvYiNTsPhEiDnjoo4wDYcwuWaNY/LATVu1pXJBtbxxnBStjyAXYzr9d2gHpyy3u6pDFu0OhrjgFf3RjbiqTy99scuMseVhag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2eca3d1-5c0d-4808-3e70-08decae84bdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 14:13:38.6806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qYCZ3NYjS26OJHaK2muc+eJHb9kLokGxwL9tiEAuLkcz0ZtAPFR55yRrt0CJEOMwndXnN84pZbU/1lDeLpiy4hFHFppcoKS/Y5ehCXIw2Tg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8669
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCCA6686FDC



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 15 June 2026 19:07
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedeskt=
op.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Vidya Srinivas <vidya.srinivas@intel.corp-partner.google.com>; Srinivas,
> Vidya <vidya.srinivas@intel.com>; Lin, Charlton <charlton.lin@intel.com>
> Subject: Re: [PATCH] [RFC] drm/i915/display: Fix PPC-granularity and limi=
t 2nd
> scaler to 1:1
>=20
> On Mon, 08 Jun 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > From: Vidya Srinivas <vidya.srinivas@intel.corp-partner.google.com>
> >
> > The existing icl_plane_min_cdclk() uses a simple pixel_rate/PPC
> > calculation that does not account for the pipeline granularity
> > adjustment when horizontal downscaling is active. The effective
> > pixels-per-clock throughput is reduced due to integer pipeline
> > granularity, requiring a higher CDCLK than the current one computes.
> > This causes FIFO underruns on multi-pipe configurations near max CDCLK.
> >
> > Additionally, limit second scaler to 1:1 (no horizontal or vertical
> > downscaling) on DISPLAY_VER > 14
> >
> > Also apply CDCLK PLL disable/enable WA for DISPLAY_VER 30
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Signed-off-by: Charlton Lin <charlton.lin@intel.com>
>=20
> If you're sending a patch from you, why is Charlton's Signed-off-by here?=
 Who
> is the author? Did you inted to add Co-developed-by: Charlton?

Apologies for clubbing two. Charlton identified the scaler. Since it was RF=
C patch we combined
and sent for feedback. Sorry about that. If the patch content is relevant w=
e will split and send it.
Thank you so much.

Regards
Vidya

>=20
> BR,
> Jani.
>=20
>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    |  3 +-
> >  drivers/gpu/drm/i915/display/skl_scaler.c     |  4 +-
> >  .../drm/i915/display/skl_universal_plane.c    | 58 +++++++++++++++++--
> >  3 files changed, 57 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 189ae2d3cfc9..f724227c3726 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2149,7 +2149,8 @@ static bool
> > cdclk_compute_crawl_and_squash_midpoint(struct intel_display *displa
> >
> >  static bool pll_enable_wa_needed(struct intel_display *display)  {
> > -	return (DISPLAY_VERx100(display) =3D=3D 2000 ||
> > +	return (DISPLAY_VERx100(display) =3D=3D 3000 ||
> > +		DISPLAY_VERx100(display) =3D=3D 2000 ||
> >  		DISPLAY_VERx100(display) =3D=3D 1400 ||
> >  		display->platform.dg2) &&
> >  		display->cdclk.hw.vco > 0;
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 7994b983d509..3673b52de4da 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -382,8 +382,10 @@ calculate_max_scale(struct intel_crtc *crtc,
> >
> >  		if (scaler_id =3D=3D 0)
> >  			*max_vscale =3D 0x30000 - 1;
> > -		else
> > +		else {
> > +			*max_hscale =3D 0x10000;
> >  			*max_vscale =3D 0x10000;
> > +		}
> >  	} else if (DISPLAY_VER(display) >=3D 10 || !is_yuv_semiplanar) {
> >  		*max_hscale =3D 0x30000 - 1;
> >  		*max_vscale =3D 0x30000 - 1;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index ad4bfff6903d..c49f330c4878 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -264,12 +264,58 @@ bool icl_is_hdr_plane(struct intel_display
> > *display, enum plane_id plane_id)  }
> >
> >  static int icl_plane_min_cdclk(const struct intel_crtc_state *crtc_sta=
te,
> > -			       const struct intel_plane_state *plane_state)
> > -{
> > -	unsigned int pixel_rate =3D intel_plane_pixel_rate(crtc_state,
> plane_state);
> > -
> > -	/* two pixels per clock */
> > -	return DIV_ROUND_UP(pixel_rate, 2);
> > +                   const struct intel_plane_state *plane_state) {
> > +    struct intel_display *display =3D to_intel_display(crtc_state);
> > +    unsigned int pixel_rate =3D intel_plane_pixel_rate(crtc_state,
> > +plane_state);
> > +
> > +    if (DISPLAY_VER(display) >=3D 30) {
> > +        unsigned int src_w =3D drm_rect_width(&plane_state->uapi.src) =
>> 16;
> > +        unsigned int dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> > +        unsigned int src_h =3D drm_rect_height(&plane_state->uapi.src)=
 >> 16;
> > +        unsigned int dst_h =3D drm_rect_height(&plane_state->uapi.dst)=
;
> > +        const unsigned int ppc =3D 2;
> > +
> > +        /*
> > +         * "Resolution Support" PPC-granularity:
> > +         *   Hscale_PPC =3D (src_w / dst_w) * PPC
> > +         *   int_part =3D floor(Hscale_PPC)
> > +         *   frac =3D Hscale_PPC - int_part
> > +         *   adjusted_frac =3D frac > 0 ? 1/ROUNDUP(1/frac) : 0
> > +         *   H_down =3D int_part/PPC + adjusted_frac
> > +         *   min_cdclk =3D crtc_clock * H_down * V_down / PPC
> > +         */
> > +        if (dst_w && dst_h && src_w > dst_w) {
> > +            unsigned int hscale_ppc =3D src_w * ppc;
> > +            unsigned int int_part =3D hscale_ppc / dst_w;
> > +            unsigned int frac_num =3D hscale_ppc % dst_w;
> > +            unsigned int v_num =3D max(src_h, dst_h);
> > +            u64 num;
> > +
> > +            if (frac_num) {
> > +                unsigned int recip_ceil =3D DIV_ROUND_UP(dst_w, frac_n=
um);
> > +                /* H_down =3D (int_part * recip_ceil + ppc) / (ppc * r=
ecip_ceil) */
> > +                unsigned int h_num =3D int_part * recip_ceil + ppc;
> > +                unsigned int h_den =3D ppc * recip_ceil;
> > +
> > +                num =3D mul_u32_u32(crtc_state->pixel_rate, h_num);
> > +                num *=3D v_num;
> > +                return DIV_ROUND_UP_ULL(num,
> > +                            (u64)h_den * ppc * dst_h);
> > +            }
> > +
> > +            /* frac =3D=3D 0: H_down =3D int_part / ppc exactly */
> > +            num =3D mul_u32_u32(crtc_state->pixel_rate, int_part);
> > +            num *=3D v_num;
> > +            return DIV_ROUND_UP_ULL(num, (u64)ppc * ppc * dst_h);
> > +        }
> > +
> > +        /* No horizontal downscale */
> > +        return DIV_ROUND_UP(pixel_rate, ppc);
> > +    }
> > +
> > +    /* two pixels per clock */
> > +    return DIV_ROUND_UP(pixel_rate, 2);
> >  }
> >
> >  static void
>=20
> --
> Jani Nikula, Intel
