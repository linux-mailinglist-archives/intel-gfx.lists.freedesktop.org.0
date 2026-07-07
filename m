Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0sdXH8ObTGr8mwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 08:25:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AC5717EC1
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 08:25:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mm1DLBGB;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E748A10E441;
	Tue,  7 Jul 2026 06:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E942310E440;
 Tue,  7 Jul 2026 06:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783405502; x=1814941502;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pzNwW9SFdHcAij317FowlJlaO7nK4YB1YTAIt+mwJSE=;
 b=mm1DLBGB9wx5ZbHenGQbTRE4uPHRVPRvYv01S9eNFj2ljfHFuO9gHOR8
 aB2r1T6W+I94DNs6QGIEqeAwcpvLDg3767Pyw6osA983A3el7A1PdB107
 Wo1CfC6N/BjMcfbKeR8jhYVZBQLBPHfe2/Dq6fm4E4BcrUOjHQZq7u8Xm
 cDIRGw9XJlHLZD0zyUupZtK+95oH2q6IZQLYTso6xaTzYMCvnmVZFi/T8
 ZPZR1InS/Uxgde1djZ/j4IpYQdcxMXUAA7SxByhiKQpfkjUL9z26m5+Lp
 Gk1U8d3aU+9X2PpgS3Jrt45RDluZLNQBHgWDGYqbMYbP6IzdVnN7PyToe A==;
X-CSE-ConnectionGUID: 495TtqfBTEOqI9CT0BghQg==
X-CSE-MsgGUID: K+JpeQb6TIa/vJCNdjUrEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83908232"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83908232"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 23:24:57 -0700
X-CSE-ConnectionGUID: PlRlFZ7/RVS23N/Id/wMnA==
X-CSE-MsgGUID: MmzLH8aoRtiYIivmQ3xGUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="254560447"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 23:24:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 23:24:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 23:24:49 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 23:24:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cwv1gI7lO9Tkxlcl1WHJ6GYJme8mntBNQysz0G17ZDIeFcf1GxHFK4RdJpTOyv/cgt7pRniyQ8NkfPyTUkh6m5NQzN+a/JdkNZgyyPdIKwT9OveZs3DCzGhJG58P4kSCRo/QUN9KlOn2Pc7atKKzlHZ/+GGsVZP7+7t9ywclawA/iTuWl/dO6/UZFgmhFsxzTbI3l7J10vvpjOFMSU58jkGZEBiavEZTpTnFh6eaWFClb/pIT7IPv3UwVB6ac2PAFJk5AjNKerz9bl094vnnas9C494znjDUhbOH5EYAihaLYF+HXzRyzhBEMqXfSfMo41eS9hspz5KImiE4ZGNbrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heiVDCTmsMv1INS1FIKWLFr5Jtr0wvTjrwPQnwHu8tQ=;
 b=m5Inc0dW7lfq0fiXRnY4jZOJNB7SqcFbfsZLeBdG5c+pO/swRM4qK7W/pEORr5M57APvWsqc4eELHVPDPyBDRagBTVDcZjVi305g/q9brGKq6OkX3RxhiJ9yznAIPGGbneKdgSZTgNaWwZmJ2UbBXB/GqQB0gZ1eOxH6RrUei2lDtp+nkV5duZSAwslqMk2AKtXXPbampmC5s68cgHK8ND9HW6VjDmvszM+d5g/pYJBzoUmElB/8lKHuXZAQikz7Dj95c9HhywyRwK21vs6NUiLgbDNqbvoNg/0qJ39g0xkx2/mfEohY/2MwbMLRraDmfKG/t/3LNIC9QDPIILxSTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by LV3PR11MB8553.namprd11.prod.outlook.com
 (2603:10b6:408:1b8::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 7 Jul
 2026 06:24:47 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Tue, 7 Jul 2026
 06:24:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Vehmanen, Kai" <kai.vehmanen@intel.com>, "Nautiyal, 
 Ankit K" <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Topic: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Index: AQHdDUxythxTFLvyZkG7WW5Pg9gLtLZhkUYg
Date: Tue, 7 Jul 2026 06:24:46 +0000
Message-ID: <DS4PPFE901A304FAE99DE6DDDDD6F437009E3F02@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260706132527.1687075-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260706132527.1687075-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|LV3PR11MB8553:EE_
x-ms-office365-filtering-correlation-id: 0ae2d6f1-46a0-461f-d0a1-08dedbf07110
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|18002099003|38070700021|22082099003|5023799004|3023799007|11063799006|56012099006;
x-microsoft-antispam-message-info: HToGxo5NqTj72jmgvPWvT9O7Ke+WKWiQnmKrVAWD1kXSRN/hkzYu0HvhGXzBAMFf82hizT9k5FIZGjm86trdaNRN2ncwh2kkrLFNamvkN7F3h138U4d5q8dyk7UiUtNtA/wllJ6XHi/Q3m5pyOqAR/vmIQu8+7iB7ShKWLvaBMeY9ZyRdvTp0DEskEo/lhjZ3ht1IzLcLtw4YbkN142KmwaW+bzLyR9ozZZeu/1FMVBHa5n/KxOpnJUKfjjVX3TpavI2PtvB72wOeHPSCYJ0Lk0Jw0ezyRho+M4qlc68IFGTdJtSf/1VYop1A14s/dzpio98lC9v3j32iv+sKt4doFMjfNS+1cVF/PlBuE9uBxh6XKL44lYBSGxMiWSpWf1T4llwYeHC9mHtEvgKa+u0wDXCDGx+8ABjUOobaLCZchUJs1GJmBdhQomB0iGM/2QdF28HMs260kXQSc7DCspWpNQBLQYWfiy7H0mvjt9vC4NJ7ww1iq3+XBpvzvAhsv+zhe9JukUOlh0idKsxqmWfi6AQDrNi/tIMM4ImtTyKDol03irgC7mL94/3ZWrSU4VQB7B6ryPHklNTe0WQQW2YiSPU7JDUS0BzGqRNQJNkoyldK2xWWBkMTIegWBiaxU7n9kwCTTOsomRl3x6hNSbovDq6sJ/HsjTQd7duHCFazo2qgO3+13yv0Psk5FexfVPSHmqlv424nAdhjR+GFKUoRU9R9tjnAyt9BbzlM2swVIM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(18002099003)(38070700021)(22082099003)(5023799004)(3023799007)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?159uFutrJeueDiYEnKChDXIevwxgoZBGDRKkZdqRjA/nbWtTBrhITOIpAJz+?=
 =?us-ascii?Q?QmalUc6Xw/CAuJi8jWRjZWZo9/SIeVvhDzatg6w5pwOAvCjJA26PGZk8D6V+?=
 =?us-ascii?Q?80r5ZVE7HpGyomO2/+BL/jKaZCXAeBdPn5E1LVgFTWT6xq4YFJ6PuHSiwwrL?=
 =?us-ascii?Q?JDYYIJUEwlLOvjRVzokeQgrITo0ffgfaSGEth8C89K4BRtkco89/vC2ocwO3?=
 =?us-ascii?Q?e3zQFXxCArmpc2OEOIJmRBLLTieUTMbJF8i8EqUXZMxEFNNfOR+DIKnecjUu?=
 =?us-ascii?Q?0lBvsbWleVJe3MaxulnU4Q1FU6z7xsQpGCGuunPFMlbaCzuPnKvNLy0PNekK?=
 =?us-ascii?Q?B0TD3LPqHT8OeIZA6eI6jVXfcFsNNP0RcNkbM6MqkdRbQYT7ioWDAzqjXLwf?=
 =?us-ascii?Q?CkkIxd2kmWJOkwsjPODcQtutsiIXRST27j5g6gP4L+XGSdjDwBRYyD+NOd0q?=
 =?us-ascii?Q?zPTRyGzu9F50dHRiZ/qLS0hdw8RQKZF2gQy9M0BA9oIIBBn6FJpIVd9WowLz?=
 =?us-ascii?Q?LC6wEWQWNOThE7/SbFIFji5oZQS9hWR462LwF4oSq2sljBKmCZWK2VscqfF7?=
 =?us-ascii?Q?EsDM9ylKh8F1cf2U+6TNy6j7+V4qXspXa2huRcYIjvOOn0Uc9GjRF/W7UMAo?=
 =?us-ascii?Q?YRF9vMr0lJeXOBNRTAB6zbOxgTwydJMNy2qrm+dMmoMkMm+be6s6kVNmBJD8?=
 =?us-ascii?Q?GzHCEo3ikkBOU+Zmoa8eM1/r2gS0Rj8MeQZfslDN2FRGeAkxa+gVbfU0i7Yt?=
 =?us-ascii?Q?zd7WzSCX2FaMthYY3rj+2+Mc6WLzAkmdD+A2a4roCgOyNdm7sdmi19kK43Ni?=
 =?us-ascii?Q?07lrG/U0Cs0XLolVZbj0t4CCSqTs6SX1POycAL0p8/B7gJrbBax3PWawZ2Ip?=
 =?us-ascii?Q?dKqiiw5LCNS8M1JdV71dac1bs40exQfXeImmJ8NZTCMxC7Wso9nbt1HA1qDr?=
 =?us-ascii?Q?/wyP23JX2p++0t76oVF5W1N5enksiCl6P9D3/uJwc7y5xVpGvMVgIXrOLcRe?=
 =?us-ascii?Q?/0hybrq9eRIunUeOn/tKY+DkXbEsaHdAXvgSgS3FL4uggArFUrAFhr+h2mXl?=
 =?us-ascii?Q?lJyIi9VjQPL45n//fVvLa6SGGmg1/fquwNtTYngrwiZwn2HdQST7ZHvaePuG?=
 =?us-ascii?Q?oo9mtHEWdIY0+N4I9IOihquvUCgWIE83jJrM/Ee+aa9hmcfNXKff7ZMNwDsD?=
 =?us-ascii?Q?14npPX1Bgz3Nj4byCipcmNjIPp3/RwLp0YWM8kTkbLsBpCX9FQI5C+osZYES?=
 =?us-ascii?Q?tsB/xpAXI4FqHZlN37BdNu3suDAaMZXJkXEOxezwDDnEzv5dfMa+ZgQtAo4e?=
 =?us-ascii?Q?l8spu6IFOtMOpGSX8jiHOYu8qJqhZzCV3hdjC6Lm0Mu8csrNSEDb1cbyKjAK?=
 =?us-ascii?Q?21c8IZjnjLwATOsfENVWSiT/MYaSECtveqqAOBGj0dnLdq2959L7MG55eKyg?=
 =?us-ascii?Q?TUpmQST13R3IuwS7D10JBpIbYtinw/AkAtbietP9BpKKCqnSz3f/OZWu0yyu?=
 =?us-ascii?Q?F7psK6RjQ0L2OTJZ+AquiQrE8asWWwvF9wdgxP87PbsdPP3/QYe2oIzPcoul?=
 =?us-ascii?Q?kWmQ0N596FLZVW/OkXQTKzNFuw8Le6H2UvBeu6Fv2OYuNqPjAO6spdsfLjP4?=
 =?us-ascii?Q?IPflgrxG/kt99CwZpXCWpxo/3sIkCcCMuMr87H2Dw/YT09b84MCA2ZLAT3bl?=
 =?us-ascii?Q?dsqhD38sg4zukc+kzWYPVbaQuOjDqFS/kSEv5HNSGtTIWZL2DZgtEIM/tJ2R?=
 =?us-ascii?Q?9azXA0uxUA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JHFCLJSaR69GBIbKIhWehp6kU9RbAt0RCfN5pOMoPRwHPSlA1XCmtPN3PYfkF8k86iYNym5YSJOGIQc1JbNc/3qFr9YPvtbxFOUMbfIBwZe+GcR3p6JdNUjC3K/nid9syhm4EY90Sg5TdivrmwLiNrhtj9FM0UE7tlz+j12qVvh44tGenfBGHJv2wQ4x5xGVYv4VoyhOZ7KLKIsVAnKProYRxiRtPcWcp3kwrpLJTr3j6SbhiPZPjCAUAk1hmCmkQjYmOJrTbFxMJ3ID1ecmv7+H+b8EZNWljWqrRw7GdZt/B5h4EhVcJRszlBf/dEp15y3kzB5sLNabNw2U17UOGA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae2d6f1-46a0-461f-d0a1-08dedbf07110
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 06:24:46.8277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2w3Rauvl92dFATqV03D8auZJ1e+8V/7mR3kcGHopLjfIgfTAcVzoRiWHaXob2d2xbvPrUf2NhzOAj9g5727/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8553
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 71AC5717EC1

> Subject: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for
> cpu_transcoder signalling
>=20

Hi Mitul,

Thanks for the patch. The fix is in correct direction but=20
I think both the commit message and the code need rework before this can go=
 in.

> UHBR SST uses the same 128b/132b transport as DP MST, so its audio also l=
ives
> on a meaningful cpu_transcoder (>=3D 0), not the -1 used for legacy SST. =
Treating
> it as Non-MST made pin_eld_notify() signal -1 and made
> find_audio_state() skip the per-transcoder entry, so after suspend/resume=
 or
> replug the ELD lookup failed and audio went silent.
>=20
> Detect UHBR SST alongside DP MST when deciding how to address audio state=
,
> in both the pin_eld_notify() signalling and the find_audio_state() lookup=
 paths.
>=20
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 67 ++++++++++++++++++----
>  1 file changed, 55 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 9729f1837d2c..4586bf981255 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -37,6 +37,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_display_wa.h"
>  #include "intel_lpe_audio.h"
>=20
> @@ -696,6 +697,42 @@ static void ibx_audio_codec_enable(struct
> intel_encoder *encoder,
>  	mutex_unlock(&display->audio.mutex);
>  }
>=20
> +/*
> + * 128b/132b transport is used for both DP MST and UHBR SST. As far as
> +audio
> + * is concerned the hardware behaves identically in both cases: the
> +port can
> + * carry multiple streams and the cpu_transcoder is a meaningful (>=3D 0=
,
> + * possibly > 0) identifier of the audio stream on that port. Legacy
> +8b/10b
> + * SST instead carries a single stream per port, for which the audio
> +drivers
> + * expect the cpu_transcoder to be signalled as -1.
> + */


DP MST and 128b/132b are independent:

MST is a topology feature - multi-stream via MTPs / payload IDs. It runs ov=
er 8b/10b at HBR/HBR2/HBR3 and has done so on virtually every MST hub shipp=
ed to date.
128b/132b (UHBR) is a link-coding feature from DP 2.0/2.1 and can carry eit=
her SST or MST.
They only overlap at UHBR MST. The commit message along with comment mentio=
ned here fold them into same  thing, which will confuse the next reader who=
 touches this code.
Also, the comment says the criterion is "128b/132b" but the code is
"MST OR UHBR" (MST-over-HBR3 returns true here). Pick one - I think
"MST OR UHBR" is what you actually want, so please fix the comment.

> +static bool intel_audio_has_mst_transcoder(const struct
> +intel_crtc_state *crtc_state) {

name is misleading. UHBR SST is
single-stream by definition - calling its transcoder an "MST
transcoder" bakes a false concept into the code. Please rename
maybe intel_audio_needs_cpu_transcoder_id().

> +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> +	       intel_dp_is_uhbr(crtc_state);
> +}
> +
> +/*
> + * Same as intel_audio_has_mst_transcoder(), but derived from a stored
> +encoder
> + * for which only the (legacy) crtc pointer is available. DP MST is
> +detected
> + * from the encoder type without dereferencing the crtc, so that the
> +MST path
> + * keeps working exactly as before; UHBR SST is detected from the
> +active crtc
> + * state of the port encoder.
> + */
> +static bool intel_audio_encoder_has_mst_transcoder(struct intel_encoder
> +*encoder) {
> +	struct intel_crtc *crtc;
> +
> +	if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +		return true;
> +
> +	if (!encoder->base.crtc)
> +		return false;
> +
> +	crtc =3D to_intel_crtc(encoder->base.crtc);
> +
> +	return intel_dp_is_uhbr(crtc->config); }
> +

This is unsafe. It's called from find_audio_state(), which runs from
the audio-component path under display->audio.mutex only, but
encoder->base.crtc and crtc->config must be accessed under drm_modeset
locks. That's exactly why display->audio.state[cpu_transcoder] is
cached in the first place - see intel_acomp_get_config() which
deliberately only touches the cached ELD. It's also racy vs. a
re-modeset flipping the link rate between store and lookup, so the
same entry can be classified UHBR on store and non-UHBR on lookup.

Don't derive this from live state. Store it once at codec_enable time
(where crtc_state is fully locked) on struct intel_audio_state:

struct intel_audio_state {
    struct intel_encoder *encoder;
    u8 eld[MAX_ELD_BYTES];
    bool needs_cpu_transcoder_id;   /* MST, or SST on 128b/132b */
};

set in intel_audio_codec_enable():

audio_state->needs_cpu_transcoder_id =3D
    intel_audio_needs_cpu_transcoder_id(crtc_state);

and then find_audio_state() has no live-state access at all.

>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state) @@
> -769,8 +806,8 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST/HBR cases */
> +		if (!intel_audio_has_mst_transcoder(crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -825,8 +862,8 @@ void
> intel_audio_codec_disable(struct intel_encoder *encoder,
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(old_crtc_state,
> INTEL_OUTPUT_DP_MST))
> +		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST/HBR cases */
> +		if (!intel_audio_has_mst_transcoder(old_crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,

Please drop this hunk (and the symmetric one in codec_disable). Boot
already works with notify =3D -1 for UHBR SST, so the notify code
doesn't need to change to fix the reported bug - only the lookup does.
Doing both at once is a wider change than needed and blurs what's
being fixed.

>  						      (int)port,
> (int)cpu_transcoder); @@ -1119,17 +1156,23 @@ static int
> intel_audio_component_get_cdclk_freq(struct device *kdev)
>=20
>  /*
>   * get the intel audio state according to the parameter port and
> cpu_transcoder
> - * MST & (cpu_transcoder >=3D 0): return the
> audio.state[cpu_transcoder].encoder],
> + *
> + * A "MST transcoder" below means 128b/132b transport, i.e. either DP
> + MST or
> + * UHBR SST, both of which use a meaningful (>=3D 0) cpu_transcoder to
> + identify
> + * the audio stream on a port (see intel_audio_has_mst_transcoder()):
> + *
> + * MST transcoder & (cpu_transcoder >=3D 0): return the
> + audio.state[cpu_transcoder],
>   *   when port is matched
> - * MST & (cpu_transcoder < 0): this is invalid
> - * Non-MST & (cpu_transcoder >=3D 0): only cpu_transcoder =3D 0 (the fir=
st device
> entry)
> - *   will get the right intel_encoder with port matched
> - * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port
> matched
> + * MST transcoder & (cpu_transcoder < 0): this is invalid
> + * Non-MST transcoder & (cpu_transcoder >=3D 0): only cpu_transcoder =3D=
 0 (the
> first
> + *   device entry) will get the right intel_encoder with port matched
> + * Non-MST transcoder & (cpu_transcoder < 0): get the right intel_encode=
r
> with
> + *   port matched
>   */
>  static struct intel_audio_state *find_audio_state(struct intel_display *=
display,
>  						  int port, int cpu_transcoder)
>  {
> -	/* MST */
> +	/* MST or UHBR SST */
>  	if (cpu_transcoder >=3D 0) {
>  		struct intel_audio_state *audio_state;
>  		struct intel_encoder *encoder;
> @@ -1142,7 +1185,7 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +		    intel_audio_encoder_has_mst_transcoder(encoder))
>  			return audio_state;

With the stored flag suggested above, this becomes:
if (encoder && encoder->port =3D=3D port &&
    audio_state->needs_cpu_transcoder_id)
    return audio_state;


>  	}
>=20
> @@ -1158,7 +1201,7 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type !=3D INTEL_OUTPUT_DP_MST)
> +		    !intel_audio_encoder_has_mst_transcoder(encoder))

With the stored flag suggested above, this becomes:
if (encoder && encoder->port =3D=3D port &&
    !audio_state->needs_cpu_transcoder_id)
    return audio_state;

>  			return audio_state;
>  	}

According to me this fix can be made smaller like this,

struct intel_audio_state {
    struct intel_encoder *encoder;
    u8 eld[MAX_ELD_BYTES];
    bool needs_cpu_transcoder_id;   /* MST, or SST on 128b/132b */
};

In intel_audio_codec_enable():
audio_state->encoder =3D encoder;
audio_state->needs_cpu_transcoder_id =3D
    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
    intel_dp_is_uhbr(crtc_state);
memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));

In find_audio_state(), We can do this instead od the DP_MST checks:
if (cpu_transcoder >=3D 0) {
    ...
    if (encoder && encoder->port =3D=3D port &&
        audio_state->needs_cpu_transcoder_id)
        return audio_state;
}
...
/* cpu_transcoder < 0 loop */
if (encoder && encoder->port =3D=3D port &&
    !audio_state->needs_cpu_transcoder_id)
    return audio_state;

Regards,
Suraj Kandpal

>=20
> --
> 2.48.1

