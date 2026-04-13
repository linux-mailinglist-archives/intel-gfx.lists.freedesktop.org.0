Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOgxIlxX3WkFcQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:51:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E9D3F33EF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F1410E062;
	Mon, 13 Apr 2026 20:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7RSy5G4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9218D10E062;
 Mon, 13 Apr 2026 20:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776113497; x=1807649497;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G4IYxtyTa1OWUzoEdmsvJiI6obnoeDfPgzWfPfiywcs=;
 b=j7RSy5G4M9EVUNptZElGLXb5OpKNT80GZ+Si2Ci6ie5qlAVewBSfHRoC
 kOXI/Wv2QdPzJ9BX9Zc+eBNJCwJouCtayLUUeBif7onu2rk6UayeYIBFm
 RuKq+pLMOiU7gSOlyLWJrC5k4uOCAbpRk7ZL64zHRbdecNUS2KXh0+K7A
 oR1EwYaNNwWdjqECF/sDuvLhShKmSifuNSouKUYNylNHzpl6qT8gGFMD7
 ur6xSdhxRRmT4Nj8uJWBNiC8skj15IFrxMIKxPJQZ1oI1IU3oNmh0n0Ge
 gDUH03hcXbnTr6jL7jfl4iqs4pnQGc6J1wDqJiAkYzYcJd0elqWNx0PxZ w==;
X-CSE-ConnectionGUID: PZC2DTAeS++jfREiqIvMJg==
X-CSE-MsgGUID: WK3zSEK7RoGZw9nPRiCwOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="88135009"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="88135009"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 13:51:36 -0700
X-CSE-ConnectionGUID: N6AEsUlYSYCuZKoNS0vFFQ==
X-CSE-MsgGUID: 1u+C5LVoTa6bKjnO0f4vjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="223398261"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 13:51:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 13:51:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 13:51:34 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 13:51:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i9whakt2zsJO4XfFng4/z9TM3nv6kyilaCp6HqT1szwM4pkHG4g3932ID/hm1LJNjWtsi8x27+nDsx88PCtbvLKFSC8ZHFzswKhF7v98SSj72uro0FoN+IfYiX1lh2s4XnFsJpq9GCsnPfoajXe386+Xy5Iq/mVtKjKKVOuMhPBMWElqsdDYPDZxiQybetJaz9HeiQXcWwRqcEq3uxfQeemiR7wGRcSMmUsU0dcXhqFZv0TJ34NHxICPgKp/+Ok1Gg7fbCpvKGg/7PoPEmytC9rnd8H/9mGrtcm3226y/1z2X8sq/JhN+4a+ALj0U1akIeRWqEQJJeYRyK7hxY5QwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NFrJULj6BBiVSEBggtgz+Ii0hLzqNh2GnwpfidD+LKM=;
 b=NDatuxIQXYehiTZskHO3mMxtqubYPmirkKFX387HZ3foSuoWgKccxC8GFxJkDIeWxnsCw+R87jIrwqQ2/K/KSDoJ+EHf1nvohXH/UmBR7RnHO/wgr96CnOrAJhSVQeMjsgzJwZbgrlv8hm75O0bVBVe49g6ls5eyWw0c+iTa6roi7YVmVmcUm9lzw9wg1/pQhn1oE3VzIrF4RqgsDlC3iP26L1Si3i3qfCTgC+UyOO4464jxWtefIMgf5YWSDDornuL1zSM02oqqUQtVRxUEzVPB0B5AcVmuFyzdRMKraIHrRBlAp0bzG6CyC5H9VV9i5oEx3K82K3KEUhbehvDFgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4948.namprd11.prod.outlook.com (2603:10b6:303:9b::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.17; Mon, 13 Apr 2026 20:51:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 20:51:31 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 02/19] drm/i915/display: Replace DC_STATE_EN_DC3CO with
 DC_STATE_EN_UPTO_DC3CO
Thread-Topic: [PATCH 02/19] drm/i915/display: Replace DC_STATE_EN_DC3CO with
 DC_STATE_EN_UPTO_DC3CO
Thread-Index: AQHcvUQohVyk8+jj7kmxjkb82nBBnLXdkrMA
Date: Mon, 13 Apr 2026 20:51:30 +0000
Message-ID: <DM4PR11MB6360296B6EF73FB67AB242D6F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-3-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-3-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4948:EE_
x-ms-office365-filtering-correlation-id: da904c5f-bed5-4d45-bd47-08de999e70d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: bo8Wb+pJP4UFZHpgPeEgDuXGGxiFiYc4gJ8i4+h8nFhyqMbvES+GM/EP/eF+Aq+tGG06QI0VG3MzB/1r1YnmVxMDE13K4/P4Grvt5fHkLL234bH5KxJdiEgr86tCO+z2wy0tljRTxqWLFonm9ZSF25l4Q4HbvItplGaZvCxeR4z2OLUoHaLNNQWIMPo0D78AKFZHdliN0krNyL8s/NBu+G++lb/Z9hvrpEHENE0Gbfk0p4lZw6HQvx6gpDOVcR4fjCUmdIh/trb5FJDdd4doTJCbsdmsNjSkfakjBYTtnz4EpdUynCpJ2nt0qq9+ScjKgRWiuNc/bYuKlmeT27MOkDVLBPUmhAuNvN7jBrzMo17YhgVeQ4N8tS58NcLy+PEVGLv76f1Jle3NGJPvfazNdTtXuF9V7TRZFV983psqjRrvoCOdt1Xh2m8pZnDs3IWkbX/9L+mxabB5gOMcq6YJDTXFhuSJegql0Vkzjz+D6v/tKjzbhzaJvlSbQoKHOJyWxGHSzUFg8gKrl/Wb3WHRwXecJ8sCPh6zSEgOftw4Vc2GsXdpMVNuKia/7bNJu3NVyf9zD4Hb0FoWpD6W6grjTYp+fdXgPr66wBg4yqBiwOt5pFmxwW14X8cnRQ855PjC8gCyImIwC6uM5cy2fZx0DX7pT3+huL7U+I2vT+uXynpb77ZGx5vcaVDTUpkacRHQwQq0aTIEmWeeA8h4PnUg7Y6Jeah72JiUakCXDj5O+6dYMSbZvfLphFvTPNubGCASuygxn2CMPL0Kz8JsOGRjMy0wgy0rQM+wj5ktSKhGUVk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?usmo9Ph38yJn+yk8zBtDPX2xLk8t7MJNYvW7jo3vjl/aA0YUx9wNqg5q+5yP?=
 =?us-ascii?Q?etwgCOkLt1h+oBup6KHYN0RUNaRXso1aLdb5PFRpIpgCY8m5seRtM/07lOoj?=
 =?us-ascii?Q?umGmk+tGMoJBiUzOkdTvY2zbWFvZ2aUhOVaRXRKkeiEryQ+OSjhIayOL3BZM?=
 =?us-ascii?Q?MWLP2BMOBEnzz4eCUjkw0GssJcjXy3RFR4mxAEHrPBi9ATW0hIT273sfJglH?=
 =?us-ascii?Q?f4v4u3yTsccuqGiEmLOr/n5O2NbnosQ5Ov+ahqPXswiJQaApS1LYyil5+pFL?=
 =?us-ascii?Q?UFYKG95eC9pvsGyMu/LlCZUqMVyQTXY9RP5qS5/QmE5XrEgfNOnrm7SnVCzB?=
 =?us-ascii?Q?2ZqPDiEjQE/qGIHF0YdsVX1QhehbK18a9vwjXSLtbJu1Jf37DylZgdU/0idJ?=
 =?us-ascii?Q?PIRQHYMAvVBqbBgFsBOnLzVognc+WCLjod7eMjLoUgMmsCPzmOd85iAlwbsw?=
 =?us-ascii?Q?QfWL3jig6qlzpYvXq6EDRc0AgnH1fassq5LxH/zKYHP9/b2MmPqCYwsSoUTp?=
 =?us-ascii?Q?O3dBI03DVKUrZFyfpQbZHvCL7wWur+KwAFkKKHZwaVw79hJIqHzhizb7oo2v?=
 =?us-ascii?Q?Gh4rsV3g3EvFoyrZfKZiR3BXG7J+68CmqdahrMSwE3y7DpR+pIIlWq/RlAwt?=
 =?us-ascii?Q?KpqIFhgyiKlcSvOCA7cNQaUKEqfiukc8bDh/kb2e3n8XZJGAgERjtnwHFEc3?=
 =?us-ascii?Q?zn7kQau1ycRyfQqiZx46xsU7W0his90AzS4rONn0vjyEpItdRQeUfX+6rbNx?=
 =?us-ascii?Q?am4iAlNyLMli6Dt16/RPTkp1Dj3EnKJ0vW9z4NDu8jXNALwA8+C3WU0XURaz?=
 =?us-ascii?Q?7Rj502VvJt2RKYVw7NnfbnPIoWr8EdOMbMFT3B51uMNRIhJu8MSzBr8xDkXF?=
 =?us-ascii?Q?DBZgtqzwluLL6UIxyg1rKRKgue340f1nyiv/OwNza3JsWZfr88dkCKg+TLtV?=
 =?us-ascii?Q?tcyqTDr6Rpt1+exmVP2xeUkTw4FJ9xkrdpxJcK1sojnhxD2oi8pNeingtMlL?=
 =?us-ascii?Q?UxbbcoxGaOUR+KnH4bvI0fsWaSm+QUaJB6b0rzh0x8gh9Xh/4rU/gAqjF/yP?=
 =?us-ascii?Q?042SQe1bO+6POWMdJ9wRrfCLQVUCU2GROrnzj/Vpr0NAbbn6jpFtMPCgTqK/?=
 =?us-ascii?Q?JOYsVnn/m7nKYHwVwXCOYw1AuUHX2buX9rGy5jMwlKtamvPr/H2ws10XRw7J?=
 =?us-ascii?Q?HsdBr9lsg0DufqUGCV2YyoAoXTtk8QbhrmWJPHY2UXGU88xHFUrks7G84EwA?=
 =?us-ascii?Q?86pk9kOPH5iX9AuPJSVGlnzb3mGS8f9BT/gtPUlToOHfGrF3O37gScIFDOxv?=
 =?us-ascii?Q?4D0yj2tyR3ik3mXaNzY5xArIKwIW1p0Akwxqp9S8oCA6coddOto3X4hCtrXe?=
 =?us-ascii?Q?bcIsZ615FxHxqO0Fl7lC9tBejTHz+7n+AlHaI/Z5N+p5fnyul3NvbstFq2Z9?=
 =?us-ascii?Q?G3c0BovJHzDN/lP4T+Rm/RZJhyB81wF305KKx96aO7iYEI4PFz7sVJNa+QV6?=
 =?us-ascii?Q?E5LMne82PiU6LL8+VgCfikVkvW3RdO5+mIpSeAy5pH+uWJ6dydYW1XXPeYj6?=
 =?us-ascii?Q?ZveNjFKQ6a15z2LOarusmfTZs7XBDeHjNWo0Dxa0Xx4gfaHLLVO+6dgRR7rf?=
 =?us-ascii?Q?VmYcs8ElLY6QjX1iP0MRQsHj3P/gERxGekGl+21wiAFli5VkSs28lZVESLCt?=
 =?us-ascii?Q?CivP8Kd2O+LhjkzcZUHuOO5RCcUhJnHafDG2d4wCm7ZFoHfj/qYy0vAoJ+6E?=
 =?us-ascii?Q?4h3KILxzVA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YfhZprA6bSff3FQpwFcwBm4zXcQhWAWu6LeoRROGSKAaR0ihCd/6xyLs5mz9PyRb5mga9WsSvp+x+YsWRxiUIdshsguSTz2E+CTDKM5xI+fYyADP6n1TvcMseWr/Upcov51xJRYeOvt60dJyIrSCPB7ILsoXgVgkQSPnP8hbWub7jsWJ9sm52wSMbeaZ6gBTNmrCy3RBhbrpkUm2lBO2kM0We/JAPjvK+GquzslTLIzEJxl6Rm6ucYA+rIGIHR68eio2hNd1uOKKDUF0ejEKigcLj1mWv1LyNqKmR2v0Vg7vqxLG53dw9iez1tcIXkbefTPWqdfXXrGklc1G1Og7Jg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da904c5f-bed5-4d45-bd47-08de999e70d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 20:51:30.9892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aX73c4bQljMJyR3pKNVGBh75PQMLqfjq84yGaxg9K/VBeOVXCbN2PYmEfL2FjaV0h+CCeqnu0uCu4Da9FxwlZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4948
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E1E9D3F33EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 02/19] drm/i915/display: Replace DC_STATE_EN_DC3CO with
> DC_STATE_EN_UPTO_DC3CO

Nit: Patch header can be re-phrased "Switch DC3Co enable from standalone bi=
t to DC level encoding"

Changes look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> On platforms prior to xe3, DC3CO was controlled via a standalone enable b=
it.
> Starting with xe3 DC3CO is encoded as part of the existing
> DC_STATE_EN_UPTO_DC* field.
>=20
> No functional change, as DC3CO is not enabled on platforms prior to xe3.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index ec96b141c74c..0afae5c2f62b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *displa=
y,
>  	static const u32 states[] =3D {
>  		DC_STATE_EN_UPTO_DC6,
>  		DC_STATE_EN_UPTO_DC5,
> -		DC_STATE_EN_DC3CO,
> +		DC_STATE_EN_UPTO_DC3CO,
>  		DC_STATE_DISABLE,
>  	};
>  	int i;
> @@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct intel_display
> *display, int enable_dc)
>=20
>  	switch (requested_dc) {
>  	case 4:
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC6;
>  		break;
>  	case 3:
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC5;
>  		break;
>  	case 2:
>  		mask |=3D DC_STATE_EN_UPTO_DC6;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 6d5f07f7f590..9a948f5e2164 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -773,7 +773,7 @@ static u32 gen9_dc_mask(struct intel_display *display=
)
>  	mask =3D DC_STATE_EN_UPTO_DC5;
>=20
>  	if (DISPLAY_VER(display) >=3D 12)
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC6
>  					  | DC_STATE_EN_DC9;
>  	else if (DISPLAY_VER(display) =3D=3D 11)
>  		mask |=3D DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> @@ -1023,7 +1023,7 @@ static void bxt_verify_dpio_phy_power_wells(struct
> intel_display *display)  static bool gen9_dc_off_power_well_enabled(struc=
t
> intel_display *display,
>  					   struct i915_power_well *power_well)  {
> -	return ((intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_DC3CO) =3D=3D 0 &&
> +	return ((intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_UPTO_DC3CO)
> +=3D=3D 0 &&
>  		(intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 5838338f495a..d0196d4ad234 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3044,13 +3044,13 @@ enum skl_power_gate {
>  /* GEN9 DC */
>  #define DC_STATE_EN			_MMIO(0x45504)
>  #define  DC_STATE_DISABLE		0
> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>  #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
>  #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> +#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
>  #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>=20
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 73a3101514f3..9f403b7820ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -260,7 +260,7 @@ static bool intel_dmc_wl_check_range(struct intel_dis=
play
> *display,
>  	 * the DMC and requires a DC exit for proper access.
>  	 */
>  	switch (dc_state) {
> -	case DC_STATE_EN_DC3CO:
> +	case DC_STATE_EN_UPTO_DC3CO:
>  		ranges =3D xe3lpd_dc3co_dmc_ranges;
>  		break;
>  	case DC_STATE_EN_UPTO_DC5:
> --
> 2.43.0

