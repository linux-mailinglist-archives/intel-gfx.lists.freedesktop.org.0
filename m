Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNcpMmyu8GkaXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A03648562C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49E410ECCF;
	Tue, 28 Apr 2026 12:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aevpRMTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 711B610ECE7;
 Tue, 28 Apr 2026 12:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380970; x=1808916970;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=vf5XEUbcvj917M39v1kkH6UUd4vuNDpp76sH02ZvUXI=;
 b=aevpRMTLREvO2QUZ+1mrxVulsncadRMTPTnam/Mo1mL55csfd/8TNEWI
 SNVfoJ02R5IXUau/eE4geSJXHDGVMnb8gCI7hkrPAr9FhLHN8BhjmNhIt
 HXM3Ksi66f9S2ZXjdF87iyLI/agjZBZxESCQu8ss3sHw3dJHAL5amowzb
 Fh+cZ04N+MZ/X7xZWu+hOQoUmgE6dnVW4YlED8sEwMh1tZ3u0QWHJe8ha
 1njSUN2NypW9w3X7QwZnpwy8hSbvtQ7fQRUXLohK+dF4k1vlCsUruHyqa
 VJpVhqDpbhKZ6n6O4kHeBQNbEBwaRy81UebGZcfqpqtb/XsMzDTpIgWGP w==;
X-CSE-ConnectionGUID: QTNPcSyVR02eMWSpgZ6z3g==
X-CSE-MsgGUID: LJQJcpRfQk6GffYRI5SxJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883746"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883746"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:10 -0700
X-CSE-ConnectionGUID: 1PQWHVMIQduotERlm2HFLA==
X-CSE-MsgGUID: excA2GSsR1uQAvqmdufjjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795287"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:09 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YXObM8aRscWgi/u+XokhrrYW5Tdn/tnpi4veFJaxRdtW3nqeOXcrrY0kJr3TGyi47gZSq5GQk1IujO6Qxg9hRLVqEjBli1XehRb9nF7/sTxLPPRznUjXS3zeJikpCd+mk3uyYS6HeLZhkg/1MWmRfSCfBC432avJRQA2YDeKIccr5rvjnUwM9bnieHilXLSaP9b7u2ai0VLz3ZejFy0S60thd4UomW6QnYFViNYSujK+YwJdpYzFC5a+Z6nzxPB4I+UxDijpdrK4A+eeT1gh7pHNU+IeVIXEKUxZv6Xc+TcpV874eiLsVwBLdUw/Wfs+oOv933STxRwpw4x5Sb2zRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M3qpjjEHsGjNHdpL3RfYwOdU1KXP606ep0SyTsFfn6M=;
 b=FHAdUKdDoFlYd3v2dwqe2Dfh/F715kv/SUdftnMlkXc9k5n1SvAA8rZBTeKmcwtCyXD2QyabdKQ/kEEOcoXjbIhswLLryDXZWC3IoClZrtX31p+HG/oVIWnyec3FvimOVL+BF84qqLRZDW/nQuWB8CnZeUj+7JA1VlCCTwk6iymR87i0aARYkfXL+MV+YZ4szwscejNbMO1BnjNIIKRcqyFMOr4DfAR5588z+kxInpOhQrA6ffh1sTaww60Mfk4OgBhd3ilkceqcl0wt1LnBKh+PXrwHCMm6hdwwl9XgnlGMBJz2lA1UzqgBzN7SifuiI1m8cqJz0Czlx4NCLb2zcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 106/108] drm/i915/kunit: DP link: add baseline fixed table
 reference test
Date: Tue, 28 Apr 2026 15:52:27 +0300
Message-ID: <20260428125233.1664668-107-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: cd7a6494-8241-4778-7a87-08dea5256fad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: RDChuLqMKo1HJaO0O2PPbayj5XL8/EfENC4VHBRBvv4t4YctnWqqrZYCi99r6d0nS8prUK/LJCDjKg2rn1N1J/jjl974w9gktY8ivFCtJPj0C8b71VBCiJ7wJ6dmi8PdlMQbpFCC5RoBZ4+l6vUxGqxna8uamWwwYoAq8IRxDXtsfArBmWODgFAYL3mP3hWi0q+MwMIOpEluAS5pVjuEH1yYq8WMKvT9qNqLlL24c4pHAyRSPYFIxWvzLp7rLZtl96KX06cZSm1x5fbi9ii7BZPDy304PRTjcTBl1Ds9InO1v252QurywQDbMaglZ4oezhZd8wY5Ydwfbnwzl5yhylaIFDxAPRIrhfqwOvu7iZFUSCRFk70QRz8s0FCeOwGPoauaVWbzWQ0iNidZ0/dldpgxOXAdt6mHVQt06/xqAyeFWtH1C1xhJh2qpV9vNZSZIeEqPPxwJLY7vE5zdF+n61iLEtu5hrsoO0SxvA8PdLvLWrFzRd49eB8LvhDpqaaIjh4T6EWklFt9o9oc+uM1UbUX9UVf2B5QtIKjUP62k+NiKtemeXs7UncRpIrb8oOXrpqlzjNpppKAAzx7FSU27WbeX8l25rwHtrjLXMG3O1T0Uvg54UQ61bvR/gLge3KhoUwDUUknCy4Wv5rOf5t2NZfDnMxx0ZsdURKtn7ihTO33OPCMd4oWm3lGj26r+zsLX2EjH6FAbAGZFJ6soOiofrmhLqbDSIDejSa2r5q4RK4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kEqIa6gKljmTeqoQAzmiKjVccjtjXK0FRdj4KNNGLGMIYhjZ8MzSoRfjFP3u?=
 =?us-ascii?Q?C+aKhtlzqYU0TsE3Gw5AbJFQl8yrR/5tMIY2deN0F3N9pRuuI0nWtWqPdtn0?=
 =?us-ascii?Q?FqZbjD6kJPkExiR3DszYw4hw+2/LbGvSyjiUtH8VmDYN0eitzsrYgdGSxzG/?=
 =?us-ascii?Q?kqcQWUXkTuX1itW56zs/Lt61pVTo85YQcQG9BSoz6HDVp1rAzgERVEqMGRBM?=
 =?us-ascii?Q?WIY+u+hiWtai3H+1BF/n3IK7w8R9F5Suxj6LfSjFu2050eYqWhmsmYiESUai?=
 =?us-ascii?Q?p4SoDPemivBu+7eoHTkD5qiHkt2EIWNlD6/frfh2MAH/KDC68rPH4TWu9xev?=
 =?us-ascii?Q?VSz9kuocFUT3Op4TWJsNQkaY4SItfhulZIzrXpuShaS0bN2e1kMgSLX6t4r3?=
 =?us-ascii?Q?4N9mcUw6aGscs3NT5Xr8A8s8BLqvBzNLE6vLkuYf2sOoNPmvXxC7E9ZAu7mj?=
 =?us-ascii?Q?8rBOcL8Y5rW2jTRMWUFnH7533rf0JpomNPn4gQ6KNpy0vQPzWm37TdoJBADj?=
 =?us-ascii?Q?Ert0pivRIJaKYDpEqG4PeuqCFKQ5UeVH4C80mLm+wGzgz3Z89uyfurs/T2MZ?=
 =?us-ascii?Q?brVDGVebnAzocOo8uhtEn/VGoY/+6FNlzgb0UQdRZfsRHbnFRR4lRW6m1A9Z?=
 =?us-ascii?Q?9FZtdAuo8pWuiieQW0oj3pQ6rpOP+uoo5c59FUwuW5BM79uIzxtZdm2RIjcD?=
 =?us-ascii?Q?TE8hK3iQzQ5Uhut05s59xLRlOfhvk9oTB2cCfqkrTHt78GXd2lfapyKRFDp5?=
 =?us-ascii?Q?r3UX4yJb/Y9lYz/EnEhLwklofZ5l72bIm5YlP6sRLTXzyzKe3VlW3KWlt5HF?=
 =?us-ascii?Q?saiY8jUDo6j/FPDdCxyeZ1tc9DNmPrg4MhxkAtLh3XR195aqpLO93aOzXE23?=
 =?us-ascii?Q?s9fQNdoSS2FVNQaj5j/nuHCCP8VCwW7VWpxoxBWN8ezhBEsIFIvaAYv8ifgo?=
 =?us-ascii?Q?d9lXA5We/l8lwS0dhr3qezdgUCKq8WlfbMyLsz+xar/rNfHWF5oiv4E+GqGd?=
 =?us-ascii?Q?/l3WGEeGy92CUZo6dsAb2Ad6DFcDKyGv3qucTKhOcCg9l2/mgNzGpjuGX/ug?=
 =?us-ascii?Q?pY17TKBc8QkuBH69zYZu6MpDBGYCSYMhqxzAavlsxOLWA5NOrO2FP+JoVecr?=
 =?us-ascii?Q?nGBTKymMatTrN093YVLkVyrqrIF7n0Wr9JPxtLK/RyyprctVJuGpFiNJ7dDC?=
 =?us-ascii?Q?B5yFEJAx/GFT39a/fgMe2hWzotP/XMgKzDcnUCNDHh27e/x0Oqj3cGlzg3In?=
 =?us-ascii?Q?qpP+fryhElTtBb339m5JBjjYq9LJ+PZgGFJLwdBDBYrFhpVGpEbG1NkABkv7?=
 =?us-ascii?Q?/fmA+uMtmkxbJFfKJA1caHRcZdtdQdRhs45O1O1fkNaqAuOhqm75qcOFkGgy?=
 =?us-ascii?Q?nmLun2ca7N1ma0fCxuMHj8BfMwlikIQlTWsxVp8iyoht0khKQoF1PMYvVkje?=
 =?us-ascii?Q?GK/5+6KGSTXeuLwHKdMYccFYeJllB9frR4zM1rj+OKpPzJu9NsVyMWfBDd0s?=
 =?us-ascii?Q?wiPNp0s2KJxGkIYM1iLFKuuBoz0vtcItnPszo+GoJ3f4y7zyEx+87ubUiohA?=
 =?us-ascii?Q?+JkUZG2XRv9GY60FZ2bhMw4+v1qiADFhzRaqcetIgoEYse5i+FWNwGTQLBZO?=
 =?us-ascii?Q?n6wVwTtNXhX26J3U+SYnyG4s4obSlCq4NbhhSCCJVvJLSmz4dPMDGo/huChX?=
 =?us-ascii?Q?2Tjd4+loiD/D7CajXxiTQlZ2PYGARoFD4ftRU98HwHxSmt/cB6FIArkt/2wZ?=
 =?us-ascii?Q?1uzBEt2VZQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: aM/pFWhlOvRmVMA0JGlo2inkzZRxdyyCjWo7nKXG2q32y8B30ykOcMv0WJZLPvY8hhkvL9kVU6DPZi9YjyuCgFpfnI9W9WdG/e1wcYF3BEi7K3cyEqjObiNy56y2uxe8QetROwu23Adbu0tG8b0ZDiQRtHdPwLEqUDVYjD+21ha+fcjf4mqhjKAIkFZ8itZuc1kKfr0YktxLRQ30yy42jjYBTF9ygtwOJR/gdprlEyt54HS5STdTpTAHQWUXWlsJ7nqgp105RI61ckVyfm132E4I+EpqNea6v169VOdIz+JMVFkXqaaiND4nfC3wNlAUpELsZjAnYW7BbAd+Be+D+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd7a6494-8241-4778-7a87-08dea5256fad
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:34.1299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q3aT1fTO7ppJaNdsFgjh2v3JO+DUabo625K2amy3PuZvK+r6Ue6ADf//3ut0XXoPm8IU8lpYOfeUhYm8cBN57g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 7A03648562C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add a simple baseline test for DP link caps iteration using a fixed
standard DP configuration table. This provides a minimal validity check,
independent of more complex test setups, verifying the iterator returns
expected configurations in ascending and descending order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 238 ++++++++++++++++++
 1 file changed, 238 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 15179b4d08d1a..e6feb68cb912f 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -7,6 +7,7 @@
 
 #include <linux/compiler.h>
 #include <linux/device.h>
+#include <linux/log2.h>
 #include <linux/prandom.h>
 #include <linux/random.h>
 
@@ -20,6 +21,34 @@
 #include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 
+#define test_for_each_dp_link_config_idx(__test_ctx, __config_order, __config_mask, \
+					 __config, __config_idx) \
+	for_each_dp_link_config_idx_iter((__test_ctx)->dev.dp.link.caps, \
+					 (__test_ctx)->link_caps_ops->get_config_by_pos, \
+					 (__config_order), (__config_mask), (__config), (__config_idx))
+
+#define test_for_each_dp_link_config(__test_ctx, __config_order, __config_mask, __config) \
+	test_for_each_dp_link_config_idx((__test_ctx), (__config_order), (__config_mask), \
+					 (__config), NULL)
+
+#define LINK_TEST_NUM_LANE_CONFIGS(__max_lane_count) \
+	(ilog2(__max_lane_count) + 1)
+
+#define LINK_TEST_NUM_CONFIGS(__num_rates, __max_lane_count) \
+	((__num_rates) * LINK_TEST_NUM_LANE_CONFIGS(__max_lane_count))
+
+#define LINK_TEST_MAX_LANE_COUNT		((u32)4)
+#define LINK_TEST_MAX_CONFIGS			LINK_TEST_NUM_CONFIGS(DP_MAX_SUPPORTED_RATES, \
+								      LINK_TEST_MAX_LANE_COUNT)
+
+#define LINK_TEST_NUM_RANDOM_ITERATIONS		50
+
+enum test_config_order_key {
+	TEST_CONFIG_ORDER_KEY_BW,
+	TEST_CONFIG_ORDER_KEY_RATE_LANE,
+	TEST_CONFIG_ORDER_KEY_LANE_RATE,
+};
+
 struct test_ctx {
 	struct {
 		struct intel_display display;
@@ -38,7 +67,216 @@ struct test_ctx {
 	struct rnd_state rnd;
 };
 
+struct test_config_order {
+	enum test_config_order_key key;
+	enum intel_dp_link_caps_config_order_direction dir;
+};
+
+struct link_rate_set {
+	const int *entries;
+	int size;
+};
+
+struct link_config_set {
+	struct intel_dp_link_config entries[LINK_TEST_MAX_CONFIGS];
+	int size;
+};
+
+static const int standard_dp_link_rates[] = {
+	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
+};
+
+#define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
+
+static const struct link_config_set standard_dp_link_configs[] = {
+	[TEST_CONFIG_ORDER_KEY_BW] = {                        /* MBps    PBN    */
+		.entries = {
+			{ .rate =  162000, .lane_count = 1 }, /*  162.0    3.00 */
+			{ .rate =  270000, .lane_count = 1 }, /*  270.0    5.00 */
+			{ .rate =  162000, .lane_count = 2 }, /*  324.0    6.00 */
+			{ .rate =  270000, .lane_count = 2 }, /*  540.0   10.00 */
+			{ .rate =  540000, .lane_count = 1 }, /*  540.0   10.00 */
+			{ .rate =  162000, .lane_count = 4 }, /*  648.0   12.00 */
+			{ .rate =  810000, .lane_count = 1 }, /*  810.0   15.00 */
+			{ .rate =  270000, .lane_count = 4 }, /* 1080.0   20.00 */
+			{ .rate =  540000, .lane_count = 2 }, /* 1080.0   20.00 */
+			{ .rate = 1000000, .lane_count = 1 }, /* 1208.9   22.39 */
+			{ .rate =  810000, .lane_count = 2 }, /* 1620.0   30.00 */
+			{ .rate = 1350000, .lane_count = 1 }, /* 1632.0   30.22 */
+			{ .rate =  540000, .lane_count = 4 }, /* 2160.0   40.00 */
+			{ .rate = 1000000, .lane_count = 2 }, /* 2417.8   44.77 */
+			{ .rate = 2000000, .lane_count = 1 }, /* 2417.8   44.77 */
+			{ .rate =  810000, .lane_count = 4 }, /* 3240.0   60.00 */
+			{ .rate = 1350000, .lane_count = 2 }, /* 3264.0   60.44 */
+			{ .rate = 1000000, .lane_count = 4 }, /* 4835.6   89.55 */
+			{ .rate = 2000000, .lane_count = 2 }, /* 4835.6   89.55 */
+			{ .rate = 1350000, .lane_count = 4 }, /* 6527.9  120.89 */
+			{ .rate = 2000000, .lane_count = 4 }, /* 9671.1  179.09 */
+		},
+		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
+					      LINK_TEST_MAX_LANE_COUNT),
+	},
+	[TEST_CONFIG_ORDER_KEY_RATE_LANE] = {
+		.entries = {
+			{ .rate = 162000,  .lane_count = 1 },
+			{ .rate = 162000,  .lane_count = 2 },
+			{ .rate = 162000,  .lane_count = 4 },
+
+			{ .rate = 270000,  .lane_count = 1 },
+			{ .rate = 270000,  .lane_count = 2 },
+			{ .rate = 270000,  .lane_count = 4 },
+
+			{ .rate = 540000,  .lane_count = 1 },
+			{ .rate = 540000,  .lane_count = 2 },
+			{ .rate = 540000,  .lane_count = 4 },
+
+			{ .rate = 810000,  .lane_count = 1 },
+			{ .rate = 810000,  .lane_count = 2 },
+			{ .rate = 810000,  .lane_count = 4 },
+
+			{ .rate = 1000000, .lane_count = 1 },
+			{ .rate = 1000000, .lane_count = 2 },
+			{ .rate = 1000000, .lane_count = 4 },
+
+			{ .rate = 1350000, .lane_count = 1 },
+			{ .rate = 1350000, .lane_count = 2 },
+			{ .rate = 1350000, .lane_count = 4 },
+
+			{ .rate = 2000000, .lane_count = 1 },
+			{ .rate = 2000000, .lane_count = 2 },
+			{ .rate = 2000000, .lane_count = 4 },
+		},
+		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
+					      LINK_TEST_MAX_LANE_COUNT),
+	},
+	[TEST_CONFIG_ORDER_KEY_LANE_RATE] = {
+		.entries = {
+			{ .rate = 162000,  .lane_count = 1 },
+			{ .rate = 270000,  .lane_count = 1 },
+			{ .rate = 540000,  .lane_count = 1 },
+			{ .rate = 810000,  .lane_count = 1 },
+			{ .rate = 1000000, .lane_count = 1 },
+			{ .rate = 1350000, .lane_count = 1 },
+			{ .rate = 2000000, .lane_count = 1 },
+
+			{ .rate = 162000,  .lane_count = 2 },
+			{ .rate = 270000,  .lane_count = 2 },
+			{ .rate = 540000,  .lane_count = 2 },
+			{ .rate = 810000,  .lane_count = 2 },
+			{ .rate = 1000000, .lane_count = 2 },
+			{ .rate = 1350000, .lane_count = 2 },
+			{ .rate = 2000000, .lane_count = 2 },
+
+			{ .rate = 162000,  .lane_count = 4 },
+			{ .rate = 270000,  .lane_count = 4 },
+			{ .rate = 540000,  .lane_count = 4 },
+			{ .rate = 810000,  .lane_count = 4 },
+			{ .rate = 1000000, .lane_count = 4 },
+			{ .rate = 1350000, .lane_count = 4 },
+			{ .rate = 2000000, .lane_count = 4 },
+		},
+		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
+					      LINK_TEST_MAX_LANE_COUNT),
+	},
+};
+
+static bool link_configs_match(const struct intel_dp_link_config *a,
+			       const struct intel_dp_link_config *b)
+{
+	return a->rate == b->rate && a->lane_count == b->lane_count;
+}
+
+static u32 get_all_config_mask(void)
+{
+	return GENMASK_U32(LINK_TEST_MAX_CONFIGS - 1, 0);
+}
+
+static const struct intel_dp_link_caps_config_order config_orders[] = {
+	{
+		.key = INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC,
+	}, {
+		.key = INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC,
+	}, {
+		.key = INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC,
+	}, {
+		.key = INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC,
+	}
+};
+
+static enum test_config_order_key
+link_caps_to_test_config_order_key(struct kunit *test, enum intel_dp_link_caps_config_order_key key)
+{
+	switch (key) {
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
+		return TEST_CONFIG_ORDER_KEY_BW;
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE:
+		return TEST_CONFIG_ORDER_KEY_RATE_LANE;
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing link caps order key: %d\n", key);
+	}
+}
+
+static const struct link_config_set *
+link_caps_config_order_key_to_set(struct kunit *test, enum intel_dp_link_caps_config_order_key key)
+{
+	enum test_config_order_key test_order_key =
+		link_caps_to_test_config_order_key(test, key);
+
+	return &standard_dp_link_configs[test_order_key];
+}
+
+/*
+ * TEST: Baseline with fixed reference table
+ * -----------------------------------------
+ * Verify the link_caps config iterator using fixed standard DP config tables.
+ */
+static void baseline_test_for_order(struct kunit *test,
+				    struct intel_dp_link_caps *link_caps,
+				    struct intel_dp_link_caps_config_order config_order)
+{
+	struct test_ctx *ctx = test->priv;
+	const struct link_config_set *config_set =
+		link_caps_config_order_key_to_set(test, config_order.key);
+	struct intel_dp_link_config iter_config;
+	int pos = 0;
+
+	test_for_each_dp_link_config(ctx, config_order, get_all_config_mask(), &iter_config) {
+		int idx = pos;
+
+		if (config_order.dir == INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC)
+			idx = config_set->size - idx - 1;
+
+		KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
+							   &config_set->entries[idx]));
+
+		pos++;
+	}
+}
+
+static void intel_dp_link_caps_test_baseline(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	int i;
+
+	ops->update(link_caps,
+		    standard_dp_link_rates, LINK_TEST_NUM_STANDARD_RATES,
+		    LINK_TEST_MAX_LANE_COUNT,
+		    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	for (i = 0; i < ARRAY_SIZE(config_orders); i++)
+		baseline_test_for_order(test, link_caps, config_orders[i]);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
+	KUNIT_CASE(intel_dp_link_caps_test_baseline),
+
 	{}
 };
 
-- 
2.49.1

