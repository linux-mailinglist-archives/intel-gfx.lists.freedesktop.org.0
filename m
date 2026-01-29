Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XmPkKru8e2mnIAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:02:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2B9B4206
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497EF882D0;
	Thu, 29 Jan 2026 20:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lgL20x3S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78CC10E254;
 Thu, 29 Jan 2026 20:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769716919; x=1801252919;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=jGLdWGTL91a4eKWLkQW8WXgCBPQJxj190DMHK1n7vVE=;
 b=lgL20x3Sqfxgx0Jum2Is1rCIlCm6DcJ5JluUjPErgK7sorkUd+7n8s76
 C39maVcIrMZDesQZpJhEodtPhVkAdmvWX/31O3/APcwqU95vXjygcl5Zv
 s6EDAionWSGKzMfv1E9rxdESdV78Uf9Yc2Nq+CIcSN1qfYt1ihjB8bXgX
 61XFoktCdaLzonduoThE9+8yQYjSs02WziZ6wO6vpgUqO0IdVUEEA+wQ0
 5yJkpv/CPee35c7MzmQFFvbiZUNXGtTFAvtlbjoQsFBa9fdzcCsNN12zj
 +C1pWwKlEOdHbY8Ul97lvfaPK5sYdb/geu8pNtcHimGckuSzB+ASNLT2H A==;
X-CSE-ConnectionGUID: yv8Ot91PSFu/y3dA4k4bVw==
X-CSE-MsgGUID: 2aaDrNMBQk2P/cIBuu191A==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70945352"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70945352"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:01:58 -0800
X-CSE-ConnectionGUID: TMgVE2yWQ8aOiUIu3r31Og==
X-CSE-MsgGUID: GOmbgfhVRS6ohKzHOXvzWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="213559075"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:01:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:01:56 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 12:01:56 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:01:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VyGN2QzJwplCjj72dlxqfmSj1x/zwG9loAwVswW/n960rsnOymOztrWe5J/fSxAuGLPzTC8mYCDCmCgn75Qghixd1J5bKLJBi5e6xLFoWKaXO51jIPZ6yAGUxGVHMfbh5+HwAdtoFDnV3HSN1tPhcw+o5RY3vMgsAC4KLUkiYtIBAp1xg9aJ5ptc8nzxzBeuBiBbyTzle6ou2cM+k4w10GV9K21n0+S8Qs1tJdko/aPKZzORQiIV03+RpWtHeE2BHFJ/DZsS7X68nVJ3P3sRPnofZYIjL8UFxU65cXhIiAL5LCEU6ddDtik67Qn7eptvX+PAf8Dilh9lt+kFOqCrog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hHHG5TzQTvhOz7x1hEPsSzV6E70BqsJjdTxo2qDUkZM=;
 b=qVMN/YkBdKz6ZfujQToLQgYGEbchY4hgtPBb/RGlw6K8rePR4VlI4FlStPkNh/uHHdutqt5w6/mfE6qr03Wtg2GKw5ZAO5UH8NFrInpIWJju2vKWbb1qpg0UGV8HDBm5pU6IzMZc0maNb/irHVm/iX7TeZvke4k8AY6KyXuGhSmHCarI+G8Pil4ebw+ptoOBk/r0DZPZ6vvU2LL//NN//uPP0jE1Hi4uctIyF/gMzQEUouqVttGAbJrYA2qChjI3TsUII+hu1kVI2cmDj1PcrWhLPebUC4b0CCWmlGCogN4f7jhlTjQ8RXaeXJAXg/tvSsbGw9MXiqxvVpIyUWePUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 20:01:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 20:01:53 +0000
Date: Thu, 29 Jan 2026 22:01:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 10/16] drm/i915/dp_mst: Rework pipe joiner logic in
 compute_config
Message-ID: <aXu8rRQfn4CicfuP@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-11-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260129171154.3898077-11-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0017.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:272::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN0PR11MB6304:EE_
X-MS-Office365-Filtering-Correlation-Id: ea3e1fca-7172-4e4d-25c3-08de5f713f66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s3u5wpe7CUTyCwYVhUfPtHLqglDg/yyWc8PrVa5q9LbJHBMroHf0E2bCM9Aw?=
 =?us-ascii?Q?bnN8x96k+8TtSWYugpcErVl1a1yO8oUieBc0+cT3PVgZ/Ty4idxNQ8x/s2ad?=
 =?us-ascii?Q?ShX3f+bm8PWwcBwk9/RfJmvR9vpMCKJmj7f6+PO2LU7lcu+Dt3PG8YtKeAg+?=
 =?us-ascii?Q?rlS3SVoJrVl5647o/0S7EdJdQJT/nAp15ANYzMQF6qC7s27Vjy9Jt/N+wgny?=
 =?us-ascii?Q?ITe3LXQs5xKbN9hFLunwJL/t6TOQu8XQCVlwHboutJk6WeJSQf0PdP/6tmjr?=
 =?us-ascii?Q?/G4S+dD1H7be2WUnwy/Zp3mQY/vfzwjvP6g7Qwe9vWlRWS+qZS6rhPFhWIIL?=
 =?us-ascii?Q?CW7FleM9GuUTGOrX13CYzYnL2f/gUFv976PO5o6Oi38EAgt5/zDNEzIVG5I7?=
 =?us-ascii?Q?tRrBhMMDzckVUQMQ3kOlj76S87/yAmKyKyuV68ZlMzk81noMg9RXAnF+ATTi?=
 =?us-ascii?Q?JFc/bI+Njkg0XQ91zAXWYq33nMv3/AsxTEjRKAXEuIBW5obIc2KeZMaVnfkE?=
 =?us-ascii?Q?6wOaxgUfGtYc0DoF0XKhEa44fFnbCSA5UmFAnRYT6x1PAsgGny1yv4oxLSUb?=
 =?us-ascii?Q?9hZaM6V5fG1guYOsnfH3q+UyKwoNmm3iahO5ZUguc0aDhGG9UzNxT2rHas8c?=
 =?us-ascii?Q?YVa6iYU3l2K1AkzpSqoUZmWFUZ5NDDeogcUHZY7hZwYgrlzy7IXpQcrqUYrD?=
 =?us-ascii?Q?Fd5wHcWJhZ/dtJqNgQUpEFaqXcv3k2UnKXzgWYs1XWBZfpDUeI4wcKj/lbVd?=
 =?us-ascii?Q?92R/AAtAxjucQbrtZmyg1N1lgsd0shrAItdX6bgpbRsraAdHw1VnWkMLgdw+?=
 =?us-ascii?Q?8RVn5miBDTaR2CiYXRb6RUNfF0s6z3rsjyKXgO4ywBM1HPe7dPcjyBbjG81d?=
 =?us-ascii?Q?SRSfMQc8W5KAePU3f95FINUw2DeIP+qujiumAU4VXgLuAIDoEunVXnsbcBm2?=
 =?us-ascii?Q?6SE48QxjWfS0gtA3vp9uY4WnggeyihC38bprfIJZPt73mIb9hQ+aVYhheefK?=
 =?us-ascii?Q?LVGcUXXj44JqDHSntzm+iv+aqaLG1PLADnnkgkd4FSXf2me9TMbiE/tbbPtX?=
 =?us-ascii?Q?pZrWMfreO4eZULWxirGYooLV9uYzfEXlByRCeNv/BNaIaIEMHKS3BxFJoeq/?=
 =?us-ascii?Q?e0qRBc/Vb5y6hgrJ3w7H83HBYHUQKU2JFA/IAgQfUOCX6UpueSLIm+yURmKT?=
 =?us-ascii?Q?AKurwg7fIBqYAnMUsrXlEewaD1z37gNvzZNwmEfE5zjk5Bno30fctFx9RkZF?=
 =?us-ascii?Q?YYMPrL/Ss0srmUlxn31IFoiosYSKOFarx0L5gI+Agp1VNCmjWSSM6kMjErMc?=
 =?us-ascii?Q?hdWEQZMaxnURGf5r0mOQTQdeBZuL8UHmsKZUFp2RrcFpd96PwhbRX0U4lsZZ?=
 =?us-ascii?Q?o/TlCj4C70XNHihm6xt7uCuwpolGdDTD3x7UMN1f1bRZ34UVKY0xpr1H/HiK?=
 =?us-ascii?Q?gI2DeyDeI1Wv5XZHRBirISewtpSHsDFksh5CZ/kXwucCECMASwrBzqRBZ0Cb?=
 =?us-ascii?Q?oNg2doOxgxmkkWhybBTohdiQViOqxrsq2pepCPnx2L/ELWuzYExh6xEdBw?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D5JR91T/wmKXIT99+adUXaOkgyggkObCLQvWbRtViIPiHjQYdlQ0+Z6OGQPB?=
 =?us-ascii?Q?lyA/9kuA5J0JwBlvB3Udq2pQwRnAKsKLRXDUk2FB9RGRbCAjyNsDXLo3dM0u?=
 =?us-ascii?Q?hB6HWujttrviKXgGLkuezu18fbS85KYu9WgBxiLKOA8F8yfRyxHjew3oL8nn?=
 =?us-ascii?Q?TP/oNn4j4mYh0nNQQZNmYbrxNxjISauDjoUOds9DG78C74Jh2jMsmNH79ObB?=
 =?us-ascii?Q?asUc7whcmvEmXdlzeiGdewAmhGM9gnzFqhilBbzgkHPqX/28Iz/Am5q3Z+iD?=
 =?us-ascii?Q?/Y3+yhWeb/6rtU3FV7afvNSCxaDzYF4jHVpvHf9Xv8CsHl717eep8WEF7xNw?=
 =?us-ascii?Q?fG9hOZWN6WXSdhHnqXNFi4x++NQjVBnHtsNnYE7mlHDD5GdSb2j5n8jeNpR1?=
 =?us-ascii?Q?esgEGcxs1nKSH6Fii3Xyt5e+76gQ/0m8OtO0G1qc3vGUm4EX6f/mKs1oB1I3?=
 =?us-ascii?Q?HfSc77FiyE623FKIleeLnduXqMJRBsdtSBpnDdO9b38k1MxUa8lfbM1ZgpAp?=
 =?us-ascii?Q?JQbRytCGYc8CAYqc752B6YhcfFy/xLSBYzFldCHQd1dnjzPjAej9p5Vrn+dF?=
 =?us-ascii?Q?IXTCFLuByo2EDqn3/go0Z7M7oLmXcWerm+doMyvAxZw1yvaB3uDqF2q26B/R?=
 =?us-ascii?Q?hHj+cAPHz3jG8Tv0MHz7IVS9snLMhOlNVxSw/O8szqw5sspzgSAHN+2Ub2bV?=
 =?us-ascii?Q?AQSlvJAwTBjhVqZ2J30kvpFQpsFwKReBG/GcjmoUxOIFMsxzMfZZKkpqJBsJ?=
 =?us-ascii?Q?5AoZtvaz1FEvQwcbKk83qLP31gn6Qc5xcGvWX8e/tPw4Szq4BztA97IIeK5D?=
 =?us-ascii?Q?Q9jiQsNiepssqHNxr63Yg2Qo6j/y/dYZsbMEm2UwUxfky/Ovug0xw7tZlgg8?=
 =?us-ascii?Q?SE4wihlYHmUcirZ1juZuNjNyjNthPVKEuHGV32KDQRDPk/KVPcHBu975dghK?=
 =?us-ascii?Q?ZI36xHA4MVNdvrQ6B7p5YPOQ77IMcSEt01EesnE+akSWvMaPlZoMYfqhAbrC?=
 =?us-ascii?Q?l91a+ucxu7TvTnjMMV6y0nQcy+0e8SAhjqu60rJeE9MOFsKPQUpmWABQmWuW?=
 =?us-ascii?Q?5LEsp8SQcUN+9m31FpCypGRpzxZMIIrOjJa2q25jNhyYpn1OQZ5/9lkxKX7c?=
 =?us-ascii?Q?cRA15F8ubH9YvaQTzBdLOOO9nrkHQwYSrLrS8sBDsPFV3kw07zGBmJXH1Qzf?=
 =?us-ascii?Q?gF8gu1rPESy6o+4RhujG15rm/BElbzX4qQ0t5oIo6j9M3+kYOovL5J6ZUXAb?=
 =?us-ascii?Q?ZdW7hGSTM2yZxGAx5ChuYJyJ9PLpSUzWnk/07cCAZdJKNrNIV5IP8Elw7ATS?=
 =?us-ascii?Q?aa6CUsCN87TShIzW8IoBDL3rtx3b/JB2m3iLdQoaTZV2qCNMlSxMsMdP6iHy?=
 =?us-ascii?Q?q1C2wP3FQe3ZZNfMj+8EPhwoWq7HHS+4pReK8/KDVCpA2RBS+IEcd16kYe+T?=
 =?us-ascii?Q?LO6DNt77nPRkSAF6fSI3vYfM5LZ5sDhDqRWovN0hAu2lv//8AgHjnveNh3Ux?=
 =?us-ascii?Q?HhU0xqS6gueXXoB1ONHYwhxmuBES63s9U+xFWZHqbJIIVtD+vF7OWoeiwzpD?=
 =?us-ascii?Q?L+Ja9CcCbk0qao8KQGKbc8ljtp9ey/eXmQX4DeYL1Zs4Q03Fcb5cPZZuswnX?=
 =?us-ascii?Q?QTkS+oQ6YbzLie+LZ7g1jmgGmkbZG9UI3fuCspdWeUPenHuIzWqtC+Lx7bN7?=
 =?us-ascii?Q?0mGOM3cgU+4y2sky5CZaIFL+6GlK9t9kKoR7r6DTU7+XIei5QePJX1yGYDEP?=
 =?us-ascii?Q?LHJ0QyLhSA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3e1fca-7172-4e4d-25c3-08de5f713f66
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 20:01:53.3978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wsVjJobvO/jR+sdy8FNyUKJZugz0eJRUIB5hsWPgFoUBYmREmY1bzYK8tLZCVLXL6PiouuVX+gcUX6tBgEJutw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CD2B9B4206
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:48PM +0530, Ankit Nautiyal wrote:
> Similar to the DP SST, refactor mst_stream_compute_config() to iterate
> over joiner candidates and select the minimal joiner configuration that
> satisfies the mode requirements. This prepares the logic for future changes
> that will consider DSC slice overhead.
> 
> v2:
>  - Move the check for dotclock in the new helper and check for both DSC and
>    non-DSC case. In case the check fails for non-DSC, fallback to DSC
>    configuration. (Imre)
>  - Propagate the return value from the core helper:
>    mst_stream_compute_link_for_joined_pipes(). (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 46 ++++++++++++++++-----
>  1 file changed, 35 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 55b2ccb45e43..c0d854b107b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -602,12 +602,16 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
> +	const struct drm_display_mode *adjusted_mode =
> +		&pipe_config->hw.adjusted_mode;
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
>  	int ret = 0;
>  
> +	max_dotclk *= num_joined_pipes;
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> @@ -621,7 +625,7 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>  		if (ret == -EDEADLK)
>  			return ret;
>  
> -		if (ret)
> +		if (ret || adjusted_mode->clock > max_dotclk)
>  			dsc_needed = true;
>  	}
>  
> @@ -664,6 +668,9 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>  						  pipe_config->dp_m_n.tu);
>  		if (ret)
>  			return ret;
> +
> +		if (adjusted_mode->clock > max_dotclk)
> +			return -EINVAL;
>  	}
>  
>  	if (ret)
> @@ -689,7 +696,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	int num_joined_pipes;
> -	int ret = 0;
> +	int num_pipes;
> +	int ret = -EINVAL;
>  
>  	if (pipe_config->fec_enable &&
>  	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> @@ -702,16 +710,32 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     adjusted_mode->crtc_hdisplay,
> -						     adjusted_mode->crtc_clock);
> -	if (num_joined_pipes > 1)
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> +	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
> +		if (connector->force_joined_pipes &&
> +		    num_pipes != connector->force_joined_pipes)
> +			continue;
> +
> +		num_joined_pipes = num_pipes;

No need for two variables, fixing that:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
> +
> +		if (adjusted_mode->hdisplay >
> +		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		if (num_joined_pipes > 1)
> +			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> +							    crtc->pipe);
> +
> +		ret = mst_stream_compute_link_for_joined_pipes(encoder,
> +							       pipe_config,
> +							       conn_state,
> +							       num_joined_pipes);
> +		if (!ret)
> +			break;
> +	}
>  
> -	ret = mst_stream_compute_link_for_joined_pipes(encoder,
> -						       pipe_config,
> -						       conn_state,
> -						       num_joined_pipes);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.45.2
> 
