Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322EA628E95
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 01:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6D88924F;
	Tue, 15 Nov 2022 00:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2788924F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 00:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668473011; x=1700009011;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=AkFxfqCFSG0vngah5MSVMfpdMeOt6XZgaJ3foPwKtEU=;
 b=nJ31V8FRPFuZhQhTZ1ngJhDazIdgbJuzSCSlFAUgHM4xY+pGyR2uQuIx
 fQ//OxbtzWdj7DYvE8zVbAzbD0q5JWWhL0S5D5P0O8R0OgY/cJj8TaJrs
 P61iil/B/88xs+VuhjWdwXO4w4nusuPsXIp4XPzBHbaTUe8l1uY7hacv3
 ZeGo8LXCkZllKFTlA7fRXQqeyETzGI+NzluVFx3uoRxushoe1JSgLoLCZ
 mHq80wyNv8h584OWG1yI/Ko8nh5dfTQGXmxSbHMjK6MJe4RVshdPTSOF5
 AGjSjEHK1oIHXUBLhZX8VRZNol2hgtJClJ3k/MHvpbdlG1Q05+h+GByAk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374251533"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374251533"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 16:43:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="589592795"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="589592795"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 14 Nov 2022 16:43:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 16:43:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 16:43:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 16:43:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 16:43:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsrX7LlYA/ZUsmaNvYKAJgxEu5gytQAULjwMFmtbFieDbtEN3JrMUiT8rKUpl9TddN1x8Ns7D042PaS+clatvILcJ6UKYe9I0o1dPO6NDmb4zxkbVrYxxDEJvW+NXaIYYUNLElLqGtCXLMoE1DrQF/g7uGCxPUQWsCwU/ko2cCOhhlcmvYhkZazFqXj7Ucxs+683dInLHVL2Y+K71tvDgcV3jWnKvpiB9lNE2QMvfF6vosDUfeEjp5cdVEha1CgVahvSLSn6TJHiIQBVPPhNIxnBubOMUelDsV/FjLQcIE3y4c+Y4UYoKrdRlRCIWZR4aXwgW7O/0v4uRdU9+h+PAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bv7VxeMYzmbiK3WbIKyaki3mEzFYxijLQz+7NPYvf7I=;
 b=lR3Hcd5/jkzqnMEddjtT0ek/Ee2q+dXcHzKD2zzoWGxgC49RiTG1EDOeJ/9DhFXHJHve/fYh+0IO63QXQsy6Lz29Vb2b4ZORHxt0TBJWnn8hBcBBcEkyJXN1bpNlvMc0GF+WjIX05Kx8U3Rxll/pYVZ5lyU4ZS1jqcegx0mIkdOZGvYcDnFb5/3d1h782sFAh/31L0Iae+3TD2MUJEEU860YTdzYZM/aDVZR+9bb0ZHR0J8VcmecJBAfbk8BRn3nxv9BlPbtozTFmExzWKQTLsVMiTrcW6vjKUdOXFeTCtwO2obQCoTBkp7yK8Jzyay6SRmXJgwGStB5t7xx9FdL4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH7PR11MB6426.namprd11.prod.outlook.com (2603:10b6:510:1f6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 00:43:20 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 00:43:20 +0000
Date: Mon, 14 Nov 2022 16:43:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Y3LgpJsYp3qBxnLQ@mdroper-desk1.amr.corp.intel.com>
References: <20221114205717.386681-1-anusha.srivatsa@intel.com>
 <20221114205717.386681-2-anusha.srivatsa@intel.com>
 <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21663F7C69EA4AD5984E85D3F8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y3LWxBeTXE+Nt3m2@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB2166F7D1ED877C67D094E096F8049@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY4PR1101MB2166F7D1ED877C67D094E096F8049@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY3PR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:217::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH7PR11MB6426:EE_
X-MS-Office365-Filtering-Correlation-Id: 04873ec3-0706-4175-5b1e-08dac6a263f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BTUTb8cceccgGbkG1XW5a81ZfypMiunwrXvVSa6Wfm2CQ7Vqse/aanh15Qn+n0Lc3iDSA3e6Ry+R61FcuaDDHaIpbSUiKYI99DslZpgDBzVLmwgW/aI1mZMsUZ4AWEFeSUgC+q2h/u+i9aysKpGoJtjJ56QC5UKe3Ql7sFh+Jqja6/8D3xTDIMtM/B8jULe0M9p4v1xIPU4k5TF1MCZdEYkic0tZRiKD7EE17noZNPUSC2KHup9TsTWEyGqiA0DoHRvX6Mo4IZyup0C4U35Ym7x9u2BU1LrV3zMwUO/V1ctvWx0KFK1/qfQqmDBKiwRYzl73AaRz+LKKadARGmq6Swlm5+bo2b+5oJow7cw5wCTWoWPnNeQllAcde1EOIK/NM/6PRWc25Uqdz/VVHjxeTvpI7btxj/zfelFGtiNpiAqQSogvNxhScKnuMKWGZNKcqxfEm1mASYGuwq/dqkgzTtm1fFZtGYZeAxItZb6B/7/RPkVvxwc96RXt6mjY1crpuSWKcVPgUJpTu0fMjU9VAPJDDOZogy86m+h/lM/kHS6zpgp0GKw79DSzsUIJZZwzDz27IoeKoWxatQHnL9opImzhXb6IJ+oJweQxsxD23gd/keUEv7qQ9Uq+FQzZ7vscm8czn6Kzvru6QhOuqsA5DWNQDePttiiAiSuHr/ZAQ5I7p4PrEybRdNYQoaxfbQYX5vwvbTCJTBUPgvNxjaeRG+Uvgd2Ba7RpcVHeb+PORBFaFCJWonsKBwQn/24Z77iE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(39860400002)(366004)(376002)(451199015)(38100700002)(41300700001)(83380400001)(86362001)(4326008)(82960400001)(66946007)(66556008)(5660300002)(66476007)(8676002)(2906002)(316002)(6636002)(6862004)(8936002)(53546011)(54906003)(66574015)(6666004)(186003)(6506007)(478600001)(26005)(6486002)(6512007)(17423001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?J652V13nYiKgkUuQSAC7dfoZkHsieXm2pHwYsvcsFzgeKwvxVkZrSjt/aK?=
 =?iso-8859-1?Q?pO0v4K+x2mEDq17Y/ECFU9tiKikFpaPPiaK/Us0DiEG+bKlW4MGiTzDqKh?=
 =?iso-8859-1?Q?UJm39uME3B32KWWFlSlT1uW9IXWg0lh2349pucFdWL54c/o2RvxhcC+tri?=
 =?iso-8859-1?Q?C6Ex3mH4yC1WLDGy9oaN5QCcLpw8x9r+0Lno4O9KHs+7pfUOFfzdR6PvyT?=
 =?iso-8859-1?Q?1PoLtUF5BDFGArMpTTyXo76sSlXV1t274U9V4+aj7fMKgLRkRNX4ZWcnzq?=
 =?iso-8859-1?Q?bAfKqWTV+PUAx+5eciSD4CkPgpzoRkj4TK6wSGo7Uu+Nlu4RVWNxuwiZOS?=
 =?iso-8859-1?Q?KuHg9QQHoeTFs3qQQAUbvjOMwZly16UnfVG3242p+n0tiieuOBzrikLNJH?=
 =?iso-8859-1?Q?IUmUU/4EE70HVxDfkPSFxw9gra4FERg7Ob+DlKoGL+nscVpY0d6pTLycN1?=
 =?iso-8859-1?Q?cj3Tjq4MWQ4wkVZ2QhbrbcKLOxd5tOm/ipUXGEpCVYLHlzwZHymIrBUKcv?=
 =?iso-8859-1?Q?FhQJCE8N6lfyOA7RDQgiUKkTC3W+NEhPGoczFUpd9wlB19gn+V7+qpf8Wx?=
 =?iso-8859-1?Q?pRwFIFvS9LyooaE/8TrC5c5gPkMpTguqpVZ1+9a2tfBTG5FLo06Estcl8M?=
 =?iso-8859-1?Q?ypRZHflJ+y6uM/cj12gJUwo5zX6JHC6KgUKnBDrLrx4Y71312qQBfmvIzz?=
 =?iso-8859-1?Q?cMp0kVQfI1PfjjzFrUuXlEkdsRNJdlcZ4IWx/ExzlDb402iir0Woq2HRY+?=
 =?iso-8859-1?Q?6CRK0JV82LReFET3JZWau/8fqJSvB4xAit3oQXIDCl7nzRA5tHOBENIvZe?=
 =?iso-8859-1?Q?6V/w/YQ+7eaTETDeD3uK/0eLlAYm719FcuW87YaEY9vnLlKfO3cQ6fnxOT?=
 =?iso-8859-1?Q?4AsLx2IQbbjJM6gLzH68r9DhPdMKgctg5h+9ckfHKBnIfqEJQ233jDAUy5?=
 =?iso-8859-1?Q?kJhdO9G4GyD0KkHKgnewu+oPLUrSCmJI/+qKqSX4N5mfZNv2caq/qt/tTv?=
 =?iso-8859-1?Q?4K91NK7gYvH1h/gebmB/59TuVrc8dFg81urLbaqT53Rm/JqjRwdZzNpdt5?=
 =?iso-8859-1?Q?wNgP5psom/QUvrLIrMYXMnGy2AxAeWwpMLqEzV3AeMJiWO3DerrfBH/z8/?=
 =?iso-8859-1?Q?IB35hDyWSlTnewFe5ApX/RvM/3CTMIBuFqHbsgVrwxT6yyp0bMFZXzYBM7?=
 =?iso-8859-1?Q?OTrG1grtmMr2XnW5YAyLLda4zpI2baxPQs0vyPZlpU7hyC/z+K6Ahm/f+X?=
 =?iso-8859-1?Q?m2feZrAvekQzlxWw/M4i+gTiHVQMVaqktZhwyMHWhxtKZSbT2YV/aD8krm?=
 =?iso-8859-1?Q?ioLT9zfsMfQr5I2bosw53d78SX8GrOH3qoPQry/ROlaQT3VPPi3Mp/zW1Z?=
 =?iso-8859-1?Q?RkeFIswfoHk+ZVR2LKj0fMmtjpJyyVjMg9JJisAiBjSOIJ78WblHH/6y4s?=
 =?iso-8859-1?Q?ECtAJkSDFLyelnLTKCpT4Ej+M60WapaXr9RNMn8KzBCUDZ+57RwrvWV9He?=
 =?iso-8859-1?Q?yMTxSkcgn5qNWE/K85+tZP1EJrRjD0nJsTDPy2hVENcJ9dHYjlzjQCYXrv?=
 =?iso-8859-1?Q?+T02WBpG5Uv9und+KSncvi47FbXO9fW6EEs+gNIT/nux9loHo2E4OBa359?=
 =?iso-8859-1?Q?Cf3DKn0/9cVgDcvZaSwwBCNvV3dICGrVhzJ9qVuUhOBJZRHDwGQpdw3A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04873ec3-0706-4175-5b1e-08dac6a263f2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 00:43:20.2986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eY61MweBLxQTRaPDjcp9i4Zu40py9U8SPUYlbQqGjlP80lk8yVPXN5wJT1czkiFPszqGY5qI2S1guczUuOiczm9b4q/BtXmX0Br3OlmE0LI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 14, 2022 at 04:07:13PM -0800, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Monday, November 14, 2022 4:01 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Ville Syrjälä
> > <ville.syrjala@linux.intel.com>
> > Subject: Re: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
> > changing cdclk
> > 
> > On Mon, Nov 14, 2022 at 03:14:33PM -0800, Srivatsa, Anusha wrote:
> > ...
> > > > > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > > > +			  const struct intel_cdclk_config *cdclk_config,
> > > > > +			  enum pipe pipe)
> > > > > +{
> > > > > +	struct intel_cdclk_config mid_cdclk_config;
> > > > > +	int cdclk = cdclk_config->cdclk;
> > > > > +	int ret;
> > > >
> > > > You should initialize ret to 0 here since you don't set it in the
> > > > new branch of the if/else ladder below.
> > > >
> > > > > +
> > > > > +	/* Inform power controller of upcoming frequency change. */
> > > > > +	if (DISPLAY_VER(dev_priv) >= 14) {
> > > > > +		/* DISPLAY14+ do not follow the PUnit mailbox
> > > > communication,
> > > >
> > > > "Display versions 14 and above" or "Xe_LPD+ and beyond"
> > > >
> > > > Also, this is another case where "/*" should be on its own line.
> > > >
> > > > > +		 * skip this step.
> > > > > +		 */
> > > > > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> > > > > +		ret = skl_pcode_request(&dev_priv->uncore,
> > > > SKL_PCODE_CDCLK_CONTROL,
> > > > > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > > > +					SKL_CDCLK_READY_FOR_CHANGE,
> > > > > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > > >  	} else {
> > > > >  		/*
> > > > > -		 * The timeout isn't specified, the 2ms used here is based on
> > > > > -		 * experiment.
> > > > > -		 * FIXME: Waiting for the request completion could be
> > > > delayed
> > > > > -		 * until the next PCODE request based on BSpec.
> > > > > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > > > > +		 * timeouts; the 2ms used here is based on experiment.
> > > > >  		 */
> > > > >  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> > > > >
> > > > HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > > > -					      cdclk_config->voltage_level,
> > > > > -					      150, 2);
> > > > > +					      0x80000000, 150, 2);
> > > >
> > > > The switch from cdclk_config->voltage_level to a magic number
> > > > (0x80000000) on old platforms doesn't seem to be related to the rest
> > > > of this patch.  Ditto for the comment update about 150usec not being
> > enough.
> > > > Were those intended for a different patch?
> > > Well, initially both squash and crawl support for MTl was the
> > > intention. The change came to be a part of this patch because MTL
> > > doesn't go through the Punit mailbox communication like previous
> > > platforms and hence the churn. Thinking out loud if changing the
> > > commit message makes more sense or a separate patch. A separate patch
> > > would just remove make sure MTL does not touch the bits of code Punit
> > > code. And the next patch would be the actual
> > > squash_crawl-mid_cdclk_config patch.
> > 
> > Okay, it looks like part of my confusion is just that the code movement made
> > the diff deltas somewhat non-intuitive; due to code ordering changes, it's
> > actually giving a diff of two completely different code blocks that just happen
> > to look similar; you're not actually changing the value here.
> > 
> > However I still think there might be a problem here.  For pre-MTL platforms
> > there are supposed to be two pcode transactions, one before the frequency
> > change and one after.  Before your patch, the 'before'
> > transaction used a hardcoded 0x80000000 and the 'after' transaction used
> > cdclk_config->voltage_level [1].  Your patch keeps the 'before' step at the
> > beginning of bxt_set_cdclk, but it seems to drop the 'after' step as far as I can
> > see.  I don't believe that was intentional was it?
> 
> That was not the intention here. I think the Pcode thing needs to be a
> separate patch? Might make reviewing easy. 

The pcode handling in the current code is what we consider correct-ish
(although as noted in [1] below, not 100% correct).  So I'm not sure
what you mean by a separate patch for the pcode thing.  Do you mean
refactoring out the _bxt_set_cdclk() function in an initial patch
without the two-step midpoint stuff (since I think that refactoring is
the point you accidentally deleted the pcode hunk of code)?  You can do
that if you want, although it's also probably fine to just update this
patch to not delete that code too.


Matt

> 
> Anusha
> > 
> > Matt
> > 
> > 
> > [1]  It looks like we might need some other updates to that pcode stuff in
> > general for some pre-MTL platforms.  What we have today doesn't match
> > what I see on the bspec for TGL at least (bspec 49208).  That would be work
> > for a different series though; just figured I should mention it...
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
