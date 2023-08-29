Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB85878CF81
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 00:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77CE10E4A0;
	Tue, 29 Aug 2023 22:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C0610E093;
 Tue, 29 Aug 2023 22:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693347885; x=1724883885;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=Ymsjg8fG2IBDOtdSnWqfX/rVMGPLq/t4xi41EVMCUbg=;
 b=DFUCrUwKOPRqmonCCgjnmy3DV7APPjeLHEJWnFZAy5WRfjykC4/tDvGW
 mx7T1tQ51oByihpOUCJFpQNrAzUNtb6eeHEX2tqpMNe5ngK9G6AEp5y4M
 nRDjDEZptayUSaxoyBfbvYNMcWgd8sPpvP07A3hTiOwHVVMcjCPFyHy6n
 t0Sh1rgDF9bXMYaIonEBOkY2WsvRQ9M0+KNLn2BlNUxOGCdCc18/jgG7t
 MoEMKOsJ8TX7uX6dx9eIboVrt0L+ZC182NT/rzHV1VtRhxyPdFPzVpipC
 jHBdJ4P0usXywgbmcxZgGMR8ii0J2lvN+Eq5Poc+W7IriI9Fzps68fiSC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="461869129"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="461869129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 15:24:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="738875383"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="738875383"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 29 Aug 2023 15:24:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 15:24:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 15:24:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 15:24:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 15:24:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVLi0hu6xsjP6mZkhF1YSDUVyTGnpjkttRRm3JQyEwXO2djQ6yDHVmPnM8qlUudPsLBJNw8f/MOZj26OMIlInf+sKKK/SeTfEbJ8db2Cry4zb8mSOfh/ZiHUd5jVxHZ0TwRMJK8i65FZysHCBiZP4OtovfmRgfOJ1s/MlRuvwvoYHgrXUDNItGx/IuTPznXEbubdcIxK5sFm/8+lWDLtdig7Z9wONaGAuds/T+GgNJcPTEXJzPanf3IBZ+XsG7SSNeEqqS5a8en+DNpNG3kEY5BL85ETBTvJHDZh2Cqj40XyJqm7BNcp6spo+lQfDWgo9K6mtTUeDRb5sL+2N9DIKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtgvvOSjfceu3y+OuYC0Mi/sFjt/8Ay0nMnfMXvIm/U=;
 b=WpUymLsoJsInyXQ++48FjdNtPY6+vJlwlt0c6swLwaS4oauha5mTX7HACfvKNSX4jk7U85YpzCZSPInpEH7qN01JZ61DTQKy5K02seyEnPed3Xlyv6IULnFZHsPMBBasWg58+v3NSV/mWH81b9krA+UMWhnVGFrXRDb7aSUNm3CjBCS+fJ4JAY8jrEZd/iWKUYGwVC5if8mTHgNneeAZdwlDnC47SuXR6gGeLwtbR9kDda6Vzlqps0/PzjwweHB9y58ytBu8mD1iq9ntn0/IFz7zgaZBpT2ghtSK5EBDqJxSOMw7+eBr4IopoTR4ITF3Wjg/X4pnMBUHWdJ85XlHUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL1PR11MB5253.namprd11.prod.outlook.com (2603:10b6:208:310::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 22:24:40 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 22:24:39 +0000
Date: Tue, 29 Aug 2023 15:24:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Message-ID: <qua7f5f6qs5to26mlrnl2d66mrmnuy5pugt2b3az5tuziqwzx5@6hxtk2m4tpj4>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-39-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-39-lucas.demarchi@intel.com>
X-ClientProxiedBy: MW4PR04CA0112.namprd04.prod.outlook.com
 (2603:10b6:303:83::27) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL1PR11MB5253:EE_
X-MS-Office365-Filtering-Correlation-Id: c59731d4-cd2e-40fb-9395-08dba8debc36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RP8gzcvbSIZDj/xgzrHZcbLOfAGVE3wt64pDWGb77CXdTCWr73ml493ELnVHLnychgOH5v/dII2DWKxiitSJ+awWIYB0NlpYTZHbTonwZeuMNOopZy3SeUvF684N824JYLtgmG9mnjaqqVINEKLBK7+WhN9rwQ98zmsISxF9Y+NgEXbnUs7+ALxpUbX8BiciFTCMOAcXtbYp7Zlk6K7UBUSLSqawqIAdwxf8N376qm7Ommw552dfYdFrvaqQZ1i0i8oW1IYL3zPQULBHNV2V603O7LulIzyfabCkZrJGWTHKhfLBpYcOo2e1mLVca0DfkWTesRedgRm6vsLZNnlAYg7UD4J3E9D8i2fVEzAUjZLtslsuSd0BUtt9Spqwo9olML3wyDeKu4hlG55AYfiK2Eaxo9EQNkTKR4jLBpPmIUjiGeLKGgLHwYsIP1luKB9C7Qg+vwgFDKGYNM1TcnbHtL9zj+jkaQ3+6P0qmLBC4JZ0MoxG4jg7HVIRCfTgCUWT3ruUcsQJeS1GQSvNyWGdTlwyqn4TVBp01xlTDZ0VVn8Hb5nGC+rB7hBFdw547Ust
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(366004)(39860400002)(346002)(396003)(451199024)(186009)(1800799009)(6666004)(6512007)(6486002)(6506007)(9686003)(86362001)(38100700002)(82960400001)(478600001)(26005)(2906002)(83380400001)(66556008)(5660300002)(8936002)(33716001)(8676002)(316002)(66476007)(450100002)(66946007)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3herNgYamjF8c/nKxmVfHg+VLAU1/ffYbNhrBaPN0DYogE1A2+jlSVuNugw0?=
 =?us-ascii?Q?gMOji5r1O5Mj4fOjtSwO7o379WfiDS0LoTUdgUR90GsBT6b6HGYllA3KezRl?=
 =?us-ascii?Q?aKSpLWfSH8SzAxwgPuiR+wcgNn+uIvlUv3b3doVzHQixbPcX1D+7RgOtCoVI?=
 =?us-ascii?Q?M0ayfgE03BT/SHSl5SJ4JvtajVAdgCy0Q3UbRQkD7Cr7/l9AUQfJO1eNnsaH?=
 =?us-ascii?Q?kFuhoascEvmaWYELmcHU75XuhislpRazek3CIr3Efvh++hxq2YDYZx5/q6Uw?=
 =?us-ascii?Q?Q13kLo/BKwq+SKP/D316rMKclpju0PxETl3ya6RbDMXDpK1zaZNzHpMbVt7F?=
 =?us-ascii?Q?9lBNBOvZkyDrTC6rLTlLPhhWco29uvSbAlsmWKsL20mstiHWu/VBDEGFIaOP?=
 =?us-ascii?Q?7i9KotOstlyPJgLJMgMAYfv5IfAjhyONr06e+rr3r9PoODKvV7N90BGcJT2n?=
 =?us-ascii?Q?3u72QIa6eSXZpa04jae/2VJHbK79mTKNJv1+SC8z3IH5j4IjgiDoNeNHrKoL?=
 =?us-ascii?Q?PcLtIwbAwz4bUt1tocIs72Q7hNUgINJfzxhDMfdIbEdfgGbr9dyl33qunNPR?=
 =?us-ascii?Q?PUYDVEjHgBoQDb3TDSbCK/ORe4ac0Si+9lMpL9QIr9ld5HHWUszEDJDtrPpd?=
 =?us-ascii?Q?rTyc2slVgSOP3d8yfdoeAdCZ2Xsg/7hWfGRhsQw5LlZgSvNIbwbd4Y8la4Ze?=
 =?us-ascii?Q?9Jf6M4kF0+dbN4dL+BYw5flJPU1ykNtd6fZICXjDpaJnrI55irUtCe6i1Dto?=
 =?us-ascii?Q?mUIyDeQdnY7eOnVec2Vd+bWwuyzXaKbbmgDea2v9Ez18oipMK0Rp71PyQYaE?=
 =?us-ascii?Q?SZ0aGg5L8UhIsrVBHJUDFZ5vdbWESRlPodWEEFa6c06wsOwecHVXwdRn6Fnq?=
 =?us-ascii?Q?BME2vE/WtSY6N2+xBhxCOGhWPI+G+4LrBktEuPAAfOSLByWDdUPT5DAe4uNj?=
 =?us-ascii?Q?I+fRVEwZ4TffCQcnNb5Wkw6crrbtfVLlzYSfH20GxZMehmwPIednKJUWLxWe?=
 =?us-ascii?Q?RPAXDI2HWYTWAfs6BmOBk7zt5nX05LBNeFqGIj5kTOcJT826gS/uGhRyFKYs?=
 =?us-ascii?Q?HQYT0QtMKC/gVdhBIpIZMnnTWNlbWwxyFsueUpRqKOX5WvRWu5NeYPA6gT4/?=
 =?us-ascii?Q?qxlECpPVGJjDhaZWN6csGMfjDhU5MbhKsVhulDBSkZUPSteVdAhD61hHIkqH?=
 =?us-ascii?Q?ROzQ5tOAF4nJAkI7EfE+As8gyKbDKILSrz8ochlQ08qf9FpKKpbIiBE9n5yK?=
 =?us-ascii?Q?CDMuo9fx1apwdfkwNIMtZyEbDpmhBlN4j16/Z8dnPyOSJQ30ZjwKYteGoBJR?=
 =?us-ascii?Q?bmluVgIdbUIEAo2zZBiIHdcWS4nf5WOfpM7KVR0v3quT+OLF+hsMWb+TTGYr?=
 =?us-ascii?Q?5g25+T/EMFig8k0EQQr8X1irh8dHherGD71RMTwvmssA2tyjhwDM/+RJLQfO?=
 =?us-ascii?Q?WrIeaD0oZNfxOf6NC228mEvPs1w4XoHLVc833PY1cJLv2FFecDT1s6CIyYhV?=
 =?us-ascii?Q?kN8QX0T51bEMfONMMmbDcktcGQ23gKJvWy7fit/ko1qyw7eyva+NoNV2LTFI?=
 =?us-ascii?Q?9bUSjBtBE+IZn9pP+pquH8BkW2t+VJKj9V6O/mV5KuYT3Zl8ZQ0HdeiX/FsJ?=
 =?us-ascii?Q?kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c59731d4-cd2e-40fb-9395-08dba8debc36
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 22:24:39.8655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e52i52RH+HOtzLjVul3x/+/ddcbPZ4SZtYt/XlDve4/rrWBY/uFgXiWOR5m1MSv9PMDBS8k/dRDiCJ3gblwz2AKEHIdXo9vbHfs4FzRlVeI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5253
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 38/42] drm/i915/lnl: Serialize global state
 if mdclk/cdclk ratio changes.
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

On Wed, Aug 23, 2023 at 10:07:36AM -0700, Lucas De Marchi wrote:
>From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
>mdclk_cdclk_ratio is a part of dbuf_state and if it changes, it requires
>hw to be poked, so we must serialize the global state in that case.
>
>Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 19 +++++++++++++++----
> 1 file changed, 15 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>index 4d8b960389ec..38a9c47e4ae1 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -2789,7 +2789,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> 	struct intel_crtc_state *crtc_state;
> 	int min_cdclk, i;
> 	enum pipe pipe;
>-	struct intel_dbuf_state *dbuf_state;
>+	struct intel_dbuf_state *new_dbuf_state;
>+	struct intel_dbuf_state *old_dbuf_state;
>
> 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> 		int ret;
>@@ -2823,11 +2824,21 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> 		}
> 	}
>
>-	dbuf_state = intel_atomic_get_new_dbuf_state(state);
>-	if (dbuf_state)
>-		dbuf_state->mdclk_cdclk_ratio =
>+	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
>+	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);

humn... it looks like this should actually be squashed in one of the
previous patches that added this.

Lucas De Marchi

>+	if (new_dbuf_state && old_dbuf_state) {
>+		new_dbuf_state->mdclk_cdclk_ratio =
> 			get_mdclk_cdclk_ratio(dev_priv, &cdclk_state->actual);
>
>+		if (new_dbuf_state->mdclk_cdclk_ratio != old_dbuf_state->mdclk_cdclk_ratio) {
>+			int ret;
>+
>+			ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
>+			if (ret)
>+				return ret;
>+		}
>+	}
>+
> 	min_cdclk = max(cdclk_state->force_min_cdclk,
> 			cdclk_state->bw_min_cdclk);
> 	for_each_pipe(dev_priv, pipe)
>-- 
>2.40.1
>
