Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2F75EC13C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB9010E8F9;
	Tue, 27 Sep 2022 11:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67F110E8FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664278003; x=1695814003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=cDe80GTDOq7XthzWWpdTYW4RtyyYixBLBb7Ihhv6Yfc=;
 b=GwZudx/WAfaT10PmL74veIlU93TAdwREDNF2GUnfCVnfnjB8gsO3MXhV
 8zNb2+TU6ekj9yS09BsVD8Zdjzr1TVJpa/z5LdixbXFicXOPhPU0yLryU
 a0EFNkeP83Foj6wQtKjPThx4Mr5ESASVTMCJp9FnL7V5NqJ+GjB6ehxPj
 sv066MmgAknd1+xyGQtNVNvp2beskVyOn30gwhV/KxuEJM6xm85NWqmo7
 wSOfb3fhMWZVqVwpNexKIAnVrohOXhsVH2rFZsHxPbTuW6v58p8atHmN1
 R5SdOq2w2RythF4XTYNlyqJ4Vp3ir+LkG4arvMZN4sGr+Q+88T65sxaqr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="281660830"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="281660830"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725477028"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="725477028"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2022 04:26:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:26:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LM9igvSZpUqjSAKrA6JrIY2WO4w7BzyrIf8saLmcO7rRDcyY2K3YkaJuPhSSnBslT1fxjW2JHLwaw6qTVS4o/qun238KmaquXLPQv63J/A2rMHOrWBU8mgZtBU/CQGa7kXf4ISxybF4ERdVjgD9li1wJxc1hz15CrUc7jdCGjZA4BEDbhzlwRDqAbkEkIp2RnSfzNou9Djspkk3r7y6Ovt+WVE4uod/48EXH/hUE8ZdgRjeaQ4maaZrwpG8upaVkbZe+rtSGv+SgTAOIsxiFLUBB+h9Hi6alaP445u20UY3xJEDcWZ3cUqjqFNKfuksMw8PljTUVqPfBKRZX4s0o4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltYAzC16SiBwlags2QdphOy5WYH39DinZ4Iyx//8jv8=;
 b=FOF/ZALU4FQnu7z07bFod0NBA2mIQtQAu2aLOXhlQDoWhiniPCS8yn5ZmHzj6D0JrDuRCqWgQFvB6bGQ+DXdvzNFi/t8Zy68Q9xn0q+CEhDRWi99jkuwoPAM/Kcu36E75e2t+e9d1NcjhNzI/k8Lug3tij2Bcx+l+ml0Yei2BQ3MPq0xGm1iXBgbJsqZhzggjk4Rg4kT5vox1MNgDdk7yoq7dArI88n2DqdHbGEYl7hSH4NVbirsE5LJe6wenDbkTrQe2vSW5u0TDNcr48EQ5YzIBfiSNC23lBCtf2PEG9Ew7aEtin3PgUewSDtYdQAIilfP6iO8PfIBv15NJzCPPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.25; Tue, 27 Sep 2022 11:26:40 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:26:40 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:46 +0530
Message-ID: <20220927112547.328078-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
References: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::18) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: f6543694-5645-4f4e-754f-08daa07b25fb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DVauSJfaTLAOzo3BVhmYc8c4+n2KeJ4V3orTPSkxQVtFGyqd2W4OwhaEnzyaIrmlwFxMDeDzBOUj6iLwK5G6AmyduLR38b8Df0b5o4YEUGPNXzFZkDCBM68wFYBLikcCAH2d2brKYfUi67S7dIpOEuAxS7PwrFARMtHhy8x1zHmngf+GEDFfhR4sRMGLmaVkuRcjbyD+ghuNoNQxKokpPAhk++q36E0fp0xu/isYJTj6ca8Vx4fkVkjyPxwd6dJVeQP2W1LOeTsjA6dr8I+uiZbZHjuK3MW1jfteYxyLnKvMBuSzOHchnsYKdsNtvIcH/a3bTBgMOide6cI8vJ1/MZ0m7VLdf6WKRc7iHlXzMfd/FUXO7emyjgXq8zoO5mrf/xoYN/fNXPLPaXbCyRBhgH5/+5/xgPhuc5xBKHexEZ5tz2G0kCTFi5hzueISWC/UEUrGcKCXgHaW6wmkXtQ1Qs+FrF84GDaz8lvnvlAr2rOK0cYO09ADMWCqgPjgmu6ReBx4ef5mueRsxgP+ZmpWSApaf68gi9CproJI+fb0x4f+BimEZyRf/uX8i6bzGI6FCNvn4UoRri5fv4HQQUjyuCCV9/KDTXQu/cLVcBZ+Vj27pk/i3Y6MouZX4e6kD+zMsvF5Tl/1BKK4Lj9hT+Hbnue7JN1Jw2+6a5ZQmsJ8u+XVtoyucsHkUYytL6iHFHCuwuYbZrZY6hZJq5DOaflnaw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(41300700001)(2906002)(44832011)(36756003)(5660300002)(8936002)(66476007)(38100700002)(4326008)(66946007)(54906003)(8676002)(478600001)(316002)(66556008)(6486002)(6916009)(86362001)(2616005)(1076003)(186003)(82960400001)(6506007)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e9Rqd7KIFhWSV2BbMXDY9eV9MBUSZuaDgR57kAyIDjYveNdgkHAPRkaiynRo?=
 =?us-ascii?Q?OXu/UYMFnZJJrXe+3K/A8faHWBt9TRqyXVY3Hg9JA6/jMGTZp0uw3i6fl6tt?=
 =?us-ascii?Q?KCRgYwzjROjwgkIZRUIWHE4ZAkSVlZeXOmPv6FE8j5lxRCbXtB6Iswdf8tzV?=
 =?us-ascii?Q?vh9gZDScj1N5zcXE2TzeBoS64Lhl7Qvv5PiN9vpJVVNOyf5/Nzt+eJV9xdXz?=
 =?us-ascii?Q?OWeK7YFOY8yH35fIIMlWxFOG6kHeizpj6prkmsTgWLBX07IAukl+ArMP3ATg?=
 =?us-ascii?Q?7tzC+cQwgbuGu1Bb5yPyQisDr5N2LzZegTKYDXHcUY4I08289x6V0Y4LF+V5?=
 =?us-ascii?Q?waFLuSkCbg9aE51pF7FjpXYONZWI3Syt+SQihEDf7TTvCVQI1FBVj6t/7swn?=
 =?us-ascii?Q?+QTSH45wWxp6tlMffORrzcHc3eP4Z3Ivgv5CxxMoDyF7oBxgnRolhIhiScDR?=
 =?us-ascii?Q?uUYt5jN7oSClDjGsaE4/5OngIYyIur4SA26pYsUDOHiV56/RpKYKGYZg9NhG?=
 =?us-ascii?Q?m4zZRv3J9RuWQfmV50fVx6p860gArv3ALxdJl9OxK1EwpUr2i6c3bT+3OOhj?=
 =?us-ascii?Q?wreojNox2RnD8rYQkyoI6YiFvhidJC7j2zXku3UjsZQ3rJN7Ve6fvWO49ITG?=
 =?us-ascii?Q?TsbIxmSqmIbl5FNh5Z87jYdjnOrcehXu3io9xznD6W5TgS7iWXmVD5IztgAD?=
 =?us-ascii?Q?U2k0Zp5bL8QSKQQZMdwvHHcWTNejqGjBfdhyZaNrsDxMBqLli1r3LsLAi1o0?=
 =?us-ascii?Q?DRpc7Wve5oMC9lafKcNEA43XJyplY4Uz5aSfSAIqUMUXrcNr0NOCY7wAvEje?=
 =?us-ascii?Q?A8aeDEHv6Fu6eGMT/w7hqOvHKZ1lKtbqGBEF7RQMYLDvJgv+Mfi0FAK9nM/D?=
 =?us-ascii?Q?o+AHde3VbylBxt9NYY7j+nAvLk73Kbs9dbdWXhiicCYwfpBCqVUQ5zSXxhnH?=
 =?us-ascii?Q?2WW2rxEIT7yZhC1R3eHDVkyHe4ddLJk3Of9H121Msnp9FpJPwnvTk6f85Fan?=
 =?us-ascii?Q?9d4b00VuDmr5KRxWZVyBPLoqJyiD70XgmCWpR0KGskYyhC4GvnYyjqD5/v16?=
 =?us-ascii?Q?sHtCpZjORL+u3hog2LbKr3VSvNTfEid2m+Y1hwkWYmd8xHj1zc1mcIjocYk/?=
 =?us-ascii?Q?0RYGMZgTwkO3iJyuwhZfM9wi3jIa/P/ycLxBAmN65xp63yr9N+hmKX111kkd?=
 =?us-ascii?Q?3mSOGvtIW12txVnlnOMRI8nWNYQE9O24T0e4PcwGo7OSl0P2XpLi9V9NizMI?=
 =?us-ascii?Q?K2K5cqw9OzhcgLnPYRzjLUGyWX6reCBWl5WxW3yGbJOQOwnFDDgXD1ai1/78?=
 =?us-ascii?Q?rPtYE+XnPdJTS75+sG08gGXyjVrhbHAb329BUG40MOjWZRsdhSBY+MnRDj6Q?=
 =?us-ascii?Q?WGuA5laOpDeADWnjDq9bdxB+E7Vuh1eEswK4N6fdto7fLtk3mKmDMKjobQVm?=
 =?us-ascii?Q?oeUCmyWCN4p2KU290Ci4v5wSD4THPvotKagyuya7ddoMQkKsQUhH+Oom5dSx?=
 =?us-ascii?Q?As3tWjMB9e47AFLCVfYJYnZtuZy56WtK/Mj6MsSdG86IlS+ofhHq0ipFFxql?=
 =?us-ascii?Q?2pvc63YNH2q75k39WQzOVsSRCn3snEPE5hDUb6WiHpxuFCiFGgslR9k0Cegq?=
 =?us-ascii?Q?UZjuDmKssXvI6v9f8jOa4OI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6543694-5645-4f4e-754f-08daa07b25fb
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:26:40.8754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XGfVWAatCSIlko2IjCbz1HEBuoT6W5E/fUxV0pbEinB7eNXNM/5S2fxSNc19DOUPP3l/NTl63zj/UlZ6KJq3ehf1sOTQklJBpWW2o8jwU/+earDk1QARI32hbD3wLfVX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/display: Fix port_identifier
 function
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

port_identifier function was broken when TypeC ports were using enum
aliases. It would return wrong string for TypeC ports.
With unique enums for DDI ports now, fix port_identifier to cover all
ports.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e3aa8080b79f..e0d5a9e569d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -250,6 +250,18 @@ static inline const char *port_identifier(enum port port)
 		return "Port H";
 	case PORT_I:
 		return "Port I";
+	case PORT_TC1:
+		return "Port TC1";
+	case PORT_TC2:
+		return "Port TC2";
+	case PORT_TC3:
+		return "Port TC3";
+	case PORT_TC4:
+		return "Port TC4";
+	case PORT_TC5:
+		return "Port TC5";
+	case PORT_TC6:
+		return "Port TC6";
 	default:
 		return "<invalid>";
 	}
-- 
2.34.1

