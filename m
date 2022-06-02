Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A3C53BA26
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 15:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D62E112ABE;
	Thu,  2 Jun 2022 13:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D805E112ABE
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 13:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654178086; x=1685714086;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=6Lg+FqERFnEFFBMQCMVmMceh8O1U7+1iJu25qXRubqk=;
 b=h3XCYfJoRQgKY33JAf2fW479+GtQVgChLPCf79eQRxYhaCC6iXTKYMhy
 nIbLb0HYclpKxS/ji+KBN83BJevwc+/MH2XC7b/R+gdTqfMY/0bGVMaLh
 W9ajYOnwHyXSfm9rahdjLyb3z4K5Qo/LZhPAxNs7Zd7Ri5YofmVkgMPe1
 DVLQj709JJMLdj1JuZ890TJsmoTNpzyIP1C79YAnuvBvUGR4bDS8/k5Fc
 VGofzomCxZKBDb37Zs7d+voHmY+sY1iCp747Zaw2Muo/L8l3yOT561+7Z
 paG6T7f2bsuh3PVSWe/7DUR9KrSQbkX3iCtDFAH85MA9+KQHvdUve8jhF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="256432112"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="256432112"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 06:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="707574173"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 02 Jun 2022 06:54:46 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 2 Jun 2022 06:54:45 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 2 Jun 2022 06:54:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 2 Jun 2022 06:54:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 2 Jun 2022 06:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAxkErokPVlR//4v9sYpcT9dxniD8iVzRqtUk8B8mjV1eA6/W7/bNwY2UOPffJ6clOjWgijDw/XvXPYQz1Rfg5zc1M/hmHQd3Z0/f7mOAIEpLa4qeodqWHQlZpCgep7zO81eP2tqfLQxRaYUrWa7UOhRNOIW0LmuIxFzPdrJ2Ky7Z+re7WDj3AO5Bo9dW0nX9pdB82H40EuZifkhHmyUy+uEY0MThw3nhp8awAIvjGWHWTtMIeoQ2RzEgLAKHCwdsasRpRX+dZ2E2vYpbh7JUgsXOrEi5oQYppPfC+Sq9txu+amvPuK1P5tIXNo9MWroc4yqrqrOJ10Ov59CTFFhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q7yUiOFn8S/LZBKt7PHTWdlmx1jUX8s+kR9X7a0cUm0=;
 b=DEIsIBa1LmcrxbdZRHCOZC9aLaLBZ962iF3tyZXOSSkdv0RUq4sumTvVwnKXBo4etx+x+m6wdWusAM9HmxUOepf/Bl0PSySnq/QM52Ulhn/Gme+Fm36elpTFWGKa3/wKhwQHosaAtJAuvOcHU/oM0l3coz2mKt6cAMQ56+pP0bWJISxYY8sTpiXYoblMyYAuMadH4iOHUp9CNd1cLYB9e4QB7gmOThfS1IFCB71byhiaRINog5aa7lQTIHAT011F4H26JD/lyKJqE61Sz1PjwoD1PwGdXKevRXGRsiV5jg5i1yhkkWS4ntmYBP68q3GVyhcNH+diAQtZIE1CeRyw8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 DS0PR11MB6517.namprd11.prod.outlook.com (2603:10b6:8:d3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.19; Thu, 2 Jun 2022 13:54:43 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::29a0:67ad:4b77:ce13]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::29a0:67ad:4b77:ce13%8]) with mapi id 15.20.5314.013; Thu, 2 Jun 2022
 13:54:43 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 2 Jun 2022 19:27:19 +0530
Message-ID: <20220602135719.1093081-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BM1PR01CA0157.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::27) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bcf1ccee-1e85-4a89-3213-08da449f71eb
X-MS-TrafficTypeDiagnostic: DS0PR11MB6517:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DS0PR11MB65179854A0E6835921E965869FDE9@DS0PR11MB6517.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZkDUHcuZkbcRvuNC87K2sQNzaQVBrJy9d+rk2Rt23pIOlxr/kgqDzPF90dGMwGUGnluf55v75WG19UlIAMbQaoyomUG/oGjK+j+Ia9f14/xrHyFWd4y61c7/U4+1lTs5ywdVPhIajyTw1A+XYK1qxbD1LaVNdDfDtVYh9xRB1ZWtIuDGrduNJY9bwkw5eBDUu2GHdycYHX7wyxsn0C9GOCdjACIrMr74CntCufs3HEihCeUkOm0j8AydnWUatClr16updkD8eikxgwPj/dFFtWr4pj7LV/CaQQbKN97Y7nDk3onbbFGTWoU59qFE45QAtPNTXfZeSgGQI5MrjAhUPP1C0OmBfJHJXm5GMsYF3+AHFmwXqGPASMc4JWy0vYGIkaDyDF0/OAI3VuAtU1+qumv6PPmO2hCgbpUVHlM8GfYxYb9DsMRMbQEHryEhk8TULo6WH60ang9YydwRCardSMXI0YZ9EfuG5LPyjvijTtSq4+DmbtUE0vIOkI64lr4c4QFJMJJanZWxYAdzk6ojA1weEcD9qI5hE3zLiBRLUIydEBLELZBh5fm9SvJktMrKIyiR2SZ+bthlIv3VIXuY138MKOtNLTsXgFqt8KBrSwuAmdIUKWEWP07pM+Nw6Hy3wgB1u/xP5VuPH3D+23S63A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66556008)(66946007)(6916009)(66476007)(44832011)(86362001)(26005)(6666004)(38100700002)(6506007)(508600001)(8936002)(5660300002)(83380400001)(186003)(107886003)(6512007)(36756003)(2616005)(8676002)(1076003)(4326008)(2906002)(15650500001)(82960400001)(316002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IODgg8ewqVR4P0UOeVCa61AhK8B+gr/lDbF9nD0YW3h7AkVTbeN9z6kzvmpH?=
 =?us-ascii?Q?DVYjDsYSgfUkmuKsOwodFwx0PHRbErskHa5B6HFvNEOvRg9AXB3w4geCAk86?=
 =?us-ascii?Q?ePlxO0YCFr4vYzavwehTPfotxjcQZs8TbtOcTssTvAfDextjeaSxJQD700zs?=
 =?us-ascii?Q?KtudrDjDFWF/J2tK4Od/1sEDGyNulru5mfLi+IyjuX2HcoDy+v7VeAfwaPSR?=
 =?us-ascii?Q?zLi0scpFXhuOCIzz2X7+wjqgzSJrsGzqxkL8hpTF1awYc8ZhR+gAgZ714JCr?=
 =?us-ascii?Q?M8QiQ6fuIU19uh+Qx6+ACJTjjlnBv++xgOkCzr4MZxLh89bqsBIsoL5Z3Ew3?=
 =?us-ascii?Q?y1ExA7xJjEnYAppafTaXHJqjZvrAqFc9RHPI1jvz8YDY8Rh1RhI3KPdYtdB8?=
 =?us-ascii?Q?B/UV0Lb5sXt6T+S9zG/AK42iZbsvHlSSdTcnERcm6pJiHIIcHTxXnqOmx5w/?=
 =?us-ascii?Q?ZVkrn5Hlj+qaiWosKtqtAZa46+9hDjixLbQ0CWXWvzSkMEmQUSCb/mEwdW/4?=
 =?us-ascii?Q?n3iWLzgvp5ro3/B5lB2tpbkwB/BfvZ3hLA3wQWvHTk3qGke9ccwgzye1C4xn?=
 =?us-ascii?Q?90PMAZ6OMvfWrSRDg9jWdspEU7xPCpTVcjHVf5OwuxBDDDiX7MwH2dhzh81Y?=
 =?us-ascii?Q?kv/ethFaRnTGwM5aYWkvDAi4exW3B+q09j/p1coli0y4KRatwiVTDMtMjkyV?=
 =?us-ascii?Q?CrGzScMM0suts4hFRj+Urf/f+dgpkWQ5QkuwetjKeyKzntKcp26h7mr8N6fl?=
 =?us-ascii?Q?5bcoa+Oxat94YYiHBRF3SLrWMYTQsrPrK6l4t2voMvcD8PBW6oDlgNxyc5D7?=
 =?us-ascii?Q?N/7n4FAGc0uOTbG+rFx3vbyuak7MygZvfiF9kVMHvNgITS5ASqcqFzvzS5gP?=
 =?us-ascii?Q?ChU291SIqEllppQ3Liyt7FOKawfneODmHvmzUJlazGVSHD3Dz/ZtIQBuDVPx?=
 =?us-ascii?Q?HhcnIckAv09T0lTq14KqgA0fCIR7d2gR7X36yfNWUQcEGzx6zBi5l8ZrJN6O?=
 =?us-ascii?Q?AW8L0S0ShEzdFlSyVA56ZEl4oJdg76u+3PkFaJSXMG0FEis6FZu82Sodiqez?=
 =?us-ascii?Q?VHrP+HxW8IaacfGEyFUY3QAxE496GJbnl2bvInPhb1ogKzuhpHsI8siePzoT?=
 =?us-ascii?Q?wHBpDoiLQz8d69q6Tjw1t06j7cLJv0kpRL3b3zORBod+6/Q/8dqD6mB2IQQG?=
 =?us-ascii?Q?bAV+8G47EUeM6LPQRG/N6itVTsOTP7hCPOWzunapwnSHbKvZ/xM/Jx3zcL92?=
 =?us-ascii?Q?hdeSO0vz4DnzJa9qRcnU1m5kwExJB8JUTu3MKiqk0DmPeZZkDpUo7I4u+Yyx?=
 =?us-ascii?Q?EEYTn5AacYlXtQItToldOcr19LsIiV0M+iDgWoFajmJg/90zJQf172/cJc7a?=
 =?us-ascii?Q?g1hfzqfxF5DZInDvUJvGby+w43/Z2iLX8wzZTeycmBYypENaufPnYPUe0KU7?=
 =?us-ascii?Q?YlWzcw7u0IsSKnCvrJ01zlMPJV5aCNhc7FFTDLcrISoevdjuOB3HLTugJR27?=
 =?us-ascii?Q?/vVSujVWmuroYS2WLe2ZPNvMn43jSMhXyggqX8yrL7VI06wxTFbLCgKpkqTh?=
 =?us-ascii?Q?xEJDsw0XkRDUlEX7+VaTipEnUnzPRZWkxLLLhxjBTcMERt9TXu2iZSLhRspR?=
 =?us-ascii?Q?LEZ8dnBSKigjqslKmGQ+GkQLOjKEZIQW4BSyIvWNLd0tvalOf8kGBTeesS0y?=
 =?us-ascii?Q?pfEGD5EnDlwdXbA0fzrIsrBwdpZbdpyXR+Z17tWBlIw5iSkZ1ih5veRmkyN7?=
 =?us-ascii?Q?aHl83xxycNvtlbA2Lb/YVXe94xuPCpCo5T6lHhLxDabWoVyD7lem?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcf1ccee-1e85-4a89-3213-08da449f71eb
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 13:54:43.1511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zWqxNqCqyEOuU9x6VspVXi2tu5JVOXnK3Xq4LlvALbiRR/Q4Z2YhDuU21EzquhYmZMgqqyUXCj9znvv3ULy+fkwiylbZD+nUSDAXi8F/DXsVmdgcR85avlZmBDWa6JmP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6517
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915/display/adlp: More updates to voltage
 swing table
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

Voltage swing table updated for eDP HBR3

Bspec: 49291
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 5cae1d19bcbb..e6cf50922dca 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -933,9 +933,9 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_edp_h
 	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
 	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
 	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .icl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x63, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
-- 
2.25.1

