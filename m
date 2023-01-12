Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C46667C8F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696EC10E30C;
	Thu, 12 Jan 2023 17:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E22710E30C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673544788; x=1705080788;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LyuG6Cp0Yha1NAzJGF9NVZAIi0zKVFsWLe94prauR60=;
 b=Z8UZ8NPpsfWhYb0Ar4D/NiHdYtL0O048SRIPvRcEPKxpCGjBUaBI0CsP
 Jmp71h5GpeZLUiqAhKQNpevIeTZ11XsYV8YsjymHrG3plh08qQ6iLF5h5
 ldUiFiFKjgAkffEz+I+42dWtTSTCBK74SiVqVMtvC4mWLpxV8nfIAmZ25
 cYSEza5U7Z3RbUsT1O2AX6FFObpBz0ly6LLQ+fW8qHJCZO7Y0Qp8el8Fy
 Uu3LdMuxssH3RKipBfO+wXVOGgIRt481H3Fy+LAIN1va2LOgo3K4J41aT
 4ns8DgRwFvon9M8qBNSMuEnUYAC44F/dEc921nFUlo7fHjm27Cj5cciVb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="386111568"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="386111568"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:32:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="657897234"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="657897234"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 12 Jan 2023 09:32:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:32:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 09:32:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 09:32:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwlxKnNshb0zRx8uBhmcvilj/5UmQE8M/9oKCWVlj0BZj/aRNHXEpfvKavv4SggcVUkg3rXFJqeSVSm2Pb9gS9ojwpj3JKKuFAwR6ONBgVhQFbOIwW2jIW4SX3LjSVjRZiXx6JzbOX5EJOec7T4xFhDX8N/aclFTam+GC1VEIAuq9YaMPcweUz03crl99C5KAYhZq1EN8bBvcXuOMRh1nRdi1d7p6Vnq6mO4DRYZ/JMV3nGfFOwSnlifgogDxBK1M+jRZE1CplqooEVi/M0u2ZiplhW1bx8ykgcR3TcNhV4rC96GJepK5jlpXpkjxlRnmgCLPu23NAuqIU1DFk+Z1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7lRND9mME1TKHnvemiW68Y7tiQ5U5f/v8T2CGunqag=;
 b=dzrGLVkh1woPR/9r0+KkTf9ZQSXNzaEz38e3CmTmipMOFNVqTlD74pSfa8bjTaFics1Jwk3xYq39+Wj0DbcwF71oQh/DW5dq2fJEPmXlOrNXpYSNv1g0/oUrVYU23nSSKOQlLI4FSCwy+Vmb9aitqFP3AcGnbs++/WSo2rmrxvMaUtv6wL0ajh2Qe7iCBYkY7R//4VnBupxs1NIWWuMU0RGA4xG+XbKXBzoRzqnpDyippXu0jpgM1ISbvdzQK3N+Dl9CF74W9wcGp0sbcwbj6DKWA6X/wMSKKrot/w2r5k4D2f3SOD/nHShH4FEHgWCoBFeqa4f7sD43hWmkW24ynQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL3PR11MB6529.namprd11.prod.outlook.com (2603:10b6:208:38c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 17:32:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 17:32:55 +0000
Date: Thu, 12 Jan 2023 09:32:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y8BEQwBtn305YBzj@mdroper-desk1.amr.corp.intel.com>
References: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
 <20230112092758.539070-2-chaitanya.kumar.borah@intel.com>
 <87zgaof20f.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zgaof20f.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0198.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL3PR11MB6529:EE_
X-MS-Office365-Filtering-Correlation-Id: 63a75d7a-f6a7-4658-8a74-08daf4c30996
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7x5jp+vj7Cuz2nnALmCoIhNJkiViyqp7gKFQjPXE+6V3v7UHXM5F4RUknmi+nqJ/Lwg9t+kyVB7wRfUH2EBEOGm/k98osJ13fRykYk6Tb3a54EhU7nwl+E/kksa5WrsxbH6QQ9J+eumfM4WUMMD8wWcJCdl1oybC6MAnrELS/wKvlgpmWOiDUg5+qEizAt//on4hti9XxLR4bFoVsxnSmyIteX5HhOr5lI3v05fj9LQhx2rjPBKfr4ptVtNr+ABL9lZuRdhn8rh0235NOE8TwIh2OObxZm8V8t7E1Mv8HEc76xyXOQk1sOXLzvEJdbWwRIQIqKe90om3eObp5fdav22b6E1FuE7XTV8IBLWIG+FDLA3bp3VTkz9oH1YvLxp4bI8jAdlLbwEgafqzt5ZFY7CBY41c4j2VsMjdCR6ZH9SGkD3Bz8E8LSwk1BxFE+ehxfdwW2PtXoejuaJo2hOnBCREpnhfDSGNdHNhbF2lCT7lP/lpAEUQgAhIWzP/pu7gfAncu3SkwHVR7Ho8d29VM4OlV1UsUnE8mkoN82c5eb1SWgX9ZzxGh1K7XuBfN+bPyBtH7lkrLb4GVytcT5oDBfaDU+Y/0xnI50nLVlmJZg4GvF1eHGPdm+lmGYyr516N7MV26vPb0TNd7yNOZ6Sf/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(39860400002)(346002)(376002)(451199015)(26005)(6666004)(6916009)(186003)(8936002)(6512007)(6486002)(6506007)(478600001)(66946007)(66556008)(5660300002)(66476007)(316002)(4326008)(41300700001)(38100700002)(82960400001)(86362001)(8676002)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7Hyozj3lQTgknkvOK/vitAT+z0Yl8apXXpkOtxVuTVqa0hZyMZM4fQdD2hOb?=
 =?us-ascii?Q?E4uIFMlfY4KLWXTsLhtZ4a6AZU/lWxS9RSo5uQ8k+XTxWDYYrgqNQkuM9R1I?=
 =?us-ascii?Q?oI6GOnATDaIsjQ8Ockcvc66NtldNOmePVrjqazN25j30PWk1GOhWmV6h3GNr?=
 =?us-ascii?Q?qf49QnkRRPP86EfKiXdEEq9ZyZJkbMkCcq3l2t4qNVCwYP7CagxMXIl8MegF?=
 =?us-ascii?Q?6mxi6oi3qhcOdjRfvtyyv6Wk+h18w0cVcrhwRe33gsR1VjaoFzqSgLI27MtW?=
 =?us-ascii?Q?+m2OvXTsFkE7J2CGoHvoawQtcTXukGE8/dYqSki7y0m4qTDPc/rj8Nqoit7a?=
 =?us-ascii?Q?84cepXm7v3BT4B1tkzLSzoo2+T23G5FSQyMclw3q2SkM+kBMpy+ilfVYRxqD?=
 =?us-ascii?Q?fsWKV8UE8G9RjzmKjAclP6uAm/GP5tUUCL5XmFaBEvHpEkpXd+Y+4voxAIpu?=
 =?us-ascii?Q?eQjLrhuXsiL3X3B2zNgZIz3yjPd331V+EPucsLpM7+Sx5VLXBNaSnGWotdjt?=
 =?us-ascii?Q?yVAxo51k9/w5Xl7kHqRqAnp6916xSwraxFsxaU0N/P2SZAUa9k98rIDCHpus?=
 =?us-ascii?Q?qwW3d0g130Mq/KTtoQrCCgv3BP2BLEa/1PZ5npORoN4uNXLzQSjuqGvs67It?=
 =?us-ascii?Q?yKE1dFvOwmesHIAjpxa9HnM7TjNT6jTewggyu+69VE96A/UgRz4bRDH4jEhp?=
 =?us-ascii?Q?tWL8s1mOed+bhmU6IUuqeA54y2SMTzPny9N3JNa63r7eCCqWI6AZ4eB+DhUw?=
 =?us-ascii?Q?X6IaTuo2x0AFMSfL9rEYPAaU44JbH2my3JRshoVDYqtmWyt7+uVXH0CCk+kX?=
 =?us-ascii?Q?4Ki0aNmSdWTBzLnbo8PQqmKz2qYN4t55Od0v3h438T6gxkFyw8QoSGxe3mt8?=
 =?us-ascii?Q?R3XjZICn9jTSoU8Y992CanY3Ie3XVX1olozjF5ZkRE70J6fwwVDB3r2gsLTH?=
 =?us-ascii?Q?HiuzcE4x7DzVkXsFEQMg5eDfRrkXXQY9XCtMKkhSrJ/4iAhnSt+t37sPSwGB?=
 =?us-ascii?Q?dmSPoV/FhOsbrIhZOPfSzjyoNtklZyOHD6FqaJdNmpouXiA2qZUuZaKd1SH/?=
 =?us-ascii?Q?qgY3thQgYTbPZ+/QH+QbJbCvIunmZoMKFkP+FHnEghazqEijBbWlrzDuOh2m?=
 =?us-ascii?Q?BzwF4WS1nNeS4wJj84Uyovme7aksT5jtq+wUiLShShmKkStmWyV1JZFLLaGj?=
 =?us-ascii?Q?LtYeKRe8gvWFIW1e6AsfAqD7Dm8PsFsgZ51cOJLGe5Ig5Fdz9QmMTAzgvCL8?=
 =?us-ascii?Q?KnXFyN51Rym78444N3M0q8m4VpzVgAfVdkMLSudie9AOt1yIHBNyyNbKeHQM?=
 =?us-ascii?Q?VEzUVgCJz9KtnPnf2vx8b1A5VsNP6hWsht4K9GVDQrZhKTFRtI3u6oVOleLw?=
 =?us-ascii?Q?81IYEMbG1GyH9G2zAu2K7kpQoAt0zfiBJaKKfZxkgL+4anfDK3/nIL82YLz2?=
 =?us-ascii?Q?QEZPJ1pTMjeEhjHpxTKCeRnEpk8E4zUYM+Xy2F1AD2gW2w5XLnh2SKahOUCl?=
 =?us-ascii?Q?pAHkzMszaZ25/ypkHEjGzBpDSpstC6AIHDcmAAzg06LdzRI8ep4/OURN9Gst?=
 =?us-ascii?Q?polsykYCtHx+ptnlPpsJIkAx/UrMZoYT0BVANaXNMCYPuOWkFZIEPklE7wUt?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a75d7a-f6a7-4658-8a74-08daf4c30996
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 17:32:54.4882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y55/u5UH6+6O7+aoJS98tgEkF2jSIEwhco+C59pNB5xtFKgLVdk8O1Tr0C5IxjlO4Uzv8nSAmF3bQhjMfj70cRTKZvk1N3QCaa9g++cygFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6529
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC v2 1/2] drm/i915: Add sub platform for 480MHz
 CDCLK step
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 12, 2023 at 01:03:44PM +0200, Jani Nikula wrote:
> On Thu, 12 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> > Add a new sub platform INTEL_SUBPLATFORM_480CDCLK to identify
> > device ids that need the 480MHz CDCLK step. Separate out RPLU
> > device ids and add them to both RPL and 480CDCLK subplatforms.
> >
> > v2: (Matt)
> >   - Sort PCI-IDs numerically
> >   - Name the sub-platform to accurately depict what it is for
> 
> Did Matt actually ask you to call it INTEL_SUBPLATFORM_480CDCLK?
> 
> Personally, I don't like it, because RPL-U has its own PCI IDs and
> that's what it's called in the specs. I'd prefer what it was.
> 
> (The one outlier is INTEL_SUBPLATFORM_PORTF and I don't like that one
> either.)

I think initially the plan was to not match RPL-U, but rather to only
match a specific subset of RPL-U that had this special cdclk (which I
think was determined by CPU vendor string or something).  If that's no
longer something we care about, then it probably isn't as important to
have the more precise subplatform name anymore.


Matt

> 
> BR,
> Jani.
> 
> 
> >   - Make RPL-U part of RPL subplatform
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          |  1 +
> >  drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
> >  drivers/gpu/drm/i915/intel_device_info.h |  2 ++
> >  include/drm/i915_pciids.h                | 11 +++++++----
> >  5 files changed, 20 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 48fd82722f12..fc5518314598 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
> >  #define IS_ADLP_RPLP(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
> > +#define IS_ADLP_WITH_480CDCLK(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_480CDCLK)
> >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> >  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
> >  #define IS_BDW_ULT(dev_priv) \
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 6cc65079b18d..e9f3b99b3e00 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] = {
> >  	INTEL_DG1_IDS(&dg1_info),
> >  	INTEL_RPLS_IDS(&adl_s_info),
> >  	INTEL_RPLP_IDS(&adl_p_info),
> > +	INTEL_RPLU_IDS(&adl_p_info),
> >  	INTEL_DG2_IDS(&dg2_info),
> >  	INTEL_ATS_M_IDS(&ats_m_info),
> >  	INTEL_MTL_IDS(&mtl_info),
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 849baf6c3b3c..a1732ad519fb 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] = {
> >  static const u16 subplatform_rpl_ids[] = {
> >  	INTEL_RPLS_IDS(0),
> >  	INTEL_RPLP_IDS(0),
> > +	INTEL_RPLU_IDS(0)
> > +};
> > +
> > +static const u16 subplatform_480cdclk_ids[] = {
> > +	INTEL_RPLU_IDS(0),
> >  };
> >  
> >  static const u16 subplatform_g10_ids[] = {
> > @@ -268,6 +273,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_rpl_ids,
> >  			      ARRAY_SIZE(subplatform_rpl_ids))) {
> >  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> > +		if (find_devid(devid, subplatform_480cdclk_ids,
> > +			       ARRAY_SIZE(subplatform_480cdclk_ids)))
> > +			mask |= BIT(INTEL_SUBPLATFORM_480CDCLK);
> >  	} else if (find_devid(devid, subplatform_g10_ids,
> >  			      ARRAY_SIZE(subplatform_g10_ids))) {
> >  		mask = BIT(INTEL_SUBPLATFORM_G10);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> > index d588e5fd2eea..4f488c900273 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -127,6 +127,8 @@ enum intel_platform {
> >   * bit set
> >   */
> >  #define INTEL_SUBPLATFORM_N    1
> > +/* Sub Platform with 480MHz CDCLK step */
> > +#define INTEL_SUBPLATFORM_480CDCLK  2
> >  
> >  /* MTL */
> >  #define INTEL_SUBPLATFORM_M	0
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 4a4c190f7698..758be5fb09a2 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -684,14 +684,17 @@
> >  	INTEL_VGA_DEVICE(0xA78A, info), \
> >  	INTEL_VGA_DEVICE(0xA78B, info)
> >  
> > +/* RPL-U */
> > +#define INTEL_RPLU_IDS(info) \
> > +	INTEL_VGA_DEVICE(0xA721, info), \
> > +	INTEL_VGA_DEVICE(0xA7A1, info), \
> > +	INTEL_VGA_DEVICE(0xA7A9, info)
> > +
> >  /* RPL-P */
> >  #define INTEL_RPLP_IDS(info) \
> >  	INTEL_VGA_DEVICE(0xA720, info), \
> > -	INTEL_VGA_DEVICE(0xA721, info), \
> >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > +	INTEL_VGA_DEVICE(0xA7A8, info)
> >  
> >  /* DG2 */
> >  #define INTEL_DG2_G10_IDS(info) \
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
