Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJVoBerWp2kRkQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:53:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B291FB515
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048BC10E954;
	Wed,  4 Mar 2026 06:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZe6qQEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6846E10E0A2;
 Wed,  4 Mar 2026 06:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772607206; x=1804143206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ru9PbdZqwa03BDHNX7B1fmAlb0oTIqM7EAKQAFlDsQk=;
 b=LZe6qQEifm/HydWOhLvOod1NT1mZINWXLeYSUoRlSaVVhmUglfpSA6vg
 s6AJNBwLLZMdFAGlXyd3tbkEiTsNV+g9oECLMaBoxPMTk2D/WrCocSMML
 AWl58E3kCegUBZMMaT39YCDaEWKMHMHP6wKRlySmzjGUjedWm3IeSlyPf
 ZHCC7XlVDHMAekvPWDthF9tUMYOfDNJEcCBvtu96nbXFjdJYdev/GJUzJ
 5WywRt/o6L8ij2zkC8x0OHWuy2VwFHtxdVer5O8hSPD2P5saLlXDoH+GO
 JuKmk8YsAUsAHrObHVt+Ypg8ILCTLEmS3jYfPhdA+AaeMP4rkQM3lxhEU g==;
X-CSE-ConnectionGUID: 1Q7f9OARRciKZMTC6E61dg==
X-CSE-MsgGUID: vsWfraL3QkKuTv6toR/UPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="76260877"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="76260877"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:53:25 -0800
X-CSE-ConnectionGUID: r6sYoEyORl2x8jTW/YLEgQ==
X-CSE-MsgGUID: Y2tBCmlaSzKCuyk+UKQdIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="216566795"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:53:24 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:53:23 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 22:53:23 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:53:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KZ+ER61Qr3pAnwoPo3awHFI58S0qyY8byYNXYgyYP8fwHS6UaRanVZJza3IqdCriLT+0ji+pfVLLQ59cAiAZPQ4WVSMA7aI0sZNWkfwElaHrXKLlCGH00iVEt71A7rWkJu4l4CH5ao9yrfCouv35OI2hgVmGSd6m/FRDr2kXiKp2OSWqty2rF1a7EVf5R9CMAgUcovk8Bk8Jb0+F3oXw0lHdm4mC4/G1petdRFJgoyLULSrTO+2+GolKatOMQ/wo5IWlx0VX5Jm0QCH4BFTqMFvoP97ZiQ1WQKR+YfKYW0Xyo6nnSIwyfr+ZXdWrPcsJXRAtSXVCinRXAobp89iiww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ru9PbdZqwa03BDHNX7B1fmAlb0oTIqM7EAKQAFlDsQk=;
 b=iQg2o31hzSR4kxxgbmxJAYSa094V4cQFMz8Os4S/ewlm+udjc+vyhh6jXHZ4In9WBlcEFoiTeKz+S+8k/A1SdayiQ4X0/LTkSgJ52wjoLTnDQ5cHe4WLU18q1f6NsfdGJa5a8meYS16jasS7WoC4pX8U5b3jqaRUwrIwpw7pPt9YtJOUXfOxnGbmCfqbeETKyoIIOVBkWtdWurSSLR2VgLCDW+d19pbyYX9+MUcTVAfnvL3IHu6Ie7Ga9xZ6aMWkrv6LuYWfbqsUUuyoR/vg2LSQAxEsD0rhVfM5i6guQ0zwrLCDw6COEMFF70mdCH5PFP9GtJwdCzbFKw257cPXQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5237.namprd11.prod.outlook.com (2603:10b6:208:310::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 06:53:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 06:53:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCHv5] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Topic: [PATCHv5] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Index: AQHcq6HOH+mJZY9f/keWhOtT/KmFzrWd7+gA
Date: Wed, 4 Mar 2026 06:53:21 +0000
Message-ID: <e2464d689ea7284bd71b50a658e2a4250512d132.camel@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304063819.1120877-1-arun.r.murthy@intel.com>
In-Reply-To: <20260304063819.1120877-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5237:EE_
x-ms-office365-filtering-correlation-id: 6935eead-7838-47b4-1f9a-08de79bab95d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: HXJPMLmXjFV0AdebanutIx5S+jQb7QfU28jLfUUE6+nEAu7oUedyB+OQl4tzkCto/yGyfv9QNblLFTrzuc41M7sWcUrpXV1Xp7i710Fb3Rv5xJeJhbkCedU0JR7vMW0ARNlYUNJYRQ978DANYj//VCcn8NVtUuQgjIeaOhpc7glb2b2sFZGZ7TZNnC6FhNCfyKACim/DYKFssqd+dQlXNoTLHTzrrhJEJcsdpywIDl9gZ/KhWgsfJq+UUb61T7xmCn7Y4vEtwGiHWhYON43emmyM5DmIg59IWu3UeCgTb7wOy6qIi9GhVvbYvdb/qs4f9JCBiidQOfKX/hpZUfd8kR6fySALWRqtW3pan0tDAlQ3N/e4V9sRne3eyk5kjDy19FG/cUpuT/blrB7exzJPbSrsSrhy4a3ZWrQAh6evHRX6eYwYjrh8hXampF3QJkkqvJgQeMnCn4Zy++377Eym9bqXerPaOlRQoCAJH0kFY0GZzSZBtSTNH3aN5pf6520BYuB8j93kFIrwjo0P7mIiqgLSxODF44VPxbG7RW/MFeCRn46cusmUDTwLeQbC9flm36I9WFpRtrn9QKFbo1ch5oC7ZJ8KL/nxWBMuzX/4yCJxOwnNEli1+3sBRI6W/LVZkI7S+wWqCPr1XVxJsP4avQA1TeOdtsXH7Etzt7P51f7fb5/UeW/fUcays2wDco5exLtPjGWsv5PEEF+SRInInmOgNu/eteyQErZ/t0VxFqlrjC7biYGC4mznLS18HGxoZyw5nhciyC2u7lESdSzoYoK0kFWIehvmUWnNHCDRvf0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0Q3WnBabXo4ajA5K0JFMXhVTXk5YjdLUXZ4dUdSa0t1WSs0b1Y3djI1MWNX?=
 =?utf-8?B?K2pOL29maXB0dHNHQXBvbFAzY2FJV2lDU3JkMDM5VEl6dXdtbU5CYkVjT0Z3?=
 =?utf-8?B?eHB5Mm1CVTA1WkJMTkVNN2JBdWRBYXhUcTFHYU8rdzZPMzhFOWhwTTR4UkZD?=
 =?utf-8?B?K3Y4NlBZZ2VNNTVjb0I4OGswVnFHR2NQWWttMTFTZ3ZLd0VjcnZxazlickRB?=
 =?utf-8?B?Ti9WejB2SElIWGprSTg3SW9wc2hwcDJVWHdmRkkwc25oMHlxWUpVT3NLSVZI?=
 =?utf-8?B?N09HMnV1Mk5OWHBEdTYwUFFteDlhU1A1UTB6RzY3K3FnYXlUS2d3K1paTWR4?=
 =?utf-8?B?VDZXb2FTUVN6dzZISE0xcjczbm5tRlIvbGk2SUpHcGpnOFAzSHh1ZFZYc0tL?=
 =?utf-8?B?U3gxWnpJTTRKRmFXaU5FVkhGc2dzQklQNWU5MUlJcnhFejltSTBxOVZQeEt1?=
 =?utf-8?B?WHZPcm9UQnF2cjh5WkRnNmIrRkI2bEtkelZYNFdSSWFrTy82RTUrOGhoQXZH?=
 =?utf-8?B?Q01UbWQxYnRNbjVmTHhjajlOeWNuUEtHN3d1Qk9vQzRYTnV0YURYclk4bXJF?=
 =?utf-8?B?OEJ3VG5aZTN1TGxmNE5hWnBDTWdxOEIzcllLQjhGZ0NURlByeG1LV3NCbW5V?=
 =?utf-8?B?a243djJqRDM3Y3Z4SVN5UzBmZW14RVJVWE5Ud1N6NS84dVRpYUtubTVWUUdI?=
 =?utf-8?B?TmxjQWFVd1gvK0pIczVIejcxaUI1Tk9zblRKUkRuSG9tNndwSFhVTkhxQnY0?=
 =?utf-8?B?Z0tDSHdxRUhxMGdId2J2cUp2ekRDdHUrM0JoQmV3a3lCSkgrVjhUN0Rab2gv?=
 =?utf-8?B?UThUNk1Hb05oaGRrRGF0aGYwTGJzajdXalNEU0I0LzJhMGYzMFNlVjNwSlZq?=
 =?utf-8?B?bjR3QTYyNk1IakFmNFNTaHh4RmhmeUJVeTFydFZyQ0RNT0pmdEl2TEwvdDZL?=
 =?utf-8?B?VTQzUGo1RytaM3AvQ09WeGZuZGx2V0d0RTZ1YnY5Q041aHhyMkU3SUwvUnFV?=
 =?utf-8?B?bjE4Y1g5d2xkRHVQZXJZZjFVd0JUTFBPWG5UTlc0eTN6SXNCYWVHVVp0bVNW?=
 =?utf-8?B?TWZkRUkxUllWSk5td2V1SzByaVUrK1ZrWE0zcjZPSG15MG43Z2thUmdvUStP?=
 =?utf-8?B?Qm5SUFhNWXNMdU53dGhoYlRUejN4dEtGeVR4UFllUVBuTTc2WGZVTFhBS0M1?=
 =?utf-8?B?MWdYTVIzT1lSWEZSNXhDcFpGSWpwSVdPYWE5dXp6MmlSYnQvZzgvU1E1SjZz?=
 =?utf-8?B?cEU4b1Z1b2h3K3dhWjhhdDhBMHNMMCtIYTd3Nmp4dVBHMFpValVOdFdyZUQ0?=
 =?utf-8?B?dlpobFNsYTg3dDQ1bklJUkR3RGdCWVYxUEc1V3YrR1B0eXczL0xvMjl3Tmhi?=
 =?utf-8?B?R0JwQUR6SkhNbnZEVEFpVW42d214a0JDdVZyemxaUURhM2tLUnV0dFJoMVRV?=
 =?utf-8?B?K2xnWlFNUExYS0xoS1pRQS9INm1xZ3E4eXZIUHpWMkxvZlY1SWg2aU9iS1lh?=
 =?utf-8?B?Q3BUR2tsT2E2d2xWbnlxQXBDcjJKandkcTgvMHBnVE13MVFJWVdqeUIzUVha?=
 =?utf-8?B?VVpPQXFvVEQ5eFhUTnVlVU1nQkk1MEl4NE9WeHR1d3NBbkFZUHo0SWZ4K00w?=
 =?utf-8?B?TExpaURLNWd4MGVJSmlwZmpNaFNCTFVCSWJYODNSMi9BTTBoWi9wTGdNb2JP?=
 =?utf-8?B?aUZYQU5YZ1d2VTY4QnZjblY2eVFhSGkwamQ3QkE3UVUvamdVQ3BKYlZSNWNq?=
 =?utf-8?B?Zk8zSW1idDF3Qk5sdHNOTVZ2ZGFzNThnM3dycVZCNWR4STJRbHJ3RzU1MndY?=
 =?utf-8?B?Z0c1UUlCSlplNzJWYmZvbyt4a0w2d3QzcWdlUVY2WEdNdGdpSGo1SVJSb2Uy?=
 =?utf-8?B?OUZjbjFyd2NOSFZPOUhNQjVmQ1JjQ21RODByOFhZa01BazFub2lFVlBTa1Ar?=
 =?utf-8?B?c09CTmNZN0xRVmdTN1pENDZUWXpyMEFYSlpPWDJmTWsySTF5a0FnMHpveHAy?=
 =?utf-8?B?TzBMSFAwZUpqTXpHVEVJT0VCSFNaV01xTXpEVnY1NG1KeUVMbE9XbVByYnVk?=
 =?utf-8?B?U0dQYldicWcvMFh1ekRZWmFqaVUzVFJFOE1YbjdGTXQyekwxTUdNMjRvMUQ0?=
 =?utf-8?B?eHA5V1NZVC9QM3VMclVyQjJWYlp3MU8zNCs0aWxTZVIzN3FUV2pCZ05Rc2E5?=
 =?utf-8?B?dkJvSVA0cmkrZEloYXZCbnZWZjlBU0RzNXRCdHY0ZUg1K0VGcWJmdW5ON282?=
 =?utf-8?B?NFNmdENUNWQrYVFkUEZkanljTG5BY0RzWEQrYmJJKzBzTVZUaVJiVS9vNXQv?=
 =?utf-8?B?QTN3K0NnelVLUzJvc0dlRWJmOG5yWjM2dVR6cm9NVllqZHlHRVB6OTNxRC9N?=
 =?utf-8?Q?lJUqfL4+sPVRRUnYT+qa6kPBlfxL890sDNP7gBKaf8ZSU?=
x-ms-exchange-antispam-messagedata-1: EQIah2G9zbqGxNNITvq/CMJlRrqqjAiuNHg=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E0A98796AB5224E92A8449EBEE94218@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6935eead-7838-47b4-1f9a-08de79bab95d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 06:53:21.3669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jnHzaMOX6e3BXG1zvTeWrR7VHKSp9lIZhJu2WcG00UKzBft/nDrsZ5BCuX8JClZRjDoizG0moAai4ZvEGt6RIIUBGfoYlu4p9mj1ZUBlfM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5237
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
X-Rspamd-Queue-Id: 64B291FB515
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDEyOjA4ICswNTMwLCBBcnVuIFIgTXVydGh5IHdyb3RlOg0K
PiBGb3IgZURQIHJlYWQgdGhlIEFMUE0gRFBDRCBjYXBzIGFmdGVyIERQQ0QgaW5pdGFsaXphdGlv
biBhbmQganVzdA0KPiBiZWZvcmUNCj4gdGhlIFBTUiBpbml0Lg0KPiANCj4gdjI6IE1vdmUgaW50
ZWxfYWxwbV9pbml0IHRvIGludGVsX2VkcF9pbml0X2RwY2QgKEpvdW5pKQ0KPiB2MzogQWRkIEZp
eGVzIHdpdGggY29tbWl0LWlkIChKb3VuaSkNCj4gdjQ6IFNlcGFyYXRlZCB0aGUgYWxwbSBkcGNk
IHJlYWQgY2FwcyBmcm9tIGFscG1faW5pdCBhbmQgbW92ZWQgdG8NCj4gaW50ZWxfZWRwX2luaXRf
ZHBjZC4NCj4gdjU6IFJlYWQgYWxwbV9jYXBzIGFsd2F5cyBmb3IgZURQIGlycmVzcGVjdGl2ZSBv
ZiB0aGUgZURQIHZlcnNpb24NCj4gKEpvdW5pKQ0KPiANCj4gRml4ZXM6IDE1NDM4YjMyNTk4NyAo
ImRybS9pOTE1L2FscG06IEFkZCBjb21wdXRlIGNvbmZpZyBmb3IgbG9iZiIpDQo+IFNpZ25lZC1v
ZmYtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBSZXZpZXdl
ZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgNiAtLS0tLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgIHwgNyArKysrKysr
DQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRl
eCBiMzMzNGJjNGQwZjkuLmE3MzUwY2U4ZTcxNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTQ0LDEyICs0NCw2IEBAIGJvb2wgaW50ZWxf
YWxwbV9pc19hbHBtX2F1eF9sZXNzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKg
DQo+IMKgdm9pZCBpbnRlbF9hbHBtX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4g
wqB7DQo+IC0JdTggZHBjZDsNCj4gLQ0KPiAtCWlmIChkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxf
ZHAtPmF1eCwgRFBfUkVDRUlWRVJfQUxQTV9DQVAsDQo+ICZkcGNkKSA8IDApDQo+IC0JCXJldHVy
bjsNCj4gLQ0KPiAtCWludGVsX2RwLT5hbHBtX2RwY2QgPSBkcGNkOw0KPiDCoAltdXRleF9pbml0
KCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gwqB9DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDI1ZTkwNmI2M2E5Li4zNzc4M2I3ZTNi
ZWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAg
LTQ3MDksNiArNDcwOSw3IEBAIHN0YXRpYyBib29sDQo+IMKgaW50ZWxfZWRwX2luaXRfZHBjZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiArCWludCByZXQ7DQo+IMKgDQo+IMKgCS8qIHRoaXMg
ZnVuY3Rpb24gaXMgbWVhbnQgdG8gYmUgY2FsbGVkIG9ubHkgb25jZSAqLw0KPiDCoAlkcm1fV0FS
Tl9PTihkaXNwbGF5LT5kcm0sIGludGVsX2RwLT5kcGNkW0RQX0RQQ0RfUkVWXSAhPSAwKTsNCj4g
QEAgLTQ3NDgsNiArNDc0OSwxMiBAQCBpbnRlbF9lZHBfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcg0KPiDCoAkg
Ki8NCj4gwqAJaW50ZWxfZHBfaW5pdF9zb3VyY2Vfb3VpKGludGVsX2RwKTsNCj4gwqANCj4gKwkv
KiBSZWFkIHRoZSBBTFBNIERQQ0QgY2FwcyAqLw0KPiArCXJldCA9IGRybV9kcF9kcGNkX3JlYWRi
KCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9SRUNFSVZFUl9BTFBNX0NBUCwNCj4gKwkJCQkmaW50ZWxf
ZHAtPmFscG1fZHBjZCk7DQoNClNvcnJ5IGZvciBsYXRlIG5vdGljZS4gVGhlcmUgaXMgdGhpcyBj
b21tZW50IGluDQppbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuaDoNCg0KICogSW4g
bW9zdCBvZiB0aGUgY2FzZXMgeW91IHNob3VsZCBiZSB1c2luZw0KICogZHJtX2RwX2RwY2RfcmVh
ZF9ieXRlKCkgaW5zdGVhZC4NCg0Kdy93byB0aGF0IGNoYW5nZWQ6DQoNClJldmlld2VkLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiArCWlmIChyZXQg
PCAwKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gwqAJLyoNCj4gwqAJICogVGhpcyBoYXMg
dG8gYmUgY2FsbGVkIGFmdGVyIGludGVsX2RwLT5lZHBfZHBjZCBpcyBmaWxsZWQsDQo+IFBTUiBj
aGVja3MNCj4gwqAJICogZm9yIFNFVF9QT1dFUl9DQVBBQkxFIGJpdCBpbiBpbnRlbF9kcC0+ZWRw
X2RwY2RbMV0NCg0K
