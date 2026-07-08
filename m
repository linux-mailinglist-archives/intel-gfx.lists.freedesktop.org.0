Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FS0GBDImTmqMEAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 12:28:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB547244FE
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 12:28:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WyN1xujv;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16C910F09D;
	Wed,  8 Jul 2026 10:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDE510F09D;
 Wed,  8 Jul 2026 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783506479; x=1815042479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rFaSDopAjXjpLWM7q565a7dCxo2nRTL9XZLvXYKgCZA=;
 b=WyN1xujvGeT2f8PPaJkuKcRXuUeaL65TtuJnRWVZMB7x00n6wiOufI3t
 +zGZMTmJIEwgA/YMdVh413HaBbMrSCpspqIf5D7wpQmICwIwk+VnFYSRd
 W2JgSj0WvaUDRx8soE42zhEW98HVV3V3Elvt34bz9udo3UrQSAUNqO3HU
 MCuQPcdXcVzbJJLLcdgxby1ntyK/+KSlc20+ES18bY9NyAKAGsEbO8bX1
 5pTTx2MQB0e61wYlo/2x82hPddqyPUaxvtjwShu+mvjKRi0h0bCw3oX2/
 EVSia750fJpI3jRLqMlvON7VXoWrhZB2P7Hovy1t142ilt1h/OluXymyg g==;
X-CSE-ConnectionGUID: RgJ2adtaSImp5GTme4xW/A==
X-CSE-MsgGUID: CXC9esYtTTm9qSXTfP8SJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="94518385"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94518385"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 03:27:58 -0700
X-CSE-ConnectionGUID: VVW5uExDSgWSPaJ/moAWpw==
X-CSE-MsgGUID: oVROYXX1SeegmJWOjo4+tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="259154409"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 03:27:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 03:27:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 03:27:57 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 03:27:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DsP4LzxakWwIxi+KnQJRpaKmlJ9evCSTp5F0N6aPx869oCXdID1eURfY2BRAuGSQLiF0Xbcq5s+z/rN8AuTsHgRFtUrbZv4hkW4+rPrzUQqmayMNY3FhULVXv8Co33i8hOuFzdS5IZyvzv0JsWFfxgKiWtcwzI0QyK5kVC+G9PB0CgLH0cwHUtY9P7ILviUVIKAwMBZFtzNEwawYpWcCTxq3w8yQq1eg78jxEmV9+YByiNgeLuVfavpEWfWdP1NjDeEq9rnQuOip/gXniBA9144vQapV6/iGP4Kd9+Xp4jE6XS++yhywi/BNsGLs1tmhNtGc2YULuCg+1Kf1WNQRag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AzX41oqGSaOrEv+VINwJlYfGphNZO+n8TXl7/4sQssM=;
 b=Ln3JSacQEsI2YEZgZh63oeWDH7KaVORIdYLtcrm6RVaI7yPcmhm5kz9EhCFb8M0ZOiUS7pOq8lvit0iO8YttTLPn+LURNxDYseWUPFU2FiNQcUu1FbsjoMlpWLT/5lT22shwhL8ItAY/MXNmjR1ue/GXLp3P0R6tWz4UDKLp2JwqZdLtrJLhc2p4QBC8OjBZ04/eGtUbpPS5aCwcqtVG0tPm2E+zKrMsj5apbgJqtcp28uImZY0HzDe3bTKoxCmwBqi67KF8sXyuC/cRy4IH++hnk+u7us1vqv/9IdBNWDJYNFMjGNji7wG4YmWZzaB5KCQ39cK690ezuYEXxmXedw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by IA4PR11MB9420.namprd11.prod.outlook.com
 (2603:10b6:208:563::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 10:27:55 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Wed, 8 Jul 2026
 10:27:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Vehmanen, Kai" <kai.vehmanen@intel.com>, "Nautiyal, 
 Ankit K" <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Topic: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Index: AQHdDsGUi1c0mv1rlEWHdVr0cUTF9rZjaxfA
Date: Wed, 8 Jul 2026 10:27:55 +0000
Message-ID: <DS4PPFE901A304F7BDB379AFD24CE38F500E3FF2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260708095624.1838706-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260708095624.1838706-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|IA4PR11MB9420:EE_
x-ms-office365-filtering-correlation-id: 3464231b-636b-43e3-7c16-08dedcdb92f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|38070700021|3023799007|22082099003|18002099003|11063799006|56012099006;
x-microsoft-antispam-message-info: E4VyxOW7HMhhz1K4KIrkcvGae4ccr6qWyENVHdq2Nks2BuBR3n8HqAoZfd5H3wEKTW4rRc6G6lsRdyAzHcYYDHjSIXWsTBXt3xYhrYr9RhvrL/xfrw+rQm3YgyhKhWP9d0QA3ma/IrAlL4lFHAWfpP4UmsaxFyw197CTkprf58AN8L8UwKXNITlBpcDXWYYobMrsrr2F/zwvLRHIvh6y+mYuWup2cIrMR+YjzRed2n35csqo4uM+rhC6TKjpu6cAQjyDqCmTtppqLApPc8BaW368dGhIsoQ3Ggdu+3ZoDkng16A3rKMIyHpq8qYN0Ta8FzMjOcetkKbj8cAmKbVH+C9AKkiO1KI2+E/aIiFedD3D0hOqC0xeS4fXqKnrmngbmK/MzfOs5qyjkEjfar3thploHJn9kYeSp1E83ExCtDNdrIOs3d5l7Ue6+NFzKcCRcY8yv3F1Od+ZXsIBoXMv0EbKLaFkB8yOiFdOyfeuGwQFZC6gnArRmddYDvdPt2ONmj2aTl4ebVAHsHVyEvw46xEGw+Kzvl6ts5CVSSzQ+FgquSIt1f99g1ZABr6Nh9JhDCQf0+knTNoJ2/iP0SZOVYozdwE+C4DwJ+2y0eNS21ns74KebE6eCLlAaiQOGE3fAedo8XRZJZb4FqE2HzLp/+KyvUFRO6K+lnojbbjVs1qOlkvXO8tKo37XmmpQND4hnkrIv+mdFkrOQppFIxidP5sHGQ0aazBtCn3YQPnQ5eo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(38070700021)(3023799007)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o1s/SXD4C12PT2rt7TmeYWQV4d+b6FU+EGGtNEIpGaaQRN4rwv0ajg682Do9?=
 =?us-ascii?Q?6/uDdTHNayjchg4I319QpiwS4EJD7HZXSF+8Fo/Gu35xaSddRKfNncyFPtWg?=
 =?us-ascii?Q?KMKc7xzCi3qgx/Bbyel/xVd8aXcYPYcgT6rORyq7GaBeoiRTqoa1qbDwRPgC?=
 =?us-ascii?Q?XRljZrqJ6EAX1hS4hYmdbJfpe3Vu6PWRdqC9iiGbIE95RDSkAX7KCaiixWN1?=
 =?us-ascii?Q?JMDlrhGm+m9DSIshdhtElPvd3Jcr51VraZ41dT/eYXyDkx8rXxw4VWz919zw?=
 =?us-ascii?Q?79KdTRczPuiHkcn5qWSMdD4wDvQomPy/b7eP13CZF6IP/VHZu17PNBK8cRfF?=
 =?us-ascii?Q?vOSsjiwAJ/eGMRKY+Tfc4Zl/4K0eYYhY2akynu+Xl63PugOJIdXCQ3aE0yke?=
 =?us-ascii?Q?6rD5FQsZ240Ku694/s/agV0qYG36J47GyunHsmgMKVZjwEibBsfMNE+Pa9x5?=
 =?us-ascii?Q?GoC61FxY2VhLq+NGZ74AW15VrN8Kc98WncbeGsDAH3FwouhGGAJoEZjCYcaO?=
 =?us-ascii?Q?405u0wr7OM7+0LsDN6m8IYChMJjbwHz//BV4JcggkzqCwWDbngml/khQF5jq?=
 =?us-ascii?Q?+k1XFFgygqp3hIxD232ZAAJR/TJtcOMs9mTOq9Ce0B6Jmac3uk1wJdNXSleU?=
 =?us-ascii?Q?SpoIe8eIOdSbQs5YmWkP/OIwCjU+/5ys8abhShB1jhBE4Rv551DBd36uA69L?=
 =?us-ascii?Q?KmUXIa8lr/CrPWoxQ6UHnawdA55toKoXHyB5LQtHtVyRr1JDUb//UPrQfRMO?=
 =?us-ascii?Q?vFWK+QS+KJEiV3uAYUgRoLpyiDX6ntCYZA2h4r6W/NH+zyrSTLJ8AGURMpjG?=
 =?us-ascii?Q?wFZIhsSNn5GfmFE5/5WRx5tcR9SzmMrw57TNCK1b8JsQpkhTSiFj0FdtB8+N?=
 =?us-ascii?Q?QuVk90F12xVdQ+LDkzAfwcXtMfbnqs/6FOpWNvbIm0viLKcqEwTz6fSYwYtJ?=
 =?us-ascii?Q?KSMmEhBb70bsswxZRTFignUXRqtDWW+fu47tlc9iVNONJ8sXfqBEyDslQxu5?=
 =?us-ascii?Q?jd4/wzoJL+BCu58sxEZAPAXP022oTERhzbGneHq+Uborls3s4odlBK3uzddb?=
 =?us-ascii?Q?Xj1Jqzp9ESKVRjT+WGWTCR5CyTUBVvRxNFqcR5EijUYxBRexPax64mVdWuW5?=
 =?us-ascii?Q?2ZqiEZlkAtuuWxT+AO/x41QG3kK+FdwxmYOjp5PExUn4VBd41T1WViLU1pCX?=
 =?us-ascii?Q?B7U6MeoXiRBp5zx8lbcXFq7DyFs+AyBISjdgb8KO6RMgzcCS+yPEmIRsAyT6?=
 =?us-ascii?Q?mvRmKHZI5KKq8lG8lsU+ZnIKELci9Rg27DD2YO4exhmXC/ptTmQeKanURLpS?=
 =?us-ascii?Q?Gz45FsYpUiWPDmlIk7gtpU/IY53r1xxRXBgDufrKSBi8536G5GrGrxURcZqb?=
 =?us-ascii?Q?2IAovkwa9W+XJmYDHvzcU+kJ4NRxIBH/nLFqEZyz+v3/ic1DT0Audz+lbM4a?=
 =?us-ascii?Q?cNSar6pPxhsEQlnhlpikgMNds/m82o8bzzSIb41SiXx4PcNh80SReFUvVUn6?=
 =?us-ascii?Q?32r21ZOutIU0D9Q2Rmwu0uRKZv4Z+9C6tw1FKjCU01VF1ihctlRVQbLW4uvU?=
 =?us-ascii?Q?8fZDXOWcbNgQI7zgTcss2cY7oSTbROBzPupfecSspGIhK1VETa5H/eA1sWdq?=
 =?us-ascii?Q?NiktP4oqz8OreG9ykF6KXuOAf3Ho8d078dn6dT9/e695uuu9p6e8aDOPlYr3?=
 =?us-ascii?Q?pTRgW3DtinWTdjdIu6ZXkKplFdUhbvzZkwDcaJ/j73ykG3TC+uL1a4FF5ZWT?=
 =?us-ascii?Q?3aYtC2Jvog=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ed7Y7pW43huZ9tIy3oRl8p9+SjAsgutlPM/qjRt7yUDe3D7qsbKkg/Vjn5r01uqA25f9tecPTFPTHMR6WQ95xo13B6xk/tCcTtoNT2iRu7R9j66tVatWykrZ6rOQzc3Zd5eXpOlYyS0FQXXBqMs4DQeiUmtgH73rC4fQ6jlMdob+YZJwE07bMyBJEfvgFh8T/YLhJP+uTH8y8BzNwppEQjtafFBFxSuzwDxcvgENG3/0qSBszO+LFMe8VO6SevrSQVotAaeTR5xca9tJejWfGFD0PXHUstq0ZcEXtJ/dWhaLE5jdfxStKo+EeWkWLp5aix/NTskevJP0knKtzHFJCQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3464231b-636b-43e3-7c16-08dedcdb92f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 10:27:55.4387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: szZta67tE9QPB4HJ6PqXGjOoc7C5YofOhxvgjjnwBOr6wC+cq1h8TKX15RVtFO8mb78iFIPj5FbN+5bnc/YcSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9420
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPFE901A304F.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FB547244FE

> Subject: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for
> cpu_transcoder signalling
>=20
> Both DP MST and UHBR SST require the audio component to use a real
> cpu_transcoder (>=3D 0) value to identify the audio stream on a port.
> For DP MST this was already handled; for UHBR SST it was not, causing
> pin_eld_notify() to signal cpu_transcoder =3D -1 (the legacy SST sentinel=
) and
> find_audio_state() to skip the per-transcoder entry for the UHBR stream.
>=20
> After suspend/resume or replug, the ELD lookup fails and audio goes silen=
t. Fix
> by detecting UHBR SST alongside DP MST when deciding whether a real
> cpu_transcoder value must be used for audio state addressing, in both the
> pin_eld_notify() signalling and the
> find_audio_state() lookup paths.
>=20
> --v2:
> - Commit message and comment update. (Suraj)
> - Change function name has_mst_transcoder. (Suraj)
> - Avoid Live crtc access in find_audio_state. (Suraj)
>=20
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 61 ++++++++++++++-----
>  .../gpu/drm/i915/display/intel_display_core.h |  1 +
>  2 files changed, 48 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 9729f1837d2c..7a2bc73744a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -38,6 +38,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_display_wa.h"
> +#include "intel_dp.h"
>  #include "intel_lpe_audio.h"
>=20
>  /**
> @@ -696,6 +697,21 @@ static void ibx_audio_codec_enable(struct
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
> +static
> +bool intel_audio_needs_cpu_transcoder_id(const struct intel_crtc_state
> +*crtc_state) {
> +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> +	       intel_dp_is_uhbr(crtc_state);
> +}
> +
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state) @@
> -762,6 +778,8 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>  	audio_state =3D &display->audio.state[cpu_transcoder];
>=20
>  	audio_state->encoder =3D encoder;
> +	audio_state->needs_cpu_transcoder_id =3D
> +			intel_audio_needs_cpu_transcoder_id(crtc_state);
>  	BUILD_BUG_ON(sizeof(audio_state->eld) !=3D sizeof(crtc_state->eld));
>  	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
>=20
> @@ -769,8 +787,12 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		/*
> +		 * Audio drivers expect cpu_transcoder =3D -1 to indicate
> +		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
> +		 * a real cpu_transcoder.
> +		 */
> +		if (!intel_audio_needs_cpu_transcoder_id(crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -819,14 +841,19 @@ void
> intel_audio_codec_disable(struct intel_encoder *encoder,
>  	audio_state =3D &display->audio.state[cpu_transcoder];
>=20
>  	audio_state->encoder =3D NULL;
> +	audio_state->needs_cpu_transcoder_id =3D false;
>  	memset(audio_state->eld, 0, sizeof(audio_state->eld));
>=20
>  	mutex_unlock(&display->audio.mutex);
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(old_crtc_state,
> INTEL_OUTPUT_DP_MST))
> +		/*
> +		 * Audio drivers expect cpu_transcoder =3D -1 to indicate
> +		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
> +		 * a real cpu_transcoder.
> +		 */
> +		if (!intel_audio_needs_cpu_transcoder_id(old_crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -1118,18 +1145,24 @@ static int
> intel_audio_component_get_cdclk_freq(struct device *kdev)  }
>=20
>  /*
> - * get the intel audio state according to the parameter port and
> cpu_transcoder
> - * MST & (cpu_transcoder >=3D 0): return the
> audio.state[cpu_transcoder].encoder],
> + * Get the intel audio state according to the parameter port and
> + cpu_transcoder
> + *
> + * A "MST transcoder" below means 128b/132b transport, i.e. either DP
> + MST or
> + * UHBR SST, both of which use a meaningful (>=3D 0) cpu_transcoder to
> + identify
> + * the audio stream on a port (see intel_audio_needs_cpu_transcoder_id()=
):
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
> +	/* MST, or UHBR SST. */
>  	if (cpu_transcoder >=3D 0) {
>  		struct intel_audio_state *audio_state;
>  		struct intel_encoder *encoder;
> @@ -1142,11 +1175,11 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +		    audio_state->needs_cpu_transcoder_id)
>  			return audio_state;
>  	}
>=20
> -	/* Non-MST */
> +	/* Legacy SST. */
>  	if (cpu_transcoder > 0)
>  		return NULL;
>=20
> @@ -1158,7 +1191,7 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type !=3D INTEL_OUTPUT_DP_MST)
> +		    !audio_state->needs_cpu_transcoder_id)
>  			return audio_state;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 17f7d3abdb9c..a6129d0b523f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -97,6 +97,7 @@ struct intel_wm_funcs {  struct intel_audio_state {
>  	struct intel_encoder *encoder;
>  	u8 eld[MAX_ELD_BYTES];
> +	bool needs_cpu_transcoder_id;  /* MST, or SST on UHBR link */

Another thing The comment should sit on top on the variable field rather th=
an beside it.

Regards,
Suraj Kandpal

>  };
>=20
>  struct intel_audio {
> --
> 2.48.1

