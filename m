Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C35B6BEE4B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 17:29:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76BA010E3DC;
	Fri, 17 Mar 2023 16:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 303FA10E3DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 16:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679070591; x=1710606591;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E2IYz2KQ5UXVN2S/YZjudn5bMrgh5ZyQr8jutcm/0tk=;
 b=XYi5TOAbackcL32wV/uAhLRYOEgYH+wJHah0HO+2Vrqjwm23O62wIK93
 f2H+LZ7dHCYZaMGVtp71y4/yymR9ZiICaV5d3zJa1I2sgLbI18wWnu4TH
 mqj6DnLTvf2AVqKCZX7GnucBSLjuM05YWqnstt4yYazojUIG9NljgfG/K
 6tfPNS/gXihwpwSHIPfXx+wraDSG+8mARnD5kqPyXNJJjNfjD/fQEeKzu
 /wwD7EqLpi3w4eD+NS5fgoHkzabWu+dkZXcgY/DpMPH4OkVS56qsCoJui
 D/dANqU+QkkqPcWdOooOCTiaS77k/kU0ijzlvvQq6bGDM//fx8Bd8PxMM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="403172103"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="403172103"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 09:24:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="769408167"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="769408167"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Mar 2023 09:24:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 09:24:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 09:24:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 09:24:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 09:24:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDcL95xY6ASm8Bu9ylEGI9h3CZc8ncnkcTdTSdP0NdNGI6heLx6Qgp1Ts0qOSiQjpahRMGhj9Oa1o9CicyC68j2RS04bhForjVQ4NK2n5LTye29STZxsspjYXQIP5BSISjc6yMZVUmOPN6GF10S6rDOYX1V+6ph6LFjt+nH0gp984fnOOE9lNcmpSbyax+Y4+uJHsHFeVDV+prW4ekAqjBq479DYcgFc9NQq2FPLf/1iMU5GaUKCW/qM9TGYbhyuNHVqQq1AA89IAcGpc1q6+hlWGyFxRffZDMQscKz/b9gwYj5fR8OETyNqIXsSJyEiYT8ZDjZwljP0vFh8D9b15w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6CVmvhRxl/mg8YhPpaMQuaJfn3zMQGOw693/h7euu1M=;
 b=b+kdJkGTs5VLm5ZxH9mkErKj9ymo5Pu0vVoOvHhGLGzb2F5gpEi9l7aTwl5sAaTGCs4X7l4G6kbD2ewtHQo/zcLfRHPqroFuBUU1KemKtJ3KWQdAc+s44bVZwa6YlOoayRAw4lvCexLLTHbUAq7QJznnZ+NeZVaU3VSgnJ9vC7dDRuqKLb0ehcQ1RWi21VeBBWRmsVfql5P/QKuONAWvNswfErp5gvTOn+aCDhqXKBCScnEfyrnNog5Ufq25ktfDsl4wMQlPRWCy7SvPM8D8RxkiZ65TgCP/CeJtyWRAc87rGHYym8bMzGoD5BUFeoxnFOL5G+O5G2QBzNrJ0OT4Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BN9PR11MB5419.namprd11.prod.outlook.com (2603:10b6:408:100::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.35; Fri, 17 Mar 2023 16:24:39 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.024; Fri, 17 Mar 2023
 16:24:39 +0000
Date: Fri, 17 Mar 2023 09:24:24 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZBSUOFc4Rq5n5dfn@orsosgc001.jf.intel.com>
References: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
 <20230316010101.2590309-13-umesh.nerlige.ramappa@intel.com>
 <87fsa4vu0j.wl-ashutosh.dixit@intel.com>
 <87cz57x67j.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87cz57x67j.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR10CA0027.namprd10.prod.outlook.com
 (2603:10b6:a03:255::32) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BN9PR11MB5419:EE_
X-MS-Office365-Filtering-Correlation-Id: 19549458-83ab-43b5-9a84-08db27041b5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fwbBn7LZkMI3UIcb2Q0Slo27nUq9rQlKUgmaQNOf/cLtyl48D9Ge8z8fvOBk9ktAeZV6G5GFn05mxibSaCRiBvMeaWkbe5JZfSOQjXol59M7DNzgRwxbGpSrCgXj3k0EJ2iXFN8n/DCbAOJQerOU1eW7BdpzzWDiXbY9VJj+0nfcn1Nqa0TRjVDsSfOkiCR/IM6LZAJPitmWvisclQ79KqoPMS5u4sj8TkB17lSO4hAq5gL9vSYOhjF6B53NBdo5JJSg+cUxM+poPLYVXaR+A4ChaBgG21bz6JMwqSjOSFE17ICzAkGNary0Cf46j6O02h0FDhGRqreQsjlBjm/6oSbuB8cLeri0FG7U7rG16IzmOl41GqwcAfTkjfZTNCvGf0AZtZmEeYjehrKAt70lpfIpEejwxckv8G1oncTqf0hLJylgiJfxAZBnLuivjffv3Ah8m8gJ+/AMsD82BdYd8LwZ/QV6bRWDiQ3KHeAs3s+LYqSJbq0TgZRvkplspJYgT4jK8e98yhpLuJwm6yaEmodySXMn/ljskrSa+ADnCYCxz8DQCLKfbebpde3a19mcQa8DxybtkqbbmF3EGoHvpvZd85oc4pilJx0qS0I1lUnObljacx3IVi5gyVBlpA3d
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(346002)(39860400002)(136003)(376002)(451199018)(38100700002)(86362001)(5660300002)(82960400001)(2906002)(41300700001)(8936002)(6862004)(4326008)(26005)(6506007)(186003)(83380400001)(6512007)(316002)(6636002)(8676002)(6666004)(6486002)(66556008)(966005)(478600001)(66946007)(66476007)(66899018);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1ExU00vb2JEMURmT1JIdjNvYWZQd1Z0NnFXNG04eVNOdU1yOXBpYkhEdlFJ?=
 =?utf-8?B?VlEwa09SdjB5YitlTUNPNW16TmhrZWFLU3JOMzN6Z3lBdmQzeXN4MkRyVm1m?=
 =?utf-8?B?Tnk1Q0owRzRLdHdpRXhwRyszY0ZqN2lyQVRDYnNXQU0ybWlhQzNrTEdMZ1Zv?=
 =?utf-8?B?VTV0Q3Bzb1BlUWc4Y1htSDM0SzZjYjhwc3ROK0JRT0ZCcmd4SXBsR24yRkdV?=
 =?utf-8?B?SG5SMXMwT1FEZEloS1ZPWDQySkpNQm0veVovN3p4SjZSMW5kSXFMREVtVXhN?=
 =?utf-8?B?WW16WUlWMXZPc081T0VWYVBwV2ZYZlUyV05KbzRXNlcrV2JYdFVkcTJiZ1FQ?=
 =?utf-8?B?K292Tkc5N3dmV0xsSUxWOWZmbmVsZlY4V0JXWVhvNkwwL3MzQ3hVc1NoRWJl?=
 =?utf-8?B?QWtLcDZXc2FVU281RWhZcEtjcDd2UVdiTnM5dFA4a0FiaVptV1g3Y21PbzFU?=
 =?utf-8?B?UzRhcVhoOXJuT2lYNVdKODVwQW5wUXoxaTk5WStlNjBhOGtoWXp3eHMxbUtG?=
 =?utf-8?B?eWw5MW1iTEF0cFlERnpHWDhKcEFIV09jdkgyaGw3YkdBVVo5OVBVZmVUSlQ5?=
 =?utf-8?B?QUhYK2RldzNHTGhUc1dmdFFEdjkyakVuRm1FUnpCY3JRaDlwMlh2aDMwb0xu?=
 =?utf-8?B?Mi9mcjVBemRrRDNYemxtQW5DL1cyNmpwaW0zc0tqeG9maUp6NC9BWUVxcnhm?=
 =?utf-8?B?RlFQMVFpeWdVYXQ1U3A4d3UxWDNvM3pkNDJYbW1xeVNCckpRMGl6L3JWb3Fx?=
 =?utf-8?B?eGN0VnRWdjBBdklOcGd3aUpXV3YwTUdzbW1NQjFURkFIaitiNWJrSExzaXJu?=
 =?utf-8?B?bGo5SzR2WGRNY2tpN1BqMmk3M0I3anNqNC9HUm9RQmFiMVliYUNvdkRBM2ph?=
 =?utf-8?B?Zkx2b1pzbzk0Sm03U0xNdndaWXBnWTRTcjRVS1NPbC9iRWc4UnBtaVMwR3BP?=
 =?utf-8?B?Ty82aW05NDJjQ1BJY0tBZU9VZC9HUTR2aEVIaTBvbnY2ZW5OTDNXL09NaXlJ?=
 =?utf-8?B?ODlDRit2Unhnd01SSmxDeDF3MTlFL1k5dkRXMXNRa2hCNmhTTC9peUlzSFhI?=
 =?utf-8?B?SUZSMlBaTExBelpZeDRnYmFVZnZwQkUxbWhZdTViejVXTEJvRG9rWU9IemdM?=
 =?utf-8?B?V01VOGNVNWpkak5xeThkbC85TnlLSEV6OHBrSnZFM2J1bXVERWtraEI4cy9Z?=
 =?utf-8?B?dlU3QUlTSWVUNUYyNVhON3pKQlpzMVAwTHYwWnY5aFlIaWZxejhOV3BzQmw2?=
 =?utf-8?B?ZG5ZY2FpbFYyZ2NjRHZTemJ1RTI2OHl1QXAwS3BEZnltOGNZMk1PQm9WaXU5?=
 =?utf-8?B?Q0xwOExTb2RxWUJ2QXVDSnNuM0FjeUVHUmljUW5LWU5HRlFsZklLYWd1NFl6?=
 =?utf-8?B?WkdWalMxb2t1T0lqYk5xK1JHS3l0Qkp4cnZmTldzUmtINzZ6RG9HQ1crbmYv?=
 =?utf-8?B?c3hib0o3RGJkbmNWTWFRakd6b0VFZDloZVdlUFppNkFuaVVnV1p0T0RvcHZk?=
 =?utf-8?B?MkF1TFNpc2NuUTQwTzVNdmdBRHFHbEgxSGc4b1l0MThkWE9FSzF0cnlGSGVL?=
 =?utf-8?B?MEo3OUlJcitwM1lCd2I3OFdmZHNMQ1BkQ2lORmxXTFpKbW5wK3JBTVpPaWNL?=
 =?utf-8?B?eW5xZzQ0dlNiOFpoZXhBNERldHhKZG5IOXNFN2pHVktFeHJUYnVTMDhzM2lF?=
 =?utf-8?B?dHRBNUR1SFVUdklpUW1DelVGMGMvMVJQVDluamlDWlVCazA1WmxpOFkxWmhm?=
 =?utf-8?B?Y0xEWVBrN0dVMFd4N1Bud2dhdnVGcWhFUDlIblpVR2s5S2tpdy80NEdmWU9s?=
 =?utf-8?B?Q2xQWFUyT3NCMTFnZHZsbFdWT1BDWXk2eU5QZzB2a1pacWxnRjZSWEdsWFhS?=
 =?utf-8?B?eGxrdE1Cd0tLQjNNUERpc1dKeldYSExIeVdZSndnWExDRFlqZXhTNEF5VDRx?=
 =?utf-8?B?R1daSkgzcmRxY2RVMkJkWUVTcXkzWmJFTGdXK3Z5RHRJMlRZdWV3S0lyaWl5?=
 =?utf-8?B?T212ZXdXc2hnYjdJMDlVYTh4ODhGN1IxME5wM09JVndKekJJVGRkWnZ3ajdz?=
 =?utf-8?B?QmNlRWRlbXRhWFlieVRhVGpUcmFBMlM0eWMxZVVuaVU2eGhwL1RldXkxU0di?=
 =?utf-8?B?UHpObElGWVJianN4WEV2OE8vZHc0ZkN4c0tsMFhabDZrSFBJdXFsVHpJcE5V?=
 =?utf-8?Q?JJgyw/50QETKrpr9eaRDh1w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19549458-83ab-43b5-9a84-08db27041b5b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 16:24:39.7585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H8I6FADEaHXMJtJ1Um2Idq5fdj/u7ZDW7GjhRWhdK1v/KlRcUv36GJaxWOkHLkRQdy94XYdxeAS501y5nOwlfnqnQV2mzIFoe+mK8RPBO+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 12/12] drm/i915/perf: Wa_14017512683:
 Disable OAM if media C6 is enabled in BIOS
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

On Thu, Mar 16, 2023 at 11:06:08PM -0700, Dixit, Ashutosh wrote:
>On Thu, 16 Mar 2023 22:14:52 -0700, Dixit, Ashutosh wrote:
>>
>> On Wed, 15 Mar 2023 18:01:01 -0700, Umesh Nerlige Ramappa wrote:
>> >
>>
>> Hi Umesh,
>>
>> Mostly looks good but one nit below.
>>
>> > OAM does not work with media C6 enabled on some steppings of MTL.
>> > Disable OAM if we detect that media C6 was enabled in bios.
>> >
>> > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_perf.c | 30 ++++++++++++++++++++++++++++++
>> >  1 file changed, 30 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> > index 77fae3d80128..4ac6535a0356 100644
>> > --- a/drivers/gpu/drm/i915/i915_perf.c
>> > +++ b/drivers/gpu/drm/i915/i915_perf.c
>> > @@ -209,6 +209,7 @@
>> >  #include "gt/intel_gt_regs.h"
>> >  #include "gt/intel_lrc.h"
>> >  #include "gt/intel_lrc_reg.h"
>> > +#include "gt/intel_rc6.h"
>> >  #include "gt/intel_ring.h"
>> >  #include "gt/uc/intel_guc_slpc.h"
>> >
>> > @@ -4898,6 +4899,18 @@ static u32 num_perf_groups_per_gt(struct intel_gt *gt)
>> >
>> >  static u32 __oam_engine_group(struct intel_engine_cs *engine)
>> >  {
>> > +	/*
>> > +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
>> > +	 * C6 disable in BIOS. Do not enable OA for media classes if MC6 is
>> > +	 * enabled in BIOS.
>> > +	 */
>> > +	if (IS_MTL_MEDIA_STEP(engine->i915, STEP_A0, STEP_C0) &&
>> > +	    intel_check_bios_c6_setup(&engine->gt->rc6)) {
>> > +		drm_notice_once(&engine->i915->drm,
>> > +				"OAM requires media C6 to be disabled in BIOS\n");
>>
>> I think the typical mode of working with MTL would be to enable C6 unless OA
>> is needed. But this will print out this notice on every MTL system. So IMO
>> we should print this out only when a OAM perf stream is opened and that
>> fails.

We could do that. I can move this to the open ioctl.

>>
>> Though not sure if it's ok to add a line to an already cluttered dmesg? The
>> default console log level is 4 (WARNING) so maybe ok?
>>
>> https://linuxconfig.org/introduction-to-the-linux-kernel-log-levels
>>
>> Though if we fail the opening of an OAM stream we could make it a drm_warn?

Hmm, I was thinking of just keeping it in line with the other failures 
in open ioctl - a drm_err message, so that it helps debug.

>
>Another idea: there is a drm_notice in Patch 2 when C6 is disabled, maybe
>we could just change it to "C6 disabled by BIOS, OAM availbable\n" or
>something like that and just remove the notice from here. I think we should
>avoid the notice when C6 is enabled since that is likely to be the default
>mode.

Ideally patch 2 is required irrespective of the OA issue, since i915 
should make sure it honors the bios setting. With that in mind, I would 
leave the drm message in OA code.

>
>>
>> > +		return PERF_GROUP_INVALID;
>> > +	}
>> > +
>> >	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70)) {
>> >		/*
>> >		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
>> > @@ -5317,6 +5330,23 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
>> >	 *
>> >	 * 7: Add support for video decode and enhancement classes.
>> >	 */
>> > +
>> > +	/*
>> > +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
>> > +	 * C6 disable in BIOS. Do not enable OA for media classes if MC6 is
>> > +	 * enabled in BIOS.
>>
>> Maybe add something like "Return version 6 to indicate non-support for OAM."
>> just to make clear.
>>
will do

Thanks,
Umesh
>> > +	 */
>> > +	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>> > +		struct intel_gt *gt;
>> > +		int i;
>> > +
>> > +		for_each_gt(gt, i915, i) {
>> > +			if (gt->type == GT_MEDIA &&
>> > +			    intel_check_bios_c6_setup(&gt->rc6))
>> > +				return 6;
>> > +		}
>> > +	}
>> > +
>> >	return 7;
>> >  }
>> >
>> > --
>> > 2.36.1
>> >
>>
>> Thanks.
>> --
>> Ashutosh
