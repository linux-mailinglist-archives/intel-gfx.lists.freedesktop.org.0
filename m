Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O3VdAFMpT2qrbQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 06:53:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9942772C9CB
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 06:53:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EzF6uVMH;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C35110F368;
	Thu,  9 Jul 2026 04:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AA710F368;
 Thu,  9 Jul 2026 04:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783572813; x=1815108813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A0h+Tm8gz08cNhO1Z5it6gSZywi7jcufPR3f9BWwHwY=;
 b=EzF6uVMHu0Yfjo4yxKt+8uc8tIn6bQUpl3B9zlfJ2aQA3JklCy1A4bUg
 LzO9MAF5uHV8Cl5Q8z4BKJryq0UpeJxZI7RsSazmvatkP7c9Slphf5M4I
 dGcKOLxJ6WJuhIWhcdiYc1S4RbytPZN9cmCRHjGfh3RQUIck2vjeoKa6r
 re5fbt0QqsWe2jOtypPUp2x9bz359wsEYZ1lP4q1tQPB8H0qKqZf94RF+
 9G7RxaalAuk4PgYH07mireiiG8C6vU4+BkYCeNJ7oJiCOh0BWk6l+D000
 XwpoiDsodfHzrQ0xYqxF/+bfS38Us0Wh1LxV1HcoSVeuY31E3sssU8ICX Q==;
X-CSE-ConnectionGUID: W4UTcIT3QsiuD3O/IbI1Gw==
X-CSE-MsgGUID: BMGIQwXLRZaIgbKCaJPHug==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="71765923"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="71765923"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 21:53:28 -0700
X-CSE-ConnectionGUID: I34hYmdtRYyiLNK/5xryCg==
X-CSE-MsgGUID: fV9kehDtS3i88jcbCiF3hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278867454"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 21:53:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 21:53:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 21:53:27 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.40)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 21:53:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lXwTjQSGKXF3P3klztEH5Q5s71rYBvpl9WtN8eJMDkGbvJb1i73lGfRemK9BLiaq98NQkN+s5ORSmG/VgtWOYLYwR6i2IqyN8kH15FZlyiTM7VH1fDU4Q162d/2IVWOTRJLngftBF35MCuAGTCvl6G3NLgjXwTpfbYy9+TsoAPXmS7HvrGUVNenAQbNSbfjHk5KsMDvIA3RoxZCoRQWoMER0fGGmULRYUWTVThH3sWroCfUskaAfJwK7o4vAm2RxWpXFddZOiSATAGFSXH0InP439e0IeUDTwXQgkPry2mao2SjA61mg4HZw8SH7na8HPuNM8P2bM9VhvGm4Hy+7Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0h+Tm8gz08cNhO1Z5it6gSZywi7jcufPR3f9BWwHwY=;
 b=hZbRKBDUu2mVjrzRA+N339CxagsD4g//rFJRJgbfktbBrfo5pM1nF1XrEZj3mTEbWvY1FuzvP86NliZjZ1iTwekr2LsMM/fnsSxtkBaI+6HfD0v8b0FMUUXnDfSMtmHT0MWjvc2jAajX4m1NiBOQKx/v9pxEiBgtfEjQoiogMtsCOktQTnJXIi1qcfGZYyQNDYYjLyBZ1cAr5AAfpwlwPjMgyIzAzaEI5w54K6azRNW8lHKJQ9tBT3EBiLBpwIhL/k947E6DCqMG/ZhohAazM8OITZ+cZPcDVp70sufH4LUpj1tGxwQqOaeDldS5n2enht62sGdHEnWZk8NXHF804A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by CY8PR11MB7339.namprd11.prod.outlook.com
 (2603:10b6:930:9f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Thu, 9 Jul
 2026 04:53:18 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Thu, 9 Jul 2026
 04:53:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vehmanen, Kai" <kai.vehmanen@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Topic: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Index: AQHdDs9t7tfDWcHBo0Wg0K9152JZ9rZkn8UAgAAAGWA=
Date: Thu, 9 Jul 2026 04:53:18 +0000
Message-ID: <DS4PPFE901A304FFCB5C6C03C29AF7F40FDE3FE2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260708113558.1863316-1-mitulkumar.ajitkumar.golani@intel.com>
 <IA1PR11MB6348E468C2416F0226FECDF1B2FE2@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6348E468C2416F0226FECDF1B2FE2@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|CY8PR11MB7339:EE_
x-ms-office365-filtering-correlation-id: 04972449-ddf8-4f75-03de-08dedd75fe97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|22082099003|18002099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: FyP3D+QGM2pI75tdnj+F27jE68EMV8n0pCdi4Ck0D74HE8nARkRdc33NAuIKK3X5NGSkhbmn7er+S4oiA49j1NiOZznNGoJInE8v/KeAUtJRync7/WKg5jIoYU2hWm0gI91oP5cSS5VRHERnPEWAS92u7RwcFIDjiOTlCAOMucFmKmJsOOeoMAcYl0iWG7vxpWIaYM0z/MnKF138YaL1EFawQ4fpreZuEPJ7eEc8WOkPn/frRvt3/Sh9gDfuavgx6WPaxRg0YmyTOYianJb2uy3IeR8qF8EWyK/jVYE/Sqx83fDcWRJ0eCUbB77ct4n7mi6LqUc9AqjCuHNwfYj/x189IdikxFawIwgfHknt05ScS0+PcIRfRXbNsZJqSkymfQD8fIeou/E/AqmEquU59OMmU9FNXjVMpP80t1G7fNZTfGALUcz7vHwEmC/bkEo1q09PbSceVDifLnK+HVYoFnqHBD/FqEq/BBHmOx670eqSfIiKg6AGUZ0YhR6yO+F3qS+blrukPrS+csJIVaCduxLXIls8o5w1TB3l/whWVIwr8gZTLJb+a/XQbwVOs+ASZXfbjDzTbUEhBLyr+zvC1lWrb8mR0VSRLzbJMi8SGIp/RPwSwxYbYfaX4XQt7AV5732cA2ZYN7oGb45OzAt+pQ/zmuwugSvtwIPw21zc7BmQI7vqqh9/JgaCRhenqchLYJMiXaXuk7/tNl1F5Nm7g2RJuRIqLVsqZ8csW7jOuuY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(22082099003)(18002099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GSWlU+2vCPBpsGNMYHfdYvK7VC3I3X/Wml5p2+w6tPyO61AHQIobL+TkmkNC?=
 =?us-ascii?Q?jge02nARaWKyAlPbqx4GxeH9nXWaRsY2tccQeCQAau084RdVSwxmBjp7cUR3?=
 =?us-ascii?Q?UGksGYLJaqv2Cbp7YkA6zh7HyhFI1qDXh3pkp+qeZyXpf3C3N2DH6NSIpM1V?=
 =?us-ascii?Q?bMZK7TuIB6Y81u8Dzi3hgPNsKUogjPPT68vhK/bDK9uFIcylBjyOewxPXSiy?=
 =?us-ascii?Q?WjsD8hzJ7heorzIkbEcpFR7kjWOMOO/VPZpXsChn74QpqGMoGcTn9+g0j7tm?=
 =?us-ascii?Q?CfQdEQGTutB6IRv3bm4J7M/djpmUT6sAx/+swB47qSX4l4KoGYAJqtiHFPv+?=
 =?us-ascii?Q?f+IV+1W1iP+xY2LVSIgAU9NwRulHjdem3mewncryBrgHWaBa9ZQV7FNTtZbs?=
 =?us-ascii?Q?Sa6scSTM95by/qkLaJKyzYqLiCF97LPQQkh9DwNfl9O7flhOfz+6wAj4v9lu?=
 =?us-ascii?Q?PlGbhvvqjMwmkC9cUXk8l1/8/LwvqDlhOhTu/JLE61JWAj41TqSeXEEV3/FO?=
 =?us-ascii?Q?rPxExW+ayFWAWCMl+eHYzjnEH+anSWCY+KtlH4dihQakdk9FtjNT/f/L77Xy?=
 =?us-ascii?Q?SRyZMJhZq4vX3bPMxAjlq7bC8pmL/EYg/veMvwGkXvPLRpNQW5wDg3YFlzw4?=
 =?us-ascii?Q?xROsTJhUCeRdzhfYs12R1qw6KAU1yLWomuuaLNEpyhjb7LuqQweHZRvS9AuF?=
 =?us-ascii?Q?WLr7DV9S/9El8Dt+3SnjJj0JI62K1MRLdTTtLr5njuHDcKUlEnzk9Ny1LqZh?=
 =?us-ascii?Q?M+YZbNfmNtOLtKD5r+WLxPcFl18vE4TP+uEVkdlcbSQGNOAM94UWjWGP4kk8?=
 =?us-ascii?Q?1ZOCVDtsJOEjogQgLomNrLKQ/IlvMhTTGD+ROtgbfchqNkMDGoNp9heH2G+m?=
 =?us-ascii?Q?vr8ZJC2aZxI4WFGJKeXEh7r8RQLevar1aMbei2rBLFv8YkQwXwYTysOFaoEr?=
 =?us-ascii?Q?5RvnzECbvUGFNoVcbXrRgN+qCPa4eIK1VvicMbeVf4e8NjCYYPUXtv5iDNZd?=
 =?us-ascii?Q?ffT4yKVlmlZLbGV8GzOYby2Viqk6G1uZ9YWRbSIH8w17CLH31RW0bIki9m17?=
 =?us-ascii?Q?UmyigkYhtuAD98bk1GXTap9PTqNU4tCMQPNW1u0R5cGKnSQ6My4xKxXpwZwA?=
 =?us-ascii?Q?IAdgWa+yp9z5z1JqPHy/nMKMKN9npLxNQc+fgRO+M4wn4lWvPlvrVET2rn2O?=
 =?us-ascii?Q?nIgzvpbyqkXS+xniWNpR+72GeMEnT1UdkxAwPlDkL6k3Vn9q3hP2vq/5U++j?=
 =?us-ascii?Q?2Xgj6cvBmAcgoKyDyinOKW7xXvNdVgQCytS3wYaaSzHBt0Dhb543GXYhIp+p?=
 =?us-ascii?Q?a/0FqX7e64TQ0CpaD31ntJynOgbaV7BgHaKKJCT3eIhaSog+OXSvYh2rWLWF?=
 =?us-ascii?Q?zhn8r3OwmqsbnMkIFQfzOkkSeUJieHWIJXF/pG/fZ9ODKCK583MUBA7ZmOyB?=
 =?us-ascii?Q?GRq3AA+kdm/45nNSH2wZqc70sDBspr6Ek9gvXodPJoPjXzIaLhWMxJ4ObhBP?=
 =?us-ascii?Q?mcliSmguJY2in3Pi/BqDkPAGeWoKZ9QFizSyL74GI7hzN70+NbfOduQ3/02F?=
 =?us-ascii?Q?chkqufmsyPVwv19Z35OwiqII7o1wD69r8Rrpc8f8tLKHtCUNs5QNjAAFkVym?=
 =?us-ascii?Q?1UVulxjl05F8bownxYRMoHUyahxwRVZ78tYjzqYXRI3hH2pLmCGLVnkh/ske?=
 =?us-ascii?Q?a1EwDi4lSvMnkDLj/hxRjZjoR78/NHVFud/Wugj+rGCTHq0HJxJuGWPZo71g?=
 =?us-ascii?Q?MF2IvJl6rA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LNzFaiuT7o3RESfhdPpaNh6BzeOzEfaBOkerOGzefDfGqN9CsLaAO8ElC3IuGcwjzkuDX3XvKfAJbUE5eflkSAFlr5gCdZnzApwKIwNZBCH1GCxwYYZRkhrhuxzM+kq5CreIBg2MRk4IOp2NbJ5J/IpyRetqWW6S/gF3VV4zpU+38vu4HlLXWNUfbxDSzCwa5cu4G60anGh3NdHPDtTMRKsaaqmMwqBtPoWx02jT+iEcr6vb7Qo5Z5pXGn1GBiycOJKwp0h7xbv245IDF63gqwxVpW1/N0rJvndBJ2iDZpahkwiVqEIeGz4SWh3fywE//AJslnBVm/EatnVzGdfYJA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04972449-ddf8-4f75-03de-08dedd75fe97
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2026 04:53:18.5044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: irh3wJ2MrI4Z0Vewq/fgZfreeBPZ6vR8wfO0PzbLwz/845bTnCa6C1xo81Gh5okB2kqYDGGSSrjn006ITbIzMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7339
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
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
X-Rspamd-Queue-Id: 9942772C9CB

> <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: RE: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for
> cpu_transcoder signalling
>=20
> Hello,
>=20
> Also to change Authorship of @Vehmanen, Kai before merging.
>=20

Got it will take care of it while merging=20

Regards,
Suraj Kandpal

> Regards,
> Mitul
>=20

