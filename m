Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLwcKR1n3WnsdgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:58:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 127293F3AAE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1788410E535;
	Mon, 13 Apr 2026 21:58:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQjvUmSp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B2F10E15E;
 Mon, 13 Apr 2026 21:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776117530; x=1807653530;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iG0b6f2loaUNx+dJuegJADBsbXyRqHzVZBxxAfFgngs=;
 b=kQjvUmSpOQ6ZHsdGUymYNYlzS1SqVm1otZn55UbkJ5sBBRXUjF4SSNlN
 O6bNK2HximouHRfGRLRBtEyf0d540kixPgSgrPk/iJQQKkgDnW8thgv/y
 Oxy3o4U13FMrpsLiWbTA7PmZje3ikVh0PLS8cuu1HfhebCgqByWWStmsd
 UUoxDs+fUpCKCnsI4TofiU6pCBeXIxz0qoIFpNy0z79IhITEA2k555Hmv
 C0BAMoVqMC1dglx46Xm3LXGMciCfVH46Dy8AVEodYPVXK1XJ+KcanvKji
 rNwb50PkfCYgf3ZUM+3WcWakPxjHpapzt1928I6E/NAD22CiMRbcjIlPB A==;
X-CSE-ConnectionGUID: b1NeXbkERa6KLMAY25NEHg==
X-CSE-MsgGUID: YVe6LoCgSDKbBIS/o3N8tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="64597182"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="64597182"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:58:50 -0700
X-CSE-ConnectionGUID: dHb35XJUQeiu9j6ZP6Qs5Q==
X-CSE-MsgGUID: i6HPh/8RQNyr82kHaG9QFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="229777655"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:58:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:58:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:58:49 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:58:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AERhXHz9VWN4H0ZbrtBELEF4jp8q24OUUyOqdBWVpwGCRYcT/O49m1TSmkDXLNS0GZrerIrQxImnrlVriHxFtfeEwTZgoWAzpDABSexmcpqlQmCU++F8DkZcjOlN98wht+ZFAR0cIwj6PER2vno+ZiFFFJ5aeYJ5N+8XiPwgI/CKFZQKKYX/lPAtU5DR3awDqi+8viaOLY4K1cVaM2OJf3fktBI9iB+Y5Eqa4wW9/K8/vhDCkjpVVobJr2YVy3Ks8VrEer7VQw3kAIFq6OM51ObE+JZt6z7Hawa9mnnjGqb2AuTB8ZchVcGV1/uhrlMm1eVjPyRZRHZosM9JSLijnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+FBsBxr3Fu4xiONHPbEnR6ZGSAQAVFFINbxBkgqfaSk=;
 b=KuAHb+bBS/nk3EJZ763HT4XB3lpFuqIR4waSdcNWhve1I0bcA2FCuSJHJCQBqMAHEQVmr1NGwWx5IKo4928QtVKVL6ISnvUBr0qXDRw7Zs3BPpnnZIWmZZ/N8R1kQYarVsbkTYGOwTJA7ZpyqRTMGJDm+ZFoz+PpC4Y04++XEH4rBPoJ+1sU4lBATcDKf/y+Kowdo2Gq2x97Jhaz3fvMeZAgrV1GJWsXkJRN7uv108WZr3xk1hDRkLs3PjQjoTzwzBJLigP4bZcff5Zwt60aLXhKJtlnd/3cAVf37S8aDOSxPPXwK8GYMVdaAUwPDGG3k3bvS8OU7C7g/VjBDXMfWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB8524.namprd11.prod.outlook.com (2603:10b6:806:3a9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 21:58:44 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:58:44 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 14/19] drm/i915/display: Enable DC3CO idle protocol in ALPM
Thread-Topic: [PATCH 14/19] drm/i915/display: Enable DC3CO idle protocol in
 ALPM
Thread-Index: AQHcvUQ4Wb+UPmbAx0m1EaI7nu4J87XdpqgA
Date: Mon, 13 Apr 2026 21:58:44 +0000
Message-ID: <DM4PR11MB63609A907097B5F1B54130CFF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-15-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-15-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB8524:EE_
x-ms-office365-filtering-correlation-id: 1e2dda74-456b-4cf1-025f-08de99a7d4d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 8JVRVJO4EybogeSi8txhpaxppX/nwrPZSNHFrnfcV5mINKEDA49CHo8z3ysU6qUGWamlNAI7sE0ABo84hkP+0F4tIesVdrudxwuPEDKyq1957hIhT89nc989AfpSEJVuu/Eq6VRpil0S8uTOhJjmY0cSRKxNmXC9GpcQ1BamC0GZYflsLIKFQgWcnwoK2uOYPK1KRdHpdcpxQTrBcehcVYfW68iE+HL0ShJCByPgWdjfUZWV8iDFenx5f+oh72Cc4K3yAvnxfW4LDMFMdjJj+ZsfjnxKk6xkzTNH2yyusmfFV4CW4lMLjhqP/7+XpctcBY6Q/qrMg3JRUKLXK3rBiCBAVSaaeMN43dvplnOHRS9zucO0g/CEl/NxjPMvY7QlXP5wL9SeQDxBM8zfZklbjp886nt4oLoicJfb7SMg+Viv4erYv1ywlCmZ8LjwdWvzokmnwMv29yOjll4r3VyZuy5OHq/Wbi/tG/m9PFzACnW8eOG4Hnr8aOHLN0CsphmwIdeC+kH+hiEV64gWRHaP3KDCX9EYfZLDmmHYf3JpFaWBKuMqXbytOjOOs8zUUNuPLXsKB6sO68QP1jHH98kfjIDlvFD4+7TXsyMdkTHoGThe2eVFEriJYpxE+rhEhm+ku2BBebo1LjRFtE3PQRlHmNHAEzLhfNv5pNNz0rc/ajMr7YWsoFgQTIyR5q8MYitUsD5nwJ8w58Cx7cRTHlj52Zz7WTvCkNfPbAAZkrJx7josjerjOpLHVx2Z9fD3CmuDkjLGtX0cfRrP6K3Zi2PotbYd+UUIROk3M6oWU9WQBeo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AQZh9cKwjNCu+1lINmvSlkmFqthd9j8EmBAVz9WThZdeGfS4cYvTMZf1iDRA?=
 =?us-ascii?Q?th+AhThWW7vmv2mKCjCHpw5AfkMDqa+vGspJJZJJEn9kVOgPjWkbETgHlH5z?=
 =?us-ascii?Q?40drPajgD0Jx7SEqESrqM3I6+s3b0UoXHpQIyBOA4BVAAlwE2QzCNPs6MsDo?=
 =?us-ascii?Q?yhg1+gnyt02RV7v5aVQRAKzN1Bywxuap7H7W2u8mY0tsGp2zHrmwMK8qE6PN?=
 =?us-ascii?Q?ujCIWrz8JVyJcC2RCBF+SfjK9TMwyoZVu8/WLoFX29LXRkZd8Yr4K2GvZnoF?=
 =?us-ascii?Q?qVeY5NF0ztwEWXfGlwohSgxGmzACMzbVd0FTqbWteGcQwRXtS3opp073gudY?=
 =?us-ascii?Q?3w1dF2VIKc5vxTNHpVHolgkLrYSYHb6q9jnvDW1ab2AvMr42DIR8KkI6fMtI?=
 =?us-ascii?Q?k/Lv647ltBM4swBRqG7EfYfe8HaGwbqoYGl7+/cDd1Lg+w6xbL0iY1H6xAyP?=
 =?us-ascii?Q?OcymqCcZvjdiusTLYzhXpbIGuxwbPmZL8yunT7Axbe7UETG/UXLG4rSG/Mx4?=
 =?us-ascii?Q?TGftp/uyQEjLvKZyN14l3i2ZEpAYPr6T/goiypzfVpT1CkNM8YF+fOxmpXkr?=
 =?us-ascii?Q?AFxDmmFnggnp+kH7pEkqj5lJKUItmzWLFAr9pQy/bUOI/Lftqw3EEJR3VTSV?=
 =?us-ascii?Q?P5nMLzd8ybrrxprjrZ4BhVhsSy7X0V/DT+n7ycw+JT4Zxs4WWmdjDhFf8Hmh?=
 =?us-ascii?Q?nLdsMU4oMByR/SFXKoMS49MCAgqgD71g5d5ZOxpoTnhTCpTiorXSi59RjNyC?=
 =?us-ascii?Q?KC3LhgkRal8f4I/2dIMxpVUlEl9PPJiakNT8Rw4JKKrHCufbJg/9TcQnWZGc?=
 =?us-ascii?Q?KIIDAL4zNw5e4v3OyerzsF9+MR3PS35n3ofaQgzU8uWeMrDac5jHLE+VHiQy?=
 =?us-ascii?Q?uq4g6GiQ9sk+GHmA2Zm1l5zuW22lOzcZ0E6quvgGOrMhHDb3djK4+cxC5d9x?=
 =?us-ascii?Q?cQ70pjjXlVHMLLAhn45n4TxD//OZBBEeUTeTxMDJLOete5Zx/TmcmHfDLXg+?=
 =?us-ascii?Q?FKFc9R7RcpIggvZQ/qi1AOa7ydjAWnh8zUzy8SNP+D5xcA0PpYTtb28XRhAc?=
 =?us-ascii?Q?89ezrgy9lLcAXW4NzIhMQbjsOXaScFVL5k/h2EqDi4lnk5EzNVyat7CvUZ5G?=
 =?us-ascii?Q?oStxSdSzOWuXHPIRwZ5igiPmZjx+oubE0EGDr1lrtVrDXON8MrGJBuEv78gB?=
 =?us-ascii?Q?2Mun6s6y5axZWgpHyPgqVRfaY5GEJkT407Jv18vGrS0rH7Nsqo6KXRHP4wU4?=
 =?us-ascii?Q?DXe8PriaqvXJNrrweMOo/2W2LHfXNvVmeC191udtiyq2voL8wrx5xIrazRtO?=
 =?us-ascii?Q?nhUFi2m8NSjQgDV4iX2cyu7wBjSK0jr8DfLHfWl4/GUO+DfMtmhKd6q+vWfd?=
 =?us-ascii?Q?7Ps9XbtfRxsR357uW97eT4yqHBGJ0mWsalwQyX7eR/KrEHqu6HTuUE0sGVJY?=
 =?us-ascii?Q?gNHSM6d9tEZPBeNA3xkjOmLKkqrcDvSEV29k6BbiuW0iHPZChQr16AH1ak9S?=
 =?us-ascii?Q?BqSx1eFxuMCaBnQesOfotr7fRE3SPBZja0PBrmf6yQQDwd0JPOphqkvsk2Q6?=
 =?us-ascii?Q?6hDKjxwzbOKyCG2utxMWB9FdcPr6zDGTqwOy6fhELU5zOO+yKZxRtfypsOel?=
 =?us-ascii?Q?04ahvuPRPPxLX0A7YaYqaDdXNQmE4CFhyepHCZf9j5QY1V7FqOtAoTbvbt7a?=
 =?us-ascii?Q?CXHR8d/4lrMKStMcfcn0YWSefvxA1Go+9i/4zvmipB/QZ49NVU5pm71VQJDr?=
 =?us-ascii?Q?kGUBci8MxA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: undz1c67Kn/cMHaTz2bzgCLxY1XUkUCtVkfWExTeiNrQhtFW/U2n7DhKTyxKBs+hrEiuIP0ab7t5Wo7djYHYLx01whnyuXyZ/PL7j9HDNyQhC2pY2Clq93BLBnni5kDWurQRulVslOG8opQMOTkutfhaTy5w16ntMsZLjQv9mvPNxCG6dP/JoOr/1U1gB/Jzy4iwIksaIbwpboHm7ZtyTtang9hhWS7Hv3o9jTgi5IG2rg7p1+49B/lDZStqOQnWmeq+k34CBP+S/u5BVJEk4IYcAjJMbjxBW5TWMhM49i+53SG9T+XjpzOsCLRkqyaXgVmSBthEtKZmK3AsIID31g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e2dda74-456b-4cf1-025f-08de99a7d4d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:58:44.2339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oRMJ6T6fhA+FNtXnu9Hms84wSovPfB2HLRhbCQ9xnZUxbYG5E5smQk05Y/b7N1g+g5R8j3S48X6MkKMayyV09w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8524
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 127293F3AAE
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
> Subject: [PATCH 14/19] drm/i915/display: Enable DC3CO idle protocol in AL=
PM
>=20
> Set PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL when DC3CO is allowed.

Change Looks Good, but squash this with patch 13.

> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index a7350ce8e716..9f92513a23c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -365,6 +365,9 @@ static void lnl_alpm_configure(struct intel_dp *intel=
_dp,
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 alpm_ctl;
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +
>=20
>  	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp,
> crtc_state) &&
>  					  !crtc_state->has_lobf))
> @@ -389,6 +392,12 @@ static void lnl_alpm_configure(struct intel_dp *inte=
l_dp,
>  			if (crtc_state->disable_as_sdp_when_pr_active)
>  				pr_alpm_ctl |=3D
> PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>=20
> +			if (intel_dc3co_allowed(state) &&
> +			    intel_display_power_dc3co_supported(display))
> +				pr_alpm_ctl |=3D
> PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
> +			else
> +				pr_alpm_ctl &=3D
> ~PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
> +
>  			intel_de_write(display, PR_ALPM_CTL(display,
> cpu_transcoder),
>  				       pr_alpm_ctl);
>  		}
> --
> 2.43.0

