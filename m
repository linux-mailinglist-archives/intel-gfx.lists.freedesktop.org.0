Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vkAzH6VzMmq60AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:15:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B316985AB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:15:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MaymVfxn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5D410EF53;
	Wed, 17 Jun 2026 10:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81EDB10EF59;
 Wed, 17 Jun 2026 10:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781691297; x=1813227297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NdXx75/DNaGKx9i1DwsgobNu86Lb07J9t41BWHCJvlM=;
 b=MaymVfxnWNZn0l/jtwVUsMQjAruk4jscW8WlvNZntA7UVrlqumjfyr5f
 OvkREYcYsnCweqvyHyoDNaaM8fCNOUPfHRzr5UljkATejcjqBNguJ7jvv
 ifiq7inRrGzHxCD0N5+L6RI09sJOrwjKYxM+T8QIvUuMeCwCQP6/gc1Y0
 iLye+nLP6pg6xl4X7u68g+xFINBZvNvr95Zf7JO/Wdsu7bdWooKgObqGF
 gcw/LtoQWmz6Nm/qKfoQO0Ha7ta2wxzXKst2kr/KNFKqMNY9jvB1V8Ghw
 c4y4vpuujmphIzJeVzs6mYu+enovrJA9rvmgJrQKZKkjg+WPrsFphiSMM Q==;
X-CSE-ConnectionGUID: 5NKUsxmOTA6cNIMPpRYV5A==
X-CSE-MsgGUID: p562re3tSvi6o9RNuncn/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93593170"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93593170"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:14:57 -0700
X-CSE-ConnectionGUID: pafF81EqQdSW5+9YylsZvw==
X-CSE-MsgGUID: 9jTBLS5HS766xBxEsWvCIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="286142478"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:14:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:14:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 03:14:56 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:14:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qtDI9603WPZLBP6k2zMOu2Z3/BhztpM1SdsrDTDhBTA52fs9t4qENVFBDbVLLdAMCpMTSJjsMkmdwzCs8vosATjbbhF8IoOzXv+0pVejOPPgAqSyKHNN54IHi1AfnORTOi+qCpz3vkzAO0f7IOGuKEanQWQyF335ayoEVMdOrmAtFGRPO4mstW3YE/LBjgPbSJBI6PeUKArzM88HDMhljd9/oAe0Ink3AbxO2ExY4CWJAGan0jDhNA3CjG62fM2TrP4kUNVd9rsOtSHJl4YjcZCOcz7JPVtDUR9Llkcp/Ls/Cg9JBeq6Ian1B0KRFTvDLIGer3BobVPsRyL6OJY5KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hOfkJLeexaRnZkjOcgg871ALpEN64809wEu4fmNEd5A=;
 b=QJsHghKaKEPuLHAZr/BhXhsja/vlLsS+lX76xb/l34NX5oT5iUm0Erc1DqnlNQ8+jRm4TWXbIDUfL5wJCdl4dcVF0PGuoeKgYJEUeAiIyUWvesi0rX62EfeDokO+4xeBs0KJYxmg+s/KzPiDhL3BwgaMu4i7SERbJi+LDL5ss/MLqwJHSjrxtg+JipwU9GO7NXED8JXsmg1aFPkD/SN0L6C8VGUFuQP6yKiBzlYRKAk9AKG4AT6CduTA/IZoo3kPC3j0vLEJroAI2TBVEX062tk50SoohuobYElJ0HPZWoGZ1v/V4RrbQMPadwvk5sOsRsI1P4JdcmiH7wwZmCKhiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH3PPF10FBEE80C.namprd11.prod.outlook.com (2603:10b6:518:1::d09) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 10:14:49 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 10:14:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 16/16] drm/i915/display: Enable DC3CO DC state
Thread-Topic: [PATCH v6 16/16] drm/i915/display: Enable DC3CO DC state
Thread-Index: AQHc/ayA/eX5O6DxyUOVnFvkUxAmc7ZCiKkw
Date: Wed, 17 Jun 2026 10:14:49 +0000
Message-ID: <DS0PR11MB804946CFBA90E10A017A3216F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-17-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-17-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH3PPF10FBEE80C:EE_
x-ms-office365-filtering-correlation-id: d4cc8f66-384b-4709-f991-08decc5943ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: lZrVgOpQgnW3lYKal+OPX8IF9j5n3V4C48Mzbw3wi/2gzhvBizJRD6bb8wGUTFCydvMnHS915duLAP4KGgVzCx4U8WvT9VxqHnNGjToptamk1g6foGgEdAJx9/VPQ5jDrr+segPLOkRfLKex3/ZbUxoQE8VBKdh+n/0OSal0vD5Z9Gk/GXIFZeRIqCetbiZTL9TXbZi21gCU9Pd35W/HC+b+kotldN83zrWOh/1kgY4STFACklO8Oo8XcXuVxFH+2Hx8RTOnG2ytJ/v+LqYfWbU6OoipZSegpqMgwukRpwnF3V9VOeeYlDJOr6pldOc3zqK+noHohck6ug+26b7uvmGlAhgJDhKaZ90TK0sGCQ8ke2qdkZaS38SVmAfHYONAJs78cvrNh1Po3MvhQmu4ko/7n1J5R+H05LaDid//Ixysuw9udhbjezpMCNcMLRRI8Ti3VpKfZYWXbYYJq6mDo7s2INYkZibgqVExTrbtec1IwQtbzMw6Ptp0Nc3QdaVmLMU8aOb9UjUwIXJqZj/SL6/UC0KfurJeUi0cnU+k9v2sCmFoDjPrZJHwim73lLVxvklHXittJm5WtPEsXS4pmVebvGNztL3VeekRBpEBr8B0cQmXmJEns7s3mZX5p/UXq3EpzAaQiC61mc1ES/acKCAhgpHobu5rNWMhzRCtRfaSpum3HJytVaMGX7TI9Uhqyn6LXUEnWrKtsA3JZ0IUwIRS6e+JDhKmW3oozXuPv1PJswwsH3Q3PQN0F8XYE6LS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bEg+HO0pIe09NI+rhqx0X2jCoUU5jU5Xt1k5T7gTWjJI8PCE0y2s0YwXSkES?=
 =?us-ascii?Q?4xsx0nzOUVKIHLvWenCFvJAsFNL4WwPQqHip6gdFFLWGS6fos6ZkvWdXJNRJ?=
 =?us-ascii?Q?lo9+M7zzVXW3LWXT/fgg7ti4w82KLdOe+WVLUEFkLTq/7OMkeLisKAvjuNhp?=
 =?us-ascii?Q?Fh0NSsdBtGRDW71PcsVSeIzlsadwN6+WsLBsqtx8UBTko34n2+OTaw/hUxK/?=
 =?us-ascii?Q?vAyvBrst7dg3QUQzo2G8dDrsSmzCJ/YgN1DK/lph+fT06Ud9cI6+kjX8EVKI?=
 =?us-ascii?Q?CFZ8F3Zp4EtwxC7hiMJOUVccswRAi3coLNWtv7izuD4/Onz/SLUUJ7XL8QM4?=
 =?us-ascii?Q?ki2K63AzA97yRd6A+o2+6l2bZORP/C0h3jwOHB/8ZJjfszqExMPPyLLA+KG0?=
 =?us-ascii?Q?DXFAFDackjO3nFJy3XYw6q0HCJpoJTuQGGztxYzYuxFnR+qCC0GmBMsCN1Ow?=
 =?us-ascii?Q?ydz6+U1lMeTrleArEcNHwn1txcz4ZENv7+lkpcbPU+yl5KBdutd2qWp/5vxZ?=
 =?us-ascii?Q?7Og4/HGqjBBk3dNs95gdqj9mq9bpfAihPPcylvGpqu/EHkEmdyCavxDUrNJp?=
 =?us-ascii?Q?7AzfcWChekuBUWYSYtjIh+WM+DBQx2D0TT6+APtbmiCybyVg7uMl8n7PtWIM?=
 =?us-ascii?Q?CZjE8SabgwJNDCKKiB+943CmqMYGkeGxAE2Vkeszb+BKo+TGS/soI8n7IMdT?=
 =?us-ascii?Q?0FpkJKBBK0aFuPcCOSWvEbsNgIucBqgypSaD2MUqyxcORjaUOSSo6pn9XLFj?=
 =?us-ascii?Q?LyRmureryHxWQg1+F8szvC8pmp3Gneot/0j1074L+nvBhcBsvamQj4UkzoIJ?=
 =?us-ascii?Q?qtvUjoXK21XRMHtcI+Bv+i1Ue9dCM7zUmChDZVczH2tY68tnMF4/zRF2bDrj?=
 =?us-ascii?Q?kH5aFv7O7eGURm4+VkNsOwjEeA6fWbix0QZ/7uKHLMd9sa1Gc9T/Gzqsi0Xv?=
 =?us-ascii?Q?MgmtFIV1ftNmbevGl7J1b7lH4Q//OtOEvNlXpxBoNL3WajlK3WaTVITq5Is5?=
 =?us-ascii?Q?atxWDtDnVCeXmw7GkQ9hmsxdmz0zgbUo4RHCcAFnQSnqmVS6+jQF90cM0U/5?=
 =?us-ascii?Q?/7lm60v79vCaiFldSsfSFrYN6PL8bYkXcswzw3x565JbO+OApUcmsYqc9jBd?=
 =?us-ascii?Q?KyPXQXIpWkK1oOge5jAombHrA1l1htcP2Vn2O5YVOUNRPwKYUrZV0mOw9/fU?=
 =?us-ascii?Q?KFjNVgMQo1dq/sVhlWWxLAd/5qzdua8wfCt1i1M4zrhk7eRbuBxQs3IMvEdi?=
 =?us-ascii?Q?p1bFNynUp36t7sGC9Dpbwa7GCw3IohO5JR55yQ5WTjuB5iUhWGWnaiDw+uLi?=
 =?us-ascii?Q?K72S+pn2xtR2D8Bo4+ef6ivNF7TbypbTJr4+EaO900Kc8mcjtjLcLwPKgBNt?=
 =?us-ascii?Q?krzKEXkwcrJufgDeWrPAnRhaOqN6b6m1zol9TXADCTeEvPBj/cT2/YC+u6E5?=
 =?us-ascii?Q?Nor3sKWVgY9qmM37hPJa9fgDR0IacMDFX9QhwtcrAR1gL7SwHTT0mWafJ4Yq?=
 =?us-ascii?Q?WoCNZUdwVA3fwvqfnncPF0mrlfpqWxpOcRXGzvcKChw0fDt88EA9nTqfFqta?=
 =?us-ascii?Q?l7zO+nPKGlcBxYhHgmlzP/pH7hB4CLgNW0QFsjEMkqG7OmU2vuWJZ5XhY7aq?=
 =?us-ascii?Q?QhFowckWuCGntA1pODtbXtxxS/zsR3UDLlbfg2fbv/wvhtyCViWJPL3eqAdA?=
 =?us-ascii?Q?pRSPjw78hgjEupVidJNNuZe3KTKTQYTsKCi/3Nt5DyQF3j2207O2dyj1zuGV?=
 =?us-ascii?Q?SchZWFAL5g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OmuGeO7Cn9BsnGHkMCZSwtEqf+dnWuMXPGjtFLMCQBDWndtmGvpmw+JSUq2F/gz/0vmAQHJC3gNl3a6/iPuQNerbrJXaSKyaxVn6o4asYHR3IeS+FFlnwFMYxoKWM+mdOsQZsRUqAE+HAPHuuzvECu+tlLoCWlvQjI4/wjhxrp4SchJ/5IHxEsl/1SRSIY24I65ceq77ejJvvNp+c9L/WGgads+aPo1oGGdSPpwSqfHkYB6aBouVhz1hV+EuQpTTcVrVFDPZW6YX5l1GLKWZFuoFqBF/oZh9kAs75LXT60qMQMtsTzk3tsLUPzOL4m41nZ1uXdVJv+fQTjO1GJdVgQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4cc8f66-384b-4709-f991-08decc5943ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 10:14:49.2115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HVbtVJcme28nvvgPuSnHvXRVUGY3q2Ne3jeqtqJBn+PiRry5zLPDHAgJBkGyTdPGqXBMUzovKYqGpH8NJ1l0FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF10FBEE80C
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4B316985AB



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 16/16] drm/i915/display: Enable DC3CO DC state
>=20
> Enable DC3CO mask in get_allowed_dc_mask().
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2ee38ba1fb2c..dc3b31200353 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1121,7 +1121,9 @@ static u32 get_allowed_dc_mask(struct
> intel_display *display, int enable_dc)
>  	if (!HAS_DISPLAY(display))
>  		return 0;
>=20
> -	if (DISPLAY_VER(display) >=3D 20)
> +	if (DISPLAY_VER(display) >=3D 35)
> +		max_dc =3D 4;
> +	else if (DISPLAY_VER(display) >=3D 20)
>  		max_dc =3D 2;
>  	else if (display->platform.dg2)
>  		max_dc =3D 1;
> --
> 2.43.0

