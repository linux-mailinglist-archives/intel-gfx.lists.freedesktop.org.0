Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC71A9F26B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7648B10E51C;
	Mon, 28 Apr 2025 13:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mPFDDArj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3154410E518;
 Mon, 28 Apr 2025 13:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847122; x=1777383122;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=KamWegthbhE6zXXqUf64sPKWxo0xpuzhgU7OBU94lSg=;
 b=mPFDDArjsgVLXAwsRIK0ywrFb7jh0XvqbfVPV2hCD5tTwu62miGYLnIn
 lPDySzljmxPA/IUkQuRwYSXwdgXptgacyB6yo7/dSfZJ1yauB6GPIHW12
 /SJplcJiQ0BMPhhWpbg8uGZKw1hR8OIEN5HEiYFFBOpvMznwnJlEBU7j7
 PmZtWlD2QbnI8cua4IIeG2dp9vqRx/khhjzUcmvnb319ubaor3p68unRk
 hsttgoFbuzPOgnby9tYSdQ9pI3Rhh8E3qVEfSspao7Te1djE0EL8YGGaJ
 T79II6w7szTpUElI7BsZICsqH8uCUbiT4T3C6cOcBpbWrWbqpvoHEtVB3 g==;
X-CSE-ConnectionGUID: dNCcvoE4SRGquwcMtYlMzg==
X-CSE-MsgGUID: BD1rgy2nQbWpxKs6pmAFbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58423152"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58423152"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:32:02 -0700
X-CSE-ConnectionGUID: XFc4kqQiSoOjXJ73QvI1rw==
X-CSE-MsgGUID: alln7L0GQtS32cRJ1kQLaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134491036"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:32:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:32:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:32:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:32:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OZ5h3jhsEUvvbskmVTpkd+SWeN0RQeLg4nqeJT37nGv3bUhHmGfrbqiMLGCFjyUKz+BmEIHMbhkutSfgkZzSlQy5xz3o6mJcYdXurLQa/61252n8eo/CVCX+5hKQXrdmE5sRzELBVm/h5OjmA86rL4d183cpl7vDcgpm1CZAYsmNIUhxJvLj6law3/VM8d+Xb6PVjYz2iFLiJdoG5gvRzL/SqbehG7ekENfqmL3Xix3CRyD+x2prML1gFtvm7TBCMfNg9zPrekCHTPFdw3q/TGtE6jmmvqzHe1YVVkwW72zj++KlQaOkD/i6o17dXchJMub98jgNSBt8lZudw4rYnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T82azOS3ME5Iyb3s+3Zj+q6/CRPlt1EfCijWwQgaIgQ=;
 b=Asn/mWibeHRnhjoCh49N4JPgMi4JHIspbb6QpVV5IpDuvvCBFgQay6N/7KIUJHD0q9JHHgTR4OxN4nq5TiTZVp0Pfozw60+BpOP2QTnt/CJ5DVBQ7COHYzzGaqykY93SLNd9xjMrHGr3DU0XpP+kMZMPVJ//1VrvXPydrQlecRuBrlnMvmz/kBnDFfSQ8HpZWKKlvmDZ74fyFdQ3vjTJZBVJVHhcgQtg+2hgJ2oDw2hzD2PKtwS4fvvviRxXEd/U6iXPdmIThvkGnv2QUQSdHQHVranHST0x+JWmuypPbJXFT2py6KWcbTSrn2tLQ88fmlmeQplsDkkWnWIhxBl2Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:29 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 00/12] drm/i915/dp_mst: Add support for fractional link bpps
Date: Mon, 28 Apr 2025 16:31:11 +0300
Message-ID: <20250428133135.3396080-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: 110616de-70eb-40ce-f633-08dd8658fbcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NwAbbqnFCT9/jWd1RFXlrE9cEnVvW0oD11eEVdQchDU/nZKMac++ncP7pH7f?=
 =?us-ascii?Q?VhFTbJ7UOiqpSKqdIbHM0PcE4sxwXtNhi4i8pQSKYG97UWw7PxV7Os8SWLab?=
 =?us-ascii?Q?YZtedqgGckkD8gHxEejpNj7x0/QaxZyeLQW7kr1BiPJD52yh9qKYtqlu7BZ5?=
 =?us-ascii?Q?idfLjuw9SnW+H508eBkdhL6e6obsny6BLvHSApXa9VkOnW9KxsbOZ9g5X7Tb?=
 =?us-ascii?Q?vxchIR6UP6DzDpvtOcbT+ZbQEwd9pJrVnRQEddj3+oMu6+TZIgunxQzmUWgy?=
 =?us-ascii?Q?+pfcTBCr2t4AZ9GpPoz9XPEr/klT9A7+omY7eKtfy6+mpM/GbnqnvyKZVURE?=
 =?us-ascii?Q?INaYENbEggwawU7ZbfGQnbmXy9zpM7UfwNa8mUww7ptf35wfAmBAloeeoh/4?=
 =?us-ascii?Q?h+OluIRSVjjxNq/v6p0C3IqK2kU+bZafNp13GB9RvIGWetloSFHXbdxmcbZW?=
 =?us-ascii?Q?0Ven8vUddkWH0YZ8/nNnBjt9YMYbKBYPV4zdmVqGsDIiKKsAGH09KWdhGC9X?=
 =?us-ascii?Q?gSVeDRqjLjqKOGQjTbs+PmvpnmarIwkjDZFRZX8gUFZQdUvcjvTi9MQQteAA?=
 =?us-ascii?Q?mfWdXNqI/tEjwST2Vp9w6MMBfN+vHNpx3i4f/AFsoS3wLYo80WS2pUJ4M2BQ?=
 =?us-ascii?Q?z3qOI7eDcnRQ4wCYj/BF77Mhw8k/Z4Wz+T0OxIzLib/4KR+R5RTK/3wTCtNh?=
 =?us-ascii?Q?kS9jpv01HYSL2EcASE+d9hNeaRvA2NROQLae5CDUIL5M36dVXQKlVepNivo3?=
 =?us-ascii?Q?fAXL4KeuFYEEvP2gtUDuCcUo8X0DI1jQZR0pV+o1reTxBeGnm/5Hp1aQOUzX?=
 =?us-ascii?Q?ckl/xzJCWE3CnxkLILw1kgvpDgsGeGK2sZOSey3p9ymUGwAdHSLm8MzqyvR+?=
 =?us-ascii?Q?sMaUZFF18TdAcQW+HW4fC6EXJf41aCOOin9bT3U3fBBML9GGfuX+Sbr/6ZDh?=
 =?us-ascii?Q?AWeEB68I9uv7M/LEwW5K+RFm5DhYtV2rDV/YbUJvfPLeVes7rvR1ezhYhd/X?=
 =?us-ascii?Q?VhjMJE1F6sqgknb/SSSWkU0Oq4HEEd3cJz6PmtqpoJ7bPJJ7nq6pvpshDJ2E?=
 =?us-ascii?Q?9QT+IaoHChw+ZeKLxDOWUwnGXW/eI2J3iVRFfVXq1RJgr6nDFrHxdHPmhgcv?=
 =?us-ascii?Q?QeHRkgRCnLEU5m+pR94GDNAQrY2hIhhPR126CDOtzLREgbDh8oLtVYHIm1v7?=
 =?us-ascii?Q?lYDuA4eurwuPGRaWryC2vrt1NVfA/O/gnGHHxG31Q0nhE/z9PDlQ8/eyr9VZ?=
 =?us-ascii?Q?IQWuPR+1V/Ec8Ldj4DA1ax6W9uMOt46/n+2Xft/bDhxtZp70TbAebj/U+506?=
 =?us-ascii?Q?NJnobZu4Lfr8GZEjOKaIDyuAfK9mgEUAvsnxHGgUcEQPGtgrBCNmPRgnc6BX?=
 =?us-ascii?Q?WLV4QT1B0Z/qW5Bi8q6mwYE/sK6cGrHp+ukgQ3qBTJrXyh9vbjke16q94zC+?=
 =?us-ascii?Q?BvUBrcyBoDI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6dsqTKD45Ay5UejI5UZueGB0dZ+fPLeyxlvctMuKrVw+FNjt8unYKILpsdE8?=
 =?us-ascii?Q?/CVKY0QWuk9g/t152PBfDdmlt0m2/Y3eQgq00Gh3KtALCtAXz6ZG279dPCMw?=
 =?us-ascii?Q?EYlO69YDy2pTN02OONZixEKLBvKMeY63Jid6VWyhCz+iCh0Lw3vKkHRsgTtZ?=
 =?us-ascii?Q?iiCby8A3VSQr38jVm5TQcpwxWScORdAXXEddOPBt00T9E0BlKTohuusyr11P?=
 =?us-ascii?Q?s3DmX7pXSUiEJAke7kUs82C0eusRJ1lU3AGHN5As8VwK1jn1jnpX0aJIsdw/?=
 =?us-ascii?Q?yBfdiNBLkFuJsIO+g4+YuKVcNQlTecF/RFfjji31RS82LoX919IALrOmSvVk?=
 =?us-ascii?Q?v+VcRAfN2kkhUcd3DDjtaPhdoi8kv8HjNIM0jCch6CQbx2MdrRNfc+ysrGzJ?=
 =?us-ascii?Q?7M0CUOvaLGue132vqypQcSrj4+Dt+cglX9qXd6cAWda6CPnUf1T0ME5CkPIZ?=
 =?us-ascii?Q?AhQuHBfgi860QmqomAdzGTPkrP5VZ73JRT+6nzb1lMvfynIYjEzsS2x4TSk8?=
 =?us-ascii?Q?BnHqBKj60p0vS9rEumuDzFnVlnhLOqPFqJu7e2Jm1giGdIvnnJfTQMPjlNtw?=
 =?us-ascii?Q?w6wU0jtgq01gfrV44q/be0xaLJuQucRYsgb0dihszs/A2tx/KLyuqSPv8D4T?=
 =?us-ascii?Q?BjYcHXU1y+JENDV8fvjUJ3eQjwHME/m1IK6U/ck4eDkv8h1cri2pkIAX2mOk?=
 =?us-ascii?Q?Ob8WLNGGO9VFj6sB4BNFeH34/8Om85tmdx44Mgd6p7BhA2cshoJUkZC9nTOz?=
 =?us-ascii?Q?f1e7j/YyltmXWKJmmhYiWNUMaaWDX3Q+fBpE0gX+ZLj8zjeeioUDgCjPbq2D?=
 =?us-ascii?Q?cqrNMUKSSaWVcldXoPP1f8KfZGBk7sPW0LrvXMo+/a/3KuOuLY4K/noA5oWd?=
 =?us-ascii?Q?hNJwf0CV54V7sdSILVynghKjDu+cXqn1IKRemDzphMSTEcze1WXrCSRkcUpJ?=
 =?us-ascii?Q?ly/xJFoXR7EhbaU/gszxy4+Ra2gmEzWqQcSXD/qoci7dp6Xec5MeVxEoMWd4?=
 =?us-ascii?Q?Sv/gK2Yn8+nJ/E05Bf3IkUTcOD+pw6XZNEfN9OhQHl+nzLvAj3tqG2iSDRrm?=
 =?us-ascii?Q?oXDG1Bd9+kuZIL3sgtSy88LHshsyAKjaPrsunnPI1T+xG8LQBI14ECLIi690?=
 =?us-ascii?Q?TVSY8IV33MSllAwcO2MaIAk+RivWK5z67+URYuNW5HO3b2yYLZ6OzyNNGN21?=
 =?us-ascii?Q?oyWEjCxvrh7vSkfVjJ2x/pBWrDO/yVin22QM5COqwGKpngH5tI0zjPWAX1Uq?=
 =?us-ascii?Q?spLJEtN2WGXJQ5v1A79YRyqKZ45LFA4YA04y/dp32srTFrCXypzNJaJpGIsj?=
 =?us-ascii?Q?nKVNqpMKiTX9kni1K2dNVhABxhzK0S0anU9MOPfXchjqXhFFtQ4mrXS+Nc9U?=
 =?us-ascii?Q?7qwywjehT9yNV+7m+ovEfOW1EIPA7EAyBfQcRX2OYGFdO6JwFLcKPvNLsJ1+?=
 =?us-ascii?Q?P2XtLbVBMrVgpbnTSmlLOShkpSc8vCC66w0APLtfCe5rIB5Pic3UvfuIUZl3?=
 =?us-ascii?Q?Nf3jMtYA6bY2/W5JDua2Pw1kijGtXYPUP4UVSXHbxdK7MfULoSP/cfA2wTBC?=
 =?us-ascii?Q?lZg/SEMFlsSEfk4ujXGSW7a6FJ2B8MCmu+o54H5g?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 110616de-70eb-40ce-f633-08dd8658fbcf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:29.8544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dllCvuB99d/stUJWAe0XEo9yOT/XzpoH0fJTmSJlGZSRcqN2RqR4VYEHiejh7RKk5ALFqq24lzxgQA8VXiy3OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

This is v2 of [1], with the following changes:

- Add the debugfs entry to force a link bpp from
  intel_connector_debugfs_add(). (Jani, patch 11)
- Fix division wrt. 32 bit builds and overflow in the force link bpp
  debugfs entry. (patch 11)
- Enable fractional bpps only if the link bpp is forced, leaving the
  enabling of this for later, after more testing of this functionality
  within commonly used MST monitors and docks. (patch 12)
- Move the dp and hdmi connector->intel_connector refactoring into a
  separate patchset.

Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20250408214342.1953197-1-imre.deak@intel.com

Imre Deak (12):
  drm/i915/dp_mst: Use the correct connector while computing the link
    BPP limit on MST
  drm/i915/dp_mst: Simplify handling the single-bpp case during state
    computation
  drm/i915/dp_mst: Validate compressed bpp vs. platform restrictions
  drm/i915/dp_mst: Update the total link slot count early
  drm/i915/dp_mst: Check BW limit on the local MST link early
  drm/i915/dp_mst: Simplify computing the min/max compressed bpp limits
  drm/i915/dp: Limit max link bpp properly to a fractional value on SST
  drm/i915/dp_mst: Add support for fractional compressed link bpps on
    MST
  drm/i915/display: Factor out intel_display_{min,max}_pipe_bpp()
  drm/i915/dp: Export intel_dp_dsc_min_src_compressed_bpp()
  drm/i915: Add support for forcing the link bpp on a connector
  drm/i915/dp_mst: Enable fractional link bpps on MST if the bpp is
    forced

 drivers/gpu/drm/i915/display/intel_display.c  |  28 ++-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  48 ++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  97 +++----
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 238 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
 10 files changed, 347 insertions(+), 83 deletions(-)

-- 
2.44.2

