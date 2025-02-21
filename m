Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A423A3EB79
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 04:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A2110E207;
	Fri, 21 Feb 2025 03:43:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m0+mpDD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3DC10E207
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 03:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740109389; x=1771645389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ptSV8cKLCuM/DhXyp/PQM1uK9w05BJOCXb/C3QY+A3s=;
 b=m0+mpDD2sFWZnEmQ/R8HzmQ8W7aqbAEGxaj574rCL1YHK6OQuu33+ACM
 J09IpXXwkNBV+mVWjcCtfmZ1WcotXs1lG/XX0UG8T0DSKdznizEgYRotP
 L4+cOCsj4uTN2h0O2iaY2EUbBDX3Y4346zUjAWBcx57ZTkYAI833N7Usd
 rhEMZoEOFH4Q0erzLat0NGY/EeZj5CWlfYHnbAm3xZw7lvUVxPRHgAaIr
 sJs7VlOF/rt9esGKII2t6vOmIiX4wmNdI8MI5s80Vs6K14YNF6b7wg0ZU
 WT34rUpvQ5x5D+yTPbYqGqrp3FqUJy/ZHr/gLVwwKRWM7eeLQFGCnuDjs g==;
X-CSE-ConnectionGUID: wDX6bY8PQ3a60UWwhKPlxg==
X-CSE-MsgGUID: ADqEZRZiSWi0/UcBPyb4ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51536717"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="51536717"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 19:43:08 -0800
X-CSE-ConnectionGUID: fQyVDd5CQQW5UgQNBsOEJw==
X-CSE-MsgGUID: ciycN4HHQYWZ/G+MU1+42A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115746454"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 19:43:07 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Feb 2025 19:43:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 19:43:07 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 19:43:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eRevUIcaYIEdgM+4fF0VWkOSvG9NdiB4AOAksUl1GlE2wLdrO53M1obpXx/TB0B1+9S9LduznNX3tV45HO+V+e95ZkF78A4t2F/9dYIzoC7Og2dqd0baGDc69OWr0KHd1G/mzD99vpvoWWrQ6bkaPTLG/Gvc2OpbHw8wODX4tH3ek0TpGNcC+g1MRhDULxbyr5ZXSppT10fEqmBPbP4rpxjcEmD03x3oy4/oqJ0Hk4l/tTa1R9J9m0hEnj/R+o3lYunObLqO7Sg2AO9FlwKi2Y/ag1YWacXKfp7Vw3xXpTRCHPQeAPmIPLcVKz+Rc4PA013OBDDreW8DYE/7ROhwuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WcJ7oVDPGk3ScmHT+v4YeAvidlWf7+FnPVJkz9hPAdQ=;
 b=jP7qr10FYzjyntVNBY4ToWwTpe79g7wQbvCykm3DdLp7F6Yo1MfD7mpIBaOdfA5mJL4cIWzFz2zYAMzZ9EdpUWelOcWbJvI4eypLERrgR5sHvQMqJPsg03WY4INu7KGOT6hmGzcuIP6mmOrxCHXTil9KGRPfUWCIbg6TAgD9OmM+nB/XW2x4IW/ARRewPOolJSinY8yCBAvx3+4nIarNg3dySeoQ5O9xs/YBko951kojhleDM1pifji1/UuIH6rkC48EMkJen/GhCEUFb2PWSc0u0Z25/1VDgKpvrWuMXcHPG9T4V828nN5ha4NF9xIy8uRsMTf+ZEBzwNFVmdyXbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Fri, 21 Feb
 2025 03:43:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.013; Fri, 21 Feb 2025
 03:43:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for DSC
 1.1
Thread-Topic: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for
 DSC 1.1
Thread-Index: AQHbhAPihhhzikqTIkmeWiHNP9CS/7NRHG9A
Date: Fri, 21 Feb 2025 03:43:05 +0000
Message-ID: <SN7PR11MB6750624A2D50BF81D2E32D82E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250220032603.434570-1-william.tseng@intel.com>
 <20250221015637.507741-1-william.tseng@intel.com>
In-Reply-To: <20250221015637.507741-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8344:EE_
x-ms-office365-filtering-correlation-id: 313e5646-3621-4d30-cdab-08dd5229d99e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gFDW/VeLvoWVA0gU110+KF5wnq2R52yM+E1dAGwNmMB/KBKLB6gom16IrP9e?=
 =?us-ascii?Q?vAFNBv610m/EeKWKRdSt/XwMLQxOcF2VOcIFxXuGHhze0fsY0NXzKqdAwGy3?=
 =?us-ascii?Q?qgqwfezBkwSgh1RHYW/lIZYtKRkS2fsKWL+XPBXDwAd4aoMqq2qYEm8ayHvx?=
 =?us-ascii?Q?dSYkbi2fLM9l4Uji1D0aq+JvPtyo7r8LM4Gv5gGWV23zEI4q5H+deIInw+Ad?=
 =?us-ascii?Q?e2djzLS/jZ5H4Cb+bwa7P+SK7XNg8k4FbztBgQDK+G9YEZ7gyZQfEi5QlN8E?=
 =?us-ascii?Q?GJCJNiy4HVvGvqixOg8ZwmjiA/hC2UAt1rgJR2h8oy6Zk1kanigfL5pJdgyz?=
 =?us-ascii?Q?SVwv4C8+JpaYcPqooz/xGg7yb13mj2viFQNO6cANMEOKnkz7mBvrfJG8TRu9?=
 =?us-ascii?Q?6/1EL0mJ3EOO1hLXLlm9PGVZpRMSVWStCbIYVyZSR5UcMLthS/XUjzSyaG72?=
 =?us-ascii?Q?vNDMI4eCkKuWlvkwSKGyyeeUyyftjGZexHabOFmZWa8C7shWbBK75v02yrgu?=
 =?us-ascii?Q?X9xWjLevepkZOLmh5nQSwgPgDzD3EmYAFbqFe9u9/Kq8RSmIlBpGsQd9VfP5?=
 =?us-ascii?Q?fJgT5X6dSQPO2+oQWOhrBjRh2piub9emRCr1v5S/KdTxpUSOQc03Xns3lku+?=
 =?us-ascii?Q?bGiXI7bpUxm8LaACfLLgWt6Ttzxk9I7z2FYNDr51UjmO4LSrUYXw1J+cW6RV?=
 =?us-ascii?Q?SMPDdu5D779TgteKzEDjNo6JQuvDVjUV6r1X0VuN87t2CS8DO6zO+sr3b4Rb?=
 =?us-ascii?Q?LdAH8V4MVkC96ouNdSxdWcMgBYdr0aabO34D83dRLW+1p/hermjB4mZLZVy5?=
 =?us-ascii?Q?ADeDp1ce4QBvAaP0dCEcTPJC49+2yjMPidEaMj1VsnjDjuXE/0o5a3dsFzev?=
 =?us-ascii?Q?knF4AbroEf7lgAQ0iAsT3dMdr1lgVXxUIBaq0EuQEUV82JVLnTN5VwL08N9r?=
 =?us-ascii?Q?NblgTOl8w6vLBfnxwl9xhHmktGvdu09rnA16RhMUESR1SFpDomZGHtS8TW6p?=
 =?us-ascii?Q?m8TT42f/4zmrCu7nSC1RNYUuqKULUlcW/+kpk0G/1jJ/Gq1g3q57bClrf+3q?=
 =?us-ascii?Q?cEfoS2ZkUUoEtWhpEga4ItbIf/F5BZMPk6akQYjDhPt68Bs/0nsYX7ndhMlG?=
 =?us-ascii?Q?0ujCJyQ04ygTTXKJydXY2gQXr5H3X04OlthlunigZ/hMQn7SWTvPNN6B33Pt?=
 =?us-ascii?Q?EgIBCSggrcYnCnc30ahnYPiKIFMh6L0WfapZg/qmFJthGRhJO1laymxAJFg6?=
 =?us-ascii?Q?UXdVAspHqCjSgEiQw4XSM3zlmrhkZoft2X9Df1++hvyEwAlA4forqkmftrvA?=
 =?us-ascii?Q?ZGTN/ByKrGnZX2W2kFWAkccUXGsugLOG6SW4D0+2lIYahNwSUhWOqLB/bAt8?=
 =?us-ascii?Q?QTIAmyJiVzxtR2/Q/iZJNYFWRzPbqKMpt3IeXgpPTZkQocITZJBw3uIIXcYY?=
 =?us-ascii?Q?HhKYeoqqHlYqfh0kJ3baCKMGfKtVQxIM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rcAAgz4QlKdiSj5V1nbHih7cwD6ljlUcKQ5nhG6vows7xyQOLvqjZfnraKt0?=
 =?us-ascii?Q?wntEIsngkBdZdykUfeSChoU6fguUE5RYBhZPcCNAFkpVFhccY8s4WCV+03JI?=
 =?us-ascii?Q?1X24STbHbW3hnM0WkS6SiiVnNx4UqNacfV8m6Pxz8PiXl1sAPyldAIYEvy89?=
 =?us-ascii?Q?lMOWzWh+Ke3kHvuny7EjyRXMa0hJBdR2fQfyVkqHBqpfCuJV00b7xTGFncDa?=
 =?us-ascii?Q?73gZl40npkGo56mPKe5BUz4xiCVsQjFrW2bJbGAbCI6mflCdV/LKNyJSyJlm?=
 =?us-ascii?Q?IZ0lb8NNeD7fk9AUneMv/EvVU0nGeOl1XUApUfXaoiK8OHE2fdmVipWDfeGF?=
 =?us-ascii?Q?f6UfG2hqMtMPoqW2bfSlHRcMpF8qKr8lpK463zTqf48azuwb34UCSoFptzfc?=
 =?us-ascii?Q?PnfGX0fKKoobDS+2yZ8bCFmIaFsF8ZlA5WyKBSX+m8s5bg9YSdHLD7PPxOfd?=
 =?us-ascii?Q?xgaiK+fOPC0jqvqGNvv973hV/czEHq7La8OMEgdmx59GnT2JNDpmKhX2mvMC?=
 =?us-ascii?Q?8hj1vlayZJpsQ/pwaBpd+g9TyEJ8xGqzSzUU4FhSchfkLLWMBBwYtDW7wxEz?=
 =?us-ascii?Q?LCIjeJNLJb0Pd7lN7BEhVor6zUtA09Eg7ABNxRRhGSX/QaJmNXSbY12MPx0o?=
 =?us-ascii?Q?FPuxIQ0zirXmIl+owSe6azIKbciYgjUrA3OcFDYABU4EOQ6wYfCTM9JeqVt+?=
 =?us-ascii?Q?ueIy2XxU/UBxJp13yNfVlqjEhCBFWRCAcE99WJiFMH4Iyu/Y0NUupRl+EW6H?=
 =?us-ascii?Q?WosP9+auw66PdBGjKTJuiWrhNb/UYRORYTC8bL155SsKCEizsYPCl1l0GLRa?=
 =?us-ascii?Q?lNBxHUwi1pic8wpMSo6v4E4o7Tsw3gVlYJ/00ek1xCXZ799gzM1Oc84i10sM?=
 =?us-ascii?Q?PsBpf1G1K3cqCgteXhpQwYDA5xGWBkfGUtHrDrDAgRDtBu27YO/vapxy6mvX?=
 =?us-ascii?Q?1DBY3sdBj0Z2X7NGsVxXBYrT2CPv0/142sbdLIZy17gBl4YmKw6O351zcutX?=
 =?us-ascii?Q?oZWL7w7IuZjTFNxe0ttjtxJkKfpBRAsjPpLOQl9QXhOrjKuBtHxqfo9WRgd7?=
 =?us-ascii?Q?Oldota2B6mi9r08mG69Meh+z3k6+UQ2Mqi+Kzgd5yazmymeWqrbXyqAi0K33?=
 =?us-ascii?Q?zd/DbQneDoGyYIM0g54PTc4JfIv+t4p/hyRtxBmTEj3oVqlBsqgutWIg1uVO?=
 =?us-ascii?Q?4Q/ciJIqQsJulmhbIZXOwUq78XqKQStcZKqg14V3xRLscL2vUHNOGFkfk7PG?=
 =?us-ascii?Q?9bn2qRu/ENTJ4QjsZgdwVPX3dA4XcRUNHemW2ukyAu2jIUKHGM6NzR5tCIas?=
 =?us-ascii?Q?tcemtf+ZoCh0hj5cPQfaNwK/YS9WvLxu22LVOBrx+W9AbakesCqiIoF0Mk46?=
 =?us-ascii?Q?BBdKveJ/ZV3zi3v4DULewJtu4ivQy2HiTcOJAcMz/NA+3Bniw40pH0vHxM7g?=
 =?us-ascii?Q?AqPmJ5Pl+ENAqFmUX+jgnBAEmWM9NZ/U0x5ojRmfklF/nPvRuVme8xfqNTab?=
 =?us-ascii?Q?COW3lgTzIBe0T5FlDpEtTWVi3hObbc37tFBiuBD2lLH71iIk30D5ItGfb1gq?=
 =?us-ascii?Q?aXigxMqLqmmprCN1WT603MnwQfJ7FiFA/7bKu+jp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 313e5646-3621-4d30-cdab-08dd5229d99e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 03:43:05.4278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ysj7APxhBrLy7w4m4ooJxruiGk1F0aIeJbS0hDaX3Qoh4XMlLrQHxrS3bxZQYBtaBkjCF6P7nD9TLhcSre9X0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
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



> -----Original Message-----
> From: Tseng, William <william.tseng@intel.com>
> Sent: Friday, February 21, 2025 7:27 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>
> Subject: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for DS=
C 1.1

I think you missed one of my previous comments in which I asked you to send=
 it to the intel-xe mailing list
So that the CI can test more thoroughly.
Also this patch is causing a regression on DG2 + DSC 1.1 config my guess is=
 it would cause a issue on any
Machine 13 and above with DSC 1.1 when input bpp is 24 and compressed bpp i=
s 18

>=20
> When calculating dsc parameters, the rc parameters calculated by
> calculate_rc_params() is incorrect in the case of DSC 1.1 and
> DISPLAY_VER(dev_priv) >=3D 13. It turns out to be some noise-like lines a=
re
> displayed on a MIPI DSI panel supporting DSC 1.1.
>=20
> The function calculate_rc_params() is implemented by following the Table =
E-2
> in DSC 1.2a and creates incorrect rc parameters for DSC 1.1. As a result,=
 add the
> additional condition (vdsc_cfg->dsc_version_minor >=3D 2) to get the righ=
t
> function to calculate rc parameters for DSC 1.1.
>=20
> v1: initial version.
> v2: modify the commit comment and change the condition
>     regarding DSC version checking.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>

Needs a closes-by tag

Regards,
Suraj Kandpal

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b355c479eda3..b0a7a2179844 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	 * upto uncompressed bpp-1, hence add calculations for all the rc
>  	 * parameters
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +	if (DISPLAY_VER(dev_priv) >=3D 13 && vdsc_cfg->dsc_version_minor >=3D
> 2) {
>  		calculate_rc_params(vdsc_cfg);
>  	} else {
>  		if ((compressed_bpp =3D=3D 8 ||
> --
> 2.34.1

