Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZFA/C9CEL2oiBwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:51:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EC968356B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:51:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ewwZSSKc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D17310E19B;
	Mon, 15 Jun 2026 04:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A15810E18F;
 Mon, 15 Jun 2026 04:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781499084; x=1813035084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EPfNXje9rZ6XTVySS74DoxgFRjh7wimruTtQCyKzIrI=;
 b=ewwZSSKcKfZywYAg/7kXiwy3MW2eKIjvhX2dMzgBPs+9zROGe8d//Xfl
 ou+LOrSUZh8IGS2jcZOM07z7tM6doCzlf2GmPXTx6D6ZFPMZCgr0DdYxs
 P3tRgZ/eIyIgQHBZe6Tz7uyILn1fM0Sql2L8C/ILu05+hp4wZjyesJyJZ
 mp+t3nFMdd3iGtdSw7CMcFdj/ye/kYzOHOuz+2UcT4Z/G5w5V49sWwTMZ
 Esuh8gXd08GWA6zGdV4JiYYPafl4gp+uJslgQCOte9G5UwQBe5PJrIxZ/
 XP113jjVJj22RmaRUBSoqXIKQmMxptP0S+Aez/Xx437r5IfKWU6zs2Mde Q==;
X-CSE-ConnectionGUID: FMKfWSUlTYC/ckB5EdENVg==
X-CSE-MsgGUID: UbbNBWI/R3CERPUcYQOiug==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82421112"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="82421112"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:51:23 -0700
X-CSE-ConnectionGUID: llkVOvKmS360hS3vVFMX6g==
X-CSE-MsgGUID: JsYmf5xvTie0mmZuNHopGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="244457294"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:51:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:51:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 21:51:22 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:51:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5oTTyCQM7CQV0HEuNmbpwKEqYg91m5mYL/NaO5uYTZbcNRXWEpY90xiHJkJ2Kwv3RIEAGFWa2VlMy5imNNyOnEjVkp2oy4UPP80+uMs3Y5oveZdaaxXqfdTFkzfie4pKShqnGOnM5sZla5WDPjA9zR5ahotp8eJ+6kz9KRXPZMdOVx7p01G/opTuJ7oPBD9L0j0XKB2ISUvDHnhM3W397X1ytJXgPFrP22LtcLPKUoB8lLACVfqmPN2esgWa4ygwQmXRMmEWf65Yk4tfSrseRbEIjIcbvjzR6KS+dSX/hUWGO1FFHiW+oK6RgFmwcdaWaseuhIM6kL0fzQafSTsFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgbrlSqlsdAR+vSJOzNU5rn50BepyOtq7WRSju91bvE=;
 b=ki0JnIwE+wCiY5RAx98Dw0NM8zDzqMGFpNb0zdfy9/uCJERLdccMfT7IoPre1WtibyGad0AusYx4ALz8Nnb5WQ7P+5pSFBYZE7Mrnh3d2luJ6iSw9tZx9naGLvw5vfdjWGI+WyGgx5GSCWkf0Frl9P8dRsdNOeYMDOgR5Mju/oDEfPtBw2/WwMKDB2IFlCCZzfkQZVSQx0YlQlxjVOH1SK2MC5NVwOjMXES7P1T5RNL+aMqmH8VQPAqvJchN0HVMi2U7m8rcIJ06R9RksFdhkrSleEhRGyy+U3lxD1IP51YtUuVZWHsRdgiBomc8XwFejXCN7NkRA29duiCH56SjRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA3PR11MB9422.namprd11.prod.outlook.com (2603:10b6:208:57e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 04:51:14 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Mon, 15 Jun 2026
 04:51:14 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Topic: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Index: AQHc85dcoG8n4c/+dUqjA6BSGCOypLY5sBQAgAVr4vA=
Date: Mon, 15 Jun 2026 04:51:14 +0000
Message-ID: <DS0PR11MB804949E70A16460D9A0D2163F9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-15-animesh.manna@intel.com>
 <DM4PR11MB6360D16B4D978778529281CBF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360D16B4D978778529281CBF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA3PR11MB9422:EE_
x-ms-office365-filtering-correlation-id: cb7682d7-880f-433b-7410-08deca99bac4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|6133799003|56012099006|11063799006|4143699003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: FUmVVKZV5faBEs5jq/gD7joAweF3stuiE7fpND7Obh2no+mtRJOSpW+ZdDlPVqBGUxtDFioh/K21PsF5pO22ou0izVhk4aLrOrKdjQGiJH5dKIeO7PPB8QLlyc9YswwG8AWYV0oDOgGQhgnr8goi8tNJD6f+IrhmX5nJjdgMJGk9TLFDo9YZtBkiuw28em/X47+L38aeJjaqmXuWFzYb8Cua+ZAIQ3hz3Akn57bjQxGAuttkE4GIURcgrdRurt4Af1HOkHynDY81fQc1KL1byh4FK8shnJTH51E7eYgGNGn1XZFYOeazYglrbDGrvxeF9OWeb5zTy+lrcuyOvkisjofrmC1cy6KrDiaSyV6DX4rxgaPKv2T47BpSwhQxIxGmEmX5zhYZGF/+Sm/ERWYEY5g1k2Oglo7Ze1ewQOHXI6AS5bp5yZdV30KIgQl8GMEf2dZfJxFsPJRiWGHmRQyaK7oplOMLeyZAEdTa/8u6aVhcEQ7uIHrKw7ASteCOlXk0XTBMNGLB5Im+1cje5G9R1KEwYAUeFLGOK9YyPcBmIrfltvMiKGcbgo/1zfT/cq5MKJpxkDXu006SBcH6nPDmtqBfREiVnzoF5gR8n1eAJ7mulaL9LKIAv+YBtIbLA++jVTiRy0wqCvpEsZNABny67d/R89D2VS704PZYlh+xyzP0W7QHiP9vFD+NpwJB7GZfNZ+jynkqzVsXbQRYoy3489bbSKQCibpCA59biI0klB/IjpldiG/LG0a8e+B50ylo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(6133799003)(56012099006)(11063799006)(4143699003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7cFtco9yrStL/waPJdBGbyDA6AakxQouCFwZ9AlZq2larufdwAxG41vkz0Cf?=
 =?us-ascii?Q?aZOeLFTO8bDQaIuk0Cp3azaUQbIp6QeClum+RzeZO+2ps341ekXS8lOD8yab?=
 =?us-ascii?Q?vhFJqSSBkwy1V2Z0g5dnTFMseaTLZnkxQ76pG/83gB4tFSvyWwJ0JmQkIEDI?=
 =?us-ascii?Q?U7xf+Em3vzyeIbK288O1N9XcMTTAfvTDzN5Tr4MpG5wHXSqS0dKq0rL+CgTk?=
 =?us-ascii?Q?0XHKx/ud7LXZtP632U3xxXdch6Wm9mMbAXXO5ouKT7aLcu1al11vMBcseLO/?=
 =?us-ascii?Q?19TsrcuHRNyFsyNEoC0RADEq0gV5mqW+PzCPfthRsSwZ1ENS/r/vVTyX1kGD?=
 =?us-ascii?Q?HXml/QfQBLiq7MkE/1kPxzTaKffOa3CAJ3V8Ml+ba3iQ6Wkg4guy/5RrO/T9?=
 =?us-ascii?Q?tsi7daU5Up1A1Us/vKE2soW58V8S4L6uGmJXv4jHA96ytjFFfNIiNiuUxb8T?=
 =?us-ascii?Q?U2Q1eVl5QVa6khkRp//wdCzjrWmnqTop3/PqOo1l66dH9Fi3dlPRC1T5cA4X?=
 =?us-ascii?Q?U1If7fMYihvBaxArqwsKUM/aj3+O5Vc/Mhaw6pF/c5UTq7J7fvPVPaCnljvI?=
 =?us-ascii?Q?9HOrJM9WK0+/yiPhAFh1H7kg3m22KwzwB9Px1UsyvMJJIe9aVC7qjjcgMAx3?=
 =?us-ascii?Q?Nw4iAadzMbkFC3meQM2cnL3Me6jKW2PeU/PWgMyh3iBejSoCqGi45PdNf4/7?=
 =?us-ascii?Q?XYDYXSxrAivgAEzlGQo3x7f72yqk7XOp2Y/cvJgj4qkqQe1IsnDqdCbIO2/v?=
 =?us-ascii?Q?IuKFjwLlt9zTr4E5HQfsvl8OUTTsstyluaR/eN/C4YEhM7JsFRNywSdtLOKT?=
 =?us-ascii?Q?iktdCCTEYhXXo7ljvbEcnIH16LLegLCvFwrW3pbrrzIQpaItZ8GD2mb7Gzx2?=
 =?us-ascii?Q?ShaHeQnaOwG7c2eUSOesbBlM/dunvVgAbyIu2m3GrMp0GjJL2eeIYRLR2SDh?=
 =?us-ascii?Q?Bsv4N14jDoHplsKrINu2i0W9AKXNNsUX1t/I2O21sAAbytNE+UINbpuKz4RB?=
 =?us-ascii?Q?oHtIWDuvqkbDXnyMGIAi9BmXrbh5JYkwVcXVeIYdEqRybDr6ByxQszBIGHeG?=
 =?us-ascii?Q?ktaCDw7jkQhjZTTVqTCyCUoNvTxer/EMzQZG3Wo1ipHklR0MMzRkxitqHgb0?=
 =?us-ascii?Q?SREcaHdJRKyJQ6eoJjKXQu3LUFIpvOpSkfPkpt5rPwOiF3suzxmuB9j7TMde?=
 =?us-ascii?Q?KpXUQxHUjjr6lSXNMugtmhWvoNn53oGu6LvMIRTYE0jkhI+n9KUcIky0elsG?=
 =?us-ascii?Q?f9hD74Ck5UGJdVy8V2L6sLKw/KqeiNXNa4nLTujVMYOiFHWsU+GagaagftXy?=
 =?us-ascii?Q?bye/tA+ppz5+eiIB0ElNQno3eujT9UJZEAO2n8a9UeC9nhv7cCIENEd+adN2?=
 =?us-ascii?Q?WmO72JDxzZtBfz8ZoOpZcrQdrI3m8P/cY8JsbfhZMDUSXuAMgAh1YF4BMxt5?=
 =?us-ascii?Q?CLtrAInCGMDHVCVx/4UIXgq9LXmarRQ2u2cjPeBX38vVi4906SIzQTtXNO8K?=
 =?us-ascii?Q?yOc1ulpfDBb2J7fYSxNV1kR+oaM9CGyAiT1y41CK/imFpcXlPUKbpRyBFjRt?=
 =?us-ascii?Q?WCiI/5qHm5KDx+J2ar0N/1ikd7YcKz6/amhHgTNfourZO6bxMupQQt7Ud4+O?=
 =?us-ascii?Q?CiSZSBT5iJSk3HWp/CvAvlsPh8qHVPTbuQ1fTF31AnONWBhnilY2xjn/ysN7?=
 =?us-ascii?Q?o7VUXFkjb2b+kQHKTXuXia51eX8Jo0ZCBh1Otz6qqor2BfNwoJKllZfj3eEP?=
 =?us-ascii?Q?HeH7B51lFg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: m8wptSvP3MMTE3gow/ALsJMDYI96TfHV473BsgtDfI05DFdpxJDZ9Zwa2v6ImrkNdAqPqtLEaOcns77YUOB8UW2RH7FXoEgGJaZp2hXmRHJ9l0V4oAeVVR1l6R87sRoJIH8lbzVdx2J/bR/Tv8UkLYZHdTO3eSfXlqcaIZkfRyMhq/IIKPyo93NxEn6rCB0xYQiGdroazqpaqUQaOI/oNqGMRylZrTyPwyQJarKpVPZnf5ZeAFhAPRzVaze7m+51FWj3+k8qauB+z1/EgmuNz8ufz9j8icVmqgCnwXJuNySFUfgO1m1FgL0YhhL6u2Q/MIab2HKAl0PTNBBquY835w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb7682d7-880f-433b-7410-08deca99bac4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 04:51:14.5085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ZjgCnHGTZHOZpwMr7A3KPIjb71bwWclh42x4IaWYMv6QLNo8UvTy/JP8MpfM1gPVLru8zOA8oHJjihT0EgnAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9422
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81EC968356B



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, June 11, 2026 11:27 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to disa=
ble
> CMTG
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Thursday, June 4, 2026 1:24 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>;
> > Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to
> > disable CMTG
> >
> > From: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> >
> > Earlier cmtg_disable() used to disable all instances of CMTG which
> > cannot handle individual request for specific CMTG instance.
> > Introduce cmtg_disable_all() which will disable all cmtg instances and
> > cmtg_disable() only disable specific instance.
> >
> > v2:
> > - Use intel_de_rmw to simplify. [Uma]
> >
> > Signed-off-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 62 ++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
> >  3 files changed, 49 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 077653e2f599..20b74c2856c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -83,6 +83,18 @@ static void intel_cmtg_dump_config(struct
> > intel_display *display,
> >  		    str_yes_no(cmtg_config->trans_b_secondary));
> >  }
> >
> > +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > +cpu_transcoder) {
> > +	switch (cpu_transcoder) {
> > +	case TRANSCODER_A:
> > +		return TRANSCODER_CMTG0;
> > +	case TRANSCODER_B:
> > +		return TRANSCODER_CMTG1;
> > +	default:
> > +		return INVALID_TRANSCODER;
> > +	}
> > +}
>=20
> This seems to be already defined in patch 7, drop this duplicate.

Sure, taken care in next version.

>=20
> >  static bool intel_cmtg_transcoder_is_secondary(struct intel_display
> *display,
> >  					       enum transcoder trans)
> >  {
> > @@ -126,8 +138,8 @@ static bool
> > intel_cmtg_disable_requires_modeset(struct
> > intel_display *display,
> >  	return cmtg_config->trans_a_secondary || cmtg_config-
> > >trans_b_secondary;  }
> >
> > -static void intel_cmtg_disable(struct intel_display *display,
> > -			       struct intel_cmtg_config *cmtg_config)
> > +static void intel_cmtg_disable_all(struct intel_display *display,
> > +				   struct intel_cmtg_config *cmtg_config)
> >  {
> >  	u32 clk_sel_clr =3D 0;
> >  	u32 clk_sel_set =3D 0;
> > @@ -158,6 +170,38 @@ static void intel_cmtg_disable(struct
> > intel_display *display,
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set); }
> >
> > +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> > >cpu_transcoder);
> > +	u32 clk_sel_clr =3D 0;
> > +
> > +	if (!crtc->cmtg.enabled)
> > +		return;
> > +
> > +	crtc->cmtg.enabled =3D false;
> > +	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
> > +		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> > +
> > +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> > cpu_transcoder),
> > +		     CMTG_SECONDARY_MODE, 0);
> > +
> > +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> > CMTG_ENABLE, 0);
>=20
> Should it not be cmtg_transcoder ?

CMTG exclusive register which are not part of normal transcoder will use cp=
u_transcoder.

>=20
> > +
> > +	if (intel_de_wait_for_clear_ms(display,
> > TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> > +		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
> > +			 transcoder_name(cpu_transcoder));
>=20
>=20
> Can you add a comment explaining which transcoder is referred here
> cpu_transcoder or cmtg_transcoder and why.
>=20

Added the below code comment to next version, hope that works.

	/*
	 * Use cpu_transcoder for:
	 * 1. Exclusive CMTG registers that do not use the standard transcoder off=
set
	 *    (e.g., TRANS_CMTG_CTL, CMTG_CLK_SEL).
	 * 2. Registers shared between the eDP and CMTG transcoders.
	 *    (e.g., TRANS_DDI_FUNC_CTL2).
	 */

Regards,
Animesh

> > +		return;
> > +	}
> > +
> > +	clk_sel_clr =3D cpu_transcoder =3D=3D TRANSCODER_A ?
> > CMTG_CLK_SEL_A_MASK : CMTG_CLK_SEL_B_MASK;
> > +	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
> > +
> > +	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> > +transcoder_name(cpu_transcoder)); }
> > +
> >  /*
> >   * Read out CMTG configuration and, on platforms that allow disabling =
it
> without
> >   * a modeset, do it.
> > @@ -185,7 +229,7 @@ void intel_cmtg_sanitize(struct intel_display
> *display)
> >  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
> >  		return;
> >
> > -	intel_cmtg_disable(display, &cmtg_config);
> > +	intel_cmtg_disable_all(display, &cmtg_config);
> >  }
> >
> >  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
> > @@ -222,18
> > +266,6 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > *crtc_state)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set); }
> >
> > -static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > cpu_transcoder) -{
> > -	switch (cpu_transcoder) {
> > -	case TRANSCODER_A:
> > -		return TRANSCODER_CMTG0;
> > -	case TRANSCODER_B:
> > -		return TRANSCODER_CMTG1;
> > -	default:
> > -		return INVALID_TRANSCODER;
> > -	}
> > -}
>=20
> Oh this is moved up, but this is unnecessary change part of same series,
> handle it gracefully instead of moving across the patches.
>=20
> > -
> >  void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state,=
 bool
> lrr)  {
> >  	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> > >cpu_transcoder);
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 12abbafa7d08..79785afccc51 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -11,6 +11,7 @@
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
> >  void intel_cmtg_enable_ddi(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_enable_sync(const struct
> > intel_crtc_state *crtc_state);  void intel_cmtg_set_m_n(const struct
> > intel_crtc_state *crtc_state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index a93236bf7b75..240a02cd4a3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -22,5 +22,6 @@
> >  						    _TRANS_CMTG_CTL_A,
> > _TRANS_CMTG_CTL_B)
> >  #define  CMTG_ENABLE			REG_BIT(31)
> >  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> > +#define  CMTG_STATE			REG_BIT(23)
> >
> >  #endif /* __INTEL_CMTG_REGS_H__ */
> > --
> > 2.29.0

