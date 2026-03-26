Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EM+sMo6axGmR1QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:31:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AAA32E62B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D56410E8F4;
	Thu, 26 Mar 2026 02:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFXhIFFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B701510E8F4;
 Thu, 26 Mar 2026 02:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774492298; x=1806028298;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yLj+h/L1dlUAvO0ZdS8RSenTRDdaaoPSOoEY0StO+dc=;
 b=HFXhIFFFueydd63D/m3+K1rQBtOCLlkeTpHg8l0aYeoHhIIO673pAhot
 3KAAJhApuErh2IQu/TGsEZSQCN+vMDKqylBYBwH2wOJYk1cpzUSKnICZ7
 PZ9LvIuz2gkkmkSGi+eVMxew4atUcj3Q84HCAPO8o/BE3qH9JqUy9va9P
 taSi0wrnlbmHuzvptkPCFveAU9tCcNjojweUDja071QsnNq8w15UpIYgc
 OZl1GbczXoacZs9AYfHcodAqVDdAE+iMw5RoIjlyTWlilHEr1Tf4bb2Db
 jtavt9SvD4kc2aBLMNH0BisimsLWb1WJoinZkNp3byzZDURdVIzzu80A5 g==;
X-CSE-ConnectionGUID: 9iKB3fB1TZ2bwRMgpgckNQ==
X-CSE-MsgGUID: bhguhk3TS/GNN6iyK6HLJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75259341"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75259341"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:31:35 -0700
X-CSE-ConnectionGUID: q1Moz0TdT5KYZlnwKSUWRQ==
X-CSE-MsgGUID: d4eFozclRpWxtsMGKPmuhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="262780248"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:31:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:31:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 19:31:33 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:31:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KdvtIQJBTS9FHQLZWdvJp+qGYT/Omy3Wy0ZRzIoVcrgM7c46gYHIvELgs4e6qwPIb37QRjwj2aNP37EN0bSqYQj7jL2v+86fMQXFY0t0kO1O5WJvSNj4ucRt+rJv4jwPRjf2Pp35OqYuRQ+GJYxXruL8gBj3eK9P8KBJZh602mcHiD3mDCIQ8Z6VRPkHDDz9xXNxB8Gg3NCkJ2i39KMUfsVQPI7rswyYzulJ3lgQOqvcL2TbsXj0fan9Ea3LzPxxNCQ1io5zXxN4m5bNpxDQGnUIST5Wv17O42RmQV95l3WZjMYTt3dgXwaZE48YqyrdszSxJAwy8eXcrwU24S6Qfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L6sCzNPguFLC6wSKs7sTM2uvhNQQAjDXbVjojrlEKHk=;
 b=IbNE135YYXSyjsI8t1FpqEXcf5u6UKkGd/CFFjsiH5VqA2UfMV3M1/LvBNj2o3nY/OSIMkF2b+uUQuuU35naoTcxt0sLMdgSdwRz77VWOoBUiTjyYFlgHhlDNQoIwKEHh/mAcg8x8KKnJnNj11NbvjDZRT8iq+zuiTWh1XibB3LCsKlEhKF7xDE4zDO/ktgZuK1jRk8TinlvWOFdi8A87yLa4efX0gBRvjAIQFqJwDwCGfARB83dQtTynYuo4Idzbn02l5g1bBtHouh2iOGgX0aRI21KVBeOMYyg7AkWbrypAwDa+ygWg6mCAOTqo+nfnek5uCh+z721x6l2yOSBIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB4860.namprd11.prod.outlook.com
 (2603:10b6:806:11b::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 02:31:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 02:31:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 03/26] drm/i915/writeback: Add writeback registers
Thread-Topic: [PATCH v3 03/26] drm/i915/writeback: Add writeback registers
Thread-Index: AQHcvEentsk3mHZwXEeGEL9ckzS4xbW/IGgAgAD39eA=
Date: Thu, 26 Mar 2026 02:31:31 +0000
Message-ID: <DM3PPF208195D8DC77519EB26B4F068BC66E356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-4-suraj.kandpal@intel.com>
 <acPKMLHvg08YGrrP@intel.com>
In-Reply-To: <acPKMLHvg08YGrrP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB4860:EE_
x-ms-office365-filtering-correlation-id: 2a033fd1-c59e-4338-9077-08de8adfca6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: tmOBtiPm2Y3xL7C9HlVkmFH10xGZVMwqblkom0j+k4n62xl0C0b9mBSnEoUy4z8fggw0kLKJYEb1m2/y0MRDt/QKBRpW66CjL3Dns8361B3So+klTbuwtOiwNk6IaYDyf5nnct42u4ygqMZIHgek6rNfgMUES3DFcsW2rHYDxip0hIFe8ez/hCoZoTWJQeya05xbQcl3lff8rLdbm1Sww0qICag7c3FUX1nInXEdkS+pOMcr/6Mt5R8z0VmfHKDTYyPaVCsW0R0J5eXO9GYNiUPzDRB/eL/ROR3lEOLtpJPwJDgAZZXHaFz/G2d/7rsB3xP4sXERdfP5wQjpAJKq3AYKvmSHIsFAWhGCLfX8dIafSauauDupTUM+x2CcrVYy6/+q2VtEvrOP63jT/ZWNcC7KQc666jFKua1wJ+F5HXJ1q33LfLjspjWzmZRwJIXst11elHw/TDJeOGzYLSGxS9f5N0aKckpzmpsE14dGqosRvUNvXoc7Fv4fdD0TW631clEuHkzbxGiTGFuweXsW3NctcCb3KVDIHRsv0GJkj/Mk6vieOMB19t97JJEBzCTaAqteOB0FRkmSSzETbCVQW0TP+MkOn5uUI8igDkjRaCtjJqcPkCc3uD9smc4dh/5hPWzPVQG7eq5yekVNqd/qDDuy6IbPFGjGQEyCbjTO/tSUSFG3CaZbUrys5ZZJ9BzTy5ys7yjYJqF1NkI3DxIr3N0z32oUcAhd4O2RowEh3yNhO6Zo8xXPpjzfLlUi4KKC8wXk2CWLa/WVWx/tNBd8CRZ6P3UErR9p0A2rELdlY18=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IGJ6mA+xx29phfiIjtV15vrt6H7ISQXLR9TpSbG4LZ7Q7mnzuypQxOtpQm?=
 =?iso-8859-1?Q?02B1YWiej470zISWQgcMAdCgOEGBA6R8O7NW+V1mc2bPQMKrcz6r6mq2+3?=
 =?iso-8859-1?Q?Kd9EXMWGT/ew4Lzz15m4QZKUJ69CQbwjQGMhAnlyBOb+VAuChTUbMg9vGx?=
 =?iso-8859-1?Q?OPN/GYczxD7/bJR6AQd4/zgJPgRUlS7v40ocU5ERd2gq+IKxdFt3dYFpOP?=
 =?iso-8859-1?Q?2B7Faha0E7veWEaLQct/XbAXdz1I4pHo8qc0prHSNepVRISdO1q/Vjf9bA?=
 =?iso-8859-1?Q?O4xT7J5MurIPNoel3qLQZ+MvyN+4iteJyhAz+Uw8LdH3tI66RHe29TXppJ?=
 =?iso-8859-1?Q?B5SMCzepSNX44jgtKK11lxvWn5/57RDpQeVNx9IaVf8u+4hymhVbDRrMA8?=
 =?iso-8859-1?Q?v1GFmJwQox5nrVRqIu5Ps4CdTXn4CYhkeR6hCyQQ/URI4SGdwD1NDp8acd?=
 =?iso-8859-1?Q?dthkdYb4Ijm2nJb9v5Qny0vSSczba4xpq3YacuTo1yaB/ymre20ovDGQNi?=
 =?iso-8859-1?Q?ov/4w8SNX8brFrIlttIHcJb3J/93MXo2ReaeEYx74ZwBrWase3pfJ5dCX6?=
 =?iso-8859-1?Q?VQwWOxaWHeI6JGF0FCJZL0IWclDGMe3sY/IE2suoEU2YQVoOySEllWMq9A?=
 =?iso-8859-1?Q?yTldGIS+zrKvtrRBHCryxvf6txgIQw4gwc2OjgsiCAin7S1fipACUU3tqu?=
 =?iso-8859-1?Q?puUL+8aPUqAtFGQblOgPOPySui/N4cu+a8kB99fbSfx2vXjVmtI0y6RpKi?=
 =?iso-8859-1?Q?mrL1LkopA3Z0KAgvqOnIDlLXIEWmEPGWJATz2S4S5Y8/4dKoeQ31ZmF2Ad?=
 =?iso-8859-1?Q?3qsNRCWzPbegbwH/jFh9PtCJ66PhgV2wpCDAT3yzG4E64LTbQ8YjjhAdFJ?=
 =?iso-8859-1?Q?CskRU3z6GIIDIGMl10MRfAKZlAzcaJyl5Gb0RHuoGZu1vAbC7yeDbLiO4+?=
 =?iso-8859-1?Q?oMdgu3jhOfsnitJ/g7FIjHA7IGKPLt3SdcR6ScNmx4xlZP7zKhXD/sRi/Z?=
 =?iso-8859-1?Q?5cU5c6J6DCZm9RUA1i593+8SLP+MGXMyS11bet31f+U3Ow/CYoHydOt3GQ?=
 =?iso-8859-1?Q?Ha5sQVOuUmj33Y8+68zev/g5lpkv6LCeTkN7GEdsxrM9HQz6qlqz5qyxZz?=
 =?iso-8859-1?Q?jZXAqqya11l3c8PCMjcH7jrQiHZGs+JRNW0lnXM62nJO2MDdi769BOom2I?=
 =?iso-8859-1?Q?oL62mTOVVnl9geyWU9P1pTWmWTIvSe6oJppLizb/a7/yuzLmHwxm3opqrL?=
 =?iso-8859-1?Q?PjG/MPUJ9CMawtfP0dSYWSaepep2j902+bz8/w8m7PfSEAfDfE3I2672HW?=
 =?iso-8859-1?Q?Kz3LsQchUREDUsmeCEwtoTgQ1QL1d8n+GwTsi7CPmYvORU3hvNzERkG90S?=
 =?iso-8859-1?Q?QYXLXQ0WRL1ZEjDtc5nesuBPFkxGY3z+4Wr6ZuLdKNaGPIXV/C9UUtIemQ?=
 =?iso-8859-1?Q?6C8IefihnyJcrYEqnDqZoUpyzw+gjDSdz6mPYIl2k5KrtMCLP+y+X9oTNh?=
 =?iso-8859-1?Q?pWPhmGZe6fgg1f5wJJT2SwRP9Q1vbJvtLqKmd+PS2sE6muBkUBmXlHsy0R?=
 =?iso-8859-1?Q?Uq5/5f2WzYN8ds3afuDYlqDKe/k3uy5Ouj3PZhvz1j1hedmx6gH0Z4yUH0?=
 =?iso-8859-1?Q?SmvKO1rJVDP/FpijnU4H0ibUPMtlGq1lhS7HBsaqICLsyY6NlnOI0wxQVa?=
 =?iso-8859-1?Q?E8Qm1Um8UH4Blk39wIk3ksBt6sy5jsIuntbRRL3KN1BHrChLjRdyOlyw6g?=
 =?iso-8859-1?Q?w7D3XLJyociGI7h71K6NK9MB6rBLv3zn//x6+3rZ2ESjuI+8gT3RwKaH0g?=
 =?iso-8859-1?Q?7KwDYvv+mQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: frVhyyu1woNLaG+3fK2mjdgi3EMohSVAb/y97dN92tMadErHgwNAXi9o+9j+InyW7cxOwgdN19HsBzzEwfTAqKc2nwzU0c675MBd2JB/VNHE3rb0LC5bwSBz+TtW9KVND/utqZsFNbDOdrxy345q3IOmLp6CzXvEGhCAzak+FYFF2aE/u/iLt4gUuYC4ocBoYG5wbzYYcwHw3dCiKP8uSwIEWROgJAjJrkkyy0rWCoaFuWLXnpCSnAT65dlw3CXfG/VgdowcMnvPDQ5Qk6LK8SLBfmMrHuHiQPWZ6QO799I7iV1JV6MJJZ5YpFAOXzIVpo380GpCyVl7U2tJj1u0tA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a033fd1-c59e-4338-9077-08de8adfca6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 02:31:31.1604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9r1WOone++adMrjMSZ2GLf04/QztktUy0KOigM2xdfFDYyPqU5XjTPi76TIUMIqdrC3BWZB7G5w/QL1eiKHmDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4860
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 12AAA32E62B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 03/26] drm/i915/writeback: Add writeback registers
>=20
> On Wed, Mar 25, 2026 at 04:37:21PM +0530, Suraj Kandpal wrote:
> > Add writeback registers to its own file.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../drm/i915/display/intel_writeback_reg.h    | 136 ++++++++++++++++++
> >  1 file changed, 136 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > new file mode 100644
> > index 000000000000..ffe302ef3dd9
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> > @@ -0,0 +1,136 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright =A9 2024 Intel Corporation  */
> > +
> > +#ifndef __INTEL_WRITEBACK_REGS_H__
> > +#define __INTEL_WRITEBACK_REGS_H__
> > +
> > +#include "intel_display_reg_defs.h"
> > +
> > +/* WD 0 and 1 */
> > +#define TRANSCODER_WD0_OFFSET	0x6e000
> > +#define TRANSCODER_WD1_OFFSET	0x6d800
> > +
> > +/* WD 0 and 1 */
> > +#define PIPE_WD0_OFFSET		0x7e008
> > +#define PIPE_WD1_OFFSET		0x7d008
>=20
> These don't belong here.

Sure will move it to the correct place

>=20
> > +
> > +/* Gen12 WD */
>=20
> BDW+

Got it

>=20
> > +#define _MMIO_WD(tc, wd0, wd1)	_MMIO_TRANS((tc) -
> TRANSCODER_WD_0, wd0, wd1)
>=20
> 'tc' is a name we never use anywhere else.

Yes slight oversight will rename

Regards,
Suraj Kandpal

>=20
> > +
> > +#define WD_TRANS_ENABLE		REG_BIT(31)
> > +#define WD_TRANS_STATE		REG_BIT(30)
> > +
> > +/* WD transcoder control */
> > +#define _WD_TRANS_FUNC_CTL_0	0x6e400
> > +#define _WD_TRANS_FUNC_CTL_1	0x6ec00
> > +#define WD_TRANS_FUNC_CTL(tc)	_MMIO_WD(tc,\
> > +				_WD_TRANS_FUNC_CTL_0,\
> > +				_WD_TRANS_FUNC_CTL_1)
> > +
> > +#define TRANS_WD_FUNC_ENABLE		REG_BIT(31)
> > +#define WD_TRIGGERED_CAP_MODE_ENABLE	REG_BIT(30)
> > +#define START_TRIGGER_FRAME		REG_BIT(29)
> > +#define STOP_TRIGGER_FRAME		REG_BIT(28)
> > +#define WD_INPUT_SELECT_MASK		REG_GENMASK(14, 12)
> > +#define WD_INPUT_PIPE_A
> 	REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 0)
> > +#define WD_INPUT_PIPE_B
> 	REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 5)
> > +#define WD_INPUT_PIPE_C
> 	REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 6)
> > +#define WD_INPUT_PIPE_D
> 	REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 7)
> > +#define WD_COLOR_MODE_MASK		REG_GENMASK(22, 20)
> > +#define WD_CONTROL_POINTERS             REG_GENMASK(19, 18)
> > +#define WD_DISABLE_POINTERS
> REG_FIELD_PREP(WD_CONTROL_POINTERS, 3)
> > +#define WD_PIX_FMT_YUYV
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 1)
> > +#define WD_PIX_FMT_XYUV8888
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 2)
> > +#define WD_PIX_FMT_XBGR8888
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 3)
> > +#define WD_PIX_FMT_Y410
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 4)
> > +#define WD_PIX_FMT_YUV422
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 5)
> > +#define WD_PIX_FMT_XBGR2101010
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 6)
> > +#define WD_PIX_FMT_RGB565
> 	REG_FIELD_PREP(WD_COLOR_MODE_MASK, 7)
> > +#define WD_FRAME_NUMBER_MASK		REG_GENMASK(3, 0)
> > +#define WD_FRAME_NUMBER(n)
> 	REG_FIELD_PREP(WD_FRAME_NUMBER_MASK, n)
> > +
> > +#define _WD_STRIDE_0			0x6e510
> > +#define _WD_STRIDE_1			0x6ed10
> > +#define WD_STRIDE(tc)			_MMIO_WD(tc,\
> > +					_WD_STRIDE_0,\
> > +					_WD_STRIDE_1)
> > +#define WD_STRIDE_MASK			REG_GENMASK(15, 6)
> > +
> > +#define _WD_STREAMCAP_CTL0		0x6e590
> > +#define _WD_STREAMCAP_CTL1		0x6ed90
> > +#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
> > +					_WD_STREAMCAP_CTL0,\
> > +					_WD_STREAMCAP_CTL1)
> > +
> > +#define WD_STREAM_CAP_MODE_EN		REG_BIT(31)
> > +#define WD_SLICING_STRAT_MASK		REG_GENMASK(25, 24)
> > +#define WD_SLICING_STRAT_1_1
> 	REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 0)
> > +#define WD_SLICING_STRAT_2_1
> 	REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 1)
> > +#define WD_SLICING_STRAT_4_1
> 	REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 2)
> > +#define WD_SLICING_STRAT_8_1
> 	REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 3)
> > +#define WD_STREAM_OVERRUN_STATUS	1
> > +
> > +#define _WD_SURF_0			0x6e514
> > +#define _WD_SURF_1			0x6ed14
> > +#define WD_SURF(tc)			_MMIO_WD(tc,\
> > +					_WD_SURF_0,\
> > +					_WD_SURF_1)
> > +
> > +#define _WD_IMR_0			0x6e560
> > +#define _WD_IMR_1			0x6ed60
> > +#define WD_IMR(tc)			_MMIO_WD(tc,\
> > +					_WD_IMR_0,\
> > +					_WD_IMR_1)
> > +#define WD_FRAME_COMPLETE_INT		REG_BIT(7)
> > +#define WD_GTT_FAULT_INT		REG_BIT(6)
> > +#define WD_VBLANK_INT			REG_BIT(5)
> > +#define WD_OVERRUN_INT			REG_BIT(4)
> > +#define WD_CAPTURING_INT		REG_BIT(3)
> > +#define WD_WRITE_COMPLETE_INT		REG_BIT(2)
> > +
> > +#define _WD_IIR_0			0x6e564
> > +#define _WD_IIR_1			0x6ed64
> > +#define WD_IIR(tc)			_MMIO_WD(tc,\
> > +					_WD_IIR_0,\
> > +					_WD_IIR_1)
> > +
> > +#define _WD_FRAME_STATUS_0		0x6e568
> > +#define _WD_FRAME_STATUS_1		0x6ed68
> > +#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
> > +					_WD_FRAME_STATUS_0,\
> > +					_WD_FRAME_STATUS_1)
> > +
> > +#define WD_FRAME_COMPLETE		REG_BIT(31)
> > +#define WD_STATE_MASK			REG_GENMASK(26, 24)
> > +#define WD_STATE_IDLE
> 	REG_FIELD_PREP(WD_STATE_MASK, 0)
> > +#define WD_STATE_CAPSTART
> 	REG_FIELD_PREP(WD_STATE_MASK, 1)
> > +#define WD_STATE_FRAME_START
> 	REG_FIELD_PREP(WD_STATE_MASK, 2)
> > +#define WD_STATE_CAPACITIVE
> 	REG_FIELD_PREP(WD_STATE_MASK, 3)
> > +#define WD_STATE_TG_DONE
> 	REG_FIELD_PREP(WD_STATE_MASK, 4)
> > +#define WD_STATE_WDX_DONE
> 	REG_FIELD_PREP(WD_STATE_MASK, 5)
> > +#define WD_STATE_QUICK_CAP
> 	REG_FIELD_PREP(WD_STATE_MASK, 6)
> > +
> > +#define _WD_27_M_0			0x6e524
> > +#define _WD_27_M_1			0x6ed24
> > +#define WD_27_M(tc)			_MMIO_WD(tc,\
> > +					_WD_27_M_0,\
> > +					_WD_27_M_1)
> > +
> > +#define _WD_27_N_0			0x6e528
> > +
> > +/* Address looks wrong in bspec: */
> > +#define _WD_27_N_1			0x6ec28
> > +#define WD_27_N(tc)			_MMIO_WD(tc,\
> > +					_WD_27_N_0,\
> > +					_WD_27_N_1)
> > +
> > +#define _WD_TAIL_CFG_0			0x6e520
> > +#define _WD_TAIL_CFG_1			0x6ed20
> > +
> > +#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
> > +					_WD_TAIL_CFG_0,\
> > +					_WD_TAIL_CFG_1)
> > +
> > +#endif /* __INTEL_WRITEBACK_REGS_H__ */
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
