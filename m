Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MI10N+05RWqJ8woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:01:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4C36EF74A
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:01:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h9ffUHhA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0F910F030;
	Wed,  1 Jul 2026 16:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C1810F028;
 Wed,  1 Jul 2026 16:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782921707; x=1814457707;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=AzGwvh9lpdLC4M+nLrZYbYj52DEfw/ZEsxOisuIoaIE=;
 b=h9ffUHhARumpwj6HuQllmZGGBfpAMR2gFO0uKky3SztHdXXgoJs7uzmp
 /DpfTBNU03HB0Iksw/8RSGFWId/9rQ3yrpFEeTlMSlKVgM+8+tx0z//8W
 H4OwRIues1qXR978+6lUUEi0wh/aIksR5AbQTRWxtng/+NhGBgNYTaWJH
 Wz/AFMI8D1m4I018v3Th/S1noTonZZYFCDBdjxnfqGO/8dyfmcVsJ1H4A
 es8Zz7HMCb2xAjt7No8yhbOSaVVbt8k8NBIpxW0LkLBATY4t/g7sk0GtS
 p3F+E48CC67s7JzftBQEG7gPTOi1CL7y4BDXiHtblyOMQEgDzuAgkHbrt g==;
X-CSE-ConnectionGUID: v/T9tQ5wSzCqL6yhOOXutA==
X-CSE-MsgGUID: E2tRfyLPReqVQSSnl5QucQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="71184633"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="71184633"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:01:33 -0700
X-CSE-ConnectionGUID: g6u/afHhSyi+pw4iaKiSNA==
X-CSE-MsgGUID: 7PzeoDSkRhmSzQxAVmrcTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256189028"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:01:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:13 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:13 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qMRk7aD9nEQII+toQ0LAc0suGzi5JKRekbo5oF0Ird6qo22LotRzErxsdwN6P56Th6bDwk2b09R0Q1eQlDhvscRAU/+bHSGQUICT0ibn9lbYQaXE4XLZYRpdKP+/rEsD9Dmb68JpPDdBf/foWVcdfmSPIrYGjtT+okQLSjDPtRlhmIrLex5NB8TJVTO2Q5V95Z+fqKFUA1ai2ZkhiqOoEqhlnPauydejcHQ54eRsj6r2XQHqG3Vpk129QA4fFYIMw5iIkdybFkK4QXd1U2eTeg/mo/BxZFbQUx4yR6T+KVKuAsEkXoFu7dmQhrbCWsD9oS/TnsI79I1oVGpwyxKC9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRFvk0JQ5H2gmPB+sxmaajKWGvjCCNFBY7LCtL9LWLU=;
 b=MqUNt6aaEjdkri2w9ZgUZ1SjUGuwqfKqGp2nTHQoSxzPqfWsW1TuVmB+yM2s/OM9doe7UJrLwJ5bAOyC8RXmFj+UjWP32udLWjGpS3XUvzr+KwDLUvC5bSpiHU42ThDGk0m44q/yw5oM9gzUNckecRFUE1siv+FuIIGwu8Al30o47NAbjxmVlruKWhxeCOb9INbWcKrCAfa2k5GMW9gRyvmvDxOdaPIMI1+MhSvngCSIleeRL9DThQjoW9B9h4gS2p50ujbY1Zob0v42L/9tApCOvUkOPdLItIYU5Qymkz1ZmBSAZWBlHrBYV9Lw6Oktxs3sKjW/Dfn7nLqQ9lis9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:02 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 20/34] drm/i915/dp_mst: Use link caps for non-DSC config
 selection
Date: Wed, 1 Jul 2026 18:31:49 +0300
Message-ID: <20260701153204.4124150-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 05af3dbb-2768-4b19-ac17-08ded78609b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: Advo9xFG+skT0ziz1GAMpbNcX47K0DmOGst7pm8K+ZebE2Vnmfz3j9t2pEReibSUnUhkMaV2qh9RTQoPLf2cJ1Rb8waLtQbXWcsNxT0zn1+mcuuCVmmN6DFyQkQGJHtq6s6LoAnmvSMDm4Gri8ANQkD0NKfeH4fGmInSrn8dSxS0ZgdYyNUTUQlQNSxxV/NMGiOoFpwVvzrbNg9mU7DxGIN5T33cic358CmHnET8+Py4L6jcch9EiXFPdKn+H7ZAEdH7EF9hPEU+iyYuSpqDLAEN58UJw04NpFx0R9ZdrM4zwskLLxBmXhndR5CHc4QR1nRks5lysmJGvU5zMsXugGdMz74st3AjjobT4TWMi9VgA63LosqwfuMbyMsRgeuqzUntEzEImb4NShi/7VjBFeShgQAVqTJKs60mC7207fSQNHNEo1aSA3TH/yJcmZjqbnJDjt3dTerPeD9CAu/olUFFWJOBdARRVAnOCHPCjxts0/3126rWdhDOy+quGJvlrf43ODc9sBKZHAxywJh5wTGReuodTHvs6pWb/uaGFBGxzTWWz0U1TdFKk19fzRdOIdEeHJEAbLRxMkTfhhmEJjZmL1SmMDo/SeujjptBjEtBvQhFZ254POjts99IaA8PDkWSgHsYODrBIYh6B7NKzUy1wPx+K3x0En1Q/KV0s+0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sc6z/dpNTdf3g3YaOSSsozQA2cbVnFOmq8Md0bjdjy4gL3n2ciwOQ82gyY4z?=
 =?us-ascii?Q?bKrBNWBHnQT9qY+Dk0G1i26vI/9p309EtBMfdrGWxolXgSF7vakLlDHC+Kk+?=
 =?us-ascii?Q?N4sMDPJt8usFHrIkiI6XVxm/wpfc1g61zWdK/ItNMpY2r+X6Kxof9oekyEVW?=
 =?us-ascii?Q?8XehBa3lWWIXn2AUzJpyGNgZDuzqmytgzuVcSz666469JSfyGfnf7wyclZKc?=
 =?us-ascii?Q?//FgcGLFgXvolECkYjA686qFocpp9yPUCYN2IrBrVD5Cl0TRzIQCajBnJ7rO?=
 =?us-ascii?Q?Cbrwen9FETXQsMIsghwNmHFWvGhT0DoNY8r571ai3jab1DoJJG8lgyzBvZEP?=
 =?us-ascii?Q?gtLhItQt00Os32iWrpsnWHeu+ghoHExj2GDDyXHH60vc/L5paxVb+W0Vqg9Y?=
 =?us-ascii?Q?J3w1nS87ej/w7EPziUdY4g9N/ikgVHLfxwtqH2bC3Q+eD1tbTKwMq3lBE0yg?=
 =?us-ascii?Q?28yjaKTNb+/Y59+N+CJ37KdLAOPOY+hn23hN//JsrhAN+UxIc7gcKJQLO4Xs?=
 =?us-ascii?Q?MesYz8p0n3JB68psrOdCeWkn3gFoQtv1puJyXJM3b4jE8H+xdxqSO41ZoyuA?=
 =?us-ascii?Q?sQjbBqfe1NS9fIF7zAyzG0PoaTMPzzlhWdnAHju7dxJCVgSgH2QGgLKJGcqR?=
 =?us-ascii?Q?arwDLOj6REKzcBi4XtdsXQKnhgoaSimOjhdW2sCg+Pf1hp3tALRJt5YECB55?=
 =?us-ascii?Q?WrwgflqouiV2VUl2J8+zo4jFBn4lqxOU8TGvOll6mrIkJgfhU3mc8Ar3arRk?=
 =?us-ascii?Q?gv26FfYkXvOsroMUnQan+v4UJ5wAuj+IqWYtGvIqeehNJxG2rP1WNdbTFzsh?=
 =?us-ascii?Q?BIz631sGPT1bEr+TMH5cmr1fkjqDMNRiETKETrHMNTd0t4qcwYb2NXXDPn6E?=
 =?us-ascii?Q?r8F13SWW0rWfh0/7hXmA7JV7gomzDTxjG9HI+Qy7GCxJf8VEHG53TlyEeybR?=
 =?us-ascii?Q?uzZ4CHfLOQa0i1wFpFlOqsHnd2Q0bCQvSc2RlcJkwlCUnkR01roMe5AmG3/t?=
 =?us-ascii?Q?oT2l6nY/pZIpMYT/tUPKmIyhzEvue/5C2FPi1n3l23iB3UC0Org5SAkV+oiU?=
 =?us-ascii?Q?MZIO9bXHfNUrBPtd4Z3FieMWeJ7Ycz5ktiOpdu5hFgDPelK+RT8iop1UHcgC?=
 =?us-ascii?Q?2NFy4AOVuiR5VlSucfFqZKYmYzVSM+glj3j1+pAwlv+YWKZnswgztUUo0/dk?=
 =?us-ascii?Q?fEKPXNS2aMC6d3WblL2i+LJTZR7VAU/q4dhpUr/brr3Mc2x7EWpdI0rJlJel?=
 =?us-ascii?Q?h7Hg0NK1Xab9JrGuU3Gr1Y8SDpM/X3D6nekyeuNO7a6gOHgaR2oiDz7ejCs9?=
 =?us-ascii?Q?n6ZrmYgxFS5jtGkt/qmr7O4PN5TB76Qxeos+HDf9m+SFiW9kUFIo8ENEe18z?=
 =?us-ascii?Q?wB8Uh8VwJwwVncRpWNAwQc1MKG7hT62FuiqZoC65CyHIOO87YOf6nT5ymUEj?=
 =?us-ascii?Q?TwA/emPA/rZfTapIPAM4lYUZWksAJ/Quj95vhTGf4HNms9+hVqOjFQjf3Wcp?=
 =?us-ascii?Q?BWqxri8RrlEHeD9Gpv7tcTEHoNWVIh5ye72CkiN1KpC4F5zEjtJLF1vky+ZC?=
 =?us-ascii?Q?utvVspxUUuafhnkuqQ5wwqOE2Cei3mxxkRonmtxwxYzjk12g7hzbmT0pjA5y?=
 =?us-ascii?Q?Dbaaw0CdSfSSrSJnn3t+e1YxNHs2gt4oZooF0iyEJtCIFapfDydhphP6YBjt?=
 =?us-ascii?Q?uQk5+IFgFLNkqg3oMLrSbGfrEGxaR/Qw9VsHx5ZsRfv/MG0X3TVeFOHiU/fE?=
 =?us-ascii?Q?NhPLg6lG7g=3D=3D?=
X-Exchange-RoutingPolicyChecked: CxyLZ0eI90XdWxMDmp+G5a5qRSQgKO589Lx3XF9ADNZs5uKI301OJiJKFmXDHrRmqQQXVqnIIg1aq/MWq40wQTRTQWh5wmq/ASGuVdH/6NFdi88/SVP0fOurOFkEei6yf2wNSrb4W5O22S+nby+yh6C7/s2//tWq07+Emq2uvjIO3ZFOs61t06fjNmFMIe9Zvc6LgGn+iQf0weVzSQkuqsRBSQLK+TlnpPcBdFVi96OjhZ+EIgHaBSDspWQVnDwyJ8dEoEsTZ0FfuNijC9uUXp7lJYLCmvrzZ6ENk6ozKa6RWYofm2OvokHVCPZlu8HTjy9/5Semwjsb4b2vMnOCvA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 05af3dbb-2768-4b19-ac17-08ded78609b7
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:02.3834 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h/E4VLFemZ1R0Gn0kvMviwOsg1H2B3sMkIe1wFesJB1i4q8CbXorKXJ2ZPI2Umi+wPjM3X20HxPDyJ7vsP9ksA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B4C36EF74A

Use the link caps helper to select the maximum MST link configuration
for non-DSC computation, instead of using the separate max rate and lane
count limits, which may not form a valid configuration after individual
configs are disabled by fallback.

This is a step towards unifying configuration selection and iteration
across connector types and between compute and fallback paths.

In some cases all configurations should be considered, as noted in the
code comment; for now keep the existing behavior of selecting the
maximum bandwidth configuration as determined by the MST connector's BW
config iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e113c9e60e67d..47b8563f85e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -445,8 +445,20 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
-	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_rate;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp_link_config max_link_config;
+
+	/*
+	 * FIXME: Use a proper iteration over the link configurations, instead
+	 * of using only the max BW config. For instance UHBR rate configs may
+	 * have additional limitations over non-UHBR ones, due to the DSC DPT
+	 * bpp maximum limit.
+	 */
+	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+		return -EINVAL;
+
+	crtc_state->port_clock = max_link_config.rate;
+	crtc_state->lane_count = max_link_config.lane_count;
 
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
-- 
2.49.1

