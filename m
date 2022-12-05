Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC820642EA9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 18:26:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0F610E275;
	Mon,  5 Dec 2022 17:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5417910E270
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 17:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670261159; x=1701797159;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eDzHW4TruoXxzFyqILoA+EcJ0ofPq62e1RfAJGED3hc=;
 b=O35hmtWtdYZeoFjQgrAqxDLSWGS62QVngPNbyZ8ljz7n22FPt9UJzHp1
 4ALqD6PzdMp0ugLTHpgLPwLuOOcQU8iLVrDdIw4r4tSgzeCadhvM2DT39
 TlUOyqUszELT0fyDf65/wICccTiSIn0M+cdEg9hIaL5boExJkOoWu+gS6
 CCuCF626g460LqBOtLunX4RpgRuK5MW9jH/MSZB33rlXgkRjZ6+Wp7yDS
 PfzcMDMoWxRXEQxa49bDnxmiih8tRrDn2DHxLDqmBkOyjAnIxIlVAJM8/
 v1O1dwYsbp9CZx3+hDTTnC47v9IBekRpi3xcmRNVFhUfQksuaa+/qu1m0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296103082"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296103082"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 09:25:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="678432043"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="678432043"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 05 Dec 2022 09:25:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 09:25:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 09:25:57 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 09:25:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+EjD4dyXwqKngZGgT6PGhLoRUSeiphCsI0LRwSGTjHUJ8mwfchnpAXPVTj/JckzQIezWbvi43cJJZGe6oyIWO/vUK2QoLbLvb/XvcTLZD8j/l3FyfIzKSDxtpitaTsgiehwoQn5EwjQb79FLQI/B640uDaTHypmzK1CaaAQ5laUbPZ/WqAXCfp/Oz+/5iOyQ5M7xYYjNltmm1wv3QYcAQo+pDcpBp0htq7HVJ5/nTM5hTqjQmRxQa0txrzIF+DjWuxkJXvQ6iVaXarzs2WusvsrecDQ4+FBQosECsS23diVxfXCzX4UmtAlCF5kAbY+DKs7Es3kjjJ/tC0WHFmkaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jsSyiZ4UPVBszuRUDdY24rAyKgjhfre2e+k3kkxT6Mc=;
 b=UuRZS5EJ+Gy6wXkhBpM84jDW/Ef8xgvWemYmOGpyjBHEehrHuLL4KrmawHw8taWgroIrTdK6HsYhyLoL2N1uq23h7nXAIHZuHCJrrjH39pkM+rERDJ5XNSABypu8XIJxPuAbYk1MB4++QUKISU0OkLTAx8V6WJy4OeNRdD3YdI+vTUUh6UDvyOmXUvCtma/c+icOOmDqggZMc8gFFjDdetXxrNFqWZgw3WgIOKYYDpaAQDVSYQoSyFvgnbeVKufxweGJ4kuzsMt2aRreJfxjqLAl+KTdvzKjuiwPXkno2Hk+MnwO5Txs5CYSA1x2ssD5HFFyT8eo5h86c1ey7yYYTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5283.namprd11.prod.outlook.com (2603:10b6:610:be::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 17:25:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 17:25:52 +0000
Date: Mon, 5 Dec 2022 12:25:47 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y44pm6thTVEuEVar@intel.com>
References: <cover.1670249413.git.jani.nikula@intel.com>
 <5f01d9c209298ab53f62a3f9a52473469d91ad4a.1670249413.git.jani.nikula@intel.com>
 <875yeq2avn.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <875yeq2avn.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0250.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5283:EE_
X-MS-Office365-Filtering-Correlation-Id: e67afa94-df22-45fe-ce79-08dad6e5c22c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WlXxpXwD6eqXlD4tA8DWssIcalObq9/n+iVIvj0pXF+qRvozXR8Ml1PIyzZ467uKqKpJizfNVJZrIn9Dpdyjn68eH5IQMAbcGq912iqLmMFn91z79PxPknaHyT691VANTtf5oTwYGudYcxGUz3OontdXexMmx57Z2hIq5ie6MWTi87ODUTRciPk5wUs3gu3sScoVm2V4AUyAE2gz6NGaioXHmVtpa+BGNfgmhtymqUDoZNrsjbIAS9spKezgZjcr03BCKjOddf5By7g52wLHd9wLrqifJtSTXT2jR8lM4p4FhG7W1A5Joa0mZUgXicXZlwpov+LkjBIF3e29A2rjZWOKtlJHPtbIAV3AFKjZegzOMDndDz/ZOpahWIQ4gbW1q3+zFoD0tlTdekL7XKeMjRKUytZHNNVspoIhbydklEVhJBbRUf/lPjKSAW7FUvvlP+iX8HD3nZEbFUdBsNCYSyZS7WM3MC30vQgDPfFkV/4nQpsqGXH7YrtOxfjElofvzZbYWAA9yLAN68y+KVcpbY5Apc2RE9WWOwPdlvIvhw7G4Z8TRmhvM1T7N3ilrdRrcjeSeEkC51MbRzdh0HG/z7nZBMr5Y5W84PrTZABWpAaFR/lLCBydS1deQewOFrZEUfbAgWiDgEBqT5erhblx6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(346002)(39860400002)(376002)(451199015)(36756003)(86362001)(6486002)(6506007)(478600001)(26005)(6512007)(6666004)(107886003)(4326008)(44832011)(5660300002)(8676002)(6862004)(41300700001)(8936002)(37006003)(316002)(6636002)(2906002)(66476007)(66946007)(66556008)(83380400001)(82960400001)(38100700002)(186003)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gWT2U71EZhDLurLGXy+AnbkxsxJcaFFVWu5HDKKEttwYKu3wIhFRn5651RNs?=
 =?us-ascii?Q?+ggUAqwMUbMQMcW4OuZolVQkJ+gC/I8LeKuZMn6TTuhDGMZ+gvSbqpTrQZJL?=
 =?us-ascii?Q?r3naSbcIMLDd2VB50SwfUCkOgIHMNTePftQAXVWLhOLOgAEd60/IAkveEiRr?=
 =?us-ascii?Q?k/+Ei7oKN/mLnGi48X4VnIdDeX7OmmVsI3CwnvsJ3uxVp2wARiI3Xas8r3TB?=
 =?us-ascii?Q?G26X58Ar7OSv4KrXUJPgO/pTJV77d9wm9t2TZxtie+fFaTeZGLNX6catsSat?=
 =?us-ascii?Q?RhSlnv2n93fLaiyP18h8+gk0bBP9v81sH/ZsZ9o8dGaqTbxLUt1pG6trcWEe?=
 =?us-ascii?Q?mcYiCcb0Y1ygHCOp4oBuWv/DINq9bbuE7VEMhFL+/7Yx3EaJW1f3ytM4YPJq?=
 =?us-ascii?Q?dy5dsmutqfwzMrypbKWh0U9bR1oCgL7i1xcDkKhxwO27q39i6a9gAyI3uJjp?=
 =?us-ascii?Q?+FSl42EVmog2flZAWPrjKCpzg88utAFtMTG67y2ya3OwnPZMNLjGT7Voxrl+?=
 =?us-ascii?Q?5QKvEF/XVOCwwaPR5Pp83gZYXE4japsPvQpeJ8BOf36T5RuL1XmEdSaR1Z6c?=
 =?us-ascii?Q?mB7oztB7ImKA9NvYcqRfKCBjc70VmkeS71yrDh3JnGa/XINewW4slXhRzEw/?=
 =?us-ascii?Q?BBsMThXeLgIenarACnFYueM2NM4bZ88lQIWf/mlYjjmZ64UpgrCA7DmTPtaj?=
 =?us-ascii?Q?zcr9mS97MGAefd4E92o5XWlHe/M7YmVpGTuP3VamgWjANgsRsx68Yam9p9ko?=
 =?us-ascii?Q?r4QNSNQNmYV2gabL2Bq+QcpEb0q5zKzVLyOlYugZBnHsqFK212n/ezzeeYik?=
 =?us-ascii?Q?st8mG6+RXadnakwufp/AN2V2fWavkcTHqWI0s9JxvV4dvmaovaPUB6rWVlxZ?=
 =?us-ascii?Q?AlPCLtYcnxeephRmDzhBAjOA/nnlB942JC498JFI8TtMrHaW8Tj+iawcul2O?=
 =?us-ascii?Q?ngYy6Vw3jL3lkP+8fw2IGT+ZnDYt0RqjBDWCITBpZ1MpnsbqP1rIUp9Qi1Ss?=
 =?us-ascii?Q?bIoxXmcCOKUhMqY3SwjrIq8OSzsi2wCu/IDBuCPtcJ3DuO46OIgzqsC6dVVZ?=
 =?us-ascii?Q?Tzb34CcOM6+jRAKDeaWaTwAl/+WnzNcgWqAUodaIADmKVIpjHDfStyA7NZbY?=
 =?us-ascii?Q?fHkt+sz7eR1JfDVi/jniV49TzVSpOI+g2nbn/MrNR0gZ1mry3neRAe0EmSNc?=
 =?us-ascii?Q?1vAS9vDy0dGVteDagd0zCcd+Rb23dVVUJDnpnTUBaznaL/llk6yuqAGXS/K8?=
 =?us-ascii?Q?/rqWkHCbJIVm36YOBwB26sIrLogWKo5kDcGWmjY2plnnhCUb9UsKnQiUbtmA?=
 =?us-ascii?Q?HCTXbHoznWEJMYtM/MxqAVsxSMpoPlgsmI/DrUI366Gyy2KTsTokZvtRT+7b?=
 =?us-ascii?Q?EsuBJLq0bIb5C5uLV3QtkFVzmqMrAoY9+f3Oz6ifNia0TmD9TL7QC4QHKP0F?=
 =?us-ascii?Q?cZ+RdY/hNP72A2LIuzluLXFb8+0auEfMz6tDmwV/uvx5jya0wSND4CV8xxxV?=
 =?us-ascii?Q?PDciGPDD4m/gWnITOisfFVIhO6FFyYu/W2+blqDWIN3I2TS3d9sHbTd4tnQ0?=
 =?us-ascii?Q?OqOKEz4oQwxEMGhz6amEnJYhUieE3sZaY2uNGpSD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e67afa94-df22-45fe-ce79-08dad6e5c22c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 17:25:52.3667 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uKwBjNM6meI9Hs9jDw7EjiqauP8uEfNreFLWXNVUjAvRdyBOmros9Zx2X3zpxzDXA3QF3/GfmKkKlGnBSgwfjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5283
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/backlight: use
 VLV_DISPLAY_BASE for VLV/CHV backlight registers
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
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 05, 2022 at 04:17:16PM +0200, Jani Nikula wrote:
> On Mon, 05 Dec 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> > Since the VLV/CHV backlight registers are only used on VLV/CHV, there's
> > no need to dynamically look up DISPLAY_MMIO_BASE(). We know it's
> > VLV_DISPLAY_BASE. Use it statically, reducing the implicit dev_priv
> > references.
> 
> Hmm, I spotted this, but looks like I didn't spot that none of the
> *other* backlight register apparently aren't used on VLV/CHV.
> 
> Could we just drop DISPLAY_MMIO_BASE() from them altogether?

That would be neat. I hope Ville agrees.

Did you use any sed or coccinele on patch 3?

Feel free to use:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

for the series, if you decide to go with it and have this
extra removal on a following up work.

> 
> BR,
> Jani.
> 
> >
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  .../drm/i915/display/intel_backlight_regs.h   | 21 ++++++++-----------
> >  1 file changed, 9 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> > index 344eb8096bd2..02bd1f8201bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> > @@ -8,20 +8,17 @@
> >  
> >  #include "intel_display_reg_defs.h"
> >  
> > -#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
> > -#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
> > -#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
> > -					 _VLV_BLC_PWM_CTL2_B)
> > +#define _VLV_BLC_PWM_CTL2_A		(VLV_DISPLAY_BASE + 0x61250)
> > +#define _VLV_BLC_PWM_CTL2_B		(VLV_DISPLAY_BASE + 0x61350)
> > +#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, _VLV_BLC_PWM_CTL2_B)
> >  
> > -#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
> > -#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
> > -#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
> > -					_VLV_BLC_PWM_CTL_B)
> > +#define _VLV_BLC_PWM_CTL_A		(VLV_DISPLAY_BASE + 0x61254)
> > +#define _VLV_BLC_PWM_CTL_B		(VLV_DISPLAY_BASE + 0x61354)
> > +#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, _VLV_BLC_PWM_CTL_B)
> >  
> > -#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
> > -#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
> > -#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
> > -					 _VLV_BLC_HIST_CTL_B)
> > +#define _VLV_BLC_HIST_CTL_A		(VLV_DISPLAY_BASE + 0x61260)
> > +#define _VLV_BLC_HIST_CTL_B		(VLV_DISPLAY_BASE + 0x61360)
> > +#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
> >  
> >  /* Backlight control */
> >  #define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
