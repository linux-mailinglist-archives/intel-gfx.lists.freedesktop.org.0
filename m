Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FEE67605B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 23:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BDA10E297;
	Fri, 20 Jan 2023 22:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D4D10E297
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 22:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674254773; x=1705790773;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=njytMQzyMfrQvcWG5WfaYn3FuUXlBOZkSN6RzVWuH2Y=;
 b=TpV+id2C57JuW6IWeKpAS8lDZnEhRJHlZwzoylg4f0fy0R9iVajhhdRP
 Kui3/u5c/97A47OooIFKpCXK5scebmAknHrhS4D5IBT2GzNgq05Ncp7fl
 ETb3Sp5wGM+/1T9aIjQ1H8FTyNEiwqr1/xDcrLy+pI4SvESPy1kb3fARp
 33EakdjCOfcGDWMrBAkyB7tZg21JVCF4Irxh0wLRARv33DjlT/7n9Awk+
 h9NOJXqCP4C+Vtgii8njPLwcAtBeD/kyo0+VSu4vJdk0uCG9EJwux/n11
 j6pRQbqAXkHMMKkeJLuCnXvla06/WnGtTQ2waB9P7QI7E503ZiSpO7R63 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="324405179"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="324405179"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 14:46:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="834569999"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="834569999"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2023 14:46:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 14:46:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 14:46:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 14:46:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gNPS3I9fYKliZtqL6teO/HcO25VfEG1AHIfBAVd/RLJxOCzg0x4WQU4EsjEieqSaS1u1fny/060HGkxlt63mZxCmVpuJElnWsrY7AstMBYjEUZhQcV6HjZ37uzTcxGRaIcNwjhIe9whYdu+hj0HjDpV357R+JyBUEI1Pux6FAOF383tZUg8zA7S0ToU9wVprVrzOCUigaEBl22D7IlaYMMY+8Sj+3xFJvjfFrScojIP+EPuVvk4w0Gp6ehOYDVB5KJMcuhamlgpSIFnHsx9JqZqsF3qWZJ+ScXW2SV2qvvQjuYWeTBk7J1sYkof2PcWpLLo5QXsdD4cGVsYEAkdltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/IciDoczII+UmcI+vGbks+O1xBT+Z320rHPFiG1IlCQ=;
 b=JQ3M7LHRCUlk9W5O7FF6o4Oo9wqtg0i74Kk1bPLKxTtqYcF0zzxgaGk8DUSvkO/OYfhgwoiQKEwiofLiVYItVnzufc31+r6n9ePsNNlC3jhMamrkzyFyF0flBSp31q9zHfA3CgmJAH23+4K174FxKRTT0eVUmXvGfygamMEM12wrY4JrAmGJpxVKUwB2TRaq6qJHzUX8Wt3Tb8HAnO5td2XuodKbYjaMCTILYWw/Z2NMqXsKpibXXBUuXtiNDoZSJVlbpqgWSHe8AkJmUoWQXCmBlXbWCnaV/h+tdzPDAZEYjCsgNgGnkImU4mPru/mbSDK0jBud+rSalkSn1xl5sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5092.namprd11.prod.outlook.com (2603:10b6:303:6e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.25; Fri, 20 Jan
 2023 22:46:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%5]) with mapi id 15.20.6002.024; Fri, 20 Jan 2023
 22:46:07 +0000
Date: Fri, 20 Jan 2023 14:46:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20230120224605.vjryf3mmkr4vpzin@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
 <20230118155249.41551-3-gustavo.sousa@intel.com>
 <Y8m8tYS9Oma09+7i@intel.com>
 <20230119222429.exavqg6mjmj5aeqt@gjsousa-mobl2>
 <243ee40a43dcfae555de7ab4186fb4ede70f9741.camel@intel.com>
 <Y8nMQkCmLKZr/6Iz@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y8nMQkCmLKZr/6Iz@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR05CA0124.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5092:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cd7be17-2426-4352-8ad0-08dafb381e45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3n7z26jQaq+aFjMI+u3icw/aNbKLzDvQIFdpS8CTSEX9DmNumhTmMVxFX6zyTI949Jj7+M9nTM+nGJUDmQHbLaByRhI0d7KF3PAYb2wEHnvhxoyqxqCh1FmVRe8A+IJfiFBakU1qeOyfcAS9IYomO2pAw3t8qVIyUyUb6z5XCr0dv3iW//hRQP69KcTATnrM6A2o0ppFngkJtnGgHLoD1jMCkYAEdnshvk8Y+AIrtrRaOMAO5kqM63fQeEkyBIMqhhEOQF6DAgfeuzbQFwWGakgYMDAHwcqTUiIuZjEA3wIIX/055/LvenX7lDudlWHnFIXNY4St3NWPNOisDxvF15/CLqLNZapHu8B0qXSLdRPPVWv4TfU2imBAPUsqYg+n5QCMNbS93mezhtkzoe1tkq00npxGMccPgSokRLf4TxdgsRZjCA3YiGkJCrH1tTOTxuHAkAD9b6MSAnG9MHfdTiMQdYes62SjrcB39oTmdkSbhTJogeveoD/5zy3Ecs7Ssm7qh9EzmjFP+cJNNSkqHNjkhg1rw2GRCsWC/a8bUcxRkgonK/2KqnFVfRUVxydejoBEx5LOPjU4kWy+t8Z8BJuFO3Tju2eXVsCfRFSAI2sE05iJ9foBWjcRt5Jin+h32JUqH5Neva4SnS0BrCZhKA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199015)(1076003)(8936002)(6862004)(5660300002)(316002)(6506007)(86362001)(4326008)(6486002)(36756003)(478600001)(9686003)(6636002)(54906003)(83380400001)(2906002)(66556008)(66476007)(8676002)(82960400001)(38100700002)(6512007)(66946007)(186003)(41300700001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?vCf4dmZi6bKerT9Ams19UqL1wIRsT+HMyfISEF7R+uP7aJoxluygq9nath?=
 =?iso-8859-1?Q?sVOZKyWHLx1yfR2U9bXFmxzmhbxp9CG8bPQsHT1kcgADAQQxuxQ9sLmb64?=
 =?iso-8859-1?Q?ei/GkqUpLLrHiuFx5mU+f+l/DlfUXPCCloikQi6Q0q3SVoWraX9aHQCrGa?=
 =?iso-8859-1?Q?TJDyK//TWUaLUTPzjW+O9FaLpGoML11mk4TiivMP6UZlRrdyJf5tUxnu7L?=
 =?iso-8859-1?Q?vc23x/nHNAaYLGoGkKUNZZ5iRwa3ilDeqKfbSYf5pVUi0JDV2+RybUgWrX?=
 =?iso-8859-1?Q?pPUmeAkRBuaBAjZhMQARze4U47DufFLOUD6WbzVd1vElHdkprQsCY4fDrj?=
 =?iso-8859-1?Q?1ttuc5tWczCEAN8z4f2iuyCWnJabs6pklIfetBTl2gLrBfyrLDtUpPRuCz?=
 =?iso-8859-1?Q?67ng6eU/HZKgoQjx9CUwpPo3toNJF2PHxUO1ZyQMC7WriViFqGCWxYp2v/?=
 =?iso-8859-1?Q?oyxUAG7Z0EFElpcv47JXEfCeBHaeH6OrGCfROcBOJ9wJ6dDYdY8M846g+d?=
 =?iso-8859-1?Q?ukxUCtJPG+62LI4B7itWz/ZuuHHxa+aP/+I9yab9IybR0ffoa4t0VUyhBR?=
 =?iso-8859-1?Q?lxP5O6+fRrdd29a6lXSMuP0H6NAkmtHWPYiQ6doYnI4wLSYLNUoPizjvAr?=
 =?iso-8859-1?Q?AnxxrEAzT0aQfilH85vTz9zXaHosPgO7vwDOE6Io+W0FoTOnzzLea1Z4Gh?=
 =?iso-8859-1?Q?u42Rg+L+iERhL7pF2cCn/gUTE4256I9NrAJHMf9J3Q7XEdUcgKrriGx2tS?=
 =?iso-8859-1?Q?6dQvPzyWcK4ZGn3oqMW8BI9mZZUdCNsk8SdggAKmwGKDgKUfAUXgKO7F6b?=
 =?iso-8859-1?Q?fufdLlAvs2c0vYyJtx+V72vDVZJyNlRmS3es9yyLH0VU4noAdRFvmvcyHQ?=
 =?iso-8859-1?Q?X2x1zHeK/t1BrOyqL6/VNPCpETnOhtiS/+GkA3DRrSMlwAIVJydylVhTIk?=
 =?iso-8859-1?Q?x9HW+jfiXK0/NnbatDDgchXWe+880l7gZD1caEcNMlEnS1pOKS1Yc29Qlb?=
 =?iso-8859-1?Q?H38APOfxmH7hlRfztQ6/vFHaByMibabF0ZvB5DzvrZn4Atae5i6+URY7xF?=
 =?iso-8859-1?Q?onaG2aoRN2L+k2zAZK6XfvF0hqAgZIk0pLfVypvrP8zI0SAseKqIzfYj7O?=
 =?iso-8859-1?Q?dKvh8AP1XZWamrCDY1hrmpeMu73/mQW0eyjNvpuPH6RPzgnFl7x4P981mI?=
 =?iso-8859-1?Q?yKyhdqET11G0mzCWa8I6s3KXRlx/ejrggVdKLNNzEzVEv3xZqdi9HhliOt?=
 =?iso-8859-1?Q?KKYbNNn0n4futII6Cq8X9j4Rq5KIs0DMr4M4yLw0EO85der6IkiMrQSRkQ?=
 =?iso-8859-1?Q?a0JuA07vLV/Mgi0LanU6AjTXb0YPg1r9vkPsUx7iQ+5JAOYX+R+9utjmZq?=
 =?iso-8859-1?Q?T3Og4NLJZ8D4DmOTgV/1A6pqt24F6hh6iYt1Dy/CVOnBWRLoc4aRt9b0nJ?=
 =?iso-8859-1?Q?Uu/Zf216Piao+aDtz5mjUuTbl9zyCkyksy1OGSd8/SajHoZORkqmqCrT4r?=
 =?iso-8859-1?Q?64WWB9iN7pKPLi6RmdFEswOBrFEPWpeBL61kKf2+022Nnqe4l0Nbbrc41T?=
 =?iso-8859-1?Q?gjVVL90WinXoz8v3yYJJU57r8RhUDxNIStLe93Ngv5xZYQiKS6Z3yunpkk?=
 =?iso-8859-1?Q?QvFGqJPQrxA/QGLgWf+UfG2hdhtaDfekPTOzE5DWAVYFR2Gh7HGNETsQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cd7be17-2426-4352-8ad0-08dafb381e45
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 22:46:07.3460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +x6QKgzi8azVY7hsZANj4tNQT6t2iGrdDzwsuvA4DYWkLIC93zRrscCLsxJJ6nkfIYdCIjJZaIkTfq5AGtPnOVU4sIdr7WzaudTG8iykI5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5092
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 03:03:30PM -0800, Matt Roper wrote:
>On Thu, Jan 19, 2023 at 02:28:13PM -0800, Vivi, Rodrigo wrote:
>> On Thu, 2023-01-19 at 19:24 -0300, Gustavo Sousa wrote:
>> > On Thu, Jan 19, 2023 at 04:57:09PM -0500, Rodrigo Vivi wrote:
>> > > On Wed, Jan 18, 2023 at 12:52:49PM -0300, Gustavo Sousa wrote:
>> > > > That register doesn't belong to a specific engine, so the proper
>> > > > placement for workarounds programming it should be
>> > > > general_render_compute_wa_init().
>> > > >
>> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > >
>> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> >
>> > Thanks for the review, Rodrigo!
>> >
>> > Last time I talked with the team, Lucas suspected there could be a
>> > reason why
>> > the workarounds were in their current places. I'll include him and
>> > Matt Roper
>> > here, since they had assigned themselves to check this.
>> >
>> > I think we should wait for their input before applying this patch.
>>
>> ops, I have just pushed them...
>
>I didn't review each workaround in detail, but at a high level the patch
>below looks correct to me.  The intention was always to go back and find
>all the workarounds touching non-RCS, non-CCS registers that are part of
>the shared render/compute domain and move them to this
>general_render_compute_wa_init() function.  The effort just stalled out
>because the developer working on it left and nobody else has had time to
>pick it up yet; it's been on our todo list for a while.
>
>Moving these workarounds from rcs_engine_wa_init() to
>general_render_compute_wa_init() would become very important if a SKU of
>these platforms ever shows up with a fused-off render engine.  In that
>case the workarounds would get missed (due to lack of RCS), which would
>negatively impact the behavior of the remaining CCS engines.  However
>that's just a theoretical problem today; in practice all DG2 and MTL
>platforms have an RCS engine, so the code movement below will not cause
>any functional change.  But it's still good to have Gustavo finally
>cleaning this up because we never know what the future holds.

it may be that my fuzzy memory about this is that we didn't have yet the
general_render_compute_* function to add this kind of WA to, so some of
the workarounds got added to the engine because these registers reset
when either compute or render reset. So, yes... I agree this should be
fine.

Lucas De Marchi

>
>
>Matt
>
>>
>> >
>> > >
>> > > > ---
>> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---
>> > > > ------
>> > > >  1 file changed, 36 insertions(+), 29 deletions(-)
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > > > index ef6065ce8267..918a271447e2 100644
>> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > > > @@ -2341,10 +2341,6 @@ rcs_engine_wa_init(struct intel_engine_cs
>> > > > *engine, struct i915_wa_list *wal)
>> > > >                 /* Wa_1509727124 */
>> > > >                 wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>> > > >                                 
>> > > > SC_DISABLE_POWER_OPTIMIZATION_EBB);
>> > > > -
>> > > > -               /* Wa_22013037850 */
>> > > > -               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>> > > > -
>> > > >                                DISABLE_128B_EVICTION_COMMAND_UDW);
>> > > >         }
>> > > >  
>> > > >         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0,
>> > > > STEP_FOREVER) ||
>> > > > @@ -2373,21 +2369,6 @@ rcs_engine_wa_init(struct intel_engine_cs
>> > > > *engine, struct i915_wa_list *wal)
>> > > >                                 
>> > > > GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
>> > > >         }
>> > > >  
>> > > > -       if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
>> > > > -           IS_DG2_G11(i915)) {
>> > > > -               /*
>> > > > -                * Wa_22012826095:dg2
>> > > > -                * Wa_22013059131:dg2
>> > > > -                */
>> > > > -               wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
>> > > > -                                    MAXREQS_PER_BANK,
>> > > > -                                   
>> > > > REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
>> > > > -
>> > > > -               /* Wa_22013059131:dg2 */
>> > > > -               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
>> > > > -
>> > > >                                FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
>> > > > -       }
>> > > > -
>> > > >         /* Wa_1308578152:dg2_g10 when first gslice is fused off
>> > > > */
>> > > >         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
>> > > >             needs_wa_1308578152(engine)) {
>> > > > @@ -2412,16 +2393,6 @@ rcs_engine_wa_init(struct intel_engine_cs
>> > > > *engine, struct i915_wa_list *wal)
>> > > >                  */
>> > > >                 wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
>> > > >                                  MDQ_ARBITRATION_MODE |
>> > > > UGM_BACKUP_MODE);
>> > > > -
>> > > > -               /*
>> > > > -                * Wa_14010918519:dg2_g10
>> > > > -                *
>> > > > -                * LSC_CHICKEN_BIT_0 always reads back as 0 is
>> > > > this stepping,
>> > > > -                * so ignoring verification.
>> > > > -                */
>> > > > -               wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
>> > > > -                          FORCE_SLM_FENCE_SCOPE_TO_TILE |
>> > > > FORCE_UGM_FENCE_SCOPE_TO_TILE,
>> > > > -                          0, false);
>> > > >         }
>> > > >  
>> > > >         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
>> > > > @@ -3006,6 +2977,15 @@ general_render_compute_wa_init(struct
>> > > > intel_engine_cs *engine, struct i915_wa_li
>> > > >  
>> > > >         add_render_compute_tuning_settings(i915, wal);
>> > > >  
>> > > > +       if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > > > +           IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>> > > > +           IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0,
>> > > > STEP_FOREVER) ||
>> > > > +           IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>> > > > +               /* Wa_22013037850 */
>> > > > +               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>> > > > +                               DISABLE_128B_EVICTION_COMMAND_UDW
>> > > > );
>> > > > +       }
>> > > > +
>> > > >         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > > >             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>> > > >             IS_PONTEVECCHIO(i915) ||
>> > > > @@ -3027,6 +3007,33 @@ general_render_compute_wa_init(struct
>> > > > intel_engine_cs *engine, struct i915_wa_li
>> > > >                 wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
>> > > > POLYGON_TRIFAN_LINELOOP_DISABLE);
>> > > >         }
>> > > >  
>> > > > +       if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
>> > > > +           IS_DG2_G11(i915)) {
>> > > > +               /*
>> > > > +                * Wa_22012826095:dg2
>> > > > +                * Wa_22013059131:dg2
>> > > > +                */
>> > > > +               wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
>> > > > +                                    MAXREQS_PER_BANK,
>> > > > +                                   
>> > > > REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
>> > > > +
>> > > > +               /* Wa_22013059131:dg2 */
>> > > > +               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
>> > > > +                               FORCE_1_SUB_MESSAGE_PER_FRAGMENT)
>> > > > ;
>> > > > +       }
>> > > > +
>> > > > +       if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
>> > > > +               /*
>> > > > +                * Wa_14010918519:dg2_g10
>> > > > +                *
>> > > > +                * LSC_CHICKEN_BIT_0 always reads back as 0 is
>> > > > this stepping,
>> > > > +                * so ignoring verification.
>> > > > +                */
>> > > > +               wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
>> > > > +                          FORCE_SLM_FENCE_SCOPE_TO_TILE |
>> > > > FORCE_UGM_FENCE_SCOPE_TO_TILE,
>> > > > +                          0, false);
>> > > > +       }
>> > > > +
>> > > >         if (IS_PONTEVECCHIO(i915)) {
>> > > >                 /* Wa_16016694945 */
>> > > >                 wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0,
>> > > > XEHPC_OVRLSCCC);
>> > > > --
>> > > > 2.39.0
>> > > >
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
