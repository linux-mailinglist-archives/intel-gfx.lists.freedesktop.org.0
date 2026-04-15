Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFFBHaoA32klNgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 05:06:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9663B3FFE4F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 05:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C29E10E158;
	Wed, 15 Apr 2026 03:06:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQsbu65A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A6510E102;
 Wed, 15 Apr 2026 03:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776222373; x=1807758373;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2315+NngV9ige4PR3VowlpE0cOP5IuOhrOy6xmi0jRM=;
 b=FQsbu65AwWuHKQ6Krzg5ZKUGpQhSDUIfNe+kSogE4aba2M7E1DFSIEQ9
 EnJYGqxqrJAXj7J/sHF7fVUlqNtRDyCppUlil0TmSk+0aJlbdGCd+7Ao0
 dPkiEuX3zmpU8HYRHPi+ECpP3Ytp10W9cd8NF8NdP0dzING7ZODXeDTcv
 p9I92KC8mYHXzaRzigpnqx5DIlqBfDIk8lZycLo+/fTJxov+LXdWDj8RK
 qlEuWOODHumMHXXX9shfZFmygm3X2IfDA5nk5o8aXQ30mBMqQFVkmhPdU
 oz2L8smKXYzB3UMBme78A6DVBmbGGI9qaijnEac8d3gGKQtbG46E94adD g==;
X-CSE-ConnectionGUID: Dl6Aiy22TCuWmMxWSH2Q4Q==
X-CSE-MsgGUID: HbLPLuUhSpWBZw1EsO07mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="87500023"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="87500023"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 20:06:12 -0700
X-CSE-ConnectionGUID: 1q5HrrXcQ52XTKSRc4D2ZA==
X-CSE-MsgGUID: dGcUovnqS/+RVsfb95HWNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225975581"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 20:06:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 20:06:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 20:06:12 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 20:06:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FRYafmYbm94Ev4U3J0VGBPsSmjky9cBxhUMfxwpc32wY0epTfwAJfHehEgwBBtPoK+qK1oLRANJlrquJfaz3uHQGs7bOiCW84nE/QY9bpGynZ2gF1f3bTl6pWc7DFU8VUfi2BTJ25qIamUY+CbWdGgdAQiX2CsRZJZq2DX6xZUcygPdIiJCCfuznAG9hSz7QADmAVQ9hXNOESBynkR9yZEXVNyoXqp1Q+0wMxl/0uia09zmvnkLBnfXB/ouZMpoe+xx2eaVNfOTzxUWVoAZazjfQW0zEoHiMMti2+L7sob/op9wd3IjipFwDjk4Eihs1q5a+/YIb7v19et2VtbfQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jbR+Y7bxxNf1qho2xuJ3twPio1B9i2PPrxC6DZThsZY=;
 b=ARmGUubrp+lnvK6au7NrucdBruTbGfJXb0lja9bwZGe0Agi2blG+cvPZSwHoVyFJOF7omHsHDyqK0KZsO7gR4Ucrhwfrsudwnh5eOGbcJ2UF98QQIw3TC8sz9T083ddDen9yzEBCtT5gur0d6+42d91QyILHYCLP1E7367xDCsZ3VwEC+eRx+HKZLvhop8wO3jksRC5EU3m3t8Oos6/3HJMU02IeX/S/DWqhklrbEw5C4WokkNflRxLf52blwjPqsLOTa20U4f0TAT97PAxsV4bUaSm6HN6qQXHv/rlai0zaT9czb7eB58JEn/Q1fdmmi6rfT5R53JcuRIo9WaYPpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6764.namprd11.prod.outlook.com
 (2603:10b6:303:209::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Wed, 15 Apr
 2026 03:06:03 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Wed, 15 Apr 2026
 03:06:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/lt_phy: Update the Tx Swing for DP 1.4
Thread-Topic: [PATCH] drm/i915/lt_phy: Update the Tx Swing for DP 1.4
Thread-Index: AQHczIKd5neLxH41zUu16NBCF1yiIrXfb4vQ
Date: Wed, 15 Apr 2026 03:06:02 +0000
Message-ID: <DM3PPF208195D8D280F159248055AA398EEE3222@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415024902.3188784-1-arun.r.murthy@intel.com>
In-Reply-To: <20260415024902.3188784-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6764:EE_
x-ms-office365-filtering-correlation-id: 5d622d41-ebd9-425f-1394-08de9a9bed13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: Wg14oFcnOPkC1TSYeqUrhEVq1s5OBZMKbBygRNaladEb0n02CqRHUICyMWLxcuFjFalozXGVJatO29oBGGhJklN45g/RlJTmV+gTEGmSajGi9qbVv3rxZueE8razt0kDpi45U0e3ennTiW/QOr3ixgle5UZJmGIUyBbgKYKS27n3n23O75YNIr0h5VtvrDtbmclBNnRp5BftipLAbNnjg1GxGh6Xo/xoDe5CT1USQkM/4qPyAXcrrMkXB4A7+ug61w8YAcSx5AdtF+PD6Al8OKuImva9t70T4CSJ1DTjcpjyBmE6ZLVJogOCZnQ2YpEB9ehKI2+Kofo463ogqGUAKTYm4CSo70jW76mOw/fLviAB+zYFKsSB5ZQg82FK8EauP/g3sKu9TogVcR3ifjB23xz3xyjtoiCOh7FUG9YF116GIrgo+RmGSfGRWwcCGYEi1O8Jp7x8Z27aFLSaGLtiKc+h9AtgAQqacWdzt15IrsPpI880IPgFMMsHF4/ncUIzp3V9Klg/0zNn+hIWkFlLuvLW5RhNBbL5l9XzVbxq6bYQYSBFi5MMxfr7TaVajWTW5k43w6YZEx5d5GOptbS3Oov01KOSXs1YisZiyA4HXhn8ZZmSHrmLkxOpjdRQrzD51MsaPSDGa2kTrIvT15Exlset1MEOA8r7mfGdFM7ySYMYa8FostbBr5uW/ukvs2BMbFa4SItTm432luF1Brcrn6G25KvRe9+cdpjYdbg+wmXBUvhxPEH2MY5DGpRKFfmrHKarvX4LfRbBVKPhukEA39+5ogHxzjJ/Ci4WXfB8j3c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yHQLXYZV00abu78z7csq4iyEIvEcEXvkjLD6mXVxzO1mUctfLrfVMlmL7qAJ?=
 =?us-ascii?Q?9N1noaRbjGl4ybBiCphXerYSx1oXwhVMtz2FWNUY9EKnYgy46lwFX/426wQw?=
 =?us-ascii?Q?hU3g17Gfxje7RuTyDMOc5v8ExhMmIl5CjwAlIH+bqB3jH0E73HMTr3YmqA+P?=
 =?us-ascii?Q?RfsHzLu+OIdgCTYbn4pQ9vk5nQAk+5xQA2dWtxOybU2L+xOI30KIYxL2MhI3?=
 =?us-ascii?Q?WoBaKQBV0uc1GAMNTuskqS2HPYuBuy8ZsOi0oFYIoUr5aWSAB/zQ+PnaoVJX?=
 =?us-ascii?Q?orvDgc9QVE2lyhq/p3kyT7fiFNOxFMCWqwQNuuNfIPUCPEzx/Zhyer92I3i0?=
 =?us-ascii?Q?RFCUsmR/J7mRodh5BV+ADcpB6RowbVwG+hPC09Ktv8czoz8tmnVzpW8mjjyj?=
 =?us-ascii?Q?gZvHJBGDCgEO87oC8QXIOjW7q3jGh3eNVaoV3SDr15FZHXX+tds4GCZvNTx/?=
 =?us-ascii?Q?S1Hdl7Aa1lWDqEh5pkqVTi4ofHOIXYh/graVZ+wQ3kIB/btENepGv16Aj50X?=
 =?us-ascii?Q?ymOsHhcD0xO61u5gXxTfbwSKweP/l272YFDgMYK9nJkp2gmPjERCoHvmNYvj?=
 =?us-ascii?Q?QgrX/Sdr0kddq/q8IFY0vDktaXDbSAiWgH5uJJC+EqEY7jaqjbN0dmvXiBoQ?=
 =?us-ascii?Q?+cakpAz0QsfCaXeBA9wrzekqA2pofNHafv8zz0bT8QGb87q8rt6cC0do2jqI?=
 =?us-ascii?Q?OqpPpbmy63Z9ejmb+FhpEK7XgIzcOiltiBLHne57GmnXkFtSvwvw8VoKS2tX?=
 =?us-ascii?Q?8u0sI7I3N8RHzU33OQWLLXLO98/lHuwapUK7OPNpgFQpz+ERWHh6bV+eIH9M?=
 =?us-ascii?Q?q9Gy0PWYFjQ987K0EmICGJTsv5nz0I5mlqL5ocSELIcWGhdu5/YYOpjnx4S9?=
 =?us-ascii?Q?wSiKgcxbyz2LYfQLA94GJGUWutsV5gVHf+JDs4P04jWYFivO0Ly0K3Va2J9V?=
 =?us-ascii?Q?lnxrv2dwTpq96DvfKYtefk//4VlxMU+FBzR+AOQxk5iIUTEXO5nBmi/iTofU?=
 =?us-ascii?Q?SCeTldgONd4zIUnjukdp/3LaRpqwE2QzyruXJTeyc+JA01CM4tCAz1BqQUq1?=
 =?us-ascii?Q?0uAnQQUsD9yuWrMzj0u5xIGwoV0FFjzB3mdD3a2wsUS+YtQ/Kj/zUW1AT1l3?=
 =?us-ascii?Q?QJGLC7E9y7DFUfQtYGBUjCNtPh0RFk+YKOjp3aNrC9pAmx5vLPUg4fRe4317?=
 =?us-ascii?Q?wqMsfVTCuubHyMiBCZK3BO0D5IP8BrZRxD+35Gv9D/x5dkU8S1TbLVNrtn8J?=
 =?us-ascii?Q?hHsISWhfrPxBfNRFHhyo+1rydwPRdazrIXs1UrM0SVXF2DekmJemQYTidyCP?=
 =?us-ascii?Q?UWnCnGx55atHAeCsC3oR8UQeTdnp83MP7W1awmgVrHZ8CsxwT6N/fKU3S2Hc?=
 =?us-ascii?Q?vW7F1ZZ2/u5EeAA1LQW66ejo/Zg1zX/T43Bwq9k7jPJa4kioBYf3LOjFgv7e?=
 =?us-ascii?Q?y1r0f8nuFseO1d9BaO7wU7l2ki6PFt7q0m0BQy3xmRN0/dwjSX6oMVYk6kdG?=
 =?us-ascii?Q?bqXI6n4pT2RnoISsuWsIrkbnZMiI60TtLpRrY8vhcm4mT914PdnUkvTBIPQt?=
 =?us-ascii?Q?bE1GIAAKxFYqCu1oruELHYtvda5xfx9xF65wJRV5XmA7mau1bvCwjBYGJX+h?=
 =?us-ascii?Q?nQIGWi/eN5YKtFtZJWqsoLyrpTBHQtDChFg2tD5QGQqo29BP73Sz8sXUGfwX?=
 =?us-ascii?Q?Bnt5xO+N80l7O02Ebvnq5G8lll0oAlgu4byNY2hDrVozUt4MBFRCMnH62+vZ?=
 =?us-ascii?Q?UhtjXpoCBQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tAAlorRtiGVuMPEAm4qbjnkY4Obw3JDpPBJzg/t49Tf2SauK5kXwMXWaxT4RYgjyhddoxPAcFgbGScrI9IU/25BoxuUJBcOY0hjvEsCW4djqPB5TLrbcqXl+aTa1nInuREaXfpjC6t5Tpl3Z2TrvCr82DFDcPytk+6bv8cr4HgQOmjQ7tyvvwz7KUF4Q35EvmPOi+oHN+zESV6LFr4LnT8WHyMPtW6k4Zrnf5RlX1H1aF5DDyvbRX2G6jPojI0owjvy7YFQvMJ9o62na839Rjxp109RKREgQ/YPVP5Uk0ceoiAlT4Vdj5fVN3keYzAcTpqhpIdJ0kDqS8LjQo6xJzA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d622d41-ebd9-425f-1394-08de9a9bed13
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 03:06:02.0964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z1rLUmtZlAv6kN4FiUWWFy3G+7zfgJrxdJ0gfRjL9ipl/GzlY1vP3qADPfm/CWZr87+D/quipTvrt1fRM8pBsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6764
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9663B3FFE4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH] drm/i915/lt_phy: Update the Tx Swing for DP 1.4
>=20
> Update the Tx Swing Level and the Tx pre/post-cursor co-effecients.

You also need to add why so this can become

"Changes have been introduced in Bspec regarding the Tx Swing level, Tx pre=
/post coefficients.
Update the Tx Swing Level and the Tx pre/post-cursor co-effecients to incor=
porate these changes."
=20
>=20
> BSpec: 74493
> HSD: 14019673751

Nit: HSD no. not needed here Bspec gives all info
With these fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 395dba8c9e4d..980ab19868b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1123,8 +1123,8 @@ static const union intel_ddi_buf_trans_entry
> _xe3plpd_lt_trans_dp14[] =3D {
>  	{ .lt =3D { 1, 2, 0, 28, 7  } },
>  	{ .lt =3D { 0, 3, 0, 35, 13 } },
>  	{ .lt =3D { 1, 1, 0, 27, 0  } },
> -	{ .lt =3D { 1, 2, 0, 31, 4  } },
> -	{ .lt =3D { 0, 3, 0, 39, 9  } },
> +	{ .lt =3D { 1, 2, 0, 31, 5  } },
> +	{ .lt =3D { 0, 3, 0, 37, 11 } },
>  	{ .lt =3D { 1, 2, 0, 35, 0  } },
>  	{ .lt =3D { 0, 3, 0, 41, 7  } },
>  	{ .lt =3D { 0, 3, 0, 48, 0  } },
> --
> 2.25.1

