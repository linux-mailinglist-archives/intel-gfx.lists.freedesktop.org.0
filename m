Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YnfRMDdoMmovzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:26:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38415697E35
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:26:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nURJ4FrB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF9610EF04;
	Wed, 17 Jun 2026 09:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F5C10EF04;
 Wed, 17 Jun 2026 09:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688372; x=1813224372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mb+pUwrhbqvpO3HwEEzuEk+GA2iDB2i5dpEUp3rxk/c=;
 b=nURJ4FrB1IXTgrMvKk4MyvqeO+YxxUwIlQ1Q1xMfljS0AgI8eMUA3HGq
 icCUU24WX6qN4qh8NDLelKbK5Q9XrBEliLI7EuofocvBj24nc1i386k6D
 oLM433BjnRFvTlBldYHgSifhw+DE1RACv+jrObLDEtCbRl7ysVRDR5TqF
 wsr8jb26tUmDnIT/MXq+Ukv6T5bopbsfz73WQd0OBNTqDlDoLgt0Jphtn
 NU7bzw/cbWcuy10lZkYHyxH4Zulp0RYwKKnpdP6MJd9dLObSxywkBVyBw
 LZs1oj9T1LOh+Xqy/53GP77dBMQxIY9P2vrBVacEoFGLIapmkviKXy00s Q==;
X-CSE-ConnectionGUID: PR7hPjX3Ty+Jx4VBPqL1Cw==
X-CSE-MsgGUID: bURUEkr7RVWJEUtNCNt66w==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93850280"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93850280"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:26:08 -0700
X-CSE-ConnectionGUID: epzMVEFFRSytIGidufR5QQ==
X-CSE-MsgGUID: 01G0H5INRBuoOcnxnGCgNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="251924141"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:26:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 02:26:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 02:26:06 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.35)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 02:26:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hbkR7+5/8SB8OZhiVuj3+ZK5xmBpRjd3q3psuSDddrt0xOauwuU26hiCXecF1FYb8yYZwGikvDADC1VxIvxtkzdgw704C4PYIHwOl631fbMIHjWijjOMPjvz6ffpXU95JsA68UUJehwSgBeV+i8/GymL+PPO/vwuX+oWeRzjxsg4SFa1RGisWQw+CycUXh9YZk9XZli+ZqrLRZbSiizP/LeFjDzKhgJafGc//vytSZGp5g+qB3YbfHSgV2l8j5Vrr1qiL9/ahEfHqMGzNNYbhi989Vk1XZBpC8snd4Xdb/dAp9QtKw07aA2iF6zpG2tWl/ki/MRj7vzj7qw0CRwpyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7t/UEAEibqV8kWbhxATHw0eAduTGyawBvwd/OAbSa0=;
 b=xyyt8UIhhuaCyGVzkHbBe5RX9RdiQBtVJyQfsEgA33eyUQlwzIe1IKrH09R8PYO4JgDxTbaaEqUWDhAfjL8Q88idqKKPZgBuua4CerZkn2aG9oSXbPwkN6lF1Puh9/d8JuIGvt97vDqcnQuATyupShVjUZWSXny39eLUzHE43khjgAYnkkdUw38jb17G7q6o4BOSNjLUEtOsH0FX43EuABrBAwsRsnrG3AKZnTQH9iHFZCaDyj/c02fp4CzKD9e43lPoZLz3Mz5gaup4+9rO1Jy0k5T5hG+stuFWrTfzqdf1OpR9yxtdCI97ImEZHQukUMQgLggqiUkw4IijfgJWHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA1PR11MB7853.namprd11.prod.outlook.com (2603:10b6:208:3f7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Wed, 17 Jun 2026 09:26:03 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 09:26:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 09/16] drm/i915/display: Store DC3CO eligibility in PSR
 state
Thread-Topic: [PATCH v6 09/16] drm/i915/display: Store DC3CO eligibility in
 PSR state
Thread-Index: AQHc/ax79fUtTcAOOkSCE/dI3ZAT67ZCexLQ
Date: Wed, 17 Jun 2026 09:26:02 +0000
Message-ID: <DS0PR11MB8049D2AF050B58C8D747E745F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-10-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-10-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA1PR11MB7853:EE_
x-ms-office365-filtering-correlation-id: 7bf1b053-0431-487d-1d9f-08decc52736e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|3023799007|18002099003|22082099003|11063799006|4143699003|56012099006|6133799003;
x-microsoft-antispam-message-info: YK0QSIUFl4aHHZg9pWCLaf+NHRthXpAqUPK1NZtg/NdDH2+2Fs1yw1c3Wwxlh6hrZkEHkVTFJi7ZVjjpXaPe5Nluc3moX490mcRLmB5+7LXSy8Rbp+W03ZOleyc8LM+ZZEZPrUY0PVqeIJ3Jxq89WRBQmb4NSjCLtdCcvTlh6jxlIMBmxW6C71bALBFFYtbFJnlsxDS/2CwnaHnLcWD7J3iIUb7gvP79E+2p2AiYpKHHKXpQnD4+tFu1XAj1tvRn9Lo9k0gfLnwRK1sw5Cl8Nim2EFLUFTB94iccu1b7OTYVxmwUKvn093289spBFZbp5M4s4h/PUsrFzdOAkJgL27amdN0DT/rwxIuYxBuNHW1dY8YGErcCk+8c/zM7OqDXq9XiaoCJItCS60RriQoXESFqJyBtK61vX/iHulKERiKKX1VLO8CAiq5iD9VUt18IC0wq/dpVYOXVJncdmT2Ld4asD+gu0GeNsX1+XFqQX4s8wnXYE8/sQ9S1t+c5feNZYbreRwKtOHu+/sXZG9sk5WmuEr1s3CkQ+jzYQYFykLtjDJ9DgtWO8j2KREm1M4nRAnAuJEqcs09nhU0JG9GbA1k3S4C4BsdNOphVtQ09k6AYg++yMRCwFbVWznFcztka6phptKmeriZxKSFO8Q4YAaORRlZsRmM0JYJ/VCQCSUXbVgAhhQiGb2mFZQXnIL9meOkQgWqR6+iuikrJQiwdchD1OH/9EoVNkud2cx7qFXYLTk0CzCeOHekLNPIAqWMw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(3023799007)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BwMixc2ngBiuyAV6PfjpbuzTjXOJX+8CE7ZW5wa8ZMDF0PbTDsLykuOaY8Dl?=
 =?us-ascii?Q?9IEGSHCzGAlx4YvwmhD6QM6EbYVKqF53vcOoEMUkvGeNykL2zEAYlfc2PkUy?=
 =?us-ascii?Q?mkIUqrMM/oBZ4tqksOVo3YhY/e/7wq+HXYocjS7UuT3wVGFVGfEpnKWRE77m?=
 =?us-ascii?Q?4r5aQHTZAfX9MlNIUfaZ8B+RPAOioTilm6+EYl8Gr9c0DT+wjlhsoylBzcEL?=
 =?us-ascii?Q?7GzaaHeBERtG30ZB8TOilqB/rwe3HOXGk02og/wdPW2nhgNk2b51rHMub95x?=
 =?us-ascii?Q?Y1aVXYAQNEFpJXM4CII7PnpYpFA7saMwy0G63aI6CMeKPc/cTSgGIm97C9wV?=
 =?us-ascii?Q?K96q8ODTjRob5gkYpN4OlesGTd87fF3BI8jmLUejAN2Yd/M85u5MVLASBZC8?=
 =?us-ascii?Q?wVE5jEyvTMXngJtUXB+QiEqsn3q1kdfJIwfJYl7kIPr6oanWpRsE14JuMCsn?=
 =?us-ascii?Q?w9dN3xAoMhnhpVdL5Qnv5v0q0nAnakTXMqAHngHG9GrqvqQaX/0ZFHo2nJaf?=
 =?us-ascii?Q?BAKr7abpI/dCi2QTfQIYQEzxBhFx9bhXZv/J3sFr1nGjfczx9fimApfwtqKN?=
 =?us-ascii?Q?VPwQMF4NfocRCjkPRlAyhg2Eco7e45Dv/wP1k4mJfXARnKL5J++AiQoFYNZ4?=
 =?us-ascii?Q?ZYLdC8VdCUJ+dSTKFbOMn+MtHLOfAeQtab0XRdLccwrHM6js49CJHabHAC/z?=
 =?us-ascii?Q?5L8RbugZLdPSlVm68pDMnj0MVWxvU2Fu5X/XnLDedT768uH7hoD/2+1mV+/l?=
 =?us-ascii?Q?F+cKatYXOw9+m1bCem7yY92sizwN6NqahtRuo+AUFoVJXinxwoYQWuMwv/GS?=
 =?us-ascii?Q?xZ9OdlPNtPa3ddW1hggYU3gE4U5jy4DgEoKFMYML3tXmPtGF/gLfx2Y6gzih?=
 =?us-ascii?Q?AyUHcgUawc/7l6MULZeESy8CE3CVxVX90DzC8lkUHLcj3iZC0IsT7l7MdE13?=
 =?us-ascii?Q?/k57PJvANsTzlGEPPMJfGvvfkXmBE+6ntH5mEDCG/0Tw2lxZ4deGjWxeSn0W?=
 =?us-ascii?Q?S7jkbbzsjbOJ3BLV51uKmQUs/boFZ39wDw3Tru7wvef7kKh9R8bqrqipk5ZH?=
 =?us-ascii?Q?YaKyqrIUYMqZyRgi9aTpaxExloeM3IHLiHAdWaejqqH4lSN2FlE9avNSKpKK?=
 =?us-ascii?Q?kNYwI3tFLKHVChc3YYeIr2fbZ71VsRyGlToicHQxIvdd5yk3jnNWEEXCYiMz?=
 =?us-ascii?Q?2PJxyfa77hdd6QppQkF/kxhzjh97vPKGyTl8rBdMaVYNUhZ97I2jetnl6QP7?=
 =?us-ascii?Q?yrPuflr3OvQBv528kM0miGj4CGBczWOKhGN7HVyBDNsFIfIkcEfB7GrE+axh?=
 =?us-ascii?Q?Hpt323JuIS84jaU8V+j4b361UDqRtSD/UG2YmgUbdgHW+E+Ukl/0mJrKUPzR?=
 =?us-ascii?Q?Tr1+YUyAhOvHdgwhCeZjoahJ2Zh0wYTAUi6+IFz+3TfMw6rq1hr60MvCFo1g?=
 =?us-ascii?Q?YhmXs4gblZ/UivPJiinOs/ondt2ZO2mR+K+7JDKO2TpFYUXEHyqJ5xr55QVn?=
 =?us-ascii?Q?/uenr53YEnWlbEnKy3/jQZuY3lauAbPHfKdY6gj8nAw9eudkLeAXajy5+ZCV?=
 =?us-ascii?Q?/6+TxteNP8gsXcMWgz0g27uGexV2B3Fh/lMIznEbEyEJXVZIFAb3PhuRgkhb?=
 =?us-ascii?Q?m5Y2g4WyNCTnHHyV3n4lTAeraLwDPtKKQyqIRdpRnImLrmuNJYqdhYovIQNm?=
 =?us-ascii?Q?Bj3eEZ7JJpWjy1mM5svjtJ2stwJuDsdAQpIc9m6caSKGftr4+oGmYExpTQW/?=
 =?us-ascii?Q?++qzJtQxRQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GjnjfvUUGaonzGgehidnL/Hrw7UEoHRZFNhUOWYhbl02GxdXFTETJIyauSz+T/nascs3caARkVgDHk+319XEKU6KSh8+GVxczIak3ntFAfZ9stFqhIo2OOR4O8AGjHlAASrpOUKDiZ6Ee1lHSh4XMSOPkUip/hR5jI5kAFxgq2Mw0vP63IFsXRzYKMgDljxX6dMmKVm7l11eb5NJDEh4wtuGWxlWVsQZ+mUTg4Vsn43l6wBSySuZc+3uAU/HP8XjvLAQeDGwS7YDBOn4GJvPNQ3j9eFJzA9/M9V1qu0JXNaEMmZE2C4m9OaNRI+/IYw67N4lh5ZDWodnDfVdj/Eh6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bf1b053-0431-487d-1d9f-08decc52736e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 09:26:02.8959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LZvmSd8zXA7HIm/Yi/isN2bZNf1z2RmKn+X079F2T1sOPrahEOGzmT59XtlsmRLCE6UHuxCJSNfonWerqiwYpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7853
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 38415697E35



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 09/16] drm/i915/display: Store DC3CO eligibility in PS=
R
> state
>=20
> Store DC3CO eligibility in intel_dp->psr during
> intel_psr_post_plane_update() so PSR configuration can take DC3CO into
> account.
>=20
> This will be used to control PSR2 parameters such as idle frames.
>=20
> Changes in v2:
> - Use intel_display_power_dc3co_allowed(display) instead
>   of intel_dc3co_allowed(state)
>=20
> Changes in v4:
> - Update psr.dc3co_eligible before
>   intel_psr_enable_locked() call (sashiko)
>=20
> Changes in v5:
> - rename eligible to allowed (Jani Nikula)
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c           | 6 ++++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f18b13f3e99e..30feed50a2d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1776,6 +1776,8 @@ struct intel_psr {
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
>  	bool irq_aux_error;
> +	/* DC3CO allowed used to control PSR configuration */
> +	bool dc3co_allowed;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 932aff386023..0f4263885416 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2330,6 +2330,7 @@ static void intel_psr_disable_locked(struct intel_d=
p
> *intel_dp)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	intel_dp->psr.dc3co_allowed =3D false;
>  }
>=20
>  /**
> @@ -3120,10 +3121,13 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
> +	bool dc3co_allowed;
>=20
>  	if (!crtc_state->has_psr)
>  		return;
>=20
> +	dc3co_allowed =3D intel_display_power_dc3co_allowed(display);
> +
>  	verify_panel_replay_dsc_state(crtc_state);
>=20
>  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> @@ -3151,6 +3155,8 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  			keep_disabled =3D true;
>  		}
>=20
> +		intel_dp->psr.dc3co_allowed =3D dc3co_allowed;
> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  		else if (psr->enabled && !crtc_state->wm_level_disabled)
> --
> 2.43.0

