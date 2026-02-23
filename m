Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACZoOnY+nGklCAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 12:48:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52953175ABC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 12:48:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C09110E34A;
	Mon, 23 Feb 2026 11:48:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKespGdi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BDA010E2E5;
 Mon, 23 Feb 2026 11:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771847283; x=1803383283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ygv/nPFxglyvIUOr8zcpj3OcNvUbMPC617F7Mm9D6Gk=;
 b=KKespGdiGSRiWAkxWCGqdazOT9ECXih5CEH0O0JfbRXSrMkYRUfgbX29
 TS3Z++7AhiRY6k5Qp+QmDS9LWFLKt5XDFesejKvn6Bz9byQ6g0vG7Nojg
 V6X65Ok+C317zsysulyWDDFndkPKs+LsKTSk50P6+xQ/t+ljRSytXsNY0
 h1OLvw1rqOsdtFsoplqNZrlEarA/k+/DUxsZuQXEPbYt57pFLW5Ki8Qzg
 G2Qdc7eRWBClkwmI9N5TS14Y6SptLIduOO/2TBMe4rPO1AWKEkTjd+LoE
 Aui3h1//Bd+Ii5JgjMzn/Uift01B+1M05xxjqxvdn/EobjwZacpAR3hSr w==;
X-CSE-ConnectionGUID: L7PMoRFvQUaNuhzbLhP70w==
X-CSE-MsgGUID: TTbwNj8vQf+Nq5ku+dpYRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="83465133"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="83465133"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 03:48:02 -0800
X-CSE-ConnectionGUID: MXq2dWXPTTyT3R335a9K1w==
X-CSE-MsgGUID: 65gg6kdoS36eYJ5egBf52Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="213949365"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 03:48:03 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 03:48:02 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 03:48:02 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 03:48:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aN+d8rbjGAC9aWd4R+ceveWOXv9TaeBYDouy3dsadmk626fkS5ommDuM02naa3B2GcweQOyZlI4dKdX/Xm0Uq5fFjNJ4uo1cMx508xomCFS1j8Omn8eQ0Xj956A1M9bD0skU9bxY+Dm2waa/jIGw6na0eeAPs6yLIvCGLCQrtqvURAYKD3iTde98pOi7V2+EXEyfNtMEjFm8ailv1DLUww1/c6/kTazepdWsadRFyc6Tm3DBuAMlRB/LKNkuyku97BYB7iY0QakE6q/zU8NCaw7JufYuMH3Yic1YTagpTXQG195LCMGPQH/Gi4W/z5VEXwTJkrtujQ+B2jlr5NhH0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=533ODbsAN4q4mha7qc4Wud0w3NlsshpzUEK8dSc/0gQ=;
 b=vbUZATfNlQW0YBq7PiF2PSDZTAztkkB9mwXrfVATE31PajIwrGrG/Pso8q2+mNjQP9Osk/8DLPvknbBK9AeqE/OiMj4OH1ybPo05WJlomLsBT0xxPpcKFSjpNmE8ng4Y2fuRStCi4NPON5wJRkCqwAl4HeYwe4l1Z5gBjDcQycihUmBNcq6Q0+kGwjHP/9vUJAxZBt6RQH2y6eBgCafTO2iQSO48OqUQiDUUafzg0smVVcSQZdwkHO5T8Yqa/2w/etbmtgWDqJdLJnASiz2isTR9RI5MER1+NKSRoDTart2DkpDW2B7USwCStEaqgMfWMU+a2yBi9AiGJvlake9syQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 11:48:00 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 11:47:59 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH] drm/displayid: reduce DisplayID checksum error logging to
 debug
Thread-Topic: [PATCH] drm/displayid: reduce DisplayID checksum error logging
 to debug
Thread-Index: AQHcn9IHMUzIJgCyKE2o+uNT9MSJh7WQH8KAgAATS9A=
Date: Mon, 23 Feb 2026 11:47:59 +0000
Message-ID: <PH7PR11MB8252364C58CFC0216A5FCC298977A@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260217055002.245099-1-vidya.srinivas@intel.com>
 <40f54d2357194813cd16e71a49b719f8c35b1549@intel.com>
In-Reply-To: <40f54d2357194813cd16e71a49b719f8c35b1549@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH8PR11MB8108:EE_
x-ms-office365-filtering-correlation-id: d2c06458-6c5a-41cf-9023-08de72d164c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KzNlzeBaGNEoIKvAujdX3GKzFMY3UN9HAHoWS61cu4B4Gm0F5WpzboCGoHf5?=
 =?us-ascii?Q?AF9Ltr9fJ7FMWNLfqRw+M5giQllmEHCp86azHyaND80FFSRQm8d1iChCENLz?=
 =?us-ascii?Q?n8yrrve9hiV9kdDTtVhaxGgdhcQ6q1jNU8MmSAPNpXL5lmhpRw5RrMhUHvuW?=
 =?us-ascii?Q?yHA17A8mnN34Di7O5jEHTnYWAyIAnCHK2p2eZ4q+KOQJD1piDS9Ej1SNyh24?=
 =?us-ascii?Q?y9385nW3EbBxNGzb1bPXtkDMJWmmOQcybLyRBP9ENxwcVxrKif4ArO7Lo7RA?=
 =?us-ascii?Q?dWoHVQ+BJGxHvXli5Y3Vmicae/OBo7Fi8uOKJo57jyJu/dBCJZzxao63rqPb?=
 =?us-ascii?Q?ckTvMn+sQrfeBfRrmZetZoyzBU7Dgcuifz6UwOr10lT9DrXEWUrAKinvJVMN?=
 =?us-ascii?Q?+8A5NbxzqLe22ymVio362w7o3lwubLQDGquXVOuiUlsN9cwPNZ/wg0AVsyLx?=
 =?us-ascii?Q?xZ8DM2KgVIQb5ArvMWtvI5uYHPMVAEOWQWaKzXFplRuYUzQcUzA3X3XBK05j?=
 =?us-ascii?Q?btYEUX/z/Foks7MnQvUetOJ9/hGvT3XG0Iis2xnljTGbgJUxJ+8ZlK0xhcua?=
 =?us-ascii?Q?RkdYXp5/OOTvuRswDS9aGn02DOIkBbxinZNnr2gJRsAmJvQO8aafwvCTfk8w?=
 =?us-ascii?Q?XrYBq0kjJs/KUpMN0aOJzAp2ePRLfVmNFg1bIy99sg4yjBaagFLUvVxzeRUn?=
 =?us-ascii?Q?8a3UuH5ES/5kYAaiZ6Eqk2Mv/JBnRXDQSGDeVM0D6/Hd+XHOpHdimvwdQY/q?=
 =?us-ascii?Q?hDl/qkLKxyovZtmums+Hao+yexCZOXteZFOcWnakf/OZa/TDOI6NSNdyAWf8?=
 =?us-ascii?Q?9dNWHFKYdcaEm4W4WoYgrEimfuA4kNfPHeXM1UsjFFsVTyWffZW9yKf6m9um?=
 =?us-ascii?Q?g5DZ4ZKrd4RyeuG/Zwnn/X59WPCac1D7COMS6gEavCaO64+r4EcJKSIF/9hh?=
 =?us-ascii?Q?3XFUtYAhO5aY5IOilaPXCgDKj8amSDg5l2TEs+BYTYm6zWR0tf94mVQjDo0d?=
 =?us-ascii?Q?OX922/GCnHK4gUrMV2Z4uvqatuPfnzyhnZTaMwJ2baJ0iqUBWc5XUwF4zIBt?=
 =?us-ascii?Q?l2fRPgqjBCvvB6j/GLDoAJ+wDD4zj53qHmMK3TRtQ1UqsnNCoqF7PfxhfSoq?=
 =?us-ascii?Q?5tGwedvLxrlfHXmazfVQ/Ns/N0XouvQd7jlB3c8YZLQFAj+1umrlkJ9Ngr5h?=
 =?us-ascii?Q?b2+lwlr3GCukJBxdyRl8PGsfwkBAf0FeCx7sp59IBU3o1/z2kT1lha7qx0Mi?=
 =?us-ascii?Q?AEpsqAcv6RL17M1zQVDhKKTdNNkadefOYCTq+XVcFlid7+/64qnF/X22qqji?=
 =?us-ascii?Q?1jnCwB3Mn/kFU3ngEjm8jt2kiiJ6xZ+OP1ZkO9L3yUqSeXsoxh9GxuuPAXgO?=
 =?us-ascii?Q?Wr4LoZzLQSJKgvOohvaKdZthLIKAL3uB4c5QyB8ExPzuYEgaK8Dx+mOV8GPq?=
 =?us-ascii?Q?DjZCgWBwGWjp8B6vOPLkYpGSJTzxONXLoHjsgR3MMyiDuVW0xdLVW7SepGmf?=
 =?us-ascii?Q?XMLwmaGxxgN/DRI5HDcEZzrKrzAscjtDP+WgbjUTu2xXZnObIlMZZX7NF38B?=
 =?us-ascii?Q?nMIN9fyb1d1FyaiTnxjVehZfbHW7pDaHsjUfvM6zqeF4cnwZiLhnNDARkSYb?=
 =?us-ascii?Q?fFqSLXHLEiGXRNBsOXAZciA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yzw6gsCQaPi2lLKG9LyLSDOAdsUNVk8UxvaNGKXt505Rat1HDIKAzLSKOwOa?=
 =?us-ascii?Q?nR9L+En4ElFECNCqpXhEfFa3rQkYRO0Lp572EsZX/Dfj6UZ/WJa6W9sBuz7b?=
 =?us-ascii?Q?dNhZClPdPQvUWhAz4rZ4WcfuF52OQpmWbXl5YUjF9KfZlR8k9v/lJ4zIb0uq?=
 =?us-ascii?Q?WMSyweaJqGPXrZ2ZZJseTPZHGyrWmLga+sryDGMJKoxNzoRjaxpag8OsUB8B?=
 =?us-ascii?Q?KMLmsLAJohz4snU/WsY6t6wLoThdX8cFg6iLTLWKeomO6cuBCHEvXyhBAZ0Y?=
 =?us-ascii?Q?325SHPI/XoUVyHjCvKcsLV5rvUO39geu/xvOO9tgqsMaBrvs1JvlgZQ+B0Am?=
 =?us-ascii?Q?nrUAPT8RF+NHLjEku9863Yi3m8DWq7LwARm4KfAiQBxZoXRgBj7XcLWic22f?=
 =?us-ascii?Q?DrmUH7n4tb+L6fx6Juh3rJ9eAQEO6x9l2LtmR+dvh68N0LGOJvG39A1airBQ?=
 =?us-ascii?Q?N5Oj0YpaHo5sNia3NX6Q+KhYt7xIpdaJihuptuAXAK+tdXDV7xzBuXd5mF6o?=
 =?us-ascii?Q?l2//Tp9jAeyID8k9f65QwHyiUB7q1NLXAM31UL7S22F29EgHvOERfhA6zCHL?=
 =?us-ascii?Q?nqUusjxtVqgQwmyIA21VWDT83QoZoM0MGwPsrwq0UXtLlR0VJ1s+s3hCwBxn?=
 =?us-ascii?Q?hTxhagFXz1d/MWkGi9otUtRwhcOeU0d81bq56fqwgjMgEnw5bin9YqTFm8+e?=
 =?us-ascii?Q?IH8YIeMAysyEnQG3zeGAgst40UIDf8gVlZ5jUSqNUzayjwFsLUWYafejn9TE?=
 =?us-ascii?Q?U6ZUVztG3v2evikHIeZ+hsZtLgIl0IdFNVsDYZ4bPlmtdizS+yakZZDD85rn?=
 =?us-ascii?Q?79AaTBrtVtszJbF0MkzqPQ0FgaowrtufQV2zwDS8Yz4kxkh9p6dDaktfY0Uo?=
 =?us-ascii?Q?Xl/zEHtn7+1x5b9s2+eVHF7Lmg0snTxd8fpVyFVSvJmz43gavG5vrXSjTYuo?=
 =?us-ascii?Q?uBA/dk3phyppklnYyEyC4aSjaLUkE15jZndwwBer8Jv6y+OxMiZ32/r4IWvu?=
 =?us-ascii?Q?rtyJCqo4l7/fLsoJEAi8UOId0YaNTSHRHUKXWwi1EuXSTlbZsM1zU5xEG8oG?=
 =?us-ascii?Q?H/LcbU4RFrhPlMfuzuMHbB73cT+rNI37mhcZbCL02wDZAMFzeVCxAq48iyje?=
 =?us-ascii?Q?nhFDGgFDNPbGgVp9BLXtyKcleBpAKroIu+CPGfFgWF6y3txdbBDUz/Wo1u3v?=
 =?us-ascii?Q?NCaynkRkWuqztaHjXOk5Lo7fFFdkccuNedbQ0qgQgQVFTR8KizVhB9QaKS8k?=
 =?us-ascii?Q?XWwA5QynfX2YdEbRdw4DtFMP5X1m7f5JVQnmtk3OJjQnA6fmBdOCRUJQI4xV?=
 =?us-ascii?Q?GgWZxTNXfnxx3mZHRyvzdQWx9Um5nZFkpk9RYGfE0K6j0LUuL53kTNaQFOyC?=
 =?us-ascii?Q?b8t6oNvKY+04KoYK3gOJMxaciBZl2ICIEpLFvVM3GVfHDolHD5yrGuXjDsqL?=
 =?us-ascii?Q?H9u55aDkRfPByyL5v2AIt6s1u5UZyLJilM05MkL7s1UA/Bc5zoeAa6XRKpqI?=
 =?us-ascii?Q?Bx00UZgrWXhM+awK0SLl2JUI17Belz3EdA/NqHej5xJ9WLr685KHdOdthUfO?=
 =?us-ascii?Q?Y5p8+Zuxdv8C0vTzh4Vz2NMa3SpIVW46H+595pOU8QmcZN1INxX31rOueGUV?=
 =?us-ascii?Q?HUV0abrpetxiCwmgq/4QfHXjMIZEdikEpvGL4Sys/u1pgoWZ1sc9YPLQZkZO?=
 =?us-ascii?Q?1kdd1EofSqfQIwrPKv546rqU0YqGltFUqxq2Zd8UxN7LRAoECNR6vMG03rLE?=
 =?us-ascii?Q?riN0OV38NLexKr/+LPC43DrnO4EDha45TU38VTU0taj1X++zH7cdBqVUjLBq?=
x-ms-exchange-antispam-messagedata-1: uYX2Lvt8bUgVAQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c06458-6c5a-41cf-9023-08de72d164c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 11:47:59.7080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wi2ZxgJBJg2ARY0Y/z0nL9FCXmU6/lzaIKbYQmt4/kGUI+8o6XPJe7pBuDG5V7hgadh8zH6As1/0YTe+WOoEihKI7H/pfH2jvVZrqoySrVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 52953175ABC
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: 23 February 2026 16:02
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedeskt=
op.org
> Cc: intel-xe@lists.freedesktop.org; Srinivas, Vidya <vidya.srinivas@intel=
.com>
> Subject: Re: [PATCH] drm/displayid: reduce DisplayID checksum error loggi=
ng
> to debug
>=20
> On Tue, 17 Feb 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > The patch "drm/displayid: add quirk to ignore DisplayID checksum
> > errors" introduced a mechanism to bypass checksum validation for
> > certain panels. However, even when ignoring the error, the code
> > continues to log a DRM_NOTE.
>=20
> Please refer to commits with the usual format (see git log).
>=20
> > On affected hardware, this results in persistent "DisplayID checksum
> > invalid" messages in the system log. This noise often misleads users
> > into thinking there is a critical hardware failure or a functional
> > regression, despite the quirk successfully handling the issue.
> >
> > Downgrade the log level from DRM_NOTE to DRM_DEBUG_KMS. This keeps
> the
> > diagnostic information available for kernel developers while silencing
> > the unnecessary warning for end-users.
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/drm_displayid.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/drm_displayid.c
> > b/drivers/gpu/drm/drm_displayid.c index 58d0bb6d2676..1f6d78fe29f2
> > 100644
> > --- a/drivers/gpu/drm/drm_displayid.c
> > +++ b/drivers/gpu/drm/drm_displayid.c
> > @@ -69,7 +69,7 @@ validate_displayid(const u8 *displayid, int length, i=
nt
> idx, bool ignore_checksu
> >  	for (i =3D 0; i < dispid_length; i++)
> >  		csum +=3D displayid[idx + i];
> >  	if (csum) {
> > -		DRM_NOTE("DisplayID checksum invalid, remainder is
> %d%s\n", csum,
> > +		DRM_DEBUG_KMS("DisplayID checksum invalid, remainder is
> %d%s\n",
> > +csum,
> >  			 ignore_checksum ? " (ignoring)" : "");
>=20
> I understand the desire to make it debug level with the quirk, but IMO it
> needs to be more than debug level when there is no quirk.
>=20
> BR,
> Jani.
>=20

Hello Jani

Thank you so much. I understand your point.
Only problem is other components not familiar with drm get confused about
the message and say it is display issue. They also report this flooding
is causing delay for their driver load etc.

Regards
Vidya

>=20
> >
> >  		if (!ignore_checksum)
>=20
> --
> Jani Nikula, Intel
