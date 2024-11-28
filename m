Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF759DBD55
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 22:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D462C10E171;
	Thu, 28 Nov 2024 21:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JXbVrzbC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46C310E171
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 21:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732829332; x=1764365332;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=NdXCPLyuly9Cr83VYYVwzeYRRS6GxsdATVkI7O1PZ74=;
 b=JXbVrzbCiW0GzBDSjxSlJHcbc3+uVI+DdzTYQ7lxCQpQh6qsFPQr12pM
 A/qEFD/DU3xM8yMp194TR36A6dFaIlLhPSu6VDqqNnFNtExUeXXIYequ4
 MSy2gKRY0ukfIRPLqPzSNg4YPADzWAYQC1ABbEX7nLctpO44zt5p1iHJC
 yXHRiQHE2jqF8oeT/efy7d72cGGv2hQCHn7/09EAwGLIuJSSk9a1c29kE
 JmL8fbtQzM5Bfb5sOMviwWKO2bsjWwj0jD8YFgkmsgo/pbaC3bPOjjhgc
 1GwM/FvUqz2C1GKg8NmEwokhJXduJUrFppG+zOKegjGQHmOpOHuGzPq2u Q==;
X-CSE-ConnectionGUID: pe5NgJKHTSW2oEODODLqVQ==
X-CSE-MsgGUID: aPf8U/sZTSqliEoTtHOUVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="50589144"
X-IronPort-AV: E=Sophos;i="6.12,193,1728975600"; d="scan'208";a="50589144"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 13:28:51 -0800
X-CSE-ConnectionGUID: u6rw30WKQpWI4qEix7bTqA==
X-CSE-MsgGUID: dEpYzOHFS3SLFLx1W65+4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,193,1728975600"; d="scan'208";a="92416662"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 13:28:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 13:28:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 13:28:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 13:28:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NlkX9ZUjT5G4GeugtTCAqjewj7GLtt3w0jivg6sfVkOfiPqABvb5kbTWmcrmwpf20EyJP24/xPPMWT5Z0cYGoz1+3kIoRNp+2rRomsy2MVfw/aZGUBfStgd3aaP5SynLcLeZHyVn2ssvMBAt6ZDMTZzde589RXGm5SXulC5m3I7qMgm6GNEr63vIwAqS8kj7im5xmt1Stqk/pzPS+SI0tQ98l8B3f0MjWyURCaqaaX0boiTF65XRSJvOfdMg+QR4m7DrsLP3bG/60uNM7s9+eEVOdZt6JDF9bHhwqAOAvOg13uP3LOL6wuTCXQd++CjwQDcEtwl9TYDhLKE7xCMnlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qsU8IHH2YkKAOv8qR0TcVAQSxppQA5yauFJgzc7EuH0=;
 b=s5XpHUFOkiQC9f4hHwLTGdX4UW6+RhaXS+XsBE4Pgd3BaoWdJR32pylgWcaurxleSiSOPzLQjN/OW4vAYG/MRGElJHeYkAbvXK+6SKtfJNDqpSjWc4dbeEnNCpmcyOQhQP/S8MuxYlMwuXI/eSuX+dyT/te3LQDWfRgN4+wGEcoZb0s0RaK/wkErExSF4lbpN8kx3opJPTx7S+UdO2Cryeim3AA9AE3Q3tzCoZtmvnn0G4mHW6WqjNES6jdqzyOsNmHMoOmVdEO4h66sFWYlVy9zBc8VNLlRDcizTBuxJD/Ahz4lqmD6lxD1AxGrM0hD9tE5nr9Yayz4mX3GN/ct8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by PH7PR11MB7124.namprd11.prod.outlook.com (2603:10b6:510:20f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Thu, 28 Nov
 2024 21:28:47 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%5]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 21:28:47 +0000
Date: Thu, 28 Nov 2024 21:28:43 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <John.C.Harrison@intel.com>, <andi.shyti@linux.intel.com>,
 <jani.nikula@linux.intel.com>
Subject: [PATCH v4] drm/i915: Fix NULL pointer dereference in capture_engine
Message-ID: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: FR0P281CA0090.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::15) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|PH7PR11MB7124:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f082a88-5633-45ef-12ec-08dd0ff3a490
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oWtyRTLxgSurh6q+qN4qoP53a/H9fGxduTVmwSJjXVMR8OCDsQaIprlMH6RD?=
 =?us-ascii?Q?oR7qMHJhkDXEFGzbSLPObWD61OKiyq5OkyBhXf4n75myvjWmTHvZ1o1LwuR7?=
 =?us-ascii?Q?DM9iHJAsGAQBEmowZwMhJw2LZ/REGbBhcObtao1EOP/08rUDWpJMuxNjxenV?=
 =?us-ascii?Q?e66wIeghA74r3scbBfUy0v41RR6srPDfqen8y7rfKHqQG6k2x2p94/soMcWY?=
 =?us-ascii?Q?dcXjY4h2ik8u0jnLuBX/9db0GflGWCA0f/SqcY82Q124paIF7NHGIh+eg72m?=
 =?us-ascii?Q?Uamwgt+tB/yddDYVrqWYTcnh2HmAa12vRVDNDisbz6XXh7WAwHNqmn6LniKI?=
 =?us-ascii?Q?Tdr7xdNbAyR5qzXd8QW4iOJdPC82ARJoEESXg5afFjSeMwSke94bsuhdk8gZ?=
 =?us-ascii?Q?K+cdG2ukY8YdLZRwELruM1vt+LBbNO+Qddv9KQ3jdXwVwM3bzG7SAhL+qcBh?=
 =?us-ascii?Q?9B90n+3/Ucmhw0TQUWAEvoedDKK+P0S4iMbIiphJmuZMKTMyLvL32voEzVkI?=
 =?us-ascii?Q?+BkKF+IrXLzGDnFufgYz+tMe5nZvzDVzfgreFfiQrZXqa/TQZELyyboui8pl?=
 =?us-ascii?Q?3nqmRrLTSP+r7xIVXCnmeS6no9W+o1ueECT0APVo/NiNyDN4+Rp0MO+FZBOd?=
 =?us-ascii?Q?SxWAK8a67g2pwsfd1YE/oJAHf5myqFK2nRymbcL31G//4ed+oJCKREmvmhYR?=
 =?us-ascii?Q?/kqyutNTah3CZUaiCFnBJTzTI1u/QYZhTS6J8Jsi0Vj/53cgvnso/9rmILdo?=
 =?us-ascii?Q?guW9YDwhLgdH0eE1BnPwu1eoD8rsNbIglPjQn3pqaZ87qH788sFVr7Zh86ob?=
 =?us-ascii?Q?W3y9U58aR2U0db4waQ1XFCcvJ6Vf/EP4QTMt0eyX8Nnp1Ntps99i/jlWseVz?=
 =?us-ascii?Q?ETJ1fIEHz/uWHlNwVUSD/cNi3zVH5Vygx3FSF4kpDJy4fNW0W+uy6i+89uLC?=
 =?us-ascii?Q?xixdtrLnZPumZWsgfRYaUfuSpUB2w7fiQdlftazRNifQprBuGtB1bSR1I7Y4?=
 =?us-ascii?Q?BZEfGjdzYagj6ibPc5N0/YI4UbI3BbnT953nJIxx4VYNgzqHRcvmcYSJjKZa?=
 =?us-ascii?Q?mobXEmUirb3GKxt2w5mgLkBX1n/2F3Zu4DiQEyhz1j7FSdqj/Bn7IAzFem1+?=
 =?us-ascii?Q?kbhRIZYQJDYnjEGZbM7zXJrKOUqy4DAiD1M7EfPnctxafDUEIou/Wx3QISid?=
 =?us-ascii?Q?Pm0P7GDSPB2TWkTr+nQTAEMZEUe7XylV2ZMBXVV7k8IXli2nArb5cHEbLJYG?=
 =?us-ascii?Q?c62dm8oX9fCN7bd00gna7oq113t9aHqgqmi4+EGZHTWMETsfm/rZ6DvOgpPZ?=
 =?us-ascii?Q?3Vs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nF72hxw524ZpqUaziytRUFGTaraO1RAuTqIInNt0+9Ok4DCwtbx0uE4kTFzM?=
 =?us-ascii?Q?BhL+Ed3znaxrmQP1QJw+QGWZ7jSOvYfd/99sU29gDBQpS++MiSw3OftMu56S?=
 =?us-ascii?Q?8J9ecDTbI3na1BN8IqIBJpONB+NqzQ2kpY3EFBtbZc6odumPQaJsX/APX/UZ?=
 =?us-ascii?Q?k0N3aMZuMs7Sli9QfPgIKGdz+IQVOFo4AosRvXfo/zws+B4QNNjBomiB0JUj?=
 =?us-ascii?Q?IYGC+I2SObp0S/W4ohKO2Ru4jdcUGbPbhsHrQMSJHdazfkh14772p6a+DX4j?=
 =?us-ascii?Q?D3cyEtrccuDvtOpU+Bcz5so93M8mNu6Nwv0glMnBelXAzyTXzol3Ae+XBPGI?=
 =?us-ascii?Q?R5Kfn7d0NbVoIahwMNKmYP6tXn1h3y8upxThO0+h4fUJDYN2TIsYtZcQ3IJK?=
 =?us-ascii?Q?EOgkH2j3YcaVrFPo4qEEMlULizaezr5ZFypwcZv+xMdD4tctMFMuJWXOYBNI?=
 =?us-ascii?Q?of0SkJYAoLGd5MQQQZA7v3sCMD9wnzBF3eYqNLvF4V5f/5st/BQBbHBfEERX?=
 =?us-ascii?Q?QavxxXFu1Gv5TbwdedlOy1lw4LQwC12EHkOknlLyS7NiAhg3m8c97U2COQUZ?=
 =?us-ascii?Q?4lBgRfqVYOxgWUeOoUcgvVk+Wh+Iurw5Po81zhrege4fyxaB+zMFL2YIb4ot?=
 =?us-ascii?Q?9pjf9DvaWdaI8mDWT/nbLHgVppckyZQVTaHDk5Te5O6SbeC2Kgmt5gNcRFtd?=
 =?us-ascii?Q?9saz7Qgz5jWYQ/aTCzdvjc528ednUJlAJ/8DXN0aAhuFVGCotBXDCcSxd37q?=
 =?us-ascii?Q?iKNIEosmk2vsZaapnTIGH1qVgMvdTG8OyIlFb6iJkvicCq/K2mUlfGFGJsoU?=
 =?us-ascii?Q?isvpmfOGSA+gxBU5baYknVsCQDx676b4w3PTFrMcFWlJrP3Gm1U0LW3qw9xm?=
 =?us-ascii?Q?pzNNXKenX9S6uxihsreKpFY7WpbVBfPNlXxVF5UHShiU4f6VVAcXG0z017DT?=
 =?us-ascii?Q?QK3Y5YJiNC5lRvJuD5X/lzGpD3bkrvPOZLP6YkPESTZkjyWilljD+otobrpu?=
 =?us-ascii?Q?i4oXE1+K11i9VUEHQaS0hXs5TsaHj8MR4rDyA7xlBJ3+Wc9WBiB0PVCIrH1u?=
 =?us-ascii?Q?4eqRDENgJpcHnBUFbklTGWcqtYn55ekolE+Ulc9nSjwJyC4eqJ00HYPhRbo7?=
 =?us-ascii?Q?/Bhg2o0cxUZ3h55M4Ryp1TMMH57uuHJ56DyIA2BRdUN573eeitgZIfHNB+0H?=
 =?us-ascii?Q?4uV4ruFWsZS33908HBQAj4JTEStF7qxIGpJlk/nvqyuQhdaE1yON05Hnoy9C?=
 =?us-ascii?Q?hJcCNEmZMex5L6D1ejSlS7A8xDnbVf2sqGq7wLPHjh84pMbgwjiO3pr7T2jH?=
 =?us-ascii?Q?NHeT6eucTqMP4wrfvKEUHtiPgWsTo2sz5uBhRfVo9O4YLidrtjoPukuDW4RR?=
 =?us-ascii?Q?ySRsV3OOt3iQzTpUyBp/ICvyYycXJVUx1QspFuk8Y0a16dxQC/ENXlbelHmc?=
 =?us-ascii?Q?s8kV8bbkkiujtgUuzbRRITVSdwbcsffCLncGCHXJoP/Py0xozCOx8TuN9gWD?=
 =?us-ascii?Q?sFBIx92upEhMYphtJM6sKPk7TD6ginIA8t/Mqc8JI1eeB4DXwy9KPsau2pou?=
 =?us-ascii?Q?DJ2KKnZLDSoJIqHPTakBKobmweLjIKkVrqQVVqiMdYghe6bDUJDKi4P5PsKz?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f082a88-5633-45ef-12ec-08dd0ff3a490
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 21:28:47.0286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ri+0fbnR+Mg29umO7ABvyw/hT/uAUh3M5y3g4Pin0Cf6rOWNxWw93/NjNdAHuUF3yuVnsTqWvOGMVOnbrHxNnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7124
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

When the intel_context structure contains NULL,
it raises a NULL pointer dereference error in drm_info().

Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: <stable@vger.kernel.org> # v6.3+
Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
v2:
  - return drm_info to separate condition
v3:
  - create separate condition which generate string if intel_context exist
v4:
  - rollback and add check intel_context in log condition
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..56f05a18870c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1643,7 +1643,7 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_engine_get_hung_entity(engine, &ce, &rq);
-	if (rq && !i915_request_started(rq))
+	if (rq && !i915_request_started(rq) && ce)
 		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
 			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
 
-- 
2.34.1
