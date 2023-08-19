Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ACC781743
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Aug 2023 05:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4027910E57F;
	Sat, 19 Aug 2023 03:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D4A10E57F
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Aug 2023 03:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692417208; x=1723953208;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2aIL7/JLZy57Ni54jA65auTSB0D+WfHu12D+sjNITlU=;
 b=OCUOp7KNI+cDmQ+s0eClFSg3ViTMpuG+PcI0erK34+c6BGV7hnhhWi0N
 Gxyamc2G5TdV0s3Lj9e64k1khqk2AfLnCZLQpfPhirsclMcQWCEU7HFeW
 lWfzBzDUpN7lDEtJutdQ0uL7JDGVor0OFRI4KiFM/z2DzyD4sIXF5aaF9
 41Bgp57Cp8NjrxF5OrRks5UXvFwhFWeQlrYrL9dgkhQ2ZlJgnryFE32iR
 RUr/m9LA24sOaEhjPIBp8jqOWxKuCrtl0EcuVCE2KvqUxlDBH1mwaghQe
 9oF48ifuiKvGxOTmohY5EPgWYPyxuMHANPg5nr1v+1G0HZOX7zFpZk5PB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="459619377"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="459619377"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 20:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="738318324"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="738318324"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 18 Aug 2023 20:53:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 20:53:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 20:53:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 20:53:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 20:53:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CYUUfW3D1DsYTWSZgoktmAwfNiqTKCDDVfvxTmV9Qjo/um6VDa92vDDT5lbJiDj9K/bi3cig3kBGiC5CxYqBIxVy9gJnBd6h3ZmlbgfYLOuxDIw1IMrwx0Vnplak7gY9JCDEJpj/quzlL3rp6rQGITvx9AO+ektkvFjRhllakFIx6frATe6ydM+Kj71+JtzNeIkEx12zQDpph4UvTycepsio1XB0UFK8UHZa0jtxqRVJ4Z5HKEd+xSV0lLznhW8CTCKjW+ssuelcqzR/X5H13XW635BKNtXRZevFIcZ5ouYUGaceSnodhyRuuDfdxI1R3vP9vafl+KfGZNjAhWJdFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zbzs3vRzMdi+RqZ0sjKlf3r1dIRMBMdohspZvvhs2X8=;
 b=kWfmYtB/32UjcLsv/tEKpeVW5/otPDxaOehSSc0/VzY5bnf1WL+WW6z96wk2zmrbByVPVWqX+MuQw6hCExTsIBrw3/lbmPYcCSGXcds9w5/O2iH8ms8zWyExUlJ6kK4cODNSSMqbr/4c1/3MFyw9rOik/5TxBaZsFvlPv7EFJvZi+fFP1dl5sNQEV6lH4VO5ypSxZ7YXg1ibGMbKiBPZne/alOOsgu6CDjATli72jX+0XHoa/IIkBdlrbk4UGgC2TpHTRtZcGd6UKYeLRvFot9zKsVSRDjEw8zNbfhFo7glWgo5J5oHkNQBq4NCvHjf5OjduZ5e2N62hDdhxyOQGag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Sat, 19 Aug
 2023 03:53:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.020; Sat, 19 Aug 2023
 03:53:09 +0000
Date: Fri, 18 Aug 2023 20:53:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <wjyqid4qijmsq5qkxgwp3btx5nh2o5kgr3cup7xmbwatmk4fs5@midf3yxzcv2e>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-5-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230721111121.369227-5-luciano.coelho@intel.com>
X-ClientProxiedBy: MW4PR04CA0349.namprd04.prod.outlook.com
 (2603:10b6:303:8a::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: 46357adb-5642-44ce-7d6c-08dba067cd50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UWDYFYm2furOQr/5Imn7uKq53FOl3ahs+o1/Wsc4ydWQt51olnwn9f1sXMUEEjn4phFzkoENVK6awZErFx4C0YBehbVdcWG3E5bb+iDBRvgkmB4i9pjcmdd79rFA20VPtIhkIu8EvfEfAC7KPxYblypTOjJnrNzDdOaGCDWmGlx1G5jj+nBph/rkVKwk+UEyBCYVMEpwkxPFl50qNW8k+1soeNvxcco5Js0O9kI1x+F5sjx5aJqZmO6hP25pIflptN3g35nd155OPmYTY7FRUSWP3Fg22fWPFyC+m0lJ6WOVOLrYO7GOkNVWjoDaYswugR6M7B3LVCNCF5dJpUsPugTQLXX8xCZ4Sss1tOWRUDOxZo0Vn43GxqYHd8qWp71x7Jd+9OikcVfONrZTvh5eIuC3bd/jQBnhziaHhm64KDPFyhYdF5dADONqFufQS1nsQKGb7Psxq+R053SA0VgHxr4W/zUk24DbbXeAnMXIHr8m9PYvdjiu/FJmEqjyuJ6NfhYtSvXa5VSQ2Zv8vPnij+0dvMmKbrqQzTRH2sudDhToDv00/H7XuyqBYefW8Z00
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199024)(186009)(1800799009)(316002)(66946007)(66556008)(66476007)(6636002)(41300700001)(5660300002)(38100700002)(4326008)(6862004)(8676002)(8936002)(33716001)(82960400001)(26005)(2906002)(83380400001)(478600001)(86362001)(6506007)(6512007)(9686003)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LMLG39Cbo4CgqzUQxxHk+jwHTT5e0zi8ylBlUWQ5+2eeHYR1GwxbmhhbpXP/?=
 =?us-ascii?Q?qQRLH8o3NzY3zQFjl1bF2I903edy6DAHV+2VO4amw8vLttcJHv8Yt22rwOCH?=
 =?us-ascii?Q?8WMvWA8aM0kHxJyuTbnd7mhhLaoVL8paEbG8caeLraXxnduGS9Dpp7JQDodL?=
 =?us-ascii?Q?Fg7qKibPVu0erPlPqULK0sYwQtyYtWo9/2sneEjlydCH0WBLjhLbWU7e6vR5?=
 =?us-ascii?Q?YmY7MOCLP0uiPlm9wwhAN3O0aM819fr2W/JWc2QYj/4hgdIgmCkz4ONLe1HX?=
 =?us-ascii?Q?8tyNfbVU41cjHsWoraK67MO7QH1j1nYKeEv5g1IRHHbmiYtbofZ1X0xOXYnV?=
 =?us-ascii?Q?exjeofr7+KomYYmXn8ZyKxjYUSyPmMKYeCbg7eaBTMRufeUvERQ2yWS+MC9w?=
 =?us-ascii?Q?8Wj47FLli43RStqFJpCQqfWMC7HZ4aXntOz1j8s3zHvbh2IYtQ9v8vaFzlOb?=
 =?us-ascii?Q?fnjwJOBzQhO4zv8jfd5+hS7uoxFu+7ykwgfr3Xc6l8GAsHp5fWVay7Szo45Y?=
 =?us-ascii?Q?Bi5wac++4hZM88pfzXU9zhoIfftnjvdKzRpdovHmYkF2MCnmrJBtVz8c4BI/?=
 =?us-ascii?Q?WXYvZ2ovxSVnE6pipRDihQFT7ZsWOBebo1hK7jO2w7tTxJCJwYUXek4nd+B6?=
 =?us-ascii?Q?i1d/mDib33GQqd+yaKuxxkNpTQr91XB11d5UiByPSCmscbqKe0p7EcE1iiJl?=
 =?us-ascii?Q?Lna2asSbjUQWm34adgXvRMHxCjlSZXQ6TsFolaFNe1HompCMdxaPopeCfu3T?=
 =?us-ascii?Q?tCJQDdWMdSq8GTxbryGhw9dJvRpiYOzC3BP6oUc0as3bXk4qemF934VuYaFn?=
 =?us-ascii?Q?7Q8yypOxvPlXdVg8gC3OzggoNYoDh4RAvLh1XnKnxZ78ekKD83d8MbY/Wq87?=
 =?us-ascii?Q?OIaAybFWeIt8nTQZQnABxk58jh5fAa22koqOstmRQEs5pzVBgRo+Z2s5lY5q?=
 =?us-ascii?Q?e1oQYQiuCHh6tCEKqlpVEhkJtawJrNt9JCPIRErMZgiL6C03T0i3P1u/LLhj?=
 =?us-ascii?Q?/m5E9GTlItf+MDJuWu9l+DLAdZGGHmuVUqZ18msmcDkVUlIx43JPnys17+SP?=
 =?us-ascii?Q?s9S9K+ElQpZYZSXa+dhJP+tj6vBLYyrfsYeQWrzWRtpsWJSw4WcCEfUhPkvq?=
 =?us-ascii?Q?9B1dIGE9KlHu1dHZfrTtny2eVgjhu9ajv/f3n0GBUe+Xd2PJyMFAw1eOp142?=
 =?us-ascii?Q?WQxQI7Aznd42ZYO+jtFfZQ5r3HGTwrZNT0p9lJaSK4KVzHKH9XBaARVakL83?=
 =?us-ascii?Q?07OBY9c3Af0WxEhgTcg8kG/Y/eAzQ7GuHZI+HpVgf3Er56fLNNc3Z0q5GNul?=
 =?us-ascii?Q?iM3xCwT0TgNH/thkUOX8dI0lm99zgi6femCjQR/pZAxol92W8JdHylrtEGKH?=
 =?us-ascii?Q?ssbviVbWBnq/sAGE56fxnMAUnXQppC8SeoINNk37vsx6gDrhJTciPq+anbyi?=
 =?us-ascii?Q?owdKeRpSnivdiMMl2R1JbYICcGYc99jDLrfmHQ68N+PigSf470on6xAlqfuA?=
 =?us-ascii?Q?wPpqg8qIsKnAw2yHRbBxYWVX+ooPZGVDQ5uTBvMDKI1dYq67Jo7zCAZgbYMt?=
 =?us-ascii?Q?YQ+hagVte64z7wfJPV7mFD/DcYu2hfZZ4NRZIFMF2bjWLdMQYtE+1WmD0nQr?=
 =?us-ascii?Q?CA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46357adb-5642-44ce-7d6c-08dba067cd50
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2023 03:53:09.1978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A2QgdrgSk+QfrXgBd0pzqgZ++v/W+v8u8t9RvxFOj6CfiJYn75iBaOD5cjp6C2ek0mugz0k70W4zDaiuXKXx/38oahFIKZEu+YRpuPJ016s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 21, 2023 at 02:11:21PM +0300, Luca Coelho wrote:
>It is irrelevant for the caller that the max lane count is being
>derived from a FIA register, so having "fia" in the function name is
>irrelevant.  Rename the function accordingly.
>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> drivers/gpu/drm/i915/display/intel_dp.c      | 4 ++--
> drivers/gpu/drm/i915/display/intel_tc.c      | 4 ++--
> drivers/gpu/drm/i915/display/intel_tc.h      | 2 +-
> 4 files changed, 6 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>index 1b00ef2c6185..6d4f7b20ce85 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -2534,7 +2534,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
> {
> 	enum port port = encoder->port;
> 	enum phy phy = intel_port_to_phy(i915, port);
>-	bool both_lanes =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
>+	bool both_lanes =  intel_tc_port_max_lane_count(enc_to_dig_port(encoder)) > 2;
> 	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 :
> 				  INTEL_CX0_LANE0;
> 	u32 lane_pipe_reset = both_lanes ?
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>index 03675620e3ea..b974af839acb 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -306,13 +306,13 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	int source_max = intel_dp_max_source_lane_count(dig_port);
> 	int sink_max = intel_dp->max_sink_lane_count;
>-	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
>+	int port_max = intel_tc_port_max_lane_count(dig_port);

s/port/lane/?  since this is the lane max that is being returned, not
the port_max... ?

> 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
>
> 	if (lttpr_max)
> 		sink_max = min(sink_max, lttpr_max);
>
>-	return min3(source_max, sink_max, fia_max);
>+	return min3(source_max, sink_max, port_max);
> }
>
> int intel_dp_max_lane_count(struct intel_dp *intel_dp)
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
>index 43b8eeba26f8..3c94bbcb5497 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -337,7 +337,7 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
> 	}
> }
>
>-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
>+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
> {
> 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> 	struct intel_tc_port *tc = to_tc_port(dig_port);
>@@ -589,7 +589,7 @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
> 	struct intel_digital_port *dig_port = tc->dig_port;
> 	int max_lanes;
>
>-	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
>+	max_lanes = intel_tc_port_max_lane_count(dig_port);

as shown here 

with that var rename:


	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

> 	if (tc->mode == TC_PORT_LEGACY) {
> 		drm_WARN_ON(&i915->drm, max_lanes != 4);
> 		return true;
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
>index ffc0e2a74e43..80a61e52850e 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.h
>+++ b/drivers/gpu/drm/i915/display/intel_tc.h
>@@ -20,7 +20,7 @@ bool intel_tc_port_connected(struct intel_encoder *encoder);
> bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
>
> u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
>-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
>+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
> void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
> 				      int required_lanes);
>
>-- 
>2.39.2
>
