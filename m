Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4F05F3408
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EABC10E310;
	Mon,  3 Oct 2022 17:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81A210E310
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816451; x=1696352451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Yc/GUEpZydBZ7pwAHgwB5emfOno2c17NHzSRPUnxEfs=;
 b=JL4zibfLR2juWC4r7r4TNrkBkl1kn931tUJjQn/He4FSuPfCzfVLH7YH
 K7ESsThtwB8FO3E5ZNzpd6qQtHqfp95yD4wYm4r+RVMrZIISeQkBI/94U
 kHeHyywjeHFUfCEE3bJ/Xj0UOp/ifdebIsxIgYzKfjskmXhgZeuiGePx1
 NfVJNykxCFAQLzZqYJMn7NsKJJTA7EMU/8JxTZiaNsHK5kWR3jfEkCLda
 G4PAd1J4nVIbvXWHbf799VWajYoTDtPLEf/gUXyqPCCz8pA31izCNEZ3K
 DFgId1ftCaW1tXI9WFQ3qPvdbV4OQ2zX8HATqBPEYiTEACtC5GsM9bQgG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="364560082"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="364560082"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:00:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="868666515"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="868666515"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 03 Oct 2022 10:00:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:00:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTjHzm0rCnfyC/8Oes8Q9gx9pJ1WEQAelZ91ekwRnQHKcLew6f1bYr9lgX4z/iN/cgWCNF+pKx8lhqB20NvrKTTdDJYDYV5x8XHwYvOeUzmEpVY8nO0tGMW4vwCwTcovcMvT1NcixTjbRQU7wu88ZKBMWu17ANsnGVWmlX1BYOsTcPNIqnqY+LsxlUsQ95m8H1zMdOwa161sDW/r1lBjTvx+adwDS6vYgTihehPUdTBMhFdkKe88oHWGmsGekLkBdkzhsrN49h2I9QnQbMEXycHYZieBw8QYvTaZI321FXsJwDTAv0+J4y8feftE5e7CM4bL0JLBlIAH52AjkUIkYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NV4dgGmsQlfAPf7NNyNMGP4/cZvb0EgFzwpiLBbqccc=;
 b=hZH2LdsuZAnxrGNtNFhFcLldCqf+5TE9YXr2F1vwlbSC0FvSqD8Sc7to38yQwxs29WsBBATu8e+41f84vYhVC4UAC2UTllz0/aqlhPaAPcOghpMk0oeP8NVImSTlagmuwKOOf4GPFfAtiHxcLQSZayxLs3zE6xQg7NhQW8EgeV2BVi7DGbwMD+7sMt8I5ZbPV2evxBnfyKjIYMTKqQbveZsA+Wm8iU16nfNqzGjnPaSWOH3S5g1q2H93E1O3+5XEy56E3kFCt5PErNLdQ8XVH3R9HCRt/yZhamrWbyHwuZ5g1dY8amE3IsC7vg+ZE/BmTqXsHus54PSr9Ng4bbu4pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 LV2PR11MB5976.namprd11.prod.outlook.com (2603:10b6:408:17c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 17:00:47 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:00:47 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:19 +0530
Message-ID: <20221003170024.195223-3-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
References: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0219.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::13) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|LV2PR11MB5976:EE_
X-MS-Office365-Filtering-Correlation-Id: a5458ec9-5d99-4180-9e3d-08daa560d16d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9XsTl9shb5eIhShQIAMdpINoSvCT5qVdvT781oZps09W7rKsmwYCvmPwOa3ykK47Z3tfytcF8rgbHAu3JB3qGcyveQKnLXd7leeFZ7u2jFfmOa6he/Khc7RmD4IluF/tWbQPLz+GPWPCnDp1jtj8Tp+NdR4o+FSPCDAOe4YQBGZahxVrgfbR5+ohATCRAaoO0XEUQB3veU0OwMGLfS53c1E5Sd9ugGImiHodBTXlCo1WmwsiKUXuSZJzOQqj/mUQLid7kbZN10NORe56gj9nUBjeA88uzTl3J7XRmljiKznlePzy3NrW9O+mJkU6LwPN3XbzOl2/yo1Jmms0hAtAnO2BVETRqrB7lgHChMQ5JIzQWKRsnCKvZQmtarLWNDajpORN5obK30kDHsUCQ07BhvSeLKeInELQNbsdVKlJ9U6sUN8CWUEAMyC0xDeKEPpFhM6wvvlHX27kHl08knlU2wqyQ8i0v9hNjZfJxJ8Xr1yYOxFBEa3qPKgnoO48Xn2Msc75UHI5dtmWIGju/kiuOQ7/AYM9fAWP0msH0pwF11vO8cP1LMfqWjrKA6HAMgxnG/8Qyl1AOlL1c7uxl3zOX5iwSnawHcnAPH4S9U0oStiza2qu8U1rwEV0R0g0oMfwOxbtqkZtc7Bv707aqWZ6B6BCaLYAdKChC2PSSKbm1RkqyISE81VGafzrMf30D+AZ120k6gu1dxOw3n66VzGN/A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(346002)(136003)(396003)(451199015)(82960400001)(1076003)(86362001)(6506007)(6512007)(5660300002)(26005)(478600001)(36756003)(6666004)(6486002)(38100700002)(66476007)(66556008)(44832011)(41300700001)(2616005)(2906002)(8936002)(186003)(316002)(6916009)(54906003)(66946007)(83380400001)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H//W5r0O4UAyA1552YD7/Tg5psuLiNFNvl8PYvBsvwC4LODSoOZQfo6XwX4I?=
 =?us-ascii?Q?iytATTP9GQpJKMhc8upsrbSxlqdaaFgqNm7sdp+OB8aSkgOUzm57fRJjn5LL?=
 =?us-ascii?Q?KkI4uW5zNkW4bpBx6N7FCKd7w06zT+00yKsrDnP7NA6IKawNlBYWDGaTQ9E2?=
 =?us-ascii?Q?c1mNSRgqlmx6XUWDZmi1hDtBAwSVFN+sWvHQgaeGFqi5cOS0bCtRO3JiKTPV?=
 =?us-ascii?Q?vXtH90SDLZDynK28J9C9lrylOrk4wgYkEPRbDcFr+22QouBNuY7z0UnR1/Lr?=
 =?us-ascii?Q?XhB5B0xfFCHNylKJBtRLGMy9MY7dfCekfmIRB9eTpBv3rRWGjOMaGeuT8H24?=
 =?us-ascii?Q?UFz4ol276tj+a2jUcxJH8tbIvpnjRpnIxDzqbTcLv79kCqRy0Vv0ASJF9P5c?=
 =?us-ascii?Q?RTAlE5KGFt+IibcjL0vlTZnuaDDnvFQyWB55c7rIVZIaegTLRFISG3Bu0XRg?=
 =?us-ascii?Q?eJC2dCu5iEgJSCK3422vAQstaYX6YTl6uBzsyO62lk9g4ZXaKaz81ozu/hjW?=
 =?us-ascii?Q?5Z+YXP/2arbIVM40p3x09Mg4VsWayrbP92O+o9PKGkpmK4pMEAw9tHk6TQ5W?=
 =?us-ascii?Q?1uVsae0JILe+kj+CScae+khr91lFiJ+R2w/UgvMRCHdNLkCl0X8X7XXlOr/L?=
 =?us-ascii?Q?icKm29IGOO7qPqT6Tgw56pqOor1j6184425cPjFXFCIiTowat8UVqzCMKOLa?=
 =?us-ascii?Q?lyIrlrp0xLlturGmNmfFu4l1IUVlxOj5j4/dITXYQUjMfOkYU++vkVmbqYfU?=
 =?us-ascii?Q?3A2bnaUciEwWAf1GF1ylcyGORvfdXqNu+cwk2KVJbQHPNM9eL846DlaDgpVu?=
 =?us-ascii?Q?zLwFtZylmnRgVNXyfdVqpcZ0V05F6AlqHZglE9LSdKCHFC0ck69iTCsZ5USJ?=
 =?us-ascii?Q?RRxDVsh09RuoG5+1TdWpbPXu37CAiIA5DQBBXKAHMEyVzHbLMoGIj3JuSiwz?=
 =?us-ascii?Q?3q79KFuiQ8q+oAoOsmy/t8XHeP0M6YLSo9i4eH4RJrkhKPWhmz7J65ogZwnB?=
 =?us-ascii?Q?u6aEFGwoi8RQAEG77uVp+3PVEMySreJ/aaPZO5PCI2hZ0lTDUMulL0V/Ph7W?=
 =?us-ascii?Q?nIFwGuEzEqO12mZM/8J8yi4MueHJQ0ckNJ7m7iShqCBHnHnim556SYZ3K2dL?=
 =?us-ascii?Q?b+wj7PyW7KgnVfa3Yb+ZaGr54S/7aQZeDp/+/OiTx3h5dLRUMxg+Fiu1I7MR?=
 =?us-ascii?Q?uK2mZruY+A7uk3aJRDhJpjKvek9FiCA6KtsSqRajAwnApG2G3kKLnsYegMIi?=
 =?us-ascii?Q?mBEAduBkwK5mtJPs3mGjZ26rej5NK/s7HWfsQA011otH+6qIx9AkO9Ls/tYU?=
 =?us-ascii?Q?2/YMQJI+CktUtow8vhudg9H+t1zSPZt0/H7Odq+IOypz5zTRvSr2SZb4IJLG?=
 =?us-ascii?Q?oj2hMRqKotDgdlN3Pmu6gf7W2bqPLx27ulh/LptJVDZfGo1fj2Eh1NfR59Pz?=
 =?us-ascii?Q?thyBfzV6VoTV9KQBgCFWGURI2QSoEMhnid4qde4T9KR953dC3KM70QB8vy4l?=
 =?us-ascii?Q?9qMXhqylVnSZi1PZDlWwWiY0odX7AlBMD1ESdInwxG3BcWd+f3fHlbU07PJ/?=
 =?us-ascii?Q?Pel9qah9aeA1Cv6YqcF1aYl2MAUzpr55hLCTn6fPLBjC3WuzcSFIgPNwMQrY?=
 =?us-ascii?Q?OfBtQEq1tzjp7I2hSmCvy/M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5458ec9-5d99-4180-9e3d-08daa560d16d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:00:47.6349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P+QMku7kF2Ubwy8/ArpDz8n5Q3zRvKE5LPqyU0WWB2xl9ii4QJBdPMbUICuaeJZXjuX6ed1Xg6AFrQG/Rh+zRIOA17riBuYKNixod8egEpuPUf531/MzBvdoatqtcn2P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5976
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 2/7] drm/i915/display: Pass struct
 drm_i915_private to DDI_CLK_SEL macro
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

DDI_CLK_SEL is an another macro which returns the register offset based
on DDI port enum. So DDI_CLK_SEL has to be prepared for the new method
being developed for calculating the register offsets of DDI ports.
Macro receives i915 private structure as new parameter for the upcoming
changes.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 +++++++++--------
 drivers/gpu/drm/i915/i915_reg.h          |  5 ++++-
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 77a986696c76..e7beafafb857 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -305,7 +305,8 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 				 enum port port)
 {
-	u32 val = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
+	u32 val = intel_de_read(dev_priv, DDI_CLK_SEL(dev_priv, port)) &
+			DDI_CLK_SEL_MASK;
 
 	switch (val) {
 	case DDI_CLK_SEL_NONE:
@@ -1656,7 +1657,7 @@ static void jsl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 	 * "For DDIC and DDID, program DDI_CLK_SEL to map the MG clock to the port.
 	 *  MG does not exist, but the programming is required to ungate DDIC and DDID."
 	 */
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_MG);
+	intel_de_write(i915, DDI_CLK_SEL(i915, port), DDI_CLK_SEL_MG);
 
 	icl_ddi_combo_enable_clock(encoder, crtc_state);
 }
@@ -1668,7 +1669,7 @@ static void jsl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 
 	icl_ddi_combo_disable_clock(encoder);
 
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+	intel_de_write(i915, DDI_CLK_SEL(i915, port), DDI_CLK_SEL_NONE);
 }
 
 static bool jsl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
@@ -1677,7 +1678,7 @@ static bool jsl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(i915, DDI_CLK_SEL(i915, port));
 
 	if ((tmp & DDI_CLK_SEL_MASK) == DDI_CLK_SEL_NONE)
 		return false;
@@ -1696,7 +1697,7 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
 
-	intel_de_write(i915, DDI_CLK_SEL(port),
+	intel_de_write(i915, DDI_CLK_SEL(i915, port),
 		       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 
 	mutex_lock(&i915->display.dpll.lock);
@@ -1720,7 +1721,7 @@ static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 
 	mutex_unlock(&i915->display.dpll.lock);
 
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+	intel_de_write(i915, DDI_CLK_SEL(i915, port), DDI_CLK_SEL_NONE);
 }
 
 static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
@@ -1730,7 +1731,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(i915, DDI_CLK_SEL(i915, port));
 
 	if ((tmp & DDI_CLK_SEL_MASK) == DDI_CLK_SEL_NONE)
 		return false;
@@ -1748,7 +1749,7 @@ static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encode
 	enum intel_dpll_id id;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(i915, DDI_CLK_SEL(i915, port));
 
 	switch (tmp & DDI_CLK_SEL_MASK) {
 	case DDI_CLK_SEL_TBT_162:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a91bbc6e1255..acb764755338 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7075,7 +7075,10 @@ enum skl_power_gate {
 #define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
 
 /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
-#define DDI_CLK_SEL(port)		PORT_CLK_SEL(port)
+#define DDI_CLK_SEL(i915, port)		({ \
+						(void)i915; /* Suppress unused variable warning */ \
+						PORT_CLK_SEL(port); \
+					})
 #define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
 #define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
 #define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
-- 
2.34.1

