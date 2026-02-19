Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ONwGn1Wl2lPxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F720161ADE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF1910E739;
	Thu, 19 Feb 2026 18:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TuWjmZdX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C6510E734;
 Thu, 19 Feb 2026 18:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771525755; x=1803061755;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=lNiatHMGa0kPVpSQrFgMOfTPmgpB5BppvKujoBtmKZs=;
 b=TuWjmZdXspTXoEE9AOxOj7PnK7yyIloZWWogtWVhB6qwtz0dlXViOQFN
 WFw6kDrR3Ao03tk/ZT5hz05xzbiFrMH3dbUpcULS9EL7NKXrlHBMPFH5D
 Ph2IJd7uigwrYdeN6EYbEeCMsiK8FQvITDlYUZv5RTUyTh77LxJk5KlFa
 9QT0NvdoM0UxRCbcM5BBPYSZnwuyNYYiyCqTbw6p5iCokq8PqMV4c0rTr
 5VRYGHOhAG2qlWTpeSUcF7a/SQyc+GKXUQY17wAmo/O1E2x8lquT5yRR2
 u3/YIAXNXtFWovTVuKCBnL8+p0q3OkWOJTL1ldX3C05iZMbWKyI6pnZbo g==;
X-CSE-ConnectionGUID: 9dfNB8nWRmm/HpbyxSCu/w==
X-CSE-MsgGUID: TVNbBb0FRyWgFoQ2nVeBKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="71826126"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="71826126"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:14 -0800
X-CSE-ConnectionGUID: BkLuEzjjTcK04VBZ4y4lmw==
X-CSE-MsgGUID: panJfQaATBWvutU/RFz+2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="218765718"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:14 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 10:29:13 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H/ckRrJYYUYZH6f4c+9QwtRN79qJfc/JjKt86FL+E77HSnKBgd+59xR2pzS1mAkitHlLg3ON8Crq8rV5MMOWQPRs6VkgQnRYlJF7XXQJ8xGkD/a70Ci/n6HcXmCqu/blNXOuxC0yh7+nA1PhrVvoy9Tw4sKWW4tsNlrNjhctooFdv6yk9D3YS+XRSuz0unz8Wf/I2kkit6N25Reg59Iziorl3AJbPKp71HsQshsgjWkWynE5FZ+Wg7qVs3WkKVEBjTecEuysqPZKsX64WmQjo7TdkhBINZUlbrk6BY0O2eMRlqgLaSiZ6KC0lV6xbdMvruPNMEbKiFdTZJ7VUdlvrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fj5BkkpN0IK1hL420HQu7EaI21XAN38RiukKiwnhsW0=;
 b=i6B1rRIgLAIqTF/uXXglrPrzzO9nA+bdexNd6QJQ/MfkRQg6FQQqBGHuB6ShO5qSoDvB40BvPmxSwxfSy7W0cVdBOT9SUG0wz4SPygpuIoZRGSAzv2wNlLaO2L5szFoeAxWljxjc9LKdIZtpOId08X5uadxTCc4O0G0YBrOdmrKAcGMqUeYZT1lk3zEcQMFdoXLjhFgxP2ljT40U189/ncpTtMwjI3hOCEUtzZAGdFQEn04ITu/gdgSTiLpvFvIqYEbBp3PZCtJWazrJWk9fTH8atQulXnTUwqQzyVK+xFohFdOyJBmzTZek0W2Zmt0cevraiYiwCEYlL2S2Ce2TJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 18:29:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 18:29:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 5/5] drm/i915/dp_tunnel: Send BW change notification after
 tunnel creation
Date: Thu, 19 Feb 2026 20:28:23 +0200
Message-ID: <20260219182823.926702-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260219182823.926702-1-imre.deak@intel.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00006627.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3cd) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: 931ff72b-d75c-427b-dbed-08de6fe4c5ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?phPdVMey+EkwL35T7n9qnBc+EKvCtWateLxlK6GnTUb8N60kD4s+nN9kJHHE?=
 =?us-ascii?Q?QWuGlqE/bkmf+VKkwkqKZHitNQDmp1UbGJixxcElYgngT1HHz216E8A4GEde?=
 =?us-ascii?Q?v9huvbNlhSQ0/B5ERg/0BPXO/qKH4tHZKQhLKuFJ7kfHso7J/c5nZq/av8Fl?=
 =?us-ascii?Q?PWXcJBLD1D0KNXfIDFDXH/nhDeFz5xlOmXS9872FyuZu67drUswG3DaI5eeu?=
 =?us-ascii?Q?atuj5pyPqT4RedWE2RRo9WqqOY+B8S2KJjwJ6x6wQoY5KquL36CJr1JeF41i?=
 =?us-ascii?Q?HY0gDMWvs4orHyESmNdgo+XAbsUcFIrjaU1B1uDHr0Oaz6vfYJMKQ/WPoHvv?=
 =?us-ascii?Q?RzZzEF/c2YypOkAsH+zLhS1FWCOYPcVNax4N3CQS+GG6773/0/Z4LR0ll01Y?=
 =?us-ascii?Q?q4z5viIMuv4u3aaz/OYtb5wozAyhJqtSfo1vngC5gGwfwp6ZPIGFd1zZZWq1?=
 =?us-ascii?Q?dTtFZztIMHyWpki3cJgytCzLIH7lldTOQIPx9Axi65SuN0ig9kgxonrKjanN?=
 =?us-ascii?Q?/bWwM2EnjfEZcnvpsZ+B3ZJ2t4MD2cCJX+WtzN8QFOv0TouFyD2WLqdEtFuI?=
 =?us-ascii?Q?MzpfaLsdt+hFhVX0JmjDfQyyI9/cFuZBidpvj1A6jAbnsucOj1bNWS0BG6NX?=
 =?us-ascii?Q?qE6LD/5ZL/lsZCqx0gswn3/OEylZhNe4eTlWOTJOK/BDaQMejPJTuzCc+KGA?=
 =?us-ascii?Q?ZurC9c58ddxOjxcrl7JEEQ3mpfRScM9pzrjIhpTeFN5cJeLzxXGMQ4BAagIm?=
 =?us-ascii?Q?bn+tFt3EvMviPrserjo0wx4fazR/9cF88bqwhJi+u+mE8MOSOqYdHVtOgusA?=
 =?us-ascii?Q?BUOVOR296/ia4QbjF+IL+Z4BedyEHfuHUl7Uehmn6+FePRdvnVsR6pfmLRLw?=
 =?us-ascii?Q?b2KROn6vFieckh2T4YszH0ad8+4iqyObj89SUeVKg2lDgamPWjheFaDSK/kv?=
 =?us-ascii?Q?RaRrz0TK9SETx+6zoDZx2rJBqf5Wf89Cm9lNcUfYPeo/MnOxqgsn9owB36fZ?=
 =?us-ascii?Q?Ns77pHdYy+8VBIb7JiqD2e+PctdWITE1MfKu90UlHyM9q16bN9gntUaZocHM?=
 =?us-ascii?Q?Sp1vHmzJ3tMolsDF9zTbK9Ayk37VYp0PYg/kiRNNYKZuoyzIazgL5cdYuiYx?=
 =?us-ascii?Q?NQCAah9VQWp6rQsw+blN2Dx36D903MRItmsHue4Uc3nlu9Zay+1AYEJcAbAE?=
 =?us-ascii?Q?hC/4lelGV1LPGrGmwk1ldg+U3klJr1x3hs9NgFit74uJ6ZPWb2Alryqloyie?=
 =?us-ascii?Q?geEX1OEvPKehh5JNCs7PH0BoXjRdvkM4h+Zq4Wy8Eu+tKkk3nVBEXbH5/DIJ?=
 =?us-ascii?Q?ZpYsPDwS+UuweaCxC0mENnQgkLJuDG/o1T1TSfc+KK9sIHLtHSUYTZBM/KqK?=
 =?us-ascii?Q?Fll1xtIhliHA499g3/GOT/S0G8uFjJWAoD50Ver0LV05MSmLMpZaBdiUyujq?=
 =?us-ascii?Q?x6QP5H+S5UnH5CJpzy9VYcddzAmWrupzocHksM1+L/LawpJAAaWHzDLn6Aas?=
 =?us-ascii?Q?0J+zDcgMc2kQCCIgT2fvuzEugIiNVoR7P/1HUMQBoYKt2HjBPRR1mCDUPg8h?=
 =?us-ascii?Q?A4N5q36PJ1Z5e7qFw/E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PoUUtFi9Zj0TtQJLFDXdtti7MXuuODu4ZnTgGUprbt+aNMNliA+oM09Zp+M4?=
 =?us-ascii?Q?jkEwTrEUC4vHsrxbCWZ98CwulUKSpvgNg9HOiKFtBpdXBx4pAdJ1D8CUYC4f?=
 =?us-ascii?Q?E4zHZP8EtfrPtcUX77pC4Y6DpYKK8OgYMH414+/vmXP/IZt7icoAwjRZ0VLa?=
 =?us-ascii?Q?y7ffIp4ZNuUYrIs/hYEOgWSHjlzX1F6EhKcMklKbCH4Xb7XK2oefMW5E+BDw?=
 =?us-ascii?Q?t87qf0x0G4riZQ5ztLrFtIoiMgBkohetfBB8oxE3eU43/tfnhn7PmX/bStJg?=
 =?us-ascii?Q?cp1U+hdNNF5mKHgVz6q34hRqZyaNAEkIKUXXJz43jzUsTNaA0Juc+WWkbGlR?=
 =?us-ascii?Q?ZM06bzS9nrW+TgiTuxfWAETY4id6QcrKQiUYOyTYPh5ATSiwXj/IoonQIsTB?=
 =?us-ascii?Q?iZgF0TllG7oMTM2tOXIK6gW9M4KKOQPIpqWamA3jEsXWN9aJiM4rQD74ir05?=
 =?us-ascii?Q?rZf4LDQFGvSeMiECOIbTIdVO+MHWk6kU0tNlc3k5H1W77aVAuGQ1PgCbz5es?=
 =?us-ascii?Q?pVNxfXWbkmAsWmBLBwVoKJxx3BzdJDnpTfJze4hvStzFkcaLBv40L8RG/+AG?=
 =?us-ascii?Q?mUvwE3sDK7Pk8fmQ3UgJpNxyh0NAyd51zOVK/xwYWXlCkDqwo1RWBZMReoDx?=
 =?us-ascii?Q?ZgAY/fUzOHhit0TzPcOHs364mF6eEMViDe4ZzI0rffSM3H+3lEjjy89lcJOO?=
 =?us-ascii?Q?dcP42eqBZ7TZ1I25HL3Qypi7XJ2ogrzFpqo+KejGEyNrqiK/yGNzVkANXBsa?=
 =?us-ascii?Q?PCRF70ELKOrRS8Lx4SKVvhzuEndGlw/2xC8qGl5oGbIAo7xRZJtDbF1v/IOk?=
 =?us-ascii?Q?7fLos7AYtIbNQtN5mZbxhe1Qb3N48aheI9XgUSIxdrog3AHaZV/wCyXHKAFr?=
 =?us-ascii?Q?7VnH2Qek5GfrIh1MtNhjGCaxKGiyOjzi4VshKjobUwWr+8eSt72z0BnAk16q?=
 =?us-ascii?Q?4DyIWXQZFYTeWSRv+hPYoEgV5699ZFpsHX/3/17gOhAakYg9TPzelalPjNyY?=
 =?us-ascii?Q?mMUgbXtT/bmLxErDiYBd4OqbwQf7R9UiElu5Hctku3UKGRPjnJZiU2qITMUP?=
 =?us-ascii?Q?23LwqEiouoH8LkfJRvWhCRX4ByXp9jBywlWsv0zXcl1i07qzoArBXzVUFsbL?=
 =?us-ascii?Q?52wQZ88EKyTrQBkjmYHFz+93W4/FRPSyUPlePqEOkRfjPw26kIG4RJKe2oRD?=
 =?us-ascii?Q?1jGGUdL2gUWWQ36PRSq5Rb+rWsBfsorOhtqgD0qHlb653ClY37RhKkDiA+8v?=
 =?us-ascii?Q?MWTuj3JbHSF2SCc9CRubtY/18X/a5bToduOnp6KQsNf/dgLSS7fUQuVzdkkj?=
 =?us-ascii?Q?ID8dtMwkc99nc2EvXWn5u9jDnzvG7bQozLmegx37xury6xZoV0IxrUEMcAnO?=
 =?us-ascii?Q?TnWa1qsw15n3H+5OEBwPkN9K7gFYpUGPL/t3lph293UsCRO+m33noEKB8Soi?=
 =?us-ascii?Q?uLGj8aID3qMv19BD31CUOL1ZLCnrP+IUQ5eIOu3IldEkcEdmI1ik4a1GTCuk?=
 =?us-ascii?Q?HNkzr5J5QcwKMQOK36NDc4ko0570ChlPyNU9EmfzNZ1xOuAm+689zOLmvd9p?=
 =?us-ascii?Q?+k8tG1ilKsQCFhojXHUhQj9caWoPn5vOWLEIch32luryxK91R815gGB57izW?=
 =?us-ascii?Q?dzbmr0iGAEWKFzOpksJBCKadd+XIeaaSGiUymcegkLTV0rae8dMrVIrmLa/w?=
 =?us-ascii?Q?btOlw1Gqm8dh9zsGiPL7h5AyEwlg6IfsJZjRM+yDuyHXqG5HUDLiB0fckMnK?=
 =?us-ascii?Q?EbwnbJs1zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 931ff72b-d75c-427b-dbed-08de6fe4c5ec
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:29:09.7797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WlBqnsmS5KSPBbGae0vHCJD5F1Bix16hE5TSpkcweB2NnqTwpTGb6D1/eI6LTCC6GbyFDxaP3DX5kb3Q9IPUkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0F720161ADE
X-Rspamd-Action: no action

Detecting a bandwidth change for a sink connected through a DP tunnel
depends on updating the sink's DPRX link rate and lane count.

detect_new_tunnel() -> update_tunnel_state() updates the link
configuration only if the tunnel state changes. However, after the
tunnel is created and bandwidth allocation mode is enabled, the tunnel
state itself may remain unchanged.

Record the sink bandwidth before creating the tunnel and compare it to
the bandwidth after tunnel creation and enabling bandwidth allocation
mode, ensuring that any bandwidth change is detected and userspace is
notified accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 1c552a7091897..4b743387b15a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -62,7 +62,7 @@ static int get_current_link_bw(struct intel_dp *intel_dp)
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
 }
 
-static int __update_tunnel_state(struct intel_dp *intel_dp)
+static int __update_tunnel_state(struct intel_dp *intel_dp, bool force_sink_update)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
@@ -79,8 +79,8 @@ static int __update_tunnel_state(struct intel_dp *intel_dp)
 		return ret;
 	}
 
-	if (ret == 0 ||
-	    !drm_dp_tunnel_bw_alloc_is_enabled(intel_dp->tunnel))
+	if (!force_sink_update &&
+	    (ret == 0 || !drm_dp_tunnel_bw_alloc_is_enabled(intel_dp->tunnel)))
 		return 0;
 
 	intel_dp_update_sink_caps(intel_dp);
@@ -124,7 +124,7 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
 
 	old_bw = get_current_link_bw(intel_dp);
 
-	err = __update_tunnel_state(intel_dp);
+	err = __update_tunnel_state(intel_dp, false);
 	if (err)
 		return err;
 
@@ -187,13 +187,24 @@ static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp,
 	return allocate_initial_tunnel_bw_for_pipes(intel_dp, pipe_mask);
 }
 
+/*
+ * Returns:
+ * - 0 in case of success - after any tunnel detected and added to @intel_dp
+ * - 1 in case of success - after a tunnel detected and added to @intel_dp,
+ *   where the link BW via the tunnel changed in a way requiring a user
+ *   notification
+ * - Negative error code if the tunnel detection failed
+ */
 static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_dp_tunnel *tunnel;
+	int old_bw;
 	int ret;
 
+	old_bw = get_current_link_bw(intel_dp);
+
 	tunnel = drm_dp_tunnel_detect(display->dp_tunnel_mgr,
 				      &intel_dp->aux);
 	if (IS_ERR(tunnel))
@@ -223,7 +234,11 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
 		return ret;
 	}
 
-	return update_tunnel_state(intel_dp);
+	ret = __update_tunnel_state(intel_dp, true);
+	if (ret)
+		return ret;
+
+	return has_tunnel_bw_changed(intel_dp, old_bw) ? 1 : 0;
 }
 
 /**
-- 
2.49.1

