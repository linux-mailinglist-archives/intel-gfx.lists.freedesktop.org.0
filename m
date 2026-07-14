Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZC2ANmxVVmpG3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 793417566C0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AXwx2Kh6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D11DB10E96C;
	Tue, 14 Jul 2026 15:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8642810E96C;
 Tue, 14 Jul 2026 15:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042857; x=1815578857;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Tb+SwsmBPARMrU3Z1DXTKkh2tYwgMGxww/4EWX0wl2I=;
 b=AXwx2Kh6uJNRlY0+6SI37luV905MHxRP4kax3QMJm63TOfALy2HYmNdn
 P3qVBJeVPnq9ubeEFqe+qyFg7kwoMWiGcbiN9+KLAWAtBf8ZayJOc6tZX
 6ej7/mJ/Af9/2l5HkdD1n9EUDm5yAr6mFGAZY1YggvKdbLt4onK3bgapR
 oQU9FdewE6bO6flo+grdX7VnlesRZ20HECJiT8gkkp0i+FdAK9B/qawY2
 /5ZZgV0h5XVMMTxx/LKE5A0DWplG2xAFHgKtV9chC1rg78ImW4cJTesDp
 Q48ueE5iTbMZfXLayI9WKjGwYmljYkY7SASz685GJ1kfrJuOlsE5oI98s g==;
X-CSE-ConnectionGUID: Rgg2nzmJTMSNhVpgjqjNxQ==
X-CSE-MsgGUID: i0ogBs8JTUyIzdEYjIv2Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="96033056"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="96033056"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:37 -0700
X-CSE-ConnectionGUID: CS8puFf+QKqBAVKjd+zh3Q==
X-CSE-MsgGUID: wkS5ehUaSxOG+BnTSgszfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="251478749"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:36 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hKyDiP+SqzfFSBEt/u8aDy7ORSLft9QRKmrKW62P4NGqx6dBwkdBV3a/jEfINBGpp4kP0bv/jpEihGCdHRA79S1wlp6pV7N1sQcY0jRxcUbKs8DQilOJBJaoGuzZ94J8wzrf1wOGostJbhyKoXyRtg1jjHvfe4pRUWTDPJJvvhDmw/EaTeq2GvGRUIj9CDiRqqAN4dV7er/mgJe9WGr8Pl86jdaLSWbAk4p6b5BcxPt9lcIh4MphtPzyh3QKmT0vdsDxe83meiZhpnwlV4PYbpSp/AIRAXsXclH1IeyM9h2O7Xlc9KCTGrR9++R3hezKH18R1jeOAysuLeViHD7V1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVWzVB05uGFmEUnf06YBgAT29R9oiggfcGen4TKh+/k=;
 b=M9lre7avAGkNlBoF6dQjXBmQREOJPEY27lzdZHf/CbtZaDRTTc9pO5vM+gPt0wCEjDZq7wOrTQZqRxh+FbHTHSelTKsMbN8PWNOhtr08rSAKF3yAwLAQVVC/IJE1QJTaixTLGFLPRMjS78olPbt9d8zYkd+UWwONV3vJgt+nA3n6lzP7YnqvKrQxJ3B1oueFezacGayUbkaOn1l3xjqmovxbuCS9UB2rHTuCSkHz6fEDXNaB69HjcmDSP2HDobfTGf5W9UR7Jk/cnWLdgV6tlf9a51RTaaAqpbnQS7NTM8zvxXZatC7vRno2YiNVocX2Fx0tKNUQZRgcvrnKGOg93Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DSWPR11MB9956.namprd11.prod.outlook.com (2603:10b6:8:3a4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Tue, 14 Jul
 2026 15:27:34 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 3/6] drm/i915/dp: Enable SST fallback between UHBR and
 non-UHBR rates
Date: Tue, 14 Jul 2026 18:26:57 +0300
Message-ID: <20260714152700.555527-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260714152700.555527-1-imre.deak@intel.com>
References: <20260714152700.555527-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DSWPR11MB9956:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a5f4622-8c79-4a6f-3beb-08dee1bc6d9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|18002099003|22082099003|11063799006|56012099006|3023799007|6133799003;
X-Microsoft-Antispam-Message-Info: Xz/2u5KUaLLhVemQkmB1LA7DUlXDZcn1y6I5z75zA1uJnDPWdgfPMsr7DQ0+IUIqMT3IFAcY6eOd1Youu0VrCrBhkTn5VolvBK/eWs/jwGiklAR/Gsoh29VsLcXqFxL7q6zkLrvUNQZHw5rqZm2iEi1KCFgfm+EWbId9m25ot8NMrJltuF+FSHF9tmP0OvZzRg2Tg3YW9BW+hrrzVM3JMz5hAOk+rGI2X8xHkjINx6+hYG8wEdkb7OuIl5tuLmcoxG9seCB8/a1V5xmaZv/M0bUnOkjGLOvEcavLeGK5w0lYwi+M/hk0rnAbD3Rl+HslsK3U0019bk2fjeyIDTsJFgaF78oHg7Gz96pWL4p7XUAuhTsSY1FUHtvn/ZrG0cVUTWXxJgzBPFkakWMfR1/4vIvoRz13824CWb6r2/tHKLCTE+Qlb0+ZR21vAzyDR09AB5x2jazVuX1HTfvaEf6TQceOWAeasxjtxYF/dmTTO2q/TOv2af3VbDMNJ3DigcEXpKfmogXy9yc6xauMN6UgFozSLIMJRkm/XzxD22QLeczilbsfnUdMAU8gPnkHuat7EoflZ534JzV/3UcuHrQxgcxXk/X/Q8XFo2oSQud1pSfi1IAr8aAbcAazDxUMSVKTU/4oAbep7MIhdybf/h6GBtP5PQs3UJToYjdrNTVwSoE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(18002099003)(22082099003)(11063799006)(56012099006)(3023799007)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hKSVEuM2tyV3lh0Dd4/vMwt8I8DyQKRnapc8atV0ioqDdd9jV33tY3tmfNDn?=
 =?us-ascii?Q?nY7Eg36nzC56ng00e6ySpxKqlCJZg0ynCOuEZQQOpuYvYgGT/yQOq8bisG6j?=
 =?us-ascii?Q?efhmvBIGjaxot/Ml1l4d5AypM2A4+f//oGgtaYC7jswf791hRQJ4EPlid5C1?=
 =?us-ascii?Q?ysFuWztD2YH8cdnN9p9m12rWtYlS8hHFANTKxL+Ux6IMMRllKXnjPQOENc5S?=
 =?us-ascii?Q?0Mp07KGuIroqUxp0/7+pTGguic3UZR4LwiH+8u4Ys7xRhTTlYDGpdqqRD6pg?=
 =?us-ascii?Q?JCrGrHAJb6Qx3B8PCxBHhngKgZn+fTIWDV9ek8c/FA6vsOi2TjyFqfYMXT3X?=
 =?us-ascii?Q?/Y9lVulaK6pzJZw9rrmc9N56yIbfA1pVyLfpWJJ/ZBWpn86Jdbxz32vgFMaE?=
 =?us-ascii?Q?k0ceB00eSoJc2RQF3fAygjTxKoYXnaFg2oN+dWjEp55DlZEy9HD7cGPVzcWN?=
 =?us-ascii?Q?lCvNkc8OGI8dAKMP2KlZyz+pi73RKcYxFpbD0LD9CthoubhdmNzueJEOjf67?=
 =?us-ascii?Q?GqFexdqi8MDM7nCk0fmMAOxIvK01OKJO38ZysALNub2dAp6/aoP1LfmgYTYp?=
 =?us-ascii?Q?1N2s13WVvWBT58nmfQpiCcvNvwOeLJdWs0FP7FH98KjBP6L6/DkOoO2VgjKr?=
 =?us-ascii?Q?Bbzu1TMGd1xFuaYGcF/dMleTU5ruytn7JYZfdDw+dFnVqYdhPaVO2ZGmnqLg?=
 =?us-ascii?Q?qUGd/PMdWcEVBuDIwWwtLXSA1oM0JKN0dAqIyY30uXun1UFO/42kbtLIJL0O?=
 =?us-ascii?Q?0jiUwkWDK/DCQf3hkajplEHcD5xnkpvWxjHrn7wugosqPeUscKvtii1N75hV?=
 =?us-ascii?Q?3FiF1DmIw7yuBV+HYl+SwQjU1ll9asNd0xJE1/ZspfIuHxSJhHgR8AMAc0lj?=
 =?us-ascii?Q?kxbkLCGExgYxkBDn2PANJFxAPIZRL6/O0nmXGkfNP1M+hc4j9YyyxcYht3Yw?=
 =?us-ascii?Q?n/JXDKGXBp0V0vQmoYxDzEsT86n5C8Grrgh0siGNGKU7homhKPwSPX4RFNUK?=
 =?us-ascii?Q?OKXpHI2IZb8C4odUqjICSUdPgE7QOUlV6pl0874NfeJCvnaXuXFIi3N3Bhqn?=
 =?us-ascii?Q?Z/sjduRVjymyh3heqNG/vrBr3yOSDlo6VelkXTU6z8cBP17heEgFeqwUV1GZ?=
 =?us-ascii?Q?ch2BteeUvJxfmp3xHYta8EZzRfmXqvhsKSYdYMUOpqd2SVr6PotE4mkvwz5D?=
 =?us-ascii?Q?UOHKcG0FPjebkX507aKj8gQoOxV/KB1nwneEFV2STwnzcaDH7vGef817yt0/?=
 =?us-ascii?Q?eohpyk83hquVcEpFxrdE/Xj3zt0o1Y8iSKjN5sx/MXa7hPPE1GFMAhamDFhI?=
 =?us-ascii?Q?TqWxu57Bd/KFmVaBUTkGGTKGV//vnDJJsi4cKCjyRr8EXRXLNTQNB44oV92m?=
 =?us-ascii?Q?taC9h0yutqICIFGHtZGX2ltyvOI2Mhy/ptkIGMoa/eD5xohTG8D/4wSFApGD?=
 =?us-ascii?Q?0Ct3OGfB3LH5791dBu1qatpWmIkIixVd8Gzpf/DQGsbgwQeUefY4y1bCGRmS?=
 =?us-ascii?Q?IC2X/Gamk1ZsEkgBoIaDwyVjtbl801eBvbNpKS49GaazApLvZ2T6I7fvhiVb?=
 =?us-ascii?Q?Eu/FvBtYZR3OIzZ3FMoXHnJYHeexwqEmQHi+Gdp+ks8T18xOSj9i8eItV7Tk?=
 =?us-ascii?Q?yvEb6cRYOyKaqc/Jgj3nYiA+yf3lghZzvqb6O8osy3xppNpgslb6+IpKIj/k?=
 =?us-ascii?Q?l5FowRjZth93DQMQ0Vs/ZNyHAcioXsGM+fyJ6mbElNT76gEWTvf3XAW93ay5?=
 =?us-ascii?Q?hOK9djPNDQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: Kz84q9o4W+ZtG5wDT0J+fs6mYHTRE/DhwpCPtmUYm8ciaLP4IMDPQoUdwwcsK/o831n/9WfgKBl2kYPEbRyjamcEnalGDHAYev+DMlYmiBm/yqcrdZ8ppSJTwIasnD3WW8EZsAwECOdpqi9+gUeUzrJiURA2ouZqi19AdRxZa3LezqdpAyba7BpS+lHFvNBP0n2sItd0JsZJTEZ+fuQxx9AMqTVmlwp4mZKwzSFgJS4NMfiCSLhOwT10Q+QkKKkw7m8o06MO2aZKiusBmuk1uGPUNmOl/huNJxv/YKfHAJv4uiWtFhXH2DUIdwDYdf7SNjHj5dzgQ+1str89xC15iA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a5f4622-8c79-4a6f-3beb-08dee1bc6d9f
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:34.4125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qaaia7Y/kELGiEivC+J1AP7TiB9KHbmfESjtMw0wXee1wb9KVY8Kq5UU8ShCwBNqkc7M6RmiquPzdeWH0tdzTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9956
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 793417566C0

Enable link training fallback between UHBR and non-UHBR link rates on DP
SST links. This was disabled so far to preserve the fallback behavior.
There isn't a known issue related to such a fallback and DP MST has been
using this for a while already. Also, enabling UHBR rates over
Thunderbolt tunnels in a follow-up change, which at least on some links
supports only 4 lanes and not 1 or 2 lanes on UHBR, makes a
UHBR->non-UHBR fallback scenario more likely.

At the same time align the corresponding link training fallback kunit
test, allowing a UHBR <-> non-UHBR fallback there as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c |  5 -----
 .../drm/i915/display/tests/intel_dp_link_test.c   | 15 +++------------
 2 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index fa55664c9d98e..cb92cff906146 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1874,11 +1874,6 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 			continue;
 		}
 
-		if (!is_mst &&
-		    drm_dp_is_uhbr_rate(config.rate) !=
-		    drm_dp_is_uhbr_rate(old_config.rate))
-			continue;
-
 		*new_link_rate = config.rate;
 		*new_lane_count = config.lane_count;
 		new_found = true;
diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index e1c356ba11b59..776d93f333851 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -1199,11 +1199,6 @@ get_fallback_configs_for_output_type(struct kunit *test,
 	}
 }
 
-static bool output_type_allows_uhbr_fallback(enum intel_output_type output_type)
-{
-	return output_type == INTEL_OUTPUT_DP_MST;
-}
-
 static void assert_config_is_supported(const struct test_config_table *expected_table,
 				       const struct intel_dp_link_config *config)
 {
@@ -1230,14 +1225,10 @@ static bool get_fallback_config(const struct test_config_table *expected_table,
 		const struct intel_dp_link_config *config =
 			&config_set->entries[i];
 
-		if (output_type_allows_uhbr_fallback(output_type) ||
-		    (drm_dp_is_uhbr_rate(target_config->rate) ==
-		     drm_dp_is_uhbr_rate(config->rate))) {
-			assert_config_is_supported(expected_table, config);
-			*fallback_config = *config;
+		assert_config_is_supported(expected_table, config);
+		*fallback_config = *config;
 
-			return true;
-		}
+		return true;
 	}
 
 	return false;
-- 
2.49.1

