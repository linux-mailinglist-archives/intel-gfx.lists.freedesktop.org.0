Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 70g+FLCiTmqjRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:19:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D214729D5A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:19:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ft+vVOhb;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6159610E669;
	Wed,  8 Jul 2026 19:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CFE10E669;
 Wed,  8 Jul 2026 19:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538348; x=1815074348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cKccbONRsBsyY8MDpmfauhwwZq1xc2sRTxNVvyQr3RI=;
 b=ft+vVOhb0/dTItqXz9cd33BHAWWNsfSM62L3qkN9DiJIoGyK0rgh761s
 n1RYZThkpBWE8JPO0GiGKrS4eNM2D46peFcoLGWawqpTj2EFqZg3Pq9rO
 WZy4nYo8IjQZROR3k+uBAUwOLiM+iLr1/t8TBmVTlcKnkmSbL+Gvc0kBa
 C91Eg0a62s+bdKvVaAzqmN5Gu0dZ7dxZgd/SqpTZ26rd4zQbIGdigdYNp
 7rptiyUct7aTEC1WOo1eZhqiG0vp0oo6YxjDtKvUOvFZ0UVNKvkKbAr6r
 woEjUr/ja9PT35sgLPvp25BhMyOYJwosy2F6YeyjHmOPEQyhKZIWANCeU Q==;
X-CSE-ConnectionGUID: 2qYl8ipASrWEIn+YO3IvBQ==
X-CSE-MsgGUID: pEyF9iv2QpmaNwcdG5Z85w==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="71733739"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="71733739"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:19:08 -0700
X-CSE-ConnectionGUID: cS/5f/wsQ86dHV4OVO6okA==
X-CSE-MsgGUID: XmymMZ+sQ9aOMNFSD9+35g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="284472779"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:19:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:19:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:19:07 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:19:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BbZySNS9/yQyQ6H1DrHMsUzPxaeHzUbB5ozKjwDyZIotQH73jIzSRIDLSkqWkkiPoXuyNvly9S0u/EuIPlbAapKL75fmwxm0jXJc+ibPlsj8ZgseANjarj+0aUVPx+WZyhGXNQjMFcAg71jBCcKX6ZVLLX7CGB6QMLSFw1V5/eTqHRkLEb5wgrH/KJickNSdY5DdOuIxh4WUm2zXEM7c9OhomKHysA+fA8GuC3dTSm5mr88hx3J6PU7xehrEWEJyEPsl0c6ZR54e3Xz/wdU4RlHgQTxe0FAHZsgg79jiOAJP5NRIkvZj8i1L5XTYtOyov4OOU3ViannUpXJCoXPfZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FB+ft7iREhyjMaB5HdDZ4p7aQugGo/DCNYOM6+kqHuQ=;
 b=OgY8DITZkLZp1eDm2/BjH3h8jT7rI1Su+KTZWlV5O+S6j9KPc8tLb0tnqTGItelcKywtewvkJFQgCNZzUmnD7K/0g9Z0Xw0XbTARVCkIo1dVdT33CF49mq8JbgKW/ZGRwoIrCaYV3tNzTdyRCpVbGBf8ePd7cwOoQ6iJ4oLqPE1Gazpx2Zd8/hwMWCZkb0cE4tMDowA8e55A7AWKcYCC0di8bmOcVhf34Q5Mri3926u+W6rZfEUruFTmg4AY8pzHTsONxFD5Ikw+Q7K/PQopu8HeTc/GD1jyh//0NJhMZHVdOSH+1+mLPutmTjjMlYtNtGavRBFQL6dh5u5D2VbsIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5016.namprd11.prod.outlook.com (2603:10b6:510:32::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.14; Wed, 8 Jul 2026 19:19:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:19:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Samala, Pranay" <pranay.samala@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 11/14] drm/i915/color: Program Pre-CSC registers for SDR
Thread-Topic: [v3 11/14] drm/i915/color: Program Pre-CSC registers for SDR
Thread-Index: AQHc/j0yWsjfEZD0/Ei6ZwqLjK6fk7ZkILlw
Date: Wed, 8 Jul 2026 19:19:02 +0000
Message-ID: <DM4PR11MB6360F1ED80B0FB894E6F6B57F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-12-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-12-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5016:EE_
x-ms-office365-filtering-correlation-id: 175b2d46-43a2-4ed5-90ce-08dedd25c50d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|38070700021|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: THXxcOth5kq+Foov7AN9I0QC2iuR26l0Bzn5hFvxUd1hgmfuLwtcsYbQvqAB8h73sc451KJSUrIEQF33MVlDcHaI+S2hl0+Yc4JQ5BNfOW6Ah7CtTnoP+ItccrO76ESwMlUFL5t9KWMDSTOer4+3vysvO6UnbQw0M0kzIF6j1bWsHNnCuRqTxmyf/CXpx4H866SAH8AsOOyHoB1UQ3TKiqTIZBdWVvxVxoY+ZmG9FOrQbisKqrszx5tQGRabmtoQ3NxUGdjHQU06Oz1x2Yz9AFb6ks8re7jl0dQupB90PXqPC6OkgUTMW7WA4ilNqdNszHCSfC9w0ow03oNpAPi5+wrOTpz6PvnOvMHyV4ig3LkVX0USWHxHjZR31ligUoBxMNoHxBZ9E7YY2RwRliU9SwuODKowy9jjvyCG2EmU7Mhuu/5KpoTBzTiu2SfbgmXm/NKS9S65n2CB39oJVs9R7RikaGWLLWZpLKi8NGdLFuNPS6J/Uy7yr4HPEhU0ixfVxev/ZuGh2xtGooRfPOs5dFAp3Jmgb3Y9MCrpQVT+a66g4AonOyNbBMqvNhMLo343CEluxfDvi4bziC0QmfwpWwbvIybd5M/pOumaMlBm9elzHP4ud9+3wIYHZ0HG2XfstmvOeZ0hQt1jFe9JZEJncN4q92ppJJGgECxRoF3IaQ4aVWTts6HmIlbwfZnto0HUfGmjqI8UF6ygQtggGpSBAStf59VGA+5xx5hZRECHxLk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R4mfAd4z5oyt+w+p8beV3JN3Af/Hfgm1O8BXGPg/trWCj8kepR8voiBVCbSZ?=
 =?us-ascii?Q?PwnW6ouhyAOi+Zn5864PKh5ylLEmX2bIwCtOALx0j047muzLlJkUAiq+aYYL?=
 =?us-ascii?Q?nht6lI/1f5eQt3UiXqIKFntZvL6AhAld1zTrtcQqzzTMOYkWIdYCUTNq+ASt?=
 =?us-ascii?Q?DfBVKBEqISyTVzIttmptVk8OagcJWaqjOh/yaRw99ZSl55rgHX4ahPe/bWK5?=
 =?us-ascii?Q?SA4cNN6q7wJdInMbLgR+6zoyhu9RRz9sLNCASbs7eld8oUB1punuXF9Wl/hh?=
 =?us-ascii?Q?GKf0RynQ2gpT7tsZWXDRn01y5ZPSFF7IVSgwAejK20f8maxZJLJc4EgNJjew?=
 =?us-ascii?Q?8lhOwPIjnSDWT7mvrQWfYBLytzIxjlGMJ5zj7kkiTeLY/5k4cplUpc/ps/iE?=
 =?us-ascii?Q?EUH7m12a86lc/CQsVi/Z+F/goL6mCwEevsJgz/LMpN6eLnSBzkII/w542oZK?=
 =?us-ascii?Q?5UOzLWQxBkLCApL64Sxhq909QrgFpV2/0eoDwsHsh0QJJhi0MnlQAykUqZIh?=
 =?us-ascii?Q?06yHzNUqZO/0IDkbzgxBr73oEMqG2HuYMwINcSLscq//fMYUOLMTb+s3kJes?=
 =?us-ascii?Q?hwO8z0AuCssTaDQVF1E7rJ48AUo18UlXdWUyJMo/iadwkWRaMTbc2pSX7PFe?=
 =?us-ascii?Q?BjDXIa2GBU7XYWHctbA2NOmiISboCoTBdIiho99VmwwrQbjhoGt/zhhGUGAM?=
 =?us-ascii?Q?v7okRkSaIzVyE0kZ8oXLxRH2BVGXoUMiiv5GOvY81iVUsTJk7I9ZywnnSs3A?=
 =?us-ascii?Q?wF++KjGX3auM7rbZnMIFFLbJzcVODPusF9z6kqCtxRsDhl5nKL//10cWBlZh?=
 =?us-ascii?Q?L5Ev1IRrz+jWkAOvJ7X2bMA+n0bwxhAuzcXLTiN8iRUgoG93V3U6t85abGSR?=
 =?us-ascii?Q?PRgbw8xo/XPKXnR6hdfMVB6ItpTfhUH2ECAQojqfkWFOs7IochRGeUoBv+Ha?=
 =?us-ascii?Q?RhK/XldD6zPXxiOsYCb62Hu37RPwozjE25+G1NmilfhFizun2fmp3iXIdQ1v?=
 =?us-ascii?Q?AqodIUacOpzI+ai4RhZk1/zqFgTqek5hdmNd1kkl3RQH4bzoVrjSR7zM1CkJ?=
 =?us-ascii?Q?6QaUw6YSObWcA78GhQkHd9CFYC1QisDOg9I5m8tDiEAJ2yOOqAfjKxkmxfcH?=
 =?us-ascii?Q?/0NTRLuNGvxhCQPwtvqvjslyD1XL0sIkqgPXp03aAgAwl1Pe5OIOjygpO5FW?=
 =?us-ascii?Q?mNBi06IZNhQIiQt8xVS9ur8rDX5z6me/3d8U+jmVci2NMsRpke7jQvZ2lblL?=
 =?us-ascii?Q?Nt4IyxF+GEncAdc5QAvDeI9tjvERhDf+YexP8b344vtWnWnQabhqNlJB4GqN?=
 =?us-ascii?Q?LanbA2ZlJG/f2NA7bVeN/zctJc3TdzOM3xCG2YiZfz09t0hJ0oArKZzvL2R3?=
 =?us-ascii?Q?z8bW2zcrLCOqUUWaWwmbCh2pC/A8CQngtAwz4btTgIEA7E7fKVoP58OvkTXc?=
 =?us-ascii?Q?ZwSW52mY1wBKYFsGx+B0ARZD65XZusYk3pm1zfJVN3iCBRuL5kkkzvbFMrP7?=
 =?us-ascii?Q?KpZgxaLajPE/S8F4vKN3XmH7mwGw9CgeRiLOQA9bZjI6URPt1ntebfYmiFun?=
 =?us-ascii?Q?EbksSkGlamGpx31PHAqwqFmdXqtkuUYRAhLtshXlxGNCHXXPBq++TXkAci1v?=
 =?us-ascii?Q?kbXUWfDZTkOCQaGi3a5TJV1rs9DfVl1Rmej15fzqB74YgI9NAD+Pnm9RcyiU?=
 =?us-ascii?Q?1LBiRQzt7TjLrf3eJ9U4JrXkHbMoW1WA/cDzIOs/MT5lI7EiywM7mqIk7IxF?=
 =?us-ascii?Q?52YN57qcww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pnD0n7RYU1rubd+xfV7XXXFeg/LoKHA0t9nXAZjhEqEKw/OP7kjr8TbtT1qGf9sJI7OnIOp+eI5Ix+XAX6Konjyg1Ck2QyRdFefVOMXoVGhQChMSvTrZY5ZiX5j2oXmeAabdxhH4s1fPQmJcrCyWSFHhZEODg9V+6TanmEHd9S/3+3ca5R8p8qJGERfVmg9F68YFb8KWLnM9RCEaeJCow895wNnMYDxtlvUHHAqkCdZpFPnRQRAABDmRU3H8U8FoIfz94J+xZVivv63i70/MJ5GqSNW9LTP9b5y060bANmDV9t/DJOWQlJFjiXBhRn9aLLVIcgujI1JjrGS8g5YI9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 175b2d46-43a2-4ed5-90ce-08dedd25c50d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:19:02.2084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jwkH8eAGY1NSw6ZKgJW2ZEzHZX0KnexId5Aa65QcjU4tDIGUo+LGCb+QoG1uQpDxC2Ryxvfze1RmYC93FtJhCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5016
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D214729D5A



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Samala, Pranay <pranay.samala@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [v3 11/14] drm/i915/color: Program Pre-CSC registers for SDR
>=20
> From: Pranay Samala <pranay.samala@intel.com>
>=20
> Implement plane pre-CSC LUT support for SDR planes.
>=20
> v2:
> - s/drm_color_lut_extract/drm_color_lut32_extract
>=20
> v3:
> - Restructure loop to match HDR function pattern

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Assisted-by: Claude:claude-opus-4.6
> Signed-off-by: Pranay Samala <pranay.samala@intel.com>
> Co-developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 42 ++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 2a32ab62721c..abf3b3a2e177 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3992,6 +3992,46 @@ xelpd_load_hdr_pre_csc_lut(struct intel_display
> *display,
>  	intel_de_write_dsb(display, dsb,
> PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);  }
>=20
> +static void
> +xelpd_load_sdr_pre_csc_lut(struct intel_display *display,
> +			   struct intel_dsb *dsb,
> +			   enum pipe pipe,
> +			   enum plane_id plane,
> +			   const struct drm_color_lut32 *pre_csc_lut) {
> +	int i, lut_size =3D 32;
> +	u32 lut_val;
> +
> +	/*
> +	 * First 3 planes are HDR, so reduce by 3 to get to the right
> +	 * SDR plane offset
> +	 */
> +	plane =3D plane - 3;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, 0),
> +			   PLANE_PAL_PREC_AUTO_INCREMENT);
> +
> +	for (i =3D 0; i < lut_size + 3; i++) {
> +		if (pre_csc_lut) {
> +			if (i < lut_size)
> +				lut_val =3D
> drm_color_lut32_extract(pre_csc_lut[i].green, 16);
> +			/* else duplicate last lut_val */
> +		} else {
> +			if (i < lut_size)
> +				lut_val =3D (i * ((1 << 16) - 1)) / (lut_size - 1);
> +			else
> +				lut_val =3D 1 << 16;
> +		}
> +
> +		intel_de_write_dsb(display, dsb,
> +				   PLANE_PRE_CSC_GAMC_DATA(pipe, plane,
> 0),
> +				   lut_val);
> +	}
> +
> +	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX(pipe,
> plane,
> +0), 0); }
> +
>  static void
>  xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>  				const struct intel_plane_state *plane_state) @@ -
> 4005,6 +4045,8 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>=20
>  	if (icl_is_hdr_plane(display, plane))
>  		xelpd_load_hdr_pre_csc_lut(display, dsb, pipe, plane,
> pre_csc_lut);
> +	else
> +		xelpd_load_sdr_pre_csc_lut(display, dsb, pipe, plane,
> pre_csc_lut);
>  }
>=20
>  static void
> --
> 2.25.1

