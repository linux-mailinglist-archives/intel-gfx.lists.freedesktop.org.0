Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F357A691ED9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 13:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E42210ED04;
	Fri, 10 Feb 2023 12:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D798310ED04
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 12:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676030891; x=1707566891;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=qLf1/NaIwE61LkkPaeA8wJVHJtiIkZH0GOh1js34Dcw=;
 b=SVL51dutK+Nz8qs6SA/0fZP0GsNSm3Kpafhey0jGFHW/U6kYwpeKe1YS
 paO9kzXuTX5EWFvF2zMW8xyw3ASze3CT1XP73TBGujAY3zHGVAl2e13ic
 vzHMDVYMkYaZbroLzm69CCMvIMx7iPekLXVPk2GWZJ7vOMVbwUTwe8rhx
 zqVPY+FI7u/Nuln1QF4oMntWxItThJZByGn82Kh9CLnoYlAuNtVfT89yO
 FggrFF3gdmjqw/n8KIUs9cUbNkum89Il2qlW3HVRDBRfwd6gVA8b5KgcP
 XaZRIJB50WPPsWC4BWX6/TicKqB7uFnzvlSIZRAwIWTBeHeASpxy3/9M4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="314049799"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="314049799"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 04:08:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="731700325"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="731700325"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 10 Feb 2023 04:08:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 04:08:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 04:08:08 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 04:08:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSSsU7ZQefej+KL0HBIAmoGSJkodCCRN9/MKpzOysAnMc6CHxl6F7ImmfUlQFHqiN7zvKaQqw2TeT4KqsKdA+uOj99rmQRXHGewZkiZL+61lM0dDtkoVzigjkszszQANrM5BqD+r1SKqQT40vPx/UNy1S8nCcHJe59zKvdsVjnV19Pcysy8Snpn54uOs5wlQnbHlIetlBq3wia7YDD4WTXW5E4X/tYQzIWnAAYmatLwOb8PuXbO6HDBRbqoUjRs5v9SkQAhCqB3yCluYywSpLlb9JHFjFMsX7emcyDCr9yYyB0zxgiXuPMDQiq2SoJim/mAtPEYJqbxSR7wTf6RGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3FFcTVeM+PikR4P2jr7+CQ2+dkK2bMz/1O2nGa+ff5U=;
 b=NmVU/oGhddrur9XkdEzgB9dRtGMwZ6n5S08QryiynmnvXYBVOyeFOMQJHwfy9pHiZo4YChSEPZfpSCnICel/zkPklhFuBahV1UvIco9t48JFlShbcqU2xSYtMS2yhhx9VQhg+yg7lZ12QkjIie2JBTc3jPgm0ZXEAGVlKtAAyNEKf3YvvBwBQHSZJ0QgKVXEAe/WRLOa+a9lc2slJTHZflgGgeVOod4F4o/Uuu1Sh+FYoAR/cpwdPG/mopTUqTcaYjXnFWXSGYW9cCzhWlFo9JFTFDL8vKEbd8E1fqB2rmbN18jp5XrfoSrz4RKt6rthUdkTLvEkNsRMU9X8V+AXkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB5309.namprd11.prod.outlook.com (2603:10b6:5:390::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 12:08:07 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6086.019; Fri, 10 Feb 2023
 12:08:06 +0000
Date: Fri, 10 Feb 2023 09:08:01 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230210120801.afin46qgkojsn7hl@gjsousa-mobl2>
References: <20230209232228.859317-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230209232228.859317-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR13CA0177.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB5309:EE_
X-MS-Office365-Filtering-Correlation-Id: 7caae38d-7be4-49e3-8ff2-08db0b5f77f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wgc9aTiAgfoPXFWm2BU42Au0DMgOKDZTpB+d/fetI8wQEubxmR23okwjfFzJMPmPP3xfVtu2SmKH5UtV+s8bRmuc4y+QR7VzlqbA7OdLdQ0XQ8flE3cHRlxM0meg34/Yy11NrdrpIlQESa1/f3x2daNaJ/sj5KWRg9xYIWCmhepnP3tOqZ2+Ei72XuJapNDD+NqbeVMu0t7NxzV8isV9ddp8iqwL0ToGJT85WX3yod+4HupabAWUBQjneyuAHZZ2qbIhvUJAdsQbVMLhM2+1Wry8ZN1x6sjIA3qfLsOoVxAkd3BgyOrCaI/SG9BN4jK2AaVl4eGUH8K2Z8gK81pYbTPCwh2vcro5LhYbpBhFFEE47iuZh1s62Onc1yPjWpUZxeaAb2AFcHhRAYn3KrWsX4c9YmD1PO3XezDImDO3Zyf6FQ73p7GeYOoQPviGi0+Vd+LBUMoVJ98UduT9znxZz9U8Qy/ZxsI8xRiqceqsOqhHYCAliHMJZhgjzRFy9JpfkWXsj+ceVm+Prl4wDt6QDFm5NHXjJETn5Fh2BFYOHtLbAoxx/yvqW3EQIzZBIXlgLmH1stP+sSJzk1glNiitZaYnQhOx0IDgnWZarFff93UUDlaMfYSpYY4pjjtEpGQEaCPpMdGmnvOdDp6b+9vfWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199018)(86362001)(82960400001)(38100700002)(41300700001)(66556008)(66476007)(66946007)(8936002)(8676002)(316002)(33716001)(5660300002)(44832011)(2906002)(83380400001)(478600001)(6666004)(6486002)(6506007)(26005)(9686003)(186003)(1076003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t9tBgc51k1R6f6KbSdj4R3FtZutw+hGPV6borwuHIkfwuk7jQGRTjCi79LMu?=
 =?us-ascii?Q?7T15MGKqOWYHx/vUqoQQ6uEKrqxAXs8LyrjZv2WS5fO4iBiO+B9lJ8BfEjoT?=
 =?us-ascii?Q?jPTRP/qVAazH6P6oS5i5MBCwInQcrJS6uVKmbQ1ggkcv3wTFOjQT+J+SO7LN?=
 =?us-ascii?Q?1rm1aEpAaKz6375kIUTrvjuYsjke3BzgaDp8YKD6AdJr37SrzjSPI1kqZ1iw?=
 =?us-ascii?Q?5FI3E9xQIk8f/wjcquu8cgsYh/tEuTHYXxM6sTIpn0fL/RazaeTyoCmDAzOE?=
 =?us-ascii?Q?OtFBYM9LTZjX/Ag/LChjnJEkGcku/6LP+Zbf+iyx8eXh5HKSMk4S8yhSauSB?=
 =?us-ascii?Q?/SePNCJCBgzsJycmFCDvLuk9Pz0vAi91m1xzWWd48M5Sbr++1mpzgLnvUhJ7?=
 =?us-ascii?Q?1evEd6qiy6On2VCjoHtzyMpazyiWYcKwZJzqXi+ZGKLAvyVAYvLYZk7D8an0?=
 =?us-ascii?Q?8vBBg9C0sZiGjyj4WiQfjG0X/S3MbqZWR+RHgY6CZPE40GWMriomc03jcJtq?=
 =?us-ascii?Q?PY9zV4f2syuxNLZzaT4YJceDuhWYVYOe5MARdCfd7tplpKAyhaFibABHS8xu?=
 =?us-ascii?Q?diAHMHcnfQNV5y4p0+4TDXcI3xfwrRc7xuSrGnaJR0BBjRoHwOMtXPDKeh37?=
 =?us-ascii?Q?TMP/NQCKv+gHdN3mx+zqo08KQHIDKYO88M8mb/AZjFSTfdpgz3srEE4rJV9y?=
 =?us-ascii?Q?nDDReRiRzMqv469GqGAdkNzdFMKVwB4lx4LWTn7QNxTwe3KJGne12i4/sAaN?=
 =?us-ascii?Q?LoxAlxZYYvT66Cw+C/pefUbPo1RINa96CGdEpbry9+/HWmb2vbUcAi/hqpKQ?=
 =?us-ascii?Q?m43xLzD8OqF3s58UlXtt5+J7EZNRtNAsz/m0+BiSAfuIuZvf2AjZNBhugLcs?=
 =?us-ascii?Q?qM9KXfIeYWBcRgCAw5iIOYsyBQ32c8HUJ7tAktJ8o+S0PApQCD2jGoRGaYW1?=
 =?us-ascii?Q?w0AxsRx82f3d58tbx11GhLj9ctXwDEJhEMYG/grU5oOmy7lVvteH/I6oJUUH?=
 =?us-ascii?Q?EVYa5kVskSJEm/1yTBKxZGhkSueLccWGj+ZqIafrj3qHVIYI/zg49i2UqeO2?=
 =?us-ascii?Q?RhnWaWwR8v1vd61kNzF6Av0/dSKpDy7gubeyrvNXQ8F+MJeNsa9Hv+mF6PyR?=
 =?us-ascii?Q?9d6dnZd/Vr/pcbqH1mGvDliy5npS91Lo9BpFG9kgwruI3TwpAQjkurw4lSnM?=
 =?us-ascii?Q?9iWJLjzqXyleaHdZt6NYg4+gFwfR1Mcz3Pk8TCFr5sL67SJV5UFWgHexmh05?=
 =?us-ascii?Q?/+5ddGRxlFyg39afzGFNKz4tcbX6KzhGnMen/Lm33APCA8G8niSVOa5soH/s?=
 =?us-ascii?Q?wfJXlbZ+bZp7Z/TcT6piftasC3HQ0gIMcW5vhxvA2acZ0YBqU22wMQCKC3dh?=
 =?us-ascii?Q?oRU1bCgwNRohWYWoJ/YdFxJ/8wb5p4dvo83OTrnT5i7DUZvv8cVyEciFvG3e?=
 =?us-ascii?Q?0S4xzQusx2G2Ikry8izDtmKHbbHkpMasxQf090Qc7SzTj7kklCRnQFegeDuC?=
 =?us-ascii?Q?n5dFNC5CmHF8u2dNiv0NOBrnNVdiR4OZsry6DZKynfSvbOykbMtnkRCJgG/n?=
 =?us-ascii?Q?x1bDSEqB0eUXnCszORbxh6m9liNlZWE9FO2xDWmN31/953th3s16jJDnInfm?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7caae38d-7be4-49e3-8ff2-08db0b5f77f5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 12:08:06.6843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XD6g9E1Of5fe66noa2EwTZrz9Trdmd+JDdUviT2bV8KRlna6eUKrQDoDM4LEmfdijQ0QJ8fJR1VrBgdoIdoiMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5309
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/xehp: LNCF/LBCF workarounds
 should be on the GT list
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

On Thu, Feb 09, 2023 at 03:22:28PM -0800, Matt Roper wrote:
> Although registers in the L3 bank/node configuration ranges are marked
> as having "DEV" reset characteristics in the bspec, this appears to be a
> hold-over from pre-Xe_HP platforms.  In reality, these registers
> maintain their values across engine resets, meaning that workarounds
> and tuning settings targetting them should be placed on the GT
> workaround list rather than an engine workaround list.
> 
> Note that an extra clue here is that these registers moved from the
> RENDER forcewake domain to the GT forcewake domain in Xe_HP; generally
> RCS/CCS engine resets should not lead to the reset of a register that
> lives outside the RENDER domain.
> 
> Re-applying these registers on engine resets wouldn't actually hurt
> anything, but is unnecessary and just makes it more confusing to anyone
> trying to decipher how these registers really work.
> 
> v2:
>  - Also move DG2's Wa_14010648519 to the GT list.  (Gustavo)
> 
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 70 ++++++++++++---------
>  1 file changed, 42 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 8859eb118510..989e9578e122 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1499,6 +1499,12 @@ xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	/* Wa_1409757795:xehpsdv */
>  	wa_mcr_write_or(wal, SCCGCTL94DC, CG3DDISURB);
>  
> +	/* Wa_18011725039:xehpsdv */
> +	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
> +		wa_mcr_masked_dis(wal, MLTICTXCTL, TDONRENDER);
> +		wa_mcr_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
> +	}
> +
>  	/* Wa_16011155590:xehpsdv */
>  	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> @@ -1548,6 +1554,9 @@ xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	/* Wa_14014368820:xehpsdv */
>  	wa_mcr_write_or(wal, XEHP_GAMCNTRL_CTRL,
>  			INVALIDATION_BROADCAST_MODE_DIS | GLOBAL_INVALIDATION_MODE);
> +
> +	/* Wa_14010670810:xehpsdv */
> +	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
>  }
>  
>  static void
> @@ -1669,6 +1678,9 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	/* Wa_1509235366:dg2 */
>  	wa_mcr_write_or(wal, XEHP_GAMCNTRL_CTRL,
>  			INVALIDATION_BROADCAST_MODE_DIS | GLOBAL_INVALIDATION_MODE);
> +
> +	/* Wa_14010648519:dg2 */
> +	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
>  }
>  
>  static void
> @@ -1684,6 +1696,9 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, XEHP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, XEHP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> +
> +	/* Wa_16016694945 */
> +	wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
>  }
>  
>  static void
> @@ -1724,11 +1739,36 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	debug_dump_steering(gt);
>  }
>  
> +/*
> + * The bspec performance guide has recommended MMIO tuning settings.  These
> + * aren't truly "workarounds" but we want to program them through the
> + * workaround infrastructure to make sure they're (re)applied at the proper
> + * times.
> + *
> + * The settings in this function are for settings that persist through
> + * engine resets and also are not part of any engine's register state context.
> + * I.e., settings that only need to be re-applied in the event of a full GT
> + * reset.
> + */
> +static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
> +{
> +	if (IS_PONTEVECCHIO(gt->i915)) {
> +		wa_mcr_write(wal, XEHPC_L3SCRUB,
> +			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
> +		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
> +	}
> +
> +	if (IS_DG2(gt->i915))
> +		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> +}
> +
>  static void
>  gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
>  
> +	gt_tuning_settings(gt, wal);
> +
>  	if (gt->type == GT_MEDIA) {
>  		if (MEDIA_VER(i915) >= 13)
>  			xelpmp_gt_workarounds_init(gt, wal);
> @@ -2403,16 +2443,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0))
>  		/* Wa_22010430635:dg2 */
>  		wa_mcr_masked_en(wal,
>  				 GEN9_ROW_CHICKEN4,
>  				 GEN12_DISABLE_GRF_CLEAR);
>  
> -		/* Wa_14010648519:dg2 */
> -		wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
> -	}
> -
>  	/* Wa_14013202645:dg2 */
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
> @@ -2897,16 +2933,8 @@ static void
>  add_render_compute_tuning_settings(struct drm_i915_private *i915,
>  				   struct i915_wa_list *wal)
>  {
> -	if (IS_PONTEVECCHIO(i915)) {
> -		wa_mcr_write(wal, XEHPC_L3SCRUB,
> -			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
> -		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
> -	}
> -
> -	if (IS_DG2(i915)) {
> -		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> +	if (IS_DG2(i915))
>  		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
> -	}
>  
>  	/*
>  	 * This tuning setting proves beneficial only on ATS-M designs; the
> @@ -2988,11 +3016,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  			   0, false);
>  	}
>  
> -	if (IS_PONTEVECCHIO(i915)) {
> -		/* Wa_16016694945 */
> -		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> -	}
> -
>  	if (IS_XEHPSDV(i915)) {
>  		/* Wa_1409954639 */
>  		wa_mcr_masked_en(wal,
> @@ -3004,18 +3027,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  				 GEN9_ROW_CHICKEN4,
>  				 GEN12_DISABLE_GRF_CLEAR);
>  
> -		/* Wa_14010670810:xehpsdv */
> -		wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
> -
>  		/* Wa_14010449647:xehpsdv */
>  		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
>  				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
> -
> -		/* Wa_18011725039:xehpsdv */
> -		if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
> -			wa_mcr_masked_dis(wal, MLTICTXCTL, TDONRENDER);
> -			wa_mcr_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
> -		}
>  	}
>  
>  	if (IS_DG2(i915) || IS_PONTEVECCHIO(i915)) {
> -- 
> 2.39.1
> 
