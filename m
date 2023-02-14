Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC829696EB2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 21:54:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CBD10E02A;
	Tue, 14 Feb 2023 20:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A9910E0F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 20:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676408037; x=1707944037;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oIwr9sMaFpNdvJ+6rzKfX77fBeTnNv5tEcWmlDDtPH8=;
 b=laGuz4Ft9/XlEzWow+nsGv8so8R3huFy3ExkDFNY5BipobFIEwJILhqg
 +DyDBhYDAeuDcvcSAhT+YtrkxA+/cojdpWdQFO0S0iSVEGAbdN9G7HrgH
 28nva+GK9Y63f0+Qrr2C62mDRgGAS9D9acKUilZN8q3K2jfD8bX5TXZDn
 ypr0W0LVxVm8eMTPH4WOGMI/2hlntf250odd6Dp0nFUIbYHuuwZPXsUjk
 3VxMFFYENaScOMe4WZl8/6CcQu/Y8OBjwVDAjRjmZGF/konI3BIj7ZmNb
 MSYoClBkrZuS/vttrPKH4l8F/Cy79RYHdvmda7nBRQgJb6qxfoTjQ6PHr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="358683767"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="358683767"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 12:53:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="793233288"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="793233288"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 14 Feb 2023 12:53:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 12:53:56 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 12:53:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 12:53:56 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 12:53:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJVnja6ch5jVmjyGanDVIajb0WQnzA7tGyea4NNqH2/WZ2Hgv11fnHFO102ZnxvAXfBtwFI+JdyM0bdlQam4x4h7Edpm2tEZ1GUWeeNeV6BApgCktZNlvyX5zeN9SptvCSp74kdXU/xzlDYo4MjH1rh6i2AAUAI0dw+R6SvI7iRF68nlHrVrFmyqTisd0kM1HIWIKGgePfTSXzfgJWA+SfSNLjCQ0XHLTHdQjaIkRLq9YGX0sGhe1wWfaloBvuLvQTypWp/Swm9Tou2zJppwX0DsaC3wVjlOPMlAA85vK5JZlvTv2IiaS2G5eF46+tUl+82jXd3wOdB8bSV+KHdsbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlDsfvN28ZR4yR0N0Fig57wHQTlUNM8GjBDE1ERBVUs=;
 b=OOMrqebLF/aCDKuO89a/TyeyY3Ew3HyZR/wnpDMOuNuIBZNfm0ZgeGOdIamXZLkdvp5zCITVkXy48QdJzFme+u2rK+LVy15+td0bn0h8pHyBtPMimn+yq9DtX/NAQzHgg435Hpl876WWC7BiF8XiLrlbzvFkz2TJzWfB5G4Oqylq0uV39kCg6REdqmuuJ2kJC1OW2Bnh2QblBtSLJhNNZcT/XiUIHIXOtyrnRVcMz2KXk8+00UdEIBozTPlG02BCG5/YKB+H7nWOXrw1MmGGo5bc+hhVUxvQPcv23pG6LONyc7ShS6S03f//+pXWIbKAWlwqJ8yhOg25+qNKRaPklA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB8207.namprd11.prod.outlook.com (2603:10b6:8:164::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Tue, 14 Feb
 2023 20:53:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 20:53:54 +0000
Date: Tue, 14 Feb 2023 15:53:50 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+v03mlLk7G23Dix@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
 <20230213210049.1900681-3-ashutosh.dixit@intel.com>
 <Y+uf+f5opx8+g59V@intel.com>
 <87ttzot1no.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87ttzot1no.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0183.namprd05.prod.outlook.com
 (2603:10b6:a03:330::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB8207:EE_
X-MS-Office365-Filtering-Correlation-Id: fef3d896-4219-4009-822e-08db0ecd9545
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D82qiqeKzXg4KHpL0+S/1QAIbyYtN6wc5of9btORdxsuW0sSwSHYGOMIka/V7bU6+oaelrPeWIQZRwvunwtyDtqT+yZkpGcILJIFvhN6VxWzn6oQe05nuQCvCUDw6M7aRTfN4+u6AXMQvjuGKSyAcigaKVBkpDU7RqQ3sDwZN3sO3GEsLjUxeGwlhbIB1PPDZf8zt0T5KbuumlKYOzTA6twJrBdA4+zh7Jrpl+eT+nhUZkRmkFdutfEZaCk7oP2OtOsd4Rklf6CojXpeccoNsmCVmx689YzObmqIPViF7tBa3igOWaqwIM0ZBK62yFVN4AzbCufgeTIvS22+qOp4GvZWsHu5gSoot8LeEISETAmSzMpkwORSHCbrqCxwS3VVOlS4Ml6RIq9i/SsQsTWByPsIiJflGcEdFIE82+DYxyfBxkYI9Gnm/ExLO64hfzVAaoIQGp3Dqbg36rWHoOHsDHmECZSjAiXNlANC/fBN5TWgC6Uo/8BbrCz5A8XBOw4aYE9AR7VE43B5wqK4WjblXlIEaUrlL/FD4jwH3RoWC0h0kZn3sxPrtJcLjJ925D6fVBVTDSg3dKNYemqKu0yttsEAvu3aIANsvdq2S/HIIxxeQktsYfKfKy9pFi4cCkIZls4+NxMDvvmcm7TUFJAYwtVRhCO6wE3mznMvWjiHxrrMY20sFyu57LuUkHhucZDI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(376002)(346002)(366004)(136003)(451199018)(86362001)(316002)(37006003)(6486002)(41300700001)(478600001)(36756003)(966005)(66946007)(38100700002)(8676002)(4326008)(66556008)(66476007)(82960400001)(6666004)(6636002)(6506007)(44832011)(5660300002)(2906002)(2616005)(83380400001)(6862004)(26005)(8936002)(6512007)(186003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c2hzQKwt2iM6CABTAVkGQJ0QAglNYcEdRcM3LiDx33oGzk4xbuWLqheDeMeS?=
 =?us-ascii?Q?zw0ssMhI7wCxzwztWoE26Vw45za0qBe0Fr5w+tzbndhN+UCpEaW3eMQ5CtZG?=
 =?us-ascii?Q?arjTcEjiiPra2wFVKMn/XrQ28dupWFlDeP+7gMNGByrChCoynK0z0Nzm8KBx?=
 =?us-ascii?Q?u6OJZhK+yQkg1yCMRpEAuMJYADVEQ12o+BRs0vZi8kb2QCsKvR41WotrINwq?=
 =?us-ascii?Q?k7rnW+Z2OKR3k9JUeZXwrhojYKj2u8YWZ2ahgXm4+VQ1Z9VwKMB8ckJrIV7o?=
 =?us-ascii?Q?L4wBMSB4/Voqx2PUP3ktkxCmQFpKwrHeioRE8yNkFB3fNLfTcwFR31iAyGYp?=
 =?us-ascii?Q?aqEymt8tG/JKTGtIB2EQzWbvkZOTQ7jeob+1hfTGkvTPDAJRIcfvJGifjWcp?=
 =?us-ascii?Q?KtVjBsNl/LWQC1S8mxnZzkm/RR5t/V50rYhXJBs8ALMBJYjX0BCfU2EQzTVt?=
 =?us-ascii?Q?pxoTyur6MRcBBhzktrASqal7emJi2ri9J8oS4GX3iFk+r0mdOJs/i6plpW2b?=
 =?us-ascii?Q?6TkSjLcF7rkDRxsUxSauHKr3cXe8bvKkyu3JW7pgD5D7N4+PRy6o/PgTB1u+?=
 =?us-ascii?Q?DM6izrbt/p0Bu+le7CA1pivE60Gurw376AR+qhEMX7ONvMJRfMx2aYna8CHd?=
 =?us-ascii?Q?6G/ZbRDVW9hd6F4sONc293SAj7wGVboL18rmYymdkf4oBv9AFrRzNmgc7R3D?=
 =?us-ascii?Q?dQYFogX0+3HzB1YGsiFfEv9FFOzn0EqfGBx1fPeJoOkxIR4reTXrtufY0p9z?=
 =?us-ascii?Q?antO7GD9ImOX/KLznsbKs3FjDhyI6nmQLxYmN7iMheEl17eZwMl6kpIwCZdm?=
 =?us-ascii?Q?ybUMiVKDUBvIKoNVIe8z4lhgug0PNY40jmZ+WC52blEB3iOQ5JodyqCIJECm?=
 =?us-ascii?Q?Njyw6gGqVahrEYMGgLQN5KDtzh6nNjZcrAHErr0xUk8z4jkX8m5xd/8Eynv1?=
 =?us-ascii?Q?bsunSkLS9vxeUTj2ht0TGUv5Q/Shch/RZgCOM5DSTAnvDSVKkaAoRk0IsH+D?=
 =?us-ascii?Q?JrmIgxOeCPH4ZLShm9rUiPkk987E7p3UcLnIbNMAQ5RFjQ9t8I+NxMztU/q2?=
 =?us-ascii?Q?sK9zPmHeI8onU3F5wFgns4UMJQIb4vkSZk4yrWhVPdEzdk3B4d0uIalq9ois?=
 =?us-ascii?Q?lI93nsqdHbJFJAbxw7EQQNuBVOEC+Tqp2ULbevsNYbdTIbmrEKrz/i1As0/k?=
 =?us-ascii?Q?14MiTUMtrbLvhUQDWkfNgDgzPbVSwmoUssAOyQnL3VHhgU+7BSS21vow3ECO?=
 =?us-ascii?Q?psdA7SN6G+cvND42va24y3OioTQkGOrheCNq9jf2+g+BPB7PIEwyq/BIo1IR?=
 =?us-ascii?Q?8t8H953Zefumeoyg0wj84vnI+3k1HEcmLuKIM5siRkhCMd3dCZROFeKsD9EI?=
 =?us-ascii?Q?Lqv/zF6JnOBV+e+gKLC4McE6qQ+m68iIjLFjA7oj61kHimshjDsAtKfB5Wi9?=
 =?us-ascii?Q?mxwycNNNJJ9B5gYWcdr6kq4ao0DHIfTZuU9U7oEP8Z5GpMr2T6yn9XdzbuUo?=
 =?us-ascii?Q?+Yen7OhfSXqXxdHOBICMmRzk/2caMnPLgDyBcyhh0SKA0qYdfZJX/9BSNndE?=
 =?us-ascii?Q?1fFHd20ThdodbqrafGdsNehX0t3pa5neYxNGMd+x3fng2JXcJwSlAThpKFdn?=
 =?us-ascii?Q?DA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fef3d896-4219-4009-822e-08db0ecd9545
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 20:53:54.2855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XJVhb63PxzxHGoYiYD+qCrvctFxSOBE8Bv8Z4RxC6j5gwyx6uQBKqTddiA6tlhF88zFuHHq7n4iz4T4x3kR6rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8207
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Enable PL1 limit when
 writing limit value to HW
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

On Tue, Feb 14, 2023 at 12:47:23PM -0800, Dixit, Ashutosh wrote:
> On Tue, 14 Feb 2023 06:51:37 -0800, Rodrigo Vivi wrote:
> >
> 
> Hi Rodrigo,
> 
> > On Mon, Feb 13, 2023 at 01:00:48PM -0800, Ashutosh Dixit wrote:
> > > Previous documentation suggested that the PL1 power limit is always enabled
> > > in HW. However we now find this not to be the case on some platforms (such
> > > as ATSM). Therefore enable the PL1 power limit (by setting the enable bit)
> > > when writing the PL1 limit value to HW.
> > >
> > > Bspec: 51864
> > >
> > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_hwmon.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > > index 85195d61f89c7..7c20a6f47b92e 100644
> > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > @@ -385,10 +385,11 @@ hwm_power_max_write(struct hwm_drvdata *ddat, long val)
> > >
> > >	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> > >	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
> > > +	nval = PKG_PWR_LIM_1_EN | REG_FIELD_PREP(PKG_PWR_LIM_1, nval);
> > >
> > >	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
> > > -					    PKG_PWR_LIM_1,
> > > -					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
> > > +					    PKG_PWR_LIM_1_EN | PKG_PWR_LIM_1,
> > > +					    nval);
> >
> > This patch looks right to me. But could you please open up on what exactly
> > failed on that reverted patch? Why do we need to set the bits together?
> 
> I had explained a bit here:
> 
> https://gitlab.freedesktop.org/drm/intel/-/issues/8062#note_1761070
> 
> But will repeat. On ATSM, at power-up, PCODE sets the PL1 power limit to 0
> but disables the PL1 power limit. The earlier patch had enabled the the PL1
> power limit during module load itself but had left the PL1 power limit set
> to 0 (since there is no easy way to find out what it should be set to, on
> ATSM PCODE sets even the max power (which could have been used to set the
> PL1 limit) to 0). You can see that patch here:
> 
> https://patchwork.freedesktop.org/patch/521321/?series=113578&rev=4
> 
> Now the PL1 power limit being 0 (and enabled) implies that HW will work
> with minimum power and therefore the lowest effective frequency. This means
> all workloads will run slower and this was resulting in various IGT tests
> timing out and GuC FW load (on resets) timing out on ATSM and that is why
> we had to revert that patch.
> 
> In this patch I have changed the strategy and instead of enabling the PL1
> power limit on module load we now enable it only when the limit is set by
> userspace. So at least the default CI will not be affected in this case. We
> can see that there no regressions on ATSM this time here:
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113984v1/bat-all.html?
> 

this makes total sense. Thank you!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> Thanks.
> --
> Ashutosh
> 
> 
> 
> >
> > >	return 0;
> > >  }
> > >
> > > --
> > > 2.38.0
> > >
