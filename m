Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMUaDDAjoGkDfwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:40:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C361A46D2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:40:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF7810E8BB;
	Thu, 26 Feb 2026 10:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="es3LmT6M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD6310E8BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 10:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772102445; x=1803638445;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=/VvWE+vzuCWfduNfEfUNUSUSPo8ZoJOyxMCY9zhiZjw=;
 b=es3LmT6M4IF7JRF9fHgZKr2bi1nS4RJBWsQH8UWNDze9kibkZdlsh4Gh
 XcRRT6jTVoiGLIK/qipnSsW2A/g3BuVpbffd6BKk5dstPLay0ntLSo5+n
 jKtUSlwFfreF5GyORpssUXfNe5e/8sRrltUtTjZeeIzmst/f9L8801kRG
 WV9/3OQEKMYc2ebpjxL6cB50Ip9xLeD97I2rQvPnrRSNYvo6FGQF30xfn
 6o9GLV5rpKUZzllLXtFgT8++XGup9E17K9j25yCunNNZJmVn/cdgpoZR2
 wG+7mbFsG+uJhSSGzvZ1ldokP0vwo6LIuaVCg73S6ToKH0qgh4n1Yz/dP g==;
X-CSE-ConnectionGUID: SnEHvRidR3md4QjxxuZkcw==
X-CSE-MsgGUID: VINNFR7tR4+N8tRJsbJm/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73263102"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73263102"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:40:45 -0800
X-CSE-ConnectionGUID: aIL6eblSQaqfUbHvR78QMA==
X-CSE-MsgGUID: jE9lw4UyRY2EiQq065cLrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221145717"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:40:45 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:40:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 02:40:44 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:40:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qM5G7dbZ35oaU2BykVuqtZvyu7/mAbvInqleOR+lYQb5ZEhpJleHs12jsShrSH0aLQRzXleKajWPQ8SLi93IxUqz/Rm6cFIK0hTOfqkldxGUKEI96lRSNq36jh3lfT+AKNTOS/XTMKhfikIQzGzHDgcEbWIoS8u0hPJzF6+JiPBQFNHV9PBqw7/q7C32cKISLs3S0v0KPTUEbE8e43/sU9Xw5GCkMepIcxqaeABqIll/LlQT4yo/oqoH/tRs1pu8tHCs1Pve7vk9QcMPwSKPhKAlTPreNxrzwbKNvrk52xSVeJKBWAKk23jzdVRw+Q5sYC/7pYbNgj98mhi71RabtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yr7exPpX/us0cpIfTpDEqFOdOw4y0TYgEYt3xh2wf6A=;
 b=RhdlpcDjaLQVGmBQt6wgxOexSj5Yv8UI//TPWLdB5LySWZw/6Z71dB1jJVLnDp2pQFFac4MAFfDFO34HtaPPzSYrX/Vl+b61a+/zkrhkGr+l3lNuegjo4KeF+2zwHiqKulN5bRmmN1Err/YuMdhfwXrhbVA93UweLdRrQXluv1www2o5NcE7Jh1t+j+GK6+ZAJ6sTksja6ex/pzQtq07s8BmWEM19A5UgXs4h7zA92+duW+y/PBnpfDaNBwgS+iLe6JfTcT3pz25QnZh2TkTu4tq/YQRIrU07NDjMcJaatMp/Lt/p1SeyppcOJW8jEeo4knKkdVKT4QTwzrnftfoYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 10:40:42 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9654.007; Thu, 26 Feb 2026
 10:40:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v7 0/2] Miscellaneous fixes in drm code
Date: Thu, 26 Feb 2026 10:40:31 +0000
Message-ID: <20260226104033.2073002-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW3PR11MB4748:EE_
X-MS-Office365-Filtering-Correlation-Id: 34ff8fe8-81f7-4864-347c-08de75237d38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 3V0pVWGnuK3ZZBIFwukf5mFvaSZ6NJQPGLsdHLW1x9kqeCSD6HcbrwggrMW2mCnT4XQHPTqWCSC3DBd1RjjNc3q29uJk+Y5NLnnZPOlb5ouWvIrtgGHGVpe7VXJI/rB/szcJm+ehqWR3lXmVtnbyRCG2vZ8uFfHJWNPUS20WwlYHRmM27Xvxqj8O3FmBFo7S1jhYvZKNAmUkWPr+iP4vkKZDARXsZFmfSD5ey6lHtDLUzE7wPvIC0WGv0QzK8r65mNXbFIpogL0e4dzvGvB/ucoHPVk1ZJRCJyvlFulAlr/C+fpeSR7vP/o0n5VOkysXBcljVEgpAj7Hix2k3Oxnd7zpeNwbDSrU1AXq/peVB0o6Aqv7YOn8neNuFZ4HDwXnu1DzpE2i5+ZBEJjxIs9NzPWOXOHk9yUTTTuVnqn1Xq0E6P4IUc/kH3Ot3IhMVivLz8t47C+j2QtD1bYZxA9aLrwYOUI1451ye+1kowmhlvcC/DSdpyHsX/N4F0NOULH7fHmS4N3sXpdzjd/9X0ItcQlkNMbgOBM/P8iex9s7flsEAn9/dDsatVbaV2x+qFNcZA8wEKs0QJihFVTNQfl0jMpq2MHDvT2VJqTtGFI+pFsFS5xcFtMSWD/oFU9A0J23GFwCD74bY94hZfZ2ssHJkestcuFus3ZQhV3xk9+7Hm3LSrvFpNFeE/mjaeLq5EwTYAaiH6mKst90ZgCIwQtaOT5qCrHx7cSLP/OBhfbsD0Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DrRiKek8wQXlD3h1JtFanlNx6i+YciZmesccEUVgQwU20PTgxnCfa/k3GGAm?=
 =?us-ascii?Q?g13h/BdBb88miwx40kw+Gr0t1Cmt9njHcLwRy1XoknzjdlY6cg8mjAJ2+7xd?=
 =?us-ascii?Q?U25ArPN7FtuL5Y3ZbOx8NyL7eAZ8nThdvQt+yH/n5gO2N1i8s4s0x9ygSwVb?=
 =?us-ascii?Q?ZJAv1etaxGGQRq51y3ueDxurj6nClyoLrbLuQmHKYTWPP1YyNpd0RzrAzNG/?=
 =?us-ascii?Q?rMIMeBDgQMwfieJBg9X9/yc/pH9ETsy/t3GfqtmdDO4k8MuWUo1xkZh2+qFb?=
 =?us-ascii?Q?Hf8dOyomjOnRGQ+wz24+0a0sPFeomCgcgl6g1d1VsLUEuV3YMjJFSe+a+Kfb?=
 =?us-ascii?Q?/QqFfbU2o+W4yIS6Yu2ZkDfwq0ARVq4yRGaRdLr52kYnIZt7uNN62LVEPTrI?=
 =?us-ascii?Q?e+eOo+dzVGbJUtX7xrUjcYWE6BVDgbtZ4B4Ml7rDQu7950ZPQgHY4Co5Z/5H?=
 =?us-ascii?Q?YTn5TdM366QqXIH2jk340ErT/NDQs9/qVAdr08xQ4w3qgFHLa6dlTOCp7Qjv?=
 =?us-ascii?Q?kjMToZoWUFc03h2BRiY9WgmNiPnzfzaC2pZlsMWO9mTTBJBsS1FSZdODKPNy?=
 =?us-ascii?Q?EbmAuWHCNi7UPWULa8fvjjsAnvWgdKWRn+nuGy9EZixWJKliYzVIamrJNc3H?=
 =?us-ascii?Q?FlynYBsW3Wj0DcMpWyoB7wdR7efYIDegINFEXvIp/+LsLLSZO3YDvwkcT8Vc?=
 =?us-ascii?Q?jtEBPeFxKpOpUaNhdc89miImGRfkSefoeeF35DkrsU4VbKG6FiaQBdOpmqqL?=
 =?us-ascii?Q?gj5NFnYwNMcJEmSAF8KDqecvtUkvG7Ev0no5JdzM6WUEo0BIpmMvBL4MQLeu?=
 =?us-ascii?Q?8+scR0fC8jb+QW8akD9A494ippr5gXDorFI3ErK/YbxQBZtyIO5ToAl0GfTV?=
 =?us-ascii?Q?lQ4r10ES6rTe5XmjWRYpVjd98Z2McrMwTuVrjVgRfC42/av+qeRo7G7E79nE?=
 =?us-ascii?Q?3B5N+DOwPMdOk2Xgw7eaE+AwiUhp73FXb5b+8dUa+mIyVVT+flgxltU0Hvq+?=
 =?us-ascii?Q?YefYH6RrjjR0C9vaAFAwOsIwZh/tzD3y7r1cFN+0f8Gwc++NsLzjwjKy8aOz?=
 =?us-ascii?Q?ExfJPTjVeuU/DU40/l54XG8JXT7OuAZbBhH+eqllsoiWD6vV3+vgk2epv+jD?=
 =?us-ascii?Q?6uozSH8Z7YGfnh4F/dzZjoiLmF1GUI2sbjnAtsXI6JA1tMwn+KPtQGl2LYqd?=
 =?us-ascii?Q?AQlhXuGVOZSi26OHePEz+R5qEoVLo+ff+jm6+2uvwHdqAraRL1+V64xnzvPP?=
 =?us-ascii?Q?trtm5WO9jPjDBoGi9Plw0s+9zNQlrJsw4mwsDN7Fua3uKiDPHqfnrfosMrx9?=
 =?us-ascii?Q?5s4ApRm1R6B3H+NuygqDoGOpabCo0EuosRrhGz7LyyCKYmYBegNcRyUWFeLr?=
 =?us-ascii?Q?Jc7HENuA1gTQ/d0+CzQH+sQqyw056doTiPZ2QIaSBTf4EsAEdQEn2d7ejVqE?=
 =?us-ascii?Q?ZIVWjXc4hu5EAFUyWKlLxMOG2Clmb8fblkV1xh30ZObuVEHbXpIuDz8wLC5B?=
 =?us-ascii?Q?HzRygAXb7uHe65ILci0uNwB0LPxtoOgweS4jXYQP9xW4Rzq5rt2rjXjTZ5dh?=
 =?us-ascii?Q?koo84JPl3EOVxifQjxjhJA2Saa8UhRrYAm204cwrWADBSMOO64x1xA2mAhzO?=
 =?us-ascii?Q?Kv98AF1w7Rp5+/sf5WG4FsdfXvcyNeebANY9IFaebq04CbUnW94n33/W3N6y?=
 =?us-ascii?Q?qb3/UWroM6p9YDFVuEvk+FYMQM81ohvSCaYNrQ46WN78mgpJIVLuKEILM6j2?=
 =?us-ascii?Q?sVb5XNIZ411COdF6mRZiX72f6b/vGVw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34ff8fe8-81f7-4864-347c-08de75237d38
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 10:40:42.1699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +FpaDcwQw+hR9IYBE4lxv6jBSdNxsONbG88+9GH3jZYoc3i+z3mhcWWuHpPKIZ8rEuZ9+494thwL9DBy6U3Fha0cN6GKInYM5meR3hlmUXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 88C361A46D2
X-Rspamd-Action: no action

v7:
 * Rebase and add maintainers to CC;

v6 (Jani Nikula):
 * Remove the last patch from the series;

v5 (Jani Nikula):
 * Split first two patches;

v4:
 * Rebase and remove unnecessary patches.

v3:
 * Change the casts in the last patch in the series.

v2 (Jani Nikula):
 * Remove i915 patches from drm series.
 * Split the last patch into 3 separate changes.

Krzysztof Karas (2):
  drm: Warn before division by 0 would occur
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()

 drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.34.1

