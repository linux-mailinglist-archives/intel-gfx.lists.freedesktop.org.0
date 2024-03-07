Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5BC8758EE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 21:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A273C10F574;
	Thu,  7 Mar 2024 20:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvzQ4hHY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D45810F574;
 Thu,  7 Mar 2024 20:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709845124; x=1741381124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yi10cxhlTSJUyz8n6PTFFv+cLhtdac6Svihmwx1N7I4=;
 b=GvzQ4hHYFrESOpaZs7ndiQ73FA2/DI4gkd9wjroOZte06S15U0rJFSWG
 OsYllVoaC5wbOGH9Z7RMbmyJGhQ3nFy8ZwOVI3W1dKXXlMVDHsY6JNEoL
 7ed9sd/PG/c8nYhdWLFo2qQkTGEZs4sqy3tPwR49U3cvys0Lpl5/eyx/D
 geh6cf/nYE87wrzRfrIwVQdEhQlOvOOnrU1O/gRN0uAKlpCT6GzYJ6FpX
 fZ/deJJC03vA7KopSdKtkt1QxhGYQV7Pjq05xbzpTVj8bnlp12Wm5O4iU
 EY1LlDE11JwZrn4MKAjoJyKoRWW5w2vH/k7UeJyEiAF8VzCmi2ucHbzk3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4398191"
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; 
   d="scan'208";a="4398191"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 12:58:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; d="scan'208";a="14909985"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 12:58:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 12:58:42 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 12:58:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 12:58:42 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 12:58:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CQFncayzrqIpzQTw+UZrNQaIXvmsENDvjKUugCO0gmSgdxuL3Arr23r3lay408L8zpZqXoyYH+xyaeMnlD3bNzYPNt11szFwzyvREs/W65fCCbTGPUjbKm4YrPrid0vmO3lQrA/9mTZH2l8+Ts2ZskFGxNM8kj4cwkFRLWjiMRJ0B4+tAKmcbLduFxHEWVA2GWtuwTg28VomlgGW+LsM12EL9bplbAJzRk8vcJn3JlYKr2y8NNavoNdJCZORcReRXKuFzkLyKSL/7HQY0t34R3bi7gkHVmYdQa7nhzrFIyGf6Owk4eJdO5DWYvUrvUk4O+qQKuNm/R6P8oB2V4jrvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c28DtjHO3PG+dcKI+x9Zuk3dsZmawg4REN+HKEMcQkk=;
 b=oJbGOiD/dj6Zby3lRG6yqwKDoSm8df/LVE3h8DnYLbgRcVqb41i7BqcJ5dZnjfE1MChmtkq9BP8Vk0UPv2Vf+85jMZEJOZmflLkrsK2GfVKk9adg9qu9lU3Sh83APqw9wS/ljawvGeE3bKToUxwGTPsFsPYSIE+2BAa5I4AFkI7wv5HGdMMMvAiXrX20y9vXt+z/wmZyHKiW9OqrQM/J10c29OYIe+M45dZYXIW8yEKzoDoBb48RiBhbU8EfZjQFL7/j3ZizHWbtwkkzjeijNr86PN9gRhznTXsfWCF/BUel1N52qXZZx6PzhrYIK5GwRFzSEM8dlr1GmwwreNQeWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by BL1PR11MB5980.namprd11.prod.outlook.com (2603:10b6:208:387::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Thu, 7 Mar
 2024 20:58:40 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c%7]) with mapi id 15.20.7386.006; Thu, 7 Mar 2024
 20:58:39 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: [PATCH i-g-t v2 0/2] lib/kunit: Execute test cases synchronously
Thread-Topic: [PATCH i-g-t v2 0/2] lib/kunit: Execute test cases synchronously
Thread-Index: AQHaaY9YAJHJl4f3HkGin8Bt8QXAJbEs0RYQ
Date: Thu, 7 Mar 2024 20:58:39 +0000
Message-ID: <CH0PR11MB544442BD9EDD4DD68D482A5DE5202@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|BL1PR11MB5980:EE_
x-ms-office365-filtering-correlation-id: c83b403a-61cb-4b28-4820-08dc3ee95d9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: egyJeYvsRULZZaIIujm+PJwzoWNXqS6v+W8HV5Kq1mPpkNMSdEQXDmCTLSjn3Cx0pUX4ZLvtN8uuD/0vRYstvU98fPgdQoCKXcAKCI9kARPdO7x2XtKQ/XZn9YwnMHNU7l6Tdjzu9M2E6BVlvYcfoYJ2vY5w+99mOygOyjIMV7iSk+HEOar1N98sAdcKq/wDDNJlZV9NTCU5C5y7CwlNs9JiGgL0M/YVEd8ayAQaEaJzua7+sTRdWs04Wa6TT8OXLV7N4ot1EdKM0VgV0dzXVHptWnbZG+hrf9o3TsF7Sj84EzOCIjEJSKMjF+2b/XFikbumJNlC+VoJBB+EUi/sy/h1FTQ+FDlVk79jrk3Bi6fDxpzDaMXk8iyMFeTIWHuzgnPtBa2JsEB2KQrj7nvqy3cVAn87xWIHs8lZN2eyXxHhctZaVLhLPn1t6cKgF/UrFvYHcsTakyXeBY3V1Av7+5FVGDIvdAQTYC7mtJFLuIUvVBRZ8xy+fBKk6/j5WMDxHujZO/X0S3t4IfifYJwdynEUvbYV/uqJNBmqwfusY6YzkNlCREFndFtN7Q+wDp/vwIamFK4PY4m6tL9iaVPADwfuvEtlVN8CwdozphvuJnTLz9ancj0AbDCQSyVc3xXpFOpgS8hmp0XqsS4R5VHCm8Lr238e29ewNPMvci29Bv+aQ5JKyXdWzLNDkIdu0Fne9l02ZlfE0lnuwKaWo097vQCDoqIRwVXV1IwsVYSznBk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4u3NxyP5yBFfmi/T9mOEvWzTjhynUWnZrLTYfoBAUoKSD0HPuq+jSy98oTtC?=
 =?us-ascii?Q?8du7KEdkaFKXaACJuIkqHDCE0xDIlEJZonu0feaMcDqd0kaqJE4RJYsEngPV?=
 =?us-ascii?Q?WJSHq970g3K/XD/MIt7Y/l9CxE1UNd/l+jm6xfWPbhESO2Bfti1FmbR8S+bE?=
 =?us-ascii?Q?Jb53gtSbpfNPaisZyIuxWfNdVpUM9S6q9b4RFvlIikUTk0R4T6ryOi1dD1DE?=
 =?us-ascii?Q?mV/0JvWWWTCI9F2veP3aItvP7t/N0SrDjzcvT0sPnzBVia9Au4a7Jw/OIvl9?=
 =?us-ascii?Q?BA7CYqSxX5zI58z/wvRNc1UYvftLOiPtfbZXm7aAaA+3LqGDQcu4zEMo2i/X?=
 =?us-ascii?Q?DyqPxpnV8wv/Vf/rgmAujS+EccvorLXOwby+10y9kYA2s0wtPhtPwg/L0S6J?=
 =?us-ascii?Q?XZZS9fWrhE/gSLlSD7scrsxLikU9t64OtvgCq6B3flOYkvvKAq6qpgGWwYVC?=
 =?us-ascii?Q?ClY8SyGybQJ9L3cV2DbkNaEykXtKG+kcaarPa55MFClYRxLZkg8RD3itNdUr?=
 =?us-ascii?Q?x6qpkacc5UHLqVDktDoxeKeTZn6qoH3YB+wQGHhCcE3PpmctTsbZbVuxX3r1?=
 =?us-ascii?Q?DSVe5Hm7kpxzNUVLH8crmSy6dOiMh3GMehyv6BQu8/M1EcLg4ROg/w9RxtAO?=
 =?us-ascii?Q?eoXETzwj4LzPAj00owpsqXO57qe5FezEV9PtGACHAl7j92+jQsqnLOOMAY/v?=
 =?us-ascii?Q?DOjKYPqTxxr/u3G2eK0sjUrry9HhHNOQYHE0cYxbW4NSmOApQ71aeZI9NNH9?=
 =?us-ascii?Q?Ge+FVCF9fmtuAGvbaPXPmT8z5PhXYHCEbVmZXhM+ee8yuivvT/V1y1d7DU82?=
 =?us-ascii?Q?WvyrxfEUqVARyZ/D3hV2xY3A0NFSMDr5FsnKV/bf+Xt07Dfzt+DStEY2MOON?=
 =?us-ascii?Q?iXgoRMtt+Jp5sKiKvWCVKghm4Ai+6wssMlMo3eM1H/nRk/7DzyDfu0us65Fz?=
 =?us-ascii?Q?T3hL/lzwt1eSkzYjYF8B4+aC8nHmw+3Mq2VzWLInqd90uWNEiGOUvWiKiJPK?=
 =?us-ascii?Q?KTuUQp2pJuqiONcAwfR6m24rv60hS+0Zb9jgWXUZaqapog6h0M2njp06zD3Q?=
 =?us-ascii?Q?d9e9iigIrpHVr6BpxXDnJwVtYLEGo5A3IYptrM660Glz2WYDhMLD7m/KX3lJ?=
 =?us-ascii?Q?4IiPI6u/wQ7GISIdTyoNlV4wLipUlriweOU9j8d45xy+nVYqUw5MZML1bgPS?=
 =?us-ascii?Q?alz5dvNVqjVUDpF1dj6VUhLvoRjouvo1T/M8uU0BbXKvmnAiGVgxZEdItlIn?=
 =?us-ascii?Q?JwzUrdG6tAlGQgQCQKAMWZ7B1xvPj7O81w5kSFjnWDZZau+WLv9/z0fQKk8v?=
 =?us-ascii?Q?cv6s6thgNC5w6ch4d3G3Z/JIKK1JlZVydULjDAzklkSU+K5Z7pxVEsYpfRpZ?=
 =?us-ascii?Q?EwY38ax9UiaEL8Rytj3gy537ZNC+nlxuNx2+f99q9VxyP7K+usUH5FKdTSul?=
 =?us-ascii?Q?HN8mST6J3CWu1cmLLEGMf7ULF1U/LeEnylDpXr8PNbx1ge8MDYW2KPNTrEmj?=
 =?us-ascii?Q?oFXfuDOcNKH511U8bO4OU89KCoEsdHqbmJSw0i6lR71p3X7fExv/4neP1XqZ?=
 =?us-ascii?Q?4udiJVQuTSxXNqd/gmnF9fDRFKpLe+jekjyupo0qBSgWIfEx7sNFvisQDTFt?=
 =?us-ascii?Q?UQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c83b403a-61cb-4b28-4820-08dc3ee95d9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2024 20:58:39.8094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qc+0grNERjpqZnzd8agMA1dRDvmevXjtsXU/uTtfWqwEpCNztsk6haU8VgOJtRX37iq1P+wKDQfsOI7fqXH7LqGtLRkmSqrR7PELX1k0sDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5980
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


All patches LGTM
Acked-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Janu=
sz Krzysztofik
Sent: Tuesday, February 27, 2024 7:11 AM
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Kamil =
Konieczny <kamil.konieczny@linux.intel.com>; Mauro Carvalho Chehab <mchehab=
@kernel.org>; De Marchi, Lucas <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v2 0/2] lib/kunit: Execute test cases synchronously
>=20
> Up to now we were loading a KUnit test module in test execution mode only
> once per subtest, in background, and then, in parallel with execution of
> test cases while the module was loading, we were looking through dmesg fo=
r
> KTAP results from each expected test case.  As a consequence, our IGT
> messages were more or less delayed, never in full sync with kernel
> messages.  Moreover, parsing of KTAP results from already completed test
> cases could be abandoned on a failure from loading the test module or
> kernel taint caused by a subsequent test case.  Also, parsing of KTAP
> results from all subsequent test cases could be abandoned on a failure of
> the parser caused by any test case.  Other than that, if a user requested
> a single dynamic sub-subtest, all test cases were executed anyway while
> results from only one of them that corresponded to the selected dynamic
> sub-subtest were reported.  That way, kernel messages from unrelated test
> cases, not only the selected one, could contribute to dmesg-fail or dmesg=
-
> warn CI results from that sub-subtest.
>=20
> Since recent KUnit implementation is capable of executing only those test
> cases that match a user filter, stop executing all of them asynchronously
> and parsing their KTAP results as they appear.  Instead, reload the test
> module once per each dynamic sub-subtest with a filter that selects a
> specific test case and wait for its completion.  If successful and no
> kernel taint has occurred then parse the whole KTAP report from a single
> test case it has produced and translate it to IGT result of that single
> corresponding sub-subtest.
>=20
> v2: Refresh the series on top of changes to KUnit filters handling,
>   - move the code of a new helper from a previous patch 1 to a previous
>     patch 2 which now becomes patch 1,
>   - actually limit the scope of the helper to fetching a KTAP report from
>     a file descriptor, and let the callers decide on how other steps, lik=
e
>     setting up filters or loading a test module, and errors they return
>     are handled,
>   - update commit description with a more detailed justification of why w=
e
>     need these changes,
>   - rebase the former patch 1 on top of the new patch 1, update its commi=
t
>     message and description and provide it as patch 2.
>=20
> Janusz Krzysztofik (2):
>   lib/kunit: Execute test cases synchronously
>   lib/kunit: Minimize code duplication
>=20
>  lib/igt_kmod.c | 172 ++++++++++++++++---------------------------------
>  1 file changed, 54 insertions(+), 118 deletions(-)
>=20
> --=20
> 2.43.0
>=20
>=20
