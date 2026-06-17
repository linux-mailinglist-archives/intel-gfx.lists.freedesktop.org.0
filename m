Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cCvOGwFNMmp2yQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:30:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61961697319
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:30:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ao08sx35;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB4E10EE5F;
	Wed, 17 Jun 2026 07:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2794D10EE5C;
 Wed, 17 Jun 2026 07:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781681405; x=1813217405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vj78Y5wtxxEwxs+duS/eSnbHeHuxnQ74SCFEoMR7c0Y=;
 b=Ao08sx35KO02D/Pa93EUDrroonkng8nMk3twsFyQoYkKQuz238A7YvTl
 kEbqBvgm8FwyjcJYhBFYMnnpbYOo6R3cECpNmNkNfwN+//LeZZmGHjViF
 aOTpqOYGLpEUt6lYj4PSRxHERAsuZdG/DXGKpeEGcfQ2NK/ikfm4P3XSo
 rCELXgrQ6JmyB/JebYMzLr+/fEdP8F7UNDp4sKpHPH+gnWxOzfiaGyoor
 4MPAprul855eYTW+A0tJ4NDuW8vgJDlbEo1E6xICSUdfyXIB/qTAE0Okv
 t/HuNij2793LzsI7fnGNWzQ8YG5+t60V/AOK4mDSZCMSEPlJ/iszOMlaI Q==;
X-CSE-ConnectionGUID: p7fWF+Y0SFiyeIIbYgrQDg==
X-CSE-MsgGUID: IRZFtF6bSMGS6rnOqxSGkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82345835"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82345835"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:30:04 -0700
X-CSE-ConnectionGUID: pTapql5mSEOecNoFfIvZug==
X-CSE-MsgGUID: RnHyAuqxSKKyV9GSMu8Iaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245615975"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:30:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:30:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:30:04 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AT3ZqF0OtdxCYZFBR8wxT4rJHm1olg95Jwh3Rc57OgMWvJs5DUQ+V9g+nzkU8lL74xGJ8Ux/kKhWcUZqmitdLLiq2inCtDooV4Umpazo1nV39eaSH+0QMkc2GV9/y1HEDXvN6Rr7hEu7LdubzhiH5NxD57iyfhLpK3aSam3C8XJzHDRIgVpPzmEMSEGJqU/w8E4t4cM67eKXmOnKWRCxc1qKWyA50x9YKyQpK/lhiAOvleU3gp1uFjDJ/VG7RntnfqF4OPO5bDrAib4aUXaBqXUfbLiiKuDNpl5IzUFWHoVruEzaygLGy+wfVcrneEeglBshPWZqDLxcdwRnoTPTMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jjJOFpvxgbtbyyB4k80P8L61VJSa65l6TScoD3NAKyM=;
 b=CBk8SjBQwErpiS8jivZCmlDAefbB98FDpBglkwHpAPzncYcLeG1YM1kg7wt3JQ5WTKXtshgG2YTtefV8yX0gQyGw02v9zyF5b7eqdQ687oPbuByZCPcWAKWEQlTvE2nKkMkCwlM4nKsPoUShiYiopGXj7Oq0z14/GPxT7s/I4oKTG1yXjGZRERLYGM1XyAqLjnxuiR5DvpeFP/eag+4MbEL0SfsF7xhp2lwX8Ad264eggg0glqnmn5wuBQc76p2wPeASwchMjW47SLVrR++VbC/HI1JDY1zcTehfbpSV0C+iLA+P2g+cZqwefI0c2buQ7yh/iKFTA+xiN0rjS7YT6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA0PR11MB7308.namprd11.prod.outlook.com (2603:10b6:208:436::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 07:30:01 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:29:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 06/16] drm/i915/display: Add DC3CO support check
Thread-Topic: [PATCH v6 06/16] drm/i915/display: Add DC3CO support check
Thread-Index: AQHc/ax3nH4bPuloKU6i6QFa6sHez7ZCV+7g
Date: Wed, 17 Jun 2026 07:29:59 +0000
Message-ID: <DS0PR11MB8049A2363C4A0C4CD0B2FD3DF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-7-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-7-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA0PR11MB7308:EE_
x-ms-office365-filtering-correlation-id: 00433ba4-545e-459f-6cba-08decc423ce8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|56012099006|4143699003|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: VMyekZW6sRMVE+HNzguws4NJz+9tHOGfRzX4j3ng/7HbvGONgyxosCijfi32W+JY/BTuuT2RH1di2ZUpzzriD96o1DdXlBJvpYBs2U1zI4DUkaovNUnsnylJB7AOMsx7HfTrpO7mf8aa5JCPONBpZ8MhQh0P5e69lmvHJ2w8qcZXAQDp6r3mimTo+C7fiJL8P7Lx39GyStY5sk/X7S56Lv5LdNwSJpipidK9C7Bl5/QtSpQK6NMUoie6bTM9Bis8Cq0NbEw7rbqYEqiATt7zepTzPj4sVGRTCMq5Ab7di8lGmMd2UzIyRhBdsxGU264KQYT9so5PujxdHN6MnoafKPK8J4cMBJZI9vppMHdVgl5uYmamJq0PZa3ObbhA4GHNTWjVghioaoUrifvzuZLco2/QCzouchkFyBBBDpmP/voT4CvfSRDMePznfRVV/WIH5jtoLF+Kp5/cJlD8FPuCXM7UCgxabivr+Nw6YIR4wQaoWNtKpH0ROHD4FjUaF1TC8CnfeVMJ0yHWydHIMWVDxwO2Awxg8EsZ6Bczz9qEcp+CO1eCsNq25hRyu99K/5CRk77tU9Y9Tbv4e8JnVgpW7nC9+OM9EiZBXaY+ELsQsvAC7aluNN8QqBPgKXYYfI1NXp4nQpPO6ZoeRLLZ2Ii6pBNfHVKyjaR6hJ/ic3F+K1Ezhj8THJbs3uh7ygH9Y7ZB3r7DTTpqK21Og85z2yreJ7b+uRXhHo6EATtveXgzT7IqtqPnx8lKaJ04HbxStobI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EcAZK7eeJO37xPxaCHyeSqkI8hj/4fWHiXFHuUCToFXP4zVLC3OB/AifpO56?=
 =?us-ascii?Q?KvtmJlS2OmmqjPAfLSqb/uX7PX/sIH78KEhLpFJ2eb52WSvRS+EDYBCNUQ8Q?=
 =?us-ascii?Q?Abpm9cSZOqMdBFRglVHRh7BYnxLeRxAKTjVxVlTB8du85U9aS4LUQFPqRZFO?=
 =?us-ascii?Q?SeQGhMtyYh3QcO6NT/79urZQOrvGjDi9a6bLaIBoi+tR3kvG1QsnQi4oqnM0?=
 =?us-ascii?Q?+GlrfAEW7ANLn+9lai95SWp1ljeT1dPOVEYkbUiPbBeb36RcyHc7FFySEQQ7?=
 =?us-ascii?Q?izs29DEVG6m++Ye8l4iCTDfeYFM2dN9xsZQq1KWRpLxm6P2iug+4sj4cqwHM?=
 =?us-ascii?Q?O8EG7csXoVOi34QiAJ5aNIcOqfrbasQkUj+p/eUAPrGPoRukWWP0shqAlFwv?=
 =?us-ascii?Q?0nqGJuoC4608jBc8sS4mVsseBKTDbIqsah7NtWHg/666VB8BIhYfBNUDSq76?=
 =?us-ascii?Q?WpaupP3O4T3yrmjCnUobajVgmLDPajsv75LSVrd+stCfyggIdVPppsy9pD5W?=
 =?us-ascii?Q?8PUxfALYCExATztrd985xxeW0WsAXAlAE/heqf5gt7CSKURMIhF96GVPpRi0?=
 =?us-ascii?Q?eiy6M1iEhhhBYPJFusmcFoQHmhOuH+kGG/Y0BNaAPFpYBhnlbctWhzqbHxSN?=
 =?us-ascii?Q?gLleyMNCjdw1pjDkA2SpQN5/51h5Vwb5WZXIGlyB7b9qE9pV9lU6z7XPHxiX?=
 =?us-ascii?Q?je+jlCo+qgYLVwGcsE93MIsLm6IQvScpRQxM1l3nXLvCCC5oxaMerP0p7p+v?=
 =?us-ascii?Q?RBSb+2vkuVTAQ5r03yYcS1/7xvoCPJWiSgygEV9xSHVf6uSujMNbO8EazbaT?=
 =?us-ascii?Q?jVjVZiV8GCpw0JcOk13gjkQQRNYV3DV1jv7RkmP7SWvFImzNFTWt4iHsIyI2?=
 =?us-ascii?Q?p5LuFR1ZnM7RAOojTP/Xoza7kpW98BhgWrvKoZp3ib59RZS2R9EWXlekswiw?=
 =?us-ascii?Q?X/4WR3SARFK+yncq+U+WRcC5ZXaUn2kQqG8Cqk4SGsfUZbYT2ye2fl6hrtRE?=
 =?us-ascii?Q?QN55ablbswWqvP/7wRDNm2jEfPIIdxesY7fP6hKEv6XXFLhD3EGURQjHHdyx?=
 =?us-ascii?Q?G1vujvVOxLd1giJ1sTBsZyHY99UBJ+LmLvTtpzrEhebhMeRRERm7+4SxeHuI?=
 =?us-ascii?Q?2iYiDLDX7aLHK+vYotN8cmV8mXaKEopfLcEa6EXuwu1hMEMz0ebEzNsXsjmn?=
 =?us-ascii?Q?1sgl9PiFIRLkTY2FSQklFoWq/BkQxYoHafmNDyupO9+MNOpxavivIeLQ29Zq?=
 =?us-ascii?Q?80wGgD7SwrdUPSWvvbGXehaNM2QEyfI2RJpObcH8bcv59uEx0dlPstfqJjhu?=
 =?us-ascii?Q?D0LA9rAg6SOTeUcy1jurCJYgU7lh5Zj5TgH/V35zIBw1ZohKsVi241HBxCUI?=
 =?us-ascii?Q?a8THxsDDVjZ3ftF6z+XqzCQ5e1i+QYdbbvU2KFZW5yomZm0WyM2/MJUWMySd?=
 =?us-ascii?Q?qMFjwt44sDaESmC1ZTBsWKUZG5+s5ifpy7hq229BWdp0FuzuHJhpgxPv2Pp/?=
 =?us-ascii?Q?UFfXvGSolnCV4q2JQnxLx0V6KJe3s0zhOIcAVk9FwHY57Mbdh0QLAMuJzUrS?=
 =?us-ascii?Q?i9ek3fq6uMA1fRh1sRHFH/kdge5YAnSa8S6usB225ssjHG93Idu/DOSgrEj4?=
 =?us-ascii?Q?URMPpD3Xqbbd23OMxI+TFNALgqXbzW7ssiiumCybtwq1NgYAUS0liOYKR7mG?=
 =?us-ascii?Q?RicKC8J/iuqsUmMj+jXAzWd9eAzAnsZcDzy0NI/DL/v44TCsycvsS7plrySF?=
 =?us-ascii?Q?jk+bPSyNow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DMUbLD6qwew8b4OSaVdEcVYcluoYmWhApgYWhzjSiqtm0JVIdmL5w/d5aeRC7wrWMVTziJ8xkrkZ2ulWxjYAnPWGRfp74jhbCqsT+U75+lzefOIXVsLUGORrs6IFcRkdaRkeogVxOtidCN+DvvFdj/4+sA+9IzG6DNtvYEL6kWQYCSYVvR9WM27lK0jk3Ird+bdYZ6iZkZDSPshpQC6iBojxrCksRsQmGCMJaQEtfsley40/lmAAC+A8TyzDj2DGzcOzsygtxapSCpLHVP4i65+qdDeAvZnTITA13z8nrkCerQ15RbWvDFkA0RWUfObnjwjhMXEKaKaMmgpRZjGqwA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00433ba4-545e-459f-6cba-08decc423ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:29:59.3873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ygMcnTCe0xqrVyQYj4OetQu81OG+HFoUCvo9+rwgxQLaC5SRleSgu0m771VJkXtvEaOtBJfUlqjL13lRmLRcug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7308
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS0PR11MB8049.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 61961697319



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 06/16] drm/i915/display: Add DC3CO support check
>=20
> Add intel_display_power_dc3co_supported() helper to query DC3CO support
> from allowed_dc_mask.
>=20
> Changes in v5:

Nitpick: Imo, specific patch version history kept in per patch basis. Inste=
ad of v5, v2 seems to me more logical. And overall patch series version his=
tory can be part of cover-letter patch.
This can be taken care during merging.

> - Add HAS_DC3CO() check to intel_display_power_dc3co_supported().
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 10 ++++++++++
> drivers/gpu/drm/i915/display/intel_display_power.h |  1 +
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index e313d719fea1..9e66f9a4fcdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -381,6 +381,16 @@ u32
> intel_display_power_get_current_dc_state(struct intel_display *display)
>  	return current_dc_state;
>  }
>=20
> +bool intel_display_power_dc3co_supported(struct intel_display *display)
> +{
> +	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
> +
> +	if (!HAS_DC3CO(display))
> +		return false;
> +
> +	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D
> +DC_STATE_EN_UPTO_DC3CO; }
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)
> { diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index b9c9b68072af..41b4be9018b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -184,6 +184,7 @@ bool
> intel_display_power_get_and_reset_dc3co_to_dc6(struct intel_display
> *displa  void intel_display_power_set_target_dc_state(struct intel_displa=
y
> *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display
> *display);
> +bool intel_display_power_dc3co_supported(struct intel_display
> +*display);
>=20
>  void intel_display_power_runtime_suspend(struct intel_display *display);
> void intel_display_power_runtime_resume(struct intel_display *display);
> --
> 2.43.0

