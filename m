Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLY7EYJaAmosrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:38:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEDA517051
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9286F10E16B;
	Mon, 11 May 2026 22:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lgOA7Vau";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BF710E16B;
 Mon, 11 May 2026 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778539134; x=1810075134;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sndhDyfXM3l6z5hBxnJxXNs/JyyiK9kW35nsa9Mxk0s=;
 b=lgOA7Vauvpa6cAfW1SjV9iVnQecQlJi41j+DwlbDhYnbTJk+2GlC9dbH
 k8vL2OW5gr38zxePWLB/8UxnyEMKkvniXTzufaAcpvaBrFAufXU4HFmnU
 bE8A+517Y4OTVcm7jUDOXJfhWmqs5/45gw2wcBYIuNtFLhCMpUP/hJmiF
 k8c7YBLVv7F6qSUhu1CYDMu+Jn8qjF4+Xk3kPO3xisNI22EuUCpsv2SWb
 P3J6B3BrbN/0iqJuMylh5gLChDYABIhpFTt4bKi7zucS4nW+wFEIkwYU2
 275LtleNvi21uiAAlASvlUn8yFc/v6SzW2U4TmZ8gHABp9qD5P3NB6GUZ g==;
X-CSE-ConnectionGUID: l9shJF6OSwu9KA4YukGy4g==
X-CSE-MsgGUID: oLhNdq1PQDOQRKVAUKwLYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79299918"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79299918"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:38:53 -0700
X-CSE-ConnectionGUID: F9ly15yeSLCbhvgzyY6m9Q==
X-CSE-MsgGUID: gu0tNmHzSDqhvxKbmap5Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="241579694"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:38:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:38:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 15:38:53 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:38:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=adWgvgWmBIQqsiqVUAfFHUHVGGOSs/ol83LqThbeZNQZnis4nl6uk0lzvhd+Fn9MqE+8a+7m4xntlhNREz3OMQHldE0FL7Oc1+sbr02hkj45egovfMCJ0To3DuE6tmv5LgcZ6geKbm33azfY6Mwj49Bem38D5llbpuwYpkDkwXHxOdTpE4lS81cptxZWniuoky/zbDjyMFLRbGOFVlyM9OaCwTURmn1mFvvLe+ISU5x08BP2mBgIVLT3IlfTqfmyThrhc0HNHWhpJysA6LnKO8pnkdNZ47pNCzocRG/Uz6Kw5HR+mR26DtFUMUeU8y5efJDS+S7taEDLE541xGvfZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/9ZwBSs6iqoohDp0gTlD9ox9t4QlwtH9XKLxjLjZFU0=;
 b=Wf7oDFOSGWhyVMO0Ysnq1/ErDafFeIRn/4ahpyJrYUy3MPwQLrDDe8jqu8Ot9VK8OoIWqhV+gVMlI+835cbTLsCb6LNELuuegRxaqTVpvYykrc5EoRattjBP/bzyU5Z5hxpHYAbGozGkYUkjy77DNOIVaYzA76t6z6r/dYAzzPR+m2KVt6yCaEx1MoQUZeR7hgzEG5LhyNpQFTo1IY1P8hJ66HxqgU9ymnckdmLxUI76+AQM2GcWHIrGVYpw3A7fto3isS4Sppz+vq9RsDKMHVMSNlmGsZJVqFeM/3/Gu/RmiF/l2CgimYiYT+zilMYZmvtzIoK2fhMfzgNb/Ob7Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA0PR11MB4736.namprd11.prod.outlook.com (2603:10b6:806:9f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Mon, 11 May
 2026 22:38:50 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:38:50 +0000
Date: Mon, 11 May 2026 15:38:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 1/4] drm/i915/bw: Extract platform-specific parameters
Message-ID: <20260511223847.GY2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-1-e762cb8662da@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-1-e762cb8662da@intel.com>
X-ClientProxiedBy: BY5PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:180::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA0PR11MB4736:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c22cf61-456e-4dfb-b7d2-08deafae1227
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|3023799003|22082099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: v6xt1X/c4wZOHxApAfynnBpo4Dq5dtMDRppoISj2uv59qXo0baV40KvgIy29T685UpWZLIfxc4e3p5jw9VliNaw20dmwSht2i/pKhsSs3XW8SByLJFA3ZNMR8OkM2DtGq3+3t9ixZHRcJN7Slqd5BGC9nf0ElBBwQCvpkmabds1Qsx6MOpSFBmmtP0auM6ZW8BKQpXlOpiO0Hj/Wh3bViWcjOsTjLI1k0ryIH0S+ugsN1q3YMfALlXAGc66YHRHvYyaWgl4WbidrPWGFTRc6+7zsSiGTS3A6ZTbY8VSv0QVns+Q+1l8xayq9T8VeBwAdlUAHIein+EsvGJXlTNngeeR8e2VgdMYcZVUBLia/yDhEMo83k98klWjfWedp/UuTx5oW1K4QKAh1AHDHHHk2TREPYmGDw8L3YQGbrG9xUpSEUztC4a5udDc73ragrteORUKyBu63jsVasBvnNfHHbrCyQL8WxEDe1OkcagEqDKxrx9ZcE6seXxQu1PoeN+HsUnCKXSFBmFmzv8Prs8ZtcgO8I1ROoKF/nNPKTqn96GXgi3FTYpcgTDiBZklEx+BCvY+Qe5nGKCiPMICM965QzYkMMlGuJpWi7GKBU7Trwxbyj6MLYPzFUzM9AOVdNv12i4dOOZrFt10i2v+1HmiAkFgjYTFPhOsIUDJ2nu399ksUiOAbNZ1mJiz+sdUn7BLW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(3023799003)(22082099003)(18002099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fvxOPH/sGKp/q+emVtkYMVO2kwLy3W+W2GjNWj5Cyku6TmfwEz3V3vP/Ch3Q?=
 =?us-ascii?Q?8Y+kbm7pDyJzNM6cLRXinV5/y7+KZAwSNuqPkefzs5CKzBaB1HG1YPQ3qmTb?=
 =?us-ascii?Q?V/3yDjfD+cpCs8P8vAI1/DWZfjCbikqHTpKRh3pp2pY1+2I4eT6rm69TZjvT?=
 =?us-ascii?Q?LkfLGAeVr4OPwqSQ5UmLnOJizV/PccpPpZCRgYZ2KgqSN6KaEJp+gb5xNLqC?=
 =?us-ascii?Q?CUlK/obg87lvUZLFLBaMtSZ7aKvtIkoZOBU2W9hQ7K0l3f7c5XW3GsdS6A06?=
 =?us-ascii?Q?8yUyKcbZS9YtG+SiTfQuWd67WauWjZg38EgVHng20yRxXVnnoxbLYWwDBeHV?=
 =?us-ascii?Q?BOE5eKQP8Dh0+7RkUMkJTadvIxEWw3SmTRyDGKpsnJA8UkHLTqEYt4U4v0rD?=
 =?us-ascii?Q?tZ4c8Wq533CFHX9rqoubsLP24CYdyLlwlQSLwLoi2K0D8m1rIcpgpFLedLPU?=
 =?us-ascii?Q?OO0MA3LXev7zyrS20zTjpqg2QdY8r1L1ftcvaYtax2D2Y22+wnNcBuFWZ34f?=
 =?us-ascii?Q?DphUQ7JGmjjjsE8EqWsZLNmq+pJt4T6f+PYFnidGYI3VG3ggb4j19vVR+iTb?=
 =?us-ascii?Q?jaF2nnu+nKj8cnJMh0EWI6JWhVYvJnokW+g4oEUn0CK3/u+uPn31uSnK2ACw?=
 =?us-ascii?Q?Xk7UuvKT+WNpYirlcc4zRLrXZQE9xta1mFUNcZFZalftfaQ+Q3jkpaEgBadd?=
 =?us-ascii?Q?uZbpClfeQaBof/g60KHfAzGc0MVCEfF/1GhGZgSbZkZwgeDSpxv8eCqYP5Ll?=
 =?us-ascii?Q?Ie1SAnpCaXZYAjgQsVkaXcaMG12qaL3TxcukKnuJ+JCmMyWWA6mIW6SpglOp?=
 =?us-ascii?Q?IfoUyFdSonOEZgvvRZIAYP5wKPUkFiYfynt5C4v1mkZyVw637DqfbzVA59dQ?=
 =?us-ascii?Q?V60yuffmAXN7Y6Fltiyk3fwZIgIrtLtOPa2grXM0AMAKJvcx4smmIj8OGno1?=
 =?us-ascii?Q?9XXQ8rjQMRR3mYWUUOd6ntnS4FRRGuJIQGzOBj0zyCV4z055b6MQuZg36BzE?=
 =?us-ascii?Q?tFADCBWaLvOC8W5qCyHBa6CYRBv2t19E0QLQ3J8H2zS4WcsRE1sbaR6SbY5C?=
 =?us-ascii?Q?lM35HxpmrVuLwDn63URmSDnk0duePCBe/G4bXBj2zSt1f3abM2QhDHN+jH9O?=
 =?us-ascii?Q?rtIVryIBhfK4g8+eO2KftVMNFWrxSLK4WGNv3cbmr5Iq8chKdygIrq2DgOhZ?=
 =?us-ascii?Q?v2pQ9/SE4WZ32EL+YXPbEE338ERZpPWetOQR9XsV90YvJLbCUte8nfC7NiOB?=
 =?us-ascii?Q?zlzzOKEioPxI+pgCquSl5PqxjnIIvLWWH6Wl0H6vXQ85xNMEBkRs3esGkm8D?=
 =?us-ascii?Q?38eqjS0L90ao3ZsPTA67NXx7bvNRIjBnaIkkSsJwzOoax1UUzGAmQbJ/RO1e?=
 =?us-ascii?Q?i4MCRwRXve1TzkmvcNxSmlmqLydSmBHi3TY8d11POPvxB7gXPBWNVMIuiJeQ?=
 =?us-ascii?Q?1D/0r4nm8SAUXvFINHaal9hac/ApqGWKLNHU6G48Ot9IOUYm2kgSmaablxfR?=
 =?us-ascii?Q?G8sHnj6PtruSd+6TtC1vGdbHzmLKdZxb7F6Hpao7OZOeE9LJGmruzpQz60Pz?=
 =?us-ascii?Q?QFg7MdXBEaltHVW9SGfetNQzuLTSE3K8Xps8XU5J9LLj5xmOjzZIj4uyur2E?=
 =?us-ascii?Q?zT/N2026SdpgVt734f/sT42EqMC0jRk3eRqieCmzdcwwPePv7UV8bluIfvrA?=
 =?us-ascii?Q?Uwl8lPN5Hc93QSX/CTDMv7XyswQXRxBtC1DFNIh90Is8dT5hmPO5xHKnrDvk?=
 =?us-ascii?Q?AVT9cNlInFDVXyhl+nI815GbYR5tbK8=3D?=
X-Exchange-RoutingPolicyChecked: plYkHE6TKnHhrrVNc3cixHUFC0bLRNiHrOZgxj55+yEPFdX3yD/ihDYGbfDzxAeWFNebb1AjCBiLvgFRIZqodAlZ6bMKHbdmLUaJNUoZlpxd+cRiX5B0DEtYJOiE63shDJuJSrChCOviLP8IlvsmEqTqwHsAf3/vUbM3no49OH3rspLbKiLTSS1Eo2gr/krStKtreSSOrXLtxn9HX79lEj4y7VIxxevUrKmsqNFJfHReijWclKiAQa+eKy89/dQNXXniL00bMCwCf8/mKDAIREpwC4U6jeDNtQTyQpBaOL1X2tUllCiPQfyIVAjRcuX5Qfh+bZV3aBqwMuDpPumvSw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c22cf61-456e-4dfb-b7d2-08deafae1227
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 22:38:50.0458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +lBuX48T6wBHbXX6LpQOPAHpZ3mrOXpgqQuj4Uwt/8d8B2GEVuJnGXdce09CS+fbVaVnpkC1k0rkpk3D71FObBgoE6UntK1+sOgHahUXihA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4736
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
X-Rspamd-Queue-Id: 9DEDA517051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 01:30:56PM -0300, Gustavo Sousa wrote:
> We got confirmation from the hardware team that the bandwidth parameters
> deprogbwlimit and derating are platform-specific and not tied to the
> display IP.  As such, let's make sure that we use platform checks for
> those.
> 
> The rest of the members of struct intel_sa_info are tied to the display
> IP and we will deal with them as a follow-up.
> 
> v2:
>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>     check platform, then return ret". (Jani, Matt)
>   - Have a single call site for get_platform_bw_params() and pass the
>     result as parameter to the *_get_bw_info() functions. (Jani)
>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>     prefixed with platform names. (Jani)
>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>     (Matt)
>   - Do not return a default value; prefer to return NULL and
>     intentionally cause a NULL pointer dereference if a platform is
>     missing. (Gustavo)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 161 ++++++++++++++++++++++----------
>  1 file changed, 113 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 9c3a9bbb49f6..cf6756b8ae52 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -372,81 +372,147 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>  	return dclk;
>  }
>  
> +struct intel_soc_bw_params {
> +	u8 deprogbwlimit;
> +	u8 derating;
> +};
> +
> +static const struct intel_soc_bw_params icl_bw_params = {
> +	.deprogbwlimit = 25,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params tgl_bw_params = {
> +	.deprogbwlimit = 34,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params rkl_bw_params = {
> +	.deprogbwlimit = 20,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params adl_s_bw_params = {
> +	.deprogbwlimit = 38,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params adl_p_bw_params = {
> +	.deprogbwlimit = 38,
> +	.derating = 20,
> +};
> +
> +static const struct intel_soc_bw_params bmg_bw_params = {
> +	.deprogbwlimit = 53,
> +	.derating = 30,
> +};
> +
> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
> +	.deprogbwlimit = 53,
> +	.derating = 45,
> +};
> +
> +static const struct intel_soc_bw_params ptl_bw_params = {
> +	.deprogbwlimit = 65,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params wcl_bw_params = {
> +	.deprogbwlimit = 22,
> +	.derating = 10,
> +};
> +
> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display)
> +{
> +	if (display->platform.dgfx) {
> +		if (display->platform.dg1) {
> +			return &tgl_bw_params;
> +		} else if (display->platform.battlemage) {
> +			const struct dram_info *dram_info = intel_dram_info(display);
> +
> +			if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> +				return &bmg_ecc_bw_params;
> +			else
> +				return &bmg_bw_params;
> +		}
> +	} else {
> +		if (display->platform.icelake ||
> +		    display->platform.jasperlake ||
> +		    display->platform.elkhartlake) {
> +			return &icl_bw_params;
> +		} else if (display->platform.tigerlake) {
> +			return &tgl_bw_params;
> +		} else if (display->platform.rocketlake) {
> +			return &rkl_bw_params;
> +		} else if (display->platform.alderlake_s) {
> +			return &adl_s_bw_params;
> +		} else if (display->platform.alderlake_p) {
> +			return &adl_p_bw_params;
> +		} else if (display->platform.meteorlake ||
> +			   display->platform.lunarlake) {
> +			return &adl_s_bw_params;

Any reason not to combine this with the ADL-S branch of the if/else
ladder?

> +		} else if (display->platform.pantherlake ||
> +			   display->platform.novalake) {
> +			if (display->platform.pantherlake_wildcatlake)
> +				return &wcl_bw_params;

Can we just flatten this out rather than nesting?

        } else if (display->platform.pantherlake_wildcatlake) {
                return &wcl_bw_params;
        } else if (display->platform.pantherlake ||
                   display->platform.novalake) {
                return &ptl_bw_params;
        }


> +			else
> +				return &ptl_bw_params;
> +		}
> +	}
> +
> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");

I think 

  i915_driver_hw_probe -> intel_bw_init_hw -> get_soc_bw_params

is called unconditionally on all platforms for i915, not just the recent
ones where we started caring about memory bandwidth, so I'm not sure if
this WARN is appropriate since we'll always hit it on the pre-gen11
stuff.

Since the values populated here only get used when paired with display
IP version 11 or later, we should probably add that as a condition since
those are the only cases where it matters that we found a set of SoC
parameters.


Matt

> +
> +	return NULL;
> +}
> +
>  struct intel_sa_info {
>  	u16 displayrtids;
> -	u8 deburst, deprogbwlimit, derating;
> +	u8 deburst;
>  };
>  
>  static const struct intel_sa_info icl_sa_info = {
>  	.deburst = 8,
> -	.deprogbwlimit = 25, /* GB/s */
>  	.displayrtids = 128,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info tgl_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 34, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info rkl_sa_info = {
>  	.deburst = 8,
> -	.deprogbwlimit = 20, /* GB/s */
>  	.displayrtids = 128,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adls_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adlp_sa_info = {
>  	.deburst = 16,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 20,
>  };
>  
>  static const struct intel_sa_info mtl_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
> -};
> -
> -static const struct intel_sa_info xe2_hpd_sa_info = {
> -	.derating = 30,
> -	.deprogbwlimit = 53,
> -	/* Other values not used by simplified algorithm */
> -};
> -
> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> -	.derating = 45,
> -	.deprogbwlimit = 53,
> -	/* Other values not used by simplified algorithm */
>  };
>  
>  static const struct intel_sa_info xe3lpd_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 65, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>  	.deburst = 32,
> -	.deprogbwlimit = 22, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 10,
>  };
>  
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> +			   const struct intel_soc_bw_params *soc_bw_params,
>  			   const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -466,7 +532,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  	}
>  
>  	dclk_max = icl_sagv_max_dclk(&qi);
> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>  
> @@ -496,7 +562,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * (100 - sa->derating) / 100);
> +					       bw * (100 - soc_bw_params->derating) / 100);
>  
>  			drm_dbg_kms(display->drm,
>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> @@ -518,6 +584,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  static int tgl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> +			   const struct intel_soc_bw_params *soc_bw_params,
>  			   const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -554,7 +621,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  	dclk_max = icl_sagv_max_dclk(&qi);
>  
>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>  
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>  	/*
> @@ -599,7 +666,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * (100 - sa->derating) / 100);
> +					       bw * (100 - soc_bw_params->derating) / 100);
>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>  							  num_channels *
>  							  qi.channel_width, 8);
> @@ -661,7 +728,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>  
>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>  			       const struct dram_info *dram_info,
> -			       const struct intel_sa_info *sa)
> +			       const struct intel_soc_bw_params *soc_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	int num_channels = dram_info->num_channels;
> @@ -676,14 +743,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>  	}
>  
>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>  
>  	for (i = 0; i < qi.num_points; i++) {
>  		const struct intel_qgv_point *point = &qi.points[i];
>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>  
>  		display->bw.max[0].deratedbw[i] =
> -			min(maxdebw, (100 - sa->derating) * bw / 100);
> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>  		display->bw.max[0].peakbw[i] = bw;
>  
>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> @@ -792,6 +859,7 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>  void intel_bw_init_hw(struct intel_display *display)
>  {
>  	const struct dram_info *dram_info = intel_dram_info(display);
> +	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
> @@ -807,28 +875,25 @@ void intel_bw_init_hw(struct intel_display *display)
>  
>  	if (DISPLAY_VER(display) >= 30) {
>  		if (DISPLAY_VERx100(display) == 3002)
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>  		else
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> -		else
> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>  	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (display->platform.alderlake_p) {
> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>  	} else if (display->platform.alderlake_s) {
> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>  	} else if (display->platform.rocketlake) {
> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>  	} else if (DISPLAY_VER(display) == 12) {
> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>  	}
>  }
>  
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
