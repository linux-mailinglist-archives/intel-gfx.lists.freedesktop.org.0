Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B165E6033
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 12:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C482810EAB6;
	Thu, 22 Sep 2022 10:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC6210EAB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 10:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663843971; x=1695379971;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=ysI1KkCf2dhbZ7UXWBWAxoqa2l+bTPDKvEl16jTkOtc=;
 b=ZlWaAoRncy//MobFhGgXidfKpyAdb+KOdN52mBnXv2Oz17MInKNrv1kA
 4siBt0DPmKbq2OuimOju14NVmqc/tt4/7g6uq1S2deMujEfQhN5NAH5Yj
 t+1rps0OfHcVCvKCcgu6xDSWE33wFoPDUQ9oj4WgaZBZBv/ZX9EuYhNx+
 DqcO9XuU1I2utUddh5N6USeyvtLFoSsKhw89qUhkx53FPKSbp7ej6fCIA
 WfjyTuA+gem3AaovWtUGkrBa+Ig63oHz5/qn6b4UvvgE2ablPz+q55EKF
 72mprCtGJOqfqlgUkWEHQVFTnpK/tvv2qKJ5O3NcncNOLidjyY4iyHg/u w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="362030860"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="362030860"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 03:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="570916934"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 22 Sep 2022 03:52:50 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 03:52:50 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 03:52:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 03:52:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 03:52:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HHMNRiSiwO3ggwd4Gpeuu/T9GPAAS2nxVDwFOS/adXLkxJ4BK1hWt0zBw+EdrHVIWXFXZJUdcVhERJMSaCKd0qMkISG22ZH9xcBIpOJXTGPqVNf3setgCnnS5ACiKDYIKys+WdeDIgdJqt2ohA18wJlNYJK+jMaisHp1nzca3VUZCJsMsy2S1SkwS6NDC/GbZvLd8k6l2IYnjKtRgRA7tb1mGrLk7a2rELOSwdmq6a90uukWPdACaI2EhQadSKIfYslPWxnJp6ZUaMte19pSpIUwJVZqWX8bGkdlxM6+9ANF4kG7kdyTTC9l4hZqT8Uz9B4t758FB9irgPRXnbTUTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1bhf99aDGe7oDDkFOFf1+kKQ5RtjKgPPzIjitpg6wLs=;
 b=XaO0b3wk/LkyC8Mw1xHPufVgqUYA8qq8NbO+Y6+L876XDVCvYTuymFZv0gJLytGSKrYixSVVJLJpGH8RQBU6zBKgdZlv2WkQwYKRm7T9MbYNJUAK0SyM+xJZMfBzTIdoNHdO5fY/1f7X6FCjubMDoh9hpGffZMdIls4DQ5qjAmunFe+ertks7D0JlTMw4IYAIPSWV3s0sx95HLPOvriFEh6VVKB6/iRv/ff6HoKgXRs0hoNl5kkeYPm5GvdlmBAIuARrM8ffLbzsmUt9KGZjngNQj0+v9B+5htaQgCznd1bnGRxb4/g7RehtP4ogOtTlTALDQBCvxd/yUc9jh+pj2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ1PR11MB6084.namprd11.prod.outlook.com (2603:10b6:a03:489::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 22 Sep
 2022 10:52:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d%5]) with mapi id 15.20.5654.018; Thu, 22 Sep 2022
 10:52:42 +0000
Date: Thu, 22 Sep 2022 07:53:30 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20220922105330.grvt57lw7y6epkax@gjsousa-mobl2>
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com>
 <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
 <87zget6sur.fsf@intel.com>
 <20220921120508.ze4w5bqkxutarqru@gjsousa-mobl2>
 <87o7v77ria.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87o7v77ria.fsf@intel.com>
X-ClientProxiedBy: BY3PR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:254::21) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ1PR11MB6084:EE_
X-MS-Office365-Filtering-Correlation-Id: f65b3312-3aed-4bbc-9524-08da9c8892c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9CamkUnZQr2QO41jTlm2bKBU2vVZ/h0leBUp1GGwGhTsh7cyTtB5dxT8U2x0hWQG5NgmsszWqu3hwW2j4VE+eDMOKR62zhx3Koy5CGq4w2Yj0cWjPfRa0mh0/2LjvRjGZw/BpuUa0uFdZM7Y1VPExnRJJSPocjbbWR212NNfRx7pOu+mOXTqBW9ZXwBXtYg0G7yzpzkbIaiNS0R+S7riZeRvPKxzZnZMNCkVqW2dxVXKa7KaT8Qf367ORsyRP775AUBGldqO0GxDe228K3p3ePe/aW5piR/cIVJYJWHkq1xQprZI4tH00iRzORzK/CHwtAj8kW+jwPcMEJhe8L//UUiCT2vOpEgZ/LIVpCKqIBD1dFE97Q1o9yvVd8BUjLlKhU3VuawwKO3rGB2xDy1K1QIBjdB5rCQXjm62LJMGFTQJEvTqT240p09y+YpxXO+aZlu2njx0vhnb2dDRtPn8WG9F6IwkqeN6vYJhACEjHQHY4U+tooOjjRaGz6DxhSF1eYGArZsewLtTZDi48LrU0XzWvU6Kiy/KXWh5esPzJfHLdOM34UVXrRHOyWFIGxEKqAAtbqoumZ4OomH6EnRZ2w8Nt0mBiZ87gloWBGJHdYaCLsiP4bwFyIIXm1CugkTS1L50vkMthgBRvIr+YEnU0BvC3p0Gj85o3kAbeXi2UGs7Ox9tLJrpA0udZ2uePZjYujxLoJ5bVKtkl3TBEScC7ShuHArr/oYskrn5+v9ygOk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199015)(8936002)(8676002)(9686003)(82960400001)(44832011)(6512007)(83380400001)(1076003)(26005)(186003)(478600001)(66476007)(38100700002)(66946007)(6506007)(6486002)(6666004)(66556008)(86362001)(33716001)(2906002)(966005)(316002)(41300700001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zTfEhZdpDHrsaSTNhdC17t5J1RiW9L6NzN+x48QgQuWBCkMBJtCnQISTwyL2?=
 =?us-ascii?Q?EtRZ82qaKT8QN+ol0jfwsGSbj17c5GSaoYMcFpecellOilZ5xM69ocsiBiPz?=
 =?us-ascii?Q?5N2j8b65rayTi8Lkj0PUFj9TUVEWl6PyiyUfaRuilj1P+dXAM1UixAQY7wc/?=
 =?us-ascii?Q?QR1ngko7xB31t4wyjvQ/FdnINx96pw9WOTBbWgzdOT3aKt5r8Vs+FKGFofOf?=
 =?us-ascii?Q?bpDkTcPY63izd29ux/BYSV83qzWANFUZpuiVJ2CwospVPm+3ExxVtLvyaml/?=
 =?us-ascii?Q?r6+KoWHw5lYVpQBCKBP01ifKwPg9+Da+LlG1bCzZHXJMHFy9BOo3DrzgEHrt?=
 =?us-ascii?Q?fX5Zihd6YqJiBG6ZN06cQ7Z39ov6LyRPcFUb1bAea+22TWQ6lv6UecDG03Ir?=
 =?us-ascii?Q?5npngq8LzFGYo/wVBNHjWELTCOT0PfuRglkO3pS4U2GPcyOfMZaJblIxKizT?=
 =?us-ascii?Q?x4l4lbFQikNPXUN157XL7RkM2U+18BPtNKxyrI2Y4w+yw2nA9dEjYbacREO5?=
 =?us-ascii?Q?36QD4dGgwWoS0OKzQyWszXtFMDAnOMDOqENrDS2mvfm4izeQxm8zApq65GJ1?=
 =?us-ascii?Q?m7k/4LwLh6ziFpw9XlTxp7YkUajj/J/eRMd0Xl32jybrsz9LbqiAcDLFz9lM?=
 =?us-ascii?Q?Macl/8zqCfkVQamvtfFpQQ1HvR9ArTNWYne+nTm/jdgUNa3TWJhu6pku/NiO?=
 =?us-ascii?Q?BUidSl+bmJRudcDcTAyPIHScih9WaF/W9PEiAZ02FfWqHS0dwYi/yIdxz8Yy?=
 =?us-ascii?Q?PGdNkV57wzeRHLm31ynWkchTY26ae87NVbATPV8L5O4lso9nTSO5cfoPGhWx?=
 =?us-ascii?Q?9ucBHr/Q4AYxY9zJACjGROTZmoqJbf2wF2pF0DDELIm16XHjATmWnS6JWI/I?=
 =?us-ascii?Q?DFtoOCzvb5slFCL2FVfbkSpa2ymwyOzeg64W5b8RVLbFAMqD3Mvr2g9FHWvw?=
 =?us-ascii?Q?2SvUgiarxaINfBbRTlVP3cOKB1einmizgyt3cFMuRa0xKcpOeSnCmzDXNqhU?=
 =?us-ascii?Q?n4vIXUz6gdMm5TIidAIYmd/QpUQVYQ/GR49oeACCI1MJo9Q5dkXrF3VvX+tV?=
 =?us-ascii?Q?iYZ5u01iT+dA24Uk1U9kdmq/6UWO9FtOK/rJFuEvGaEahJKnI8dzjldDwaeZ?=
 =?us-ascii?Q?z6YK2eVMp0G/1YLorq71l9MD6+cHe26xZhdT8N+qHLhyfSePsRVPwK8Lzwae?=
 =?us-ascii?Q?ByoP/RuREl+AxoIDEJ+okSBkwDDCI2qzJJKsC1+JvOnneDN3wRa70Nov71Jv?=
 =?us-ascii?Q?Y2+9g/60ZZond314z01yg/f1zSmHsQeoXhmxFax1mOrW3lpRwV9gW5fRmnd0?=
 =?us-ascii?Q?XPOy8Svh9K1l9N0lNFsqyURueQWN177V4ZJaZhD7IK0D26lRwUTBwtAnuHoh?=
 =?us-ascii?Q?2Qjcm+8c8yb/YAjg90R12rAG++GuqANEd/PgOd68kV5ItORJht/mv0R0mpiQ?=
 =?us-ascii?Q?dsa6kUzNymhRtPCpEILamCtBdICuMuEnhRpVp3DhoHRfUmo2Iz4VhfUs09w/?=
 =?us-ascii?Q?EhRUz8sdA0IVOLrlc7z7ZWnPpTjk9MjijNPNbs9a/tTcEEqmwMrR3YDhuuwX?=
 =?us-ascii?Q?tUYXTYUUlFgDKrz93Xuwx58YjbxfBGMr1QZJE7CFvX3ERY7BmNXB14y4wCU1?=
 =?us-ascii?Q?Yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f65b3312-3aed-4bbc-9524-08da9c8892c0
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 10:52:41.9645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5MYfB+f7rw5TBgwxZed8WUqjyB7Tf+0/TR84mQTvTXSmEN1vefDvSTFCYH/ktJOZ7Yi3Yo6hvKkNxqoNJnUMSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6084
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Thu, Sep 22, 2022 at 11:17:01AM +0300, Jani Nikula wrote:
> On Wed, 21 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > On Wed, Sep 21, 2022 at 11:21:00AM +0300, Jani Nikula wrote:
> >> On Tue, 20 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> > Hi, Jani.
> >> >
> >> > On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
> >> >> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> >> > Make the code more readable, which will be more apparent as new
> >> >> > platforms with different hotplug inversion needs are added.
> >> >> >
> >> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
> >> >> >  1 file changed, 16 insertions(+), 9 deletions(-)
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> >> >> > index de06f293e173..c53d21ae197f 100644
> >> >> > --- a/drivers/gpu/drm/i915/i915_irq.c
> >> >> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> >> >> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> >> >> >  	spin_unlock_irq(&dev_priv->irq_lock);
> >> >> >  }
> >> >> >  
> >> >> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
> >> >> > +{
> >> >> > +	u32 invert_bits;
> >> >> > +
> >> >> > +	if (HAS_PCH_DG1(dev_priv))
> >> >> > +		invert_bits = INVERT_DDIA_HPD |
> >> >> > +			      INVERT_DDIB_HPD |
> >> >> > +			      INVERT_DDIC_HPD |
> >> >> > +			      INVERT_DDID_HPD;

Just checked the source and it seems I'm the only oddball aligning stuff like
this :-)

> >> >> 
> >> >> Nitpick, the indentation will be off compared to automated indentation.
> >> >
> >> > What do you mean by automated indentation?
> >> 
> >> For example, hit TAB on the lines using a smart enough editor, which has
> >> been configured to follow kernel coding style. ;)
> >> 
> >
> > I'm not sure I completely understand the issue. Could you provide an example of
> > such a configuration?
> 
> I never indent anything manually. If I hit TAB in emacs (or run M-x
> indent-region), it'll indent the current line (or region) using the
> built-in "linux" style [1].
> 
> [1] https://www.gnu.org/software/emacs/manual/html_node/ccmode/Built_002din-Styles.html
> 
> > Is the problem here the spaces after the tabs to align each INVERT_DDI*? Would
> > you suggest I just use tabs and do not align them to the first one?
> 
> If a parenthesized element in round brackets is split to multiple lines,
> the indent is usually tabs first and then spaces to align everything
> after the open parenthesis. If there are no parenthesis, the indent is
> just tabs.
> 
> Guess why the original dg1_hpd_irq_setup() has round brackets in the
> statement. ;) Though not everyone likes superfluous parenthesis for
> style.
> 
> > E.g.:
> >
> >                 invert_bits = INVERT_DDIA_HPD |
> >                                 INVERT_DDIB_HPD |
> >                                 INVERT_DDIC_HPD |
> >                                 INVERT_DDID_HPD;
> >
> > Another one:
> >
> >                 invert_bits = INVERT_DDIA_HPD |
> >                         INVERT_DDIB_HPD |
> >                         INVERT_DDIC_HPD |
> >                         INVERT_DDID_HPD;
> 
> Your patch applied, re-indented, and tabs converted to spaces for visual
> here:
> 
>         if (HAS_PCH_DG1(dev_priv))
>                 invert_bits = INVERT_DDIA_HPD |
>                         INVERT_DDIB_HPD |
>                         INVERT_DDIC_HPD |
>                         INVERT_DDID_HPD;
> 
> Anyway, indentation isn't a very fruitful conversation in itself. The
> original nitpick was an off the cuff remark. I'm mostly trying to
> suggest to use tools that will do indentation and other things for you,
> so you don't have to worry about getting it right.
> 

Thank you for the tips! I find them very helpful. I'll make sure to use proper
style when sending a new version.

--
Gustavo Sousa
