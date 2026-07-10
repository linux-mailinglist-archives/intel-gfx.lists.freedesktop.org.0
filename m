Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MmubLSuuUGp23QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 10:32:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FAC73883B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 10:32:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SgXkH2xN;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D88F10E140;
	Fri, 10 Jul 2026 08:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8353D10E13F;
 Fri, 10 Jul 2026 08:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783672358; x=1815208358;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GLv2yiMWiQKGrH4SwVPMfVbWzxt6rECEIpBEfWJhGb4=;
 b=SgXkH2xNX05O9Trys6lwyvpMjkpwvL/ca+OnN2Z/9s4wie7ssuEoyzIK
 NTK5EcwToFEYF9RtplzucL+/oCj/6UbOi/i50RpdLTTgHGHcjTcuN0Q+D
 XGzYsdB1FXcg+JBgMmNA72wV7SGdCPcEhc/qdWSQLF/Maozw5Zjk9VzT0
 ZBx2rSL40PNQwyGrY6flz1L9wKFsDK0x+JPduK0NgL3/hkSdwp2dlNTcb
 O0oH+qCzsrYbOu9x47yKk8ItobSh97NmbDFMbsceJWoX+CATq2ndG1A6z
 D2BYk7ji4UImGa3E7hToh2O5pMimmKp9MZ81gRH6GI23vNLv5f6YgI6Ta w==;
X-CSE-ConnectionGUID: ZiZ5vUn0RRSEM1L6RYYaXw==
X-CSE-MsgGUID: cMyOIWXOSO65Jkt/G48xMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83345864"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="83345864"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 01:32:37 -0700
X-CSE-ConnectionGUID: 8IyctM/JSN+OoHtsFZ6Xug==
X-CSE-MsgGUID: 6p5lXAI9QZaC3sX+AQ+vuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="284927383"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 01:32:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 01:32:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 01:32:37 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 01:32:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QNPdS/JpDBXuSPK6OV7ZPJDshG3Pn44jdvO2OPbRqeBaQlmJro/0T9YyKHFIDchF35wp7q4NFhlZ71yr+4vUbPXYj9fCSddE5l/mcAHx4lZroMerf37siJ+K0wWcj5pelA0SpPFzD6hiWrM5iOM53yJuquVtTu0Unj5dOWGqLkWNikta12Dp2ehZJsKgi/jYETzDV7p8zSNCUdR/c3tVaAdTUumnLGCWFyzgRQx6qArJireWh+B37t+NZyis1NBf2z/6LWNwWcna8tfwlrxa2a1iIbNZugzHU1MPqJooFwgs7fgCulTvSBC2dVyN4WH/qbVG/qg57sSelqdioef4rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=25TfuHYXx0l8Ds2tcOrGOGYwl+sihRKxZ7sILpt7Fe0=;
 b=R99PA2WsemIzp72FhTxUYjrtUgtMkER67/bTeaQ3A9iWiix6X9C4A+Iez3Lx06yqNJt6wXhDUYXLgKFutcbjEo6h7UpxF1IcnFmgbf9iHr6HXLdte7n9D6suxG7+hDDJMLa5Z5nW5tOwunJtC4veyNGgQkWvIQu02Yu7iZ1LkEkPN5fc0Og4on6L+tptE5WuTRe2R5y9VwTzUyiiZacm1psJDUb7n9Zqpc5p/PdZj0BBSdvU7XMeUEUAukocM/10DdOl3+E37V1eL3/UO6qyPMFpcwRv210wA38OvZ5G5oZyHzBJYjBXTDtJh4I5lR3TKWIDwjazmKh6wb0En2wBZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SJ0PR11MB4831.namprd11.prod.outlook.com
 (2603:10b6:a03:2d2::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.17; Fri, 10 Jul
 2026 08:32:33 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Fri, 10 Jul 2026
 08:32:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Vehmanen, Kai"
 <kai.vehmanen@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v1] drm/i915/dp: Gate UHBR SST SDP splitting on sink
 capability
Thread-Topic: [PATCH v1] drm/i915/dp: Gate UHBR SST SDP splitting on sink
 capability
Thread-Index: AQHdD8Rb/+FvvUKGwUSAc5B1xqP6tLZmafLQ
Date: Fri, 10 Jul 2026 08:32:32 +0000
Message-ID: <DS4PPFE901A304FAFF1F481063F3809C5C0E3FD2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260709164903.1949947-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260709164903.1949947-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SJ0PR11MB4831:EE_
x-ms-office365-filtering-correlation-id: db2a7f83-9af4-4f61-35a6-08dede5dc99e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|18002099003|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: 1g3w3BYVwr1plYxan0Nn36q7D6Eh1TQRTjCht3l+1ORISq5w210Tqml/LVe+8ujJZjgvK++WogXraDLRPgoedp6LVqzlwcfvYbjyd7HBNPq5TRchnqw5fOWgSGELTf87jRLeNg8H5Gf3QggiCZQ3fuT2dk649qXv2DhbbIE+wMrgYgdVizsntjhoQLOidWHtLHwLGjI/XTaHEilMozR7sfNv1q6pABGxfpd1NYKDScAo1aVfB/tLsuoph29tiQzDjKeIrS3/8aCU8npMDytO9QaL3099QsQ1XqRz1cY4JVb6RYpbewNVGtLF/TVzzlKBBJi7gtAaRCQ/XSKTSNCTOUo9HsS1TUGBVZ1pl2GMiRy0ext3Jk12V51mDLBuukHmV8B0sdFFynfCTuwCIfkzBbQuelXEzq/61YwANRSQeNlQya7qh1VJ+nHfFFHRGQF4dRQTL+T4V50iNE+ERITvRV82Ra3eu2lhAhyHYQx8pC5o9g7j1JFcrWbPCaY4Dt53TzTBl7lixPwnlTv4PGT1TOqp4wLPxTXKlaYZHOyImZP2HFsiLUPBb1ctiwgQnu2B/FkNdYiHOrWgcWcibMcozWdvsEHJdJl3aI47fHChns011Rd/nJd/WuxbgIckqX/aBQk1YUfOItuB1soRf6VbNj6yIT402Mz/Yu/NODbn1vlAjxUCgyX7bfkADgD/QPG0Mhz/qQwgXbCGu2J1qjFsgxv3J87sJ32z3untt8MwPlc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?omP48IsWAEI8QMBniHnoIbDmsmbo2mQwjL7bR1RU8aAv3RHVs3G5LyM2LI8f?=
 =?us-ascii?Q?LNgsVSVD4x39gQYkwIO+dl4fdcMxJKoN8QUicy5rJDjCN5efaiNdMDcuqk0V?=
 =?us-ascii?Q?GHY88Je8ZM/9iHT2xo9JWX/MCKErFs6H7amWEaRYDqg5hrmg3lrrrH4h0bsc?=
 =?us-ascii?Q?/evK5J/L1UDpw0AG6kayL2e1/1/F4iALFWCfI3pVEaOmr++eBLM3wYcZT1np?=
 =?us-ascii?Q?v93rgLoytMzHSHz/4YvSKzSDZ3FFzC633UION3lL6zJSlIe5OvVpZsXmWGuT?=
 =?us-ascii?Q?qaDU8/xEdFzC/04j2hlH4rup9rPXQS+zIsJ3+pG4/CcTGseel1dv7nlrGE4C?=
 =?us-ascii?Q?C1f/C0AvUVWN00K3eVwu2f8YDS7K9f7GxerTOAfsZh1H6UMq6x5pWqpWLlLq?=
 =?us-ascii?Q?rRCqfU167AhqyQaoYsbdeIKO3UJDElBerB2yICvMYgwgz4h5/G5xOGSISzIQ?=
 =?us-ascii?Q?LQ16cT1bkuwutROE99NhxO5myhuhzgpgO8Rgyhgibc0j7jaHOIdBMHWka3Rr?=
 =?us-ascii?Q?igExSwNeR+dcSjoZILQmg/CFpOL3j/ABuR93NzEPW7P3JI9UACsUgYkdY/5Z?=
 =?us-ascii?Q?im7lzDonXa4lC+qVJrH4oF970+TC4uAkTbGNLQl8QRxVWC76ND633sR0aSuX?=
 =?us-ascii?Q?aWypiyBo0wvsyxCx7XbKS56O/lrINY4+8TLRPeeeSLmiv7xfBVS4baKvy5LY?=
 =?us-ascii?Q?E29/E9/hD3Y12jbFVnuD2NLBAj8hUZ2vJCt1LRNQ5pydfQVyCn7Ubcs96N6I?=
 =?us-ascii?Q?xEw0OUpKj5Bl4JS7SDfVoqHW5PeNfa8PONZfX4q78frjT8I7viZl5mZzUsUS?=
 =?us-ascii?Q?FNZhyJ9JEDGdpDcv+0mTgLnHiPLSnDtrq8ceSy3HMSuR0BMVx0YMRHl1cuYp?=
 =?us-ascii?Q?lspdbbpHeEs4iWZnl0IYKXmrHbLp18eWhk9Nw44y9w2l3M+aFOXA9EiqAQw1?=
 =?us-ascii?Q?HstQw/AZB49WgiXSJe5Z1DCQBAjcA2byzApjDknso84FOMvuduB3c/w7Gwus?=
 =?us-ascii?Q?AL4+JoInunA8Jmv2LOGgEYLb5M0SAnYGzHPmzFWKYhMjGf1cNsKzXbvSnJd9?=
 =?us-ascii?Q?fUTyCMXzpE94AkhaSqbGbu1Gf+rX0Wx5rVY6XpeCCAnHrQZC2movqtfhsS2o?=
 =?us-ascii?Q?xj28yRJs4Tkf/xyiFsB3SclZkk35O5XnxxlE66YvxiHxkbTtV+PuAwjn4Hkb?=
 =?us-ascii?Q?2/6iTLJ7mxdvoA5xzZZPqrBgebuyQqLTwAWgw/qLGCymUgm+Hwo3oVXa3vYv?=
 =?us-ascii?Q?3qnJxOhCvZCw+4NvW1sZZGfA41s+D7KFSGMubUuv+MuQRK45aiDM9XYKbxFL?=
 =?us-ascii?Q?M5rrPrent0rh7tfJqbrxVBL5qsJsJylQGZIAsHCTdrQAcqM8Xtro1n4b2PMq?=
 =?us-ascii?Q?h5SjC/+rjEOCnG+flR0Ghl6H5YNPa/7TsKrixwMoA0foyIN7edhweLrTBciG?=
 =?us-ascii?Q?X38GszJo08ma6yX4ZGkSbn5zFY6cyaYlEwMWZ5OpBf29BnlJ4QYpWeaGo+PD?=
 =?us-ascii?Q?Boc5qqWMbTBDPQ3cC5D/tznf+ElnvjmHlygEANdnlY2usb7d3+yGLkqCcmnV?=
 =?us-ascii?Q?q5HBhhebTtCOm/+xzHvFRNFciLd/OIoseEDCJryVHYUZDmKnBikJiOh2U4d4?=
 =?us-ascii?Q?2eGchT01tqLuuETBlF27aEEX0T7eRKdKGo80vKseBFkcNf9CeGi166v+itZW?=
 =?us-ascii?Q?89cN9qOjZNq+Dov5qIk/jowSQm6Sg/4CRov7rD1BZ7AtvRsoeHMHa7DIVKuD?=
 =?us-ascii?Q?QrZCpZKoog=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Md/7XBPFL2HSQ583cU6jIsIVMYpN7mvHLHbDES/hT94Ip+chJ9y5q/O1hmmgxmpTb+01kCKNV2/XAulQwJiWwUWti7D7Ry2chBf/QZpP/UjJjc5F7vLQYirlKUgRW/Kc7XN9hXyFpIefvJkU6RUIerNvinj2hYeLweHpES7Qfk9Gow1SqoFw8IJ1LHbeTUSfpvRR9w/lpf8/m+QJSCPGIW8UL6ZrIPpMonXIV0h+jYXPda+f9pNf5utel6S8bKZeRHhn44QetKjiJmZBcGC8lJ/JgBHMJSh+ENETrfDG2tPrGAXGLCp0ZVbbrMJMMGEyBCOsOE7Hm4r2nwlA0jKxhg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db2a7f83-9af4-4f61-35a6-08dede5dc99e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 08:32:32.9026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MZLbmDNiLQaa0nTizATBcxXIzWKRem63menTm8VYaGlE6/hPij9/RhwKY6RDk4NKEqbFH+I5Vs2Fpzpkqa9vXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4831
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00FAC73883B

Hi Mitul,
Thanks for the patch please find my comments below.

> Subject: [PATCH v1] drm/i915/dp: Gate UHBR SST SDP splitting on sink
> capability
>=20
> SDP splitting for 128b/132b (UHBR) SST audio must only be enabled when th=
e
> sink advertises support for it. Previously sdp_split_enable was set for e=
very
> UHBR SST stream carrying audio, regardless of sink capability.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 22 ++++++++++++++++++-
>  2 files changed, 23 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c048da7d6fea..272b14289e38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1938,6 +1938,8 @@ struct intel_dp {
>=20
>  	bool colorimetry_support;
>=20
> +	bool sst_split_sdp_supported;

sst_split _sdp_support should be enough.

> +
>  	struct {
>  		enum transcoder transcoder;
>  		struct mutex lock;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0922d23b284c..77c348509a0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3359,12 +3359,15 @@ intel_dp_audio_compute_config(struct
> intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)  {
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
>  	pipe_config->has_audio =3D
>  		intel_dp_has_audio(encoder, conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>=20
>  	pipe_config->sdp_split_enable =3D pipe_config->has_audio &&
> -					intel_dp_is_uhbr(pipe_config);
> +					intel_dp_is_uhbr(pipe_config) &&
> +					intel_dp->sst_split_sdp_supported;

Maybe we need to add a Fixes tag with the commit that introduced this.


Also one more question you said SST UHBR needs to be guarded does that mean=
 MST UHBR does not require any such guard.


>  }
>=20
>  void
> @@ -4413,6 +4416,17 @@ static bool intel_dp_get_colorimetry_status(struct
> intel_dp *intel_dp)
>  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>  }
>=20
> +static bool intel_dp_get_sst_split_sdp_status(struct intel_dp
> +*intel_dp) {
> +	u8 dprx =3D 0;
> +
> +	if (drm_dp_dpcd_readb(&intel_dp->aux,
> DP_DPRX_FEATURE_ENUMERATION_LIST,
> +			      &dprx) !=3D 1)

So from what I can see
intel_dp_get_colorimetry_status also does a DPCD read on the same register.
Which means for the same data we read the DPCD twice; Maybe pull out the fu=
nction that reads DP_DPRX_FEATURE_ENUMERATION_LIST and pass just the
Dprx value to both these static helpers.

> +		return false;
> +	return dprx & DP_SST_SPLIT_SDP_CAP;
> +}
> +
> +
>  static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
>  				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
>  {
> @@ -4726,6 +4740,9 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, stru=
ct
> intel_connector *connector
>  	intel_dp->colorimetry_support =3D
>  		intel_dp_get_colorimetry_status(intel_dp);
>=20
> +	intel_dp->sst_split_sdp_supported =3D
> +		intel_dp_get_sst_split_sdp_status(intel_dp);
> +
>  	/*
>  	 * Read the eDP display control registers.
>  	 *
> @@ -4823,6 +4840,9 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  		intel_dp->colorimetry_support =3D
>  			intel_dp_get_colorimetry_status(intel_dp);
>=20
> +		intel_dp->sst_split_sdp_supported =3D
> +			intel_dp_get_sst_split_sdp_status(intel_dp);
> +

Ditto=20

Maybe we can have a helper intel_dp_read_dprx_feature_enum() which gets cal=
led first

static u8 intel_dp_read_dprx_feature_enum(struct intel_dp *intel_dp)
{
    u8 dprx =3D 0;

    drm_dp_dpcd_readb(&intel_dp->aux, DP_DPRX_FEATURE_ENUMERATION_LIST, &dp=
rx);
    return dprx;
}

Regards,
Suraj Kandpal

>  		intel_dp_update_sink_caps(intel_dp);
>  	}
>=20
> --
> 2.48.1

