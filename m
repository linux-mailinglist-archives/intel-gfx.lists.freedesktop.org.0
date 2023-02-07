Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0868DE41
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EC010E1E4;
	Tue,  7 Feb 2023 16:53:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132B910E1E4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675788796; x=1707324796;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5NP58mK3xHFRELguV2Jjr2v4+UmqOyX6XQk0AdOUeUQ=;
 b=WMz3YNJoL491bpHce7PPMX/ykjBL7nX8fAM1CB/u2p/Ua+Ttl67nKyfK
 Dnb2XRXlTMGe69BNHCIAnI7eY2Z43eBeZn8E+ia9dWJB9xuEGEGJXEFwr
 ye2uE+vpdUJaDqmPnRL9Q+7Ur0/PnGjRiCStZjEV4ddtsqgrX9NmehxGj
 ENKkA5tUV82RJ/1d8F73RDl30CfViv78N3axf/rO5Xu/4kFORjteHOSRt
 ehoYnRVZNIGeDWSe6cvDLOuBrA78pZIJU9s45kYJ0ltz6CbX1sunF1Lo0
 vKZPWR3AVu6ZC+ICxvHZix/mv4zJfPyl7/gjBaX2tu7jKV232HTHHdzdX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="327250066"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="327250066"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:52:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730509325"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="730509325"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 08:52:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 08:52:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 08:52:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 08:52:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 08:52:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMFettbzYs0VLhyOM4yW8CSpZxy7X2o7s8CFgCeZ4lIRE8dc7CFMV3zh86Lhk53KftwWRY760IGwmyztt8y/hO7HbJ/YiFmS6ixT3Q59RVLX+11pUo5LbwCKJHRnQmPSWuRwsVrvEaNlMXCZGeiepuKsX8oKSc8QrHI/Y8Mch8ZRdhxKWmfPVrNwHzpuJYcRxRngSDVM9Osbz8HUAF3QOj+N2Me+dLiH3MvtE0XdKNrJkmpl9wh3zduxgf+0nxRq/JQaG2qNI025YekGrri/EWKTkw3jJ1JexCuwfh/LJEbUpPkmpTxOu6ngxSn5Du1jLpr691ml7ba9NpOW/q94PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heu+Ua3Hb/Vybb9PNGWl06oGs9N2zLQCldlTgGR4dlU=;
 b=O0Qb2i/GQYJdlYb73blUx8ed12tPr4OyKgMJzrwmvWxmTBkt6t8DB0aLarHA53BiMXjqa1bElst5CzMib+sWtLvl43O/eZSGoaAPIY4H745get3BhiT9oQi5uFW8soli0U1pmxhJD6B/Xx9TNbg3FGgyWlHMtYbIhpY+8wUCXPxJ5UEB/fYmBGCoNjkHO/mGNx+/a3XdGwGCTMjHWXZIBA00CbUS5KriQViq+ZBM5mCNbpg8ZNqJ1c0Mnl5hXBBg3Z67ksYYPg3wnXvUAaji2MoLGvx4fLyd2Wy39wrWthGMgSRR9allXIhbsxgQgx7qnokg1ezcCYBIgwu/p3CU3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 16:52:28 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 16:52:27 +0000
Date: Tue, 7 Feb 2023 13:52:20 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230207165220.lhe3halq2cuet7fc@gjsousa-mobl2>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-7-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105125446.960504-7-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::24) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB7499:EE_
X-MS-Office365-Filtering-Correlation-Id: 92baf35d-0ef2-4dee-b41c-08db092bb1e3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QTZTbgHGfmgKGtkPg37N77hrgdJCikmCnErCJOoTpXaURpEhP7zzpZEgjcacu4KO/4NkNa0rBe7CXE+8Jtgr8MI9XGACj130bl7Mu57/mDDkLU955L+GHJC536Q9Qg1Tra/j2QUInWirU53mB+v137yf150gKz9RJNx6VC0blQNsAwbfoQpWlUoUHH4yV18iMl1oeYWaQf9JwAp3WhQvJy3HADi+szrQheRlbqqdwC6J9+uOLPqEgqbGeItB1wXpDU8OoXufmtv96GyygAcmex5d+VUQ6RS+hv+zWUH7HV/WO1SfEPV76ASd+q+CajGXIZUiUJt/h2u/aqPO7pHoUukAJ5c4zJYUZVeykjjOLT1WTqQw4P0m1CubOYTh22haumjJFDtj8iSe3qCmYC4DDPzPPsowONr+L1RBIqMGjByXd4E0zFxVxqDTi1hIsrwljfyyLNLohINFTQId5PJzwPKq0vWatf10oGQxxKQvQGNoDkploa9/t72/+pk197tM9/dc5BHFc7bT95GLhFYF83G/swi2Agyq5eEQAvlwwSEBH4EA0f8kcVyDq0VVWQTXo4n9iL3v7pp5a0gX+XZH5goNhqAIogLUqXx53k5i7nM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199018)(4326008)(41300700001)(66476007)(66556008)(66946007)(8676002)(8936002)(86362001)(33716001)(82960400001)(38100700002)(186003)(9686003)(6506007)(966005)(26005)(1076003)(107886003)(6512007)(316002)(6666004)(44832011)(30864003)(5660300002)(2906002)(478600001)(83380400001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y9YjOrwCuRJbRN5WgZ665eSwFQtlfrxefCBS3NhkrBg/QQ2agvDbwsAH9hmg?=
 =?us-ascii?Q?2s6kvChJiB4N0qlq+SaVe72KFliU4yAygivN+69qKfsQg6K94AbH03enpCq4?=
 =?us-ascii?Q?7XRR4nNDUTcPSL5YiKE9euYFYBzVuaJL9khOt+JzLjBfHeb6siXAPGi0Wcuk?=
 =?us-ascii?Q?XLb00dmQPatc/AmabDijgI/ZE2egjf52C9edl1nxAr7czSMwGrkXaA+ypJLz?=
 =?us-ascii?Q?999kuczVAbZ/Qwqix/xkAbBqm36B8v+NOZHl7AwS9a4vshXGJZ2ZN5J5cQ4H?=
 =?us-ascii?Q?Ud2BPRhRPO9kiKnlct73Y7zz5pHvWVSYe3OWiJTih0OxsU8LCsFU5g42+sWD?=
 =?us-ascii?Q?z0S+19QXVop55IC1KN2Qc4J5yIqausLQH1r9/mOjt9fa8W0bkJDdDzRTTLA6?=
 =?us-ascii?Q?u9xCtasbSU6IsQmP32mkhaQndf6ZyJuU0pP2wtYaq2/EkznrMTK1dX7e7leU?=
 =?us-ascii?Q?7WaipFt6sGvVSPE5wHU+StVmp3uhag9nf7FCFfWrXyi5nrDAreSwTytFmTTJ?=
 =?us-ascii?Q?VL54o58d/4yuZfVSqX6+z6l6lhQShizgXhrci1SY8X+ow9y4kL0XwUDqAYJb?=
 =?us-ascii?Q?2Vf0Zz70c+8siFbeIjRHUQeowNN9DmwBibDD+30R4s1gT8gONAn8O7Z71nX4?=
 =?us-ascii?Q?A3h6czQekMGF0G5cYPAJQm8ipMOKhKIkeFZWZ5RErMm655ixu966UtIjjnea?=
 =?us-ascii?Q?G67EV9FhIPAn6NiTDZFtgzqL3X7LeeZTbtr65Vey6xVfKdmK93hIHWLLF/uR?=
 =?us-ascii?Q?Q5N6QrLisqPQ5JDCl9h8lK1JjxDAFSSS8HSPCHbEeZAOgzWqR9pZt9SpxLw4?=
 =?us-ascii?Q?oSXzvwXbDJsrgv2hcTk1O/KOQO3Ps0TXc1dNbYdUuH6ENix0k/h3kpSGxRms?=
 =?us-ascii?Q?4Lcq7XJ0rQunBOgfNRmGFoZKVxkEZn/sIIABRMZ86YmnpNqa9gjpo+6iYOd0?=
 =?us-ascii?Q?NzhSo4vF9F3xu1gfWnf0FB+GUlZSO34OkjO+ypargnp+PfJdh+7nRcSbC+ej?=
 =?us-ascii?Q?HQUUxOONH4XgyvfOeMlxc8Ag3f8X/T5pzhn2ZA1n5wlDwdYiOC0h1h7JTXHq?=
 =?us-ascii?Q?oM0/nqd+bGJbS3dKG3wvO3/sgYoT+MmuaUmiBPbWC1JrJoZTjbmpJE86BjTP?=
 =?us-ascii?Q?IjkEEGlBE1Pwbl4qGo30WJ8HxlcH4f7R+5aYpKo5ZcsMInGx9JTZKwDUEF6b?=
 =?us-ascii?Q?9cUXpbBzMgpBOKlzqvPg/j3k/q5FPKZv6fQccdxGKeqxE22xZTZACPtfB9Wu?=
 =?us-ascii?Q?Uck+Nz5aYUi5A6nWq4kRQ6cZq3e0I159kPGRQjgY6YdRQ/Rqbc3qLf2hkZcJ?=
 =?us-ascii?Q?jcKwCHDMUWhSuxqyvDiYG+ok9uLms61WxcU4ckJhMQc5yZiFHSyIGfnZoHHA?=
 =?us-ascii?Q?JMzd+/v2S1dHOnFgNc8JnpqY95nyXknoVHI+4PYkIJcSR2XNcv5FADmMZTQ9?=
 =?us-ascii?Q?KcDDEBDW45GAbAdExqywi1ASiNZuWacBTpWAdnOtLGm5No2kSlVo5udWO+Js?=
 =?us-ascii?Q?XhcUct5GMMFWMld/bulSPNMkg4QBbFoHc22NrogleXw+6jSsM1jXWXbuRZoU?=
 =?us-ascii?Q?4aEZ+8kVMRqobuahzRF0gh1I08+rxslE2SHLAXMnccWn9CqpXRtLIMwFu2j9?=
 =?us-ascii?Q?Qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92baf35d-0ef2-4dee-b41c-08db092bb1e3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 16:52:27.8134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7QwpeZfdMXSB8FVIfpKw63v7U9j3+9puZkBKCgsF6+yH8DiPbf8sd3H1dcl56EaO6LtZzK+I3ezrX/WMUAIsIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 06/21] drm/i915/mtl: Add vswing
 programming for C10 phys
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I feel like some parts of this patch actually belong to previous patches as
fixups instead, namely the implementation and usage of
intel_cx0_phy_transaction_{begin,end}() and other fixes unrelated to vswing
programming.

Also, please see some comments inline.

On Thu, Jan 05, 2023 at 02:54:31PM +0200, Mika Kahola wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> C10 phys uses direct mapping internally for voltage and pre-emphasis levels.
> Program the levels directly to the fields in the VDR Registers.
> 
> Bspec: 65449
> 
> v2: From table "C10: Tx EQ settings for DP 1.4x" it shows level 1
>     and preemphasis 1 instead of two times of level 1 preemphasis 0.
>     Fix this in the driver code as well.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-7-mika.kahola@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 131 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   6 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    |  36 ++++-
>  .../drm/i915/display/intel_ddi_buf_trans.h    |   6 +
>  .../i915/display/intel_display_power_map.c    |   1 +
>  7 files changed, 175 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 746c905538a7..3d86b0f1c36d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -6,10 +6,14 @@
>  #include "i915_reg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
> +#include "intel_ddi.h"
> +#include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_panel.h"
> +#include "intel_psr.h"
> +#include "intel_uncore.h"
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> @@ -19,6 +23,15 @@ bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
>  	return false;
>  }
>  
> +static void
> +assert_dc_off(struct drm_i915_private *i915)
> +{
> +	bool enabled;
> +
> +	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
> +	drm_WARN_ON(&i915->drm, !enabled);
> +}
> +
>  static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
>  {
>  	enum phy phy = intel_port_to_phy(i915, port);
> @@ -111,6 +124,8 @@ static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
>  	int i, status = 0;
>  	u32 val;
>  
> +	assert_dc_off(i915);
> +
>  	for (i = 0; i < 3; i++) {
>  		status = __intel_cx0_read(i915, port, lane, addr, &val);
>  
> @@ -193,6 +208,8 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
>  	enum phy phy = intel_port_to_phy(i915, port);
>  	int i, status;
>  
> +	assert_dc_off(i915);
> +
>  	for (i = 0; i < 3; i++) {
>  		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
>  
> @@ -240,6 +257,80 @@ static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  	}
>  }
>  
> +/*
> + * Prepare HW for CX0 phy transactions.
> + *
> + * It is required that PSR and DC5/6 are disabled before any CX0 message
> + * bus transaction is executed.
> + */
> +static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	intel_psr_pause(intel_dp);

Shouldn't we check if this encoder is really for DP before calling
intel_psr_{pause,resume}()?

> +	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
> +}
> +
> +static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	intel_psr_resume(intel_dp);
> +	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
> +}
> +
> +void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					 INTEL_CX0_LANE0;
> +	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
> +					 INTEL_CX0_LANE1;
> +	const struct intel_ddi_buf_trans *trans;
> +	intel_wakeref_t wakeref;
> +	int n_entries, ln;
> +
> +	wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
> +		return;
> +
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +		      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);

The register PHY_C10_VDR_CONTROL(1) is only defined for the C10 phy and this
step is only documented for C10. Maybe we should do this conditionally on the
phy being the C10.

This would also apply for other places doing the same step (in this or other
patches).

> +
> +	for (ln = 0; ln < 4; ln++) {
> +		int level = intel_ddi_level(encoder, crtc_state, ln);
> +		int lane, tx;
> +
> +		lane = ln / 2 + 1;
> +		tx = ln % 2 + 1;
> +
> +		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 2),
> +			      C10_PHY_VSWING_PREEMPH_MASK,
> +			      C10_PHY_VSWING_PREEMPH(trans->entries[level].direct.preemph),
> +			      MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 8),
> +			      C10_PHY_VSWING_LEVEL_MASK,
> +			      C10_PHY_VSWING_LEVEL(trans->entries[level].direct.level),
> +			      MB_WRITE_COMMITTED);
> +	}

Cc: Clint Taylor <Clinton.A.Taylor@intel.com>

Clint has done the proper implementation for this (via override method) in our
internal client tree, copying him here.

> +
> +	intel_cx0_write(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
> +			MB_WRITE_COMMITTED);
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_MSGBUS_ACCESS |
> +			C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
>  /*
>   * Basic DP link rates with 38.4 MHz reference clock.
>   * Note: The tables below are with SSC. In non-ssc
> @@ -1092,9 +1183,12 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
>  	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
>  				  INTEL_CX0_LANE0;
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	intel_wakeref_t wakeref;
>  	int i;
>  	u8 cmn, tx0;
>  
> +	wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
>  	/*
>  	 * According to C10 VDR Register programming Sequence we need
>  	 * to do this to read PHY internal registers from MsgBus.
> @@ -1113,6 +1207,8 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
>  				   cmn != C10_CMN0_HDMI_VAL))
>  		drm_dbg_kms(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
>  			    tx0, cmn, phy_name(phy));
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
>  static void intel_c10_pll_program(struct drm_i915_private *i915,
> @@ -1250,8 +1346,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		intel_dp = enc_to_intel_dp(encoder);
> -		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> -			      DP_MAX_DOWNSPREAD_0_5;
> +		ssc_enabled = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			      DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
> +			ssc_enabled = false;

The "if" statement below makes this one above unnecessary: ssc_enabled will be
false if !intel_panel_use_ssc(i915) regardless of intel_dp_is_edp(intel_dp).

>  
>  		if (!intel_panel_use_ssc(i915))
>  			ssc_enabled = false;
> @@ -1259,11 +1358,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
>  		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  	}
> +
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> -		     XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
>  		     XELPDP_DDI_CLOCK_SELECT_MASK |
> -		     XELPDP_SSC_ENABLE_PLLB, val);
> +		     XELPDP_SSC_ENABLE_PLLA | XELPDP_SSC_ENABLE_PLLB, val);
>  }
>  
>  static u32 intel_cx0_get_powerdown_update(u8 lane)
> @@ -1401,9 +1500,12 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
>  {
>  	u8 l0t1, l0t2, l1t1, l1t2;
>  
> -	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> -		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
> +		      C10_VDR_CTRL_MASTER_LANE  | C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
>  
>  	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
>  	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
> @@ -1559,9 +1661,14 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
>  	intel_c10pll_enable(encoder, crtc_state);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
>  static void intel_c10pll_disable(struct intel_encoder *encoder)
> @@ -1606,7 +1713,8 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
>  
>  	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);

This could rather be a fixup on the patch that originally introduced step (7).

>  }
>  
> @@ -1614,9 +1722,14 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
>  	intel_c10pll_disable(encoder);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index f8023f240727..952c7deeffaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -40,5 +40,7 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  				 struct intel_crtc_state *new_crtc_state);
>  int intel_c10_phy_check_hdmi_link_rate(int clock);
> +void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index f6002b70ddbe..fd48c75ee532 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -169,4 +169,10 @@
>  #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
>  #define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
>  
> +/* C10 Phy VSWING Masks */
> +#define C10_PHY_VSWING_LEVEL_MASK	REG_GENMASK8(2, 0)
> +#define C10_PHY_VSWING_LEVEL(val)	REG_FIELD_PREP8(C10_PHY_VSWING_LEVEL_MASK, val)
> +#define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
> +#define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
> +
>  #endif /* __INTEL_CX0_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 099776b62052..e796e5cf10f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4472,7 +4472,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  		encoder->get_config = hsw_ddi_get_config;
>  	}
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
> +	} else if (IS_DG2(dev_priv)) {
>  		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 006a2e979000..ca2acaa73a64 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1035,6 +1035,30 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
>  	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
>  };
>  
> +/*
> + * Some platforms don't need a mapping table and only expect us to
> + * to program the vswing + preemphasis levels directly since the
> + * hardware will do its own mapping to tuning values internally.
> + */
> +static const union intel_ddi_buf_trans_entry direct_map_trans[] = {
> +    { .direct = { .level = 0, .preemph = 0 } },
> +    { .direct = { .level = 0, .preemph = 1 } },
> +    { .direct = { .level = 0, .preemph = 2 } },
> +    { .direct = { .level = 0, .preemph = 3 } },
> +    { .direct = { .level = 1, .preemph = 0 } },
> +    { .direct = { .level = 1, .preemph = 1 } },
> +    { .direct = { .level = 1, .preemph = 2 } },
> +    { .direct = { .level = 2, .preemph = 0 } },
> +    { .direct = { .level = 2, .preemph = 1 } },
> +    { .direct = { .level = 3, .preemph = 0 } },
> +};
> +
> +static const struct intel_ddi_buf_trans mtl_cx0c10_trans = {
> +	.entries = direct_map_trans,
> +	.num_entries = ARRAY_SIZE(direct_map_trans),
> +	.hdmi_default_entry = ARRAY_SIZE(direct_map_trans) - 1,
> +};
> +
>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>  {
>  	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
> @@ -1606,12 +1630,22 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
>  }
>  
> +static const struct intel_ddi_buf_trans *
> +mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *crtc_state,
> +		      int *n_entries)
> +{
> +	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
> +}
> +
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	if (IS_DG2(i915)) {
> +	if (DISPLAY_VER(i915) >= 14) {
> +		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
> +	} else if (IS_DG2(i915)) {
>  		encoder->get_buf_trans = dg2_get_snps_buf_trans;
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		if (intel_phy_is_combo(i915, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 2133984a572b..e4a857b9829d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -51,6 +51,11 @@ struct dg2_snps_phy_buf_trans {
>  	u8 post_cursor;
>  };
>  
> +struct direct_phy_buf_trans {
> +	u8 level;
> +	u8 preemph;
> +};
> +
>  union intel_ddi_buf_trans_entry {
>  	struct hsw_ddi_buf_trans hsw;
>  	struct bxt_ddi_buf_trans bxt;
> @@ -58,6 +63,7 @@ union intel_ddi_buf_trans_entry {
>  	struct icl_mg_phy_ddi_buf_trans mg;
>  	struct tgl_dkl_phy_ddi_buf_trans dkl;
>  	struct dg2_snps_phy_buf_trans snps;
> +	struct direct_phy_buf_trans direct;
>  };
>  
>  struct intel_ddi_buf_trans {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index f5d66ca85b19..f49da1c4eb22 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1426,6 +1426,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
>  	XELPDP_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_MODESET,
> +	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_DC_OFF,
> -- 
> 2.34.1
> 
