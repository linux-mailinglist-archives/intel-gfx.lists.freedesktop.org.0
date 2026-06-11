Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FgoHGX0GK2oW1gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 21:03:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA303674A8B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 21:03:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="E0/cUBsn";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0859F10F0E3;
	Thu, 11 Jun 2026 19:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A52610F0C1;
 Thu, 11 Jun 2026 19:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781204601; x=1812740601;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cEMaJWPumnnlfdz1RCZ/jGGKKpvsthhmhqMSyAVAklQ=;
 b=E0/cUBsnUCVoK0gjbbFBU/FzCI6jQlY5lcmSyrQzs4d7tvA7L+EDs6T5
 SMyKmjH+oYmjptvCwZHWUgK9OELsOjabOUvxo5zIZydAQVrvMOcRVwAZA
 qWzv/w/XKz4ibWYmh9CEpJoQyC+zYLfgAbtcoeM6ai/b+6CYwc6o2llux
 43cKpjLUG5sJRP3kkR3r71zEFSl8L3k8cI8fQ8ZfQgfia0Jo00MsFLPdp
 vbiO1COv4YapXiaF0d9BT8qRCdrR8/2jHU2pI/tWy9j+s67FfqhYD1CVy
 dkhGcrDjAZVc3hXEfc9B3WJFxuMhci61T2RG8PNekU+3SKbxe106g44iM Q==;
X-CSE-ConnectionGUID: xq8uAWndRO6uoXABb6+riA==
X-CSE-MsgGUID: dhTLxGoERRe1np15sLcUdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92596238"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="92596238"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 12:03:21 -0700
X-CSE-ConnectionGUID: sHe9AgU3TkS1bn1xm7YO4Q==
X-CSE-MsgGUID: jE+pV6qrRVmruIc0K6YZWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="246611898"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 12:03:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 12:02:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 12:02:26 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.15)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 12:02:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gZWel9cmMMA7cgUTSDSZ0jNsX8R5brzNCZuEjEHUX8Xlt0xcWRg+Mlhg+1TPSJ7DMIOcQJV1J/5cA2xwh7zmkFG+hgJvhmLVYHFNk1Ja9/gyFrqO/Fg4Taaj9KTF+C0/nqoHXgoZtvScRNekq+kiG0JcD/zzlRkl90LRC36DgtF2NuQTR7JOqXTuAWdv+2OWKmenHBJ5b5U+05CtmeLj3ro7mlCjTy+sJOEqcEPv65l9niPcQgIb7VFUBzmJKsJtrq5o2sqjBr0SXsBugQLrpcOnCXrUpmezHqLDd3PItkoCGHBUyvbvD5qyQAJiwV3JVP0cO0KzFZ//A1KlW9ch6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7pqjTzT59vRBOnNssazeqQXgAjjyZa6NF4GsT7zTP1I=;
 b=nLqCwrHFWGoKxGSgLyARxp9J6oWsD9jIWIGbQzxWtE79Y3IR2Rm5xF7XUGmWfbrW5lWXZT0Bi1nEU/JDgNJ4TsJhCH+TuYjI4kcYCIaz0uVdcvLMgBsokw2rJbLdaE4xSvYVpEeyVnr3VszvkGIc13eto4f+kGYsYpB/6NFIACQI+zlEQs/+rDlEeLQde3/tnDFT0fAf00rOXapl6ondnO2Pzo17E2ixo3IFJb+ugmy7ln0R+KslOhm1Mv0Qi9C1sEYHMTaHiFFgPuq2zZyNGunTUkxFZUfWe5sTCD46sZ73RQK/tgV4UzwCKuexkWYqwSAHRbzwuiqGxOzO/fZrvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF1C4B3BAB7.namprd11.prod.outlook.com (2603:10b6:f:fc02::f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 19:01:55 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 19:01:55 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v5 12/14] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Topic: [PATCH v5 12/14] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Index: AQHc9MewDBXQb6IGwkykqG9uQtjrNbY5v9eQ
Date: Thu, 11 Jun 2026 19:01:55 +0000
Message-ID: <DM4PR11MB6360B5DA64457C0441A6ED64F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260605084421.3912865-13-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260605084421.3912865-13-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF1C4B3BAB7:EE_
x-ms-office365-filtering-correlation-id: e4932ecc-fd87-4f91-480e-08dec7ebe7f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|22082099003|18002099003|4143699003|56012099006|6133799003|11063799006;
x-microsoft-antispam-message-info: J/dd8R7NsVxCBIW1w5a62F9Ly5EZcZKGmbHlxBPQlDYajcKGp2KRkowMcEAN/8gseNR61ocJhCXpoZ2j4gsJyhlJ/enWGJz8scK8YQa7APR5Y7FN878KbEs67uwL3D+GyLFczZ7F+lcSLZf1nwjPs9N3VXf6nIiV/kZQwjE++4v2mb3qFQFkyFxvaL+WgpXNmHJ/wiqS86XpsVwBSx8sSjIzyScDG8zOh0pOhi/t6IqpLq6WRbwEtlfEELN6Tv+C2I9U7vfOocxj7ez58MV4Co9Td8D0+jCCMkv32eVi4Hu7Kv28ahIOkSPmO9K33F2g4HEDGEyYyX+zAViHAq2kj/BIDcK8rGFUzjAzEjfQoFT3O7FJIICMPtU9LnERKYwhPUy++oBjPvl4arbnnGXAbu4TjzmLhLjy25WexBx0qz8UIp8iWAiw39yohJwdSaRxyB0kb3QG9Uq4ncybMdZ63BsWtwskBeEKmkLAjU2/gOJOTvn59tgmxS+ZXsRj4CHFbADwSrMP22p2/lM4jbCF0WNh7ZpWJOOR9kukJNtU45qy6CQxCCTsan/oTEp5XlLJwn5tH/8SAJuc241sb5Vu5KTlo2vRPn4pdXkSEndRUydVBee8eH19CsQ5Z/5wVq7ScJuFYlsbyul6ZNvb5f7rYaeZXA9pEjql9SbJFxdDhV7Z4Fc/VD6+a1CFkv7hmz1Sag7KcAiGNJ6OqjFhQv2aqwmElH06fTWVOtGO1iX71irePYofcX8Sh/ob/uJpO2ux
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(6133799003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/wkeuKhADnnx5ChOhCr3Mh9hLk0/mraMyY5MLr04DniuuEo0q3YmXGKohK9p?=
 =?us-ascii?Q?+YQwGSbZJhL53zwot6nvXy1l47fQuRPLEVQPl5DC/RPQHUKEdZHBYtVkUTwH?=
 =?us-ascii?Q?UpzJEyaeYLeYveUDRG6Ho8ZJSLz06u6eElN0vwxz0YuXsQxg9IA8QXb9Ecso?=
 =?us-ascii?Q?c85ajQd/OFcF4OW4dQLiVEFd6kA+1B+exh3hynKhbySi+YjhTLnzcHkVVgpU?=
 =?us-ascii?Q?5C7YxnOPhYTqRqbihsP9zRYXZqcfh6KsbdqrmDZViJUdw5oacHdWOPxhlu59?=
 =?us-ascii?Q?1WPJyBdsyROeUn8XYNxiWbbrXx5XlFL4UFSSTXOjhYgmBAUzlc4DfECn43yp?=
 =?us-ascii?Q?JQRZSly8JcyZDmsrIOP0mWz3G2XSafPlnYHUMbK0hs4UNpLX/CI0lXvLMRxo?=
 =?us-ascii?Q?2y/NdT1JfMY6tHK2nDLX0KIgkRE5Fwcnpf/fqu7tuF5NjvxpRiB1NvfcXPOI?=
 =?us-ascii?Q?NIxMAQeS6dLQGJ/qF6ImawWPpdjcks0yABF6qha9MyioSFFGCH5q5cfFYcIV?=
 =?us-ascii?Q?Pjq/DX5Coak2SNzx6hNG/Nh2gHop+7Xer5ZAr/0O6a1iVb4mMAoq6HlOc/vI?=
 =?us-ascii?Q?40r6W0GyPCdjTHtG411etGDqB0/joI2uSMM+Jah7dfK/g2NvPtlUAYwbxX2r?=
 =?us-ascii?Q?xhufYllYsNdbdzKqziXNKTGmfWW5WOHTirBLk41AOyxKn8MCGScc8fwFsYZZ?=
 =?us-ascii?Q?0asXxWEjYJGxb/780vhD3lkHBN0TQgTPp32a96j7gfQsP5iazrNsC31i9DRj?=
 =?us-ascii?Q?BL1RYyelBZ0he6H/Nh3hQnE+sBE3e029K9HebD5NVpYpczq2Ykuk3iP3EcY6?=
 =?us-ascii?Q?fNV9Nq3E1Ur3V1DVD7zK2t1Yx2kli6zLY1cGOwKVXn3VGyZt6BlDRIpaTtBX?=
 =?us-ascii?Q?MAAwWkOhXFXO4ODG7DdTFOEjK/OgS4jNFrxiuxbBapPRkxfz2F3naai+qKQA?=
 =?us-ascii?Q?WZglFyUyj0glCjkYXGMR54Nfmm/08WtK27COqTtwg0MdoWYfGhQ/ukny6HeS?=
 =?us-ascii?Q?NJjtnKh71cNJeTHarDEovu90sMg3u6eGIKcQlkxj8b9YZNg/g/68rQpC/4ht?=
 =?us-ascii?Q?utqsxKHpZjzcjzswSPaax5yHtQhpnBcZvKKy3gUacoD9+oEKcJZ44IAt1YMA?=
 =?us-ascii?Q?Zk3XaP3HnqStO576Iq12AcgX3SeT9+I+cZSeTorjGbN+uMEQ1uNdzHd0KzyY?=
 =?us-ascii?Q?Sh4Waq1fOgXBDsaNAnQISPBZcnFfjnlOukvyKMcVWamqnF57mjwcziwp4zG6?=
 =?us-ascii?Q?xobY021w+XMUj+vzs1noPVAVIpe6hD1/q+iKef+9ShJZjuFqo1E1e5j51/JD?=
 =?us-ascii?Q?aOsw0Vve5mdAXl0ScT3W+htGN4hyD6t7I6+onv18JF5lvGTEVL9KXR4CxT0/?=
 =?us-ascii?Q?GqX0NlzS/zUZW6mxQpgvacVKTvT0adBZK25RrznqvB6+lKUlLW9zzTPHS3L+?=
 =?us-ascii?Q?wq1MoJ1hnl/WstQryHnenHkusoV972m5Cj5rkhHCf30wWtObDPL7MP/CANQ0?=
 =?us-ascii?Q?RgbOq6suoUSnbzw/cwitYSV6imKTwV64j5rAeAESf/O8c9eXkHk/79k/fJF6?=
 =?us-ascii?Q?4sZQksvfOsakuOGohQDtkvy4iiC6L3l8GSr2VmSEOEwdjQ+gZx5gXZxCSUIk?=
 =?us-ascii?Q?qSJygXPwbQWeLUi7Id/avq7MfND+KJceQVswAhrYGp+2/XzJcqNDHxXRYblG?=
 =?us-ascii?Q?y6LR9xrZZanCrOaiAuhPSiltocxnMSHNPkfE3mb/njwsXkr6qcAXn8KzYPJV?=
 =?us-ascii?Q?hpIJj0J5rA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: M5E0LBROSWGFw9BXVNN8jzDi2bsgmfJeLKYn1wGLxPuwf+UHrvpnLTyN7sU13HPAJRvkQUGqhFP7Dir4bsbSJMn5MmFxiSqSy6ZlvWWbm2VYIW+8E6oAy+z/9IT0bvPMs2Y9FbZMZ32ytPQDUEatgGibYDzStlgnG6w9Q9EMEmMtrCeLfkE1aRB0TQAQ6slMxozTio3W7Ih7OGpFJT+pyONK818V2xlNDK7vWBY04W8oX71vO7FVVi1CnP/dcvDDl2I6gLKtOhRdP3uLMw0dqi40xe6YuBZtqquNfKF/gjRTMkzsN/Q1JpuvppSV1bTwlVOb0wdVI0KUJm/syH8aDg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4932ecc-fd87-4f91-480e-08dec7ebe7f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 19:01:55.5612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PPSAbSqry1SkxZqxrQ5WuwejoSGEes9MItV7ACVzkvfFZhd7A//qsYdDjIl+KpETlUUwDho+um/Y51jO0IzChw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF1C4B3BAB7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: BA303674A8B



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Friday, June 5, 2026 2:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v5 12/14] drm/i915/display: PSR Add delayed work to exit
> DC3CO
>=20
> For DC3CO, idle_frames is programmed to 0, so PSR does not enter deep sle=
ep.
> Add delayed work to schedule DC3CO exit after an idle duration derived fr=
om
> frame time (minimum equivalent of 6 frames).
>=20
> The work is re-armed from the PSR flush path on relevant frontbuffer acti=
vity.
> Once the display remains idle, DC3CO is disabled, idle frames are reprogr=
ammed
> to their normal value, and DC6 is enabled to allow deeper power savings.
>=20
> Changes in v2:
> - Squash "PSR set idle frames while exit from DC3CO"
>   into this patch (Uma Shankar)
> - Add cancel_delayed_work() in intel_psr_disable_locked()
>   before clearing dc3co_eligible (Uma Shankar)
>=20
> Changes in v4:
> - Re-arm cancelled DC3CO work in psr resume
> - Schedule DC3CO work from intel_psr_post_plane_update(). This is to
>   make sure DC3CO work scheduling will happen even without psr flush,
>   which may be a valid scenario.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 62 ++++++++++++++++++-
>  2 files changed, 63 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 5b1d0fa3e888..a040a1d37784 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1773,6 +1773,8 @@ struct intel_psr {
>  	bool irq_aux_error;
>  	/* DC3CO allowed used to control PSR configuration */
>  	bool dc3co_allowed;
> +	/* DC3CO disable work */
> +	struct delayed_work dc3co_work;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 091da8341b0f..822bc1d6af53 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1774,6 +1774,51 @@ static bool intel_psr_needs_wa_18037818876(struct
> intel_dp *intel_dp,
>  		!crtc_state->has_sel_update);
>  }
>=20
> +static void psr2_dc3co_disable_locked(struct intel_dp *intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (intel_dp->psr.dc3co_allowed) {
> +		intel_dp->psr.dc3co_allowed =3D false;
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		psr2_program_idle_frames(intel_dp,
> psr_compute_idle_frames(intel_dp));
> +	}
> +}
> +
> +static void psr2_dc3co_disable_work(struct work_struct *work) {
> +	struct intel_dp *intel_dp =3D
> +		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	psr2_dc3co_disable_locked(intel_dp);
> +	mutex_unlock(&intel_dp->psr.lock);
> +}
> +
> +static void
> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuf=
fer_bits,
> +			enum fb_op_origin origin)
> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (!intel_dp->psr.dc3co_allowed)
> +		return;
> +
> +	if (!intel_dp->psr.sel_update_enabled ||
> +	    !intel_dp->psr.active)
> +		return;
> +	/*
> +	 * At every frontbuffer flush flip event modified delay of delayed work=
,
> +	 * when delayed work schedules that means display has been idle.
> +	 */
> +	if (!(frontbuffer_bits &
> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> +		return;
> +
> +	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
> +			 intel_dp->psr.dc3co_exit_delay);
> +}
> +
>  static
>  void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state) @@ -2331,6
> +2376,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp=
)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	cancel_delayed_work(&intel_dp->psr.dc3co_work);
>  	intel_dp->psr.dc3co_allowed =3D false;
>  }
>=20
> @@ -2361,6 +2407,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>=20
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>  }
>=20
>  /**
> @@ -2391,6 +2438,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>=20
>  	cancel_work_sync(&psr->work);
> +	cancel_delayed_work_sync(&psr->dc3co_work);
>  }
>=20
>  /**
> @@ -2417,8 +2465,13 @@ void intel_psr_resume(struct intel_dp *intel_dp)
>  		goto out;
>  	}
>=20
> -	if (--intel_dp->psr.pause_counter =3D=3D 0)
> +	if (--intel_dp->psr.pause_counter =3D=3D 0) {
>  		intel_psr_activate(intel_dp);
> +		/* re-arm cancelled dc3co work from pause */
> +		if (intel_dp->psr.dc3co_allowed)
> +			mod_delayed_work(display->wq.unordered, &intel_dp-
> >psr.dc3co_work,
> +					 intel_dp->psr.dc3co_exit_delay);
> +	}
>=20
>  out:
>  	mutex_unlock(&psr->lock);
> @@ -3174,6 +3227,11 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  		 */
>  		intel_dp->psr.busy_frontbuffer_bits =3D 0;
>=20
> +		if (intel_dp->psr.dc3co_allowed) {
> +			mod_delayed_work(display->wq.unordered, &intel_dp-
> >psr.dc3co_work,
> +					 intel_dp->psr.dc3co_exit_delay);
> +		}
> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> @@ -3632,6 +3690,7 @@ void intel_psr_flush(struct intel_display *display,
>  		if (origin =3D=3D ORIGIN_FLIP ||
>  		    (origin =3D=3D ORIGIN_CURSOR_UPDATE &&
>  		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> +			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits,
> origin);
>  			goto unlock;
>  		}
>=20
> @@ -3690,6 +3749,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		intel_dp->psr.link_standby =3D connector->panel.vbt.psr.full_link;
>=20
>  	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> psr2_dc3co_disable_work);
>  	mutex_init(&intel_dp->psr.lock);
>  }
>=20
> --
> 2.43.0

