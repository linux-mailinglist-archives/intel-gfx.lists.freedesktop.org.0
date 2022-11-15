Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D2D628DDB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 01:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CE010E34F;
	Tue, 15 Nov 2022 00:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC0F10E351
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 00:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668470478; x=1700006478;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=w+3MCtix7z6dSfujuDH7SzZ9jsS58Xrppe7nXuJjUHU=;
 b=HSBlbKEmTuMTBV7IDF4ah+liF1LWo68RTjly3keXFWELucuXjpdEmgJK
 41TD9rHiP3Oi9uP7cvajCdQ1o+AvFG1HSf6GWBDZ1Ub+YfPOVpNBjlkK/
 CwRSEuhFg6FWjAy4DJqKtxn6vmve6G0SJrJxdh6hAd1z6Jeeh+3B5ZwBD
 3+jOd75l4qVkpL5iDIj4vWMx0KTsYXURGp4Du9XJwI/cVpZJU6YpfXKw9
 MN4Tu1eCB+0InwJQPeQ6tISlUCTNQ9yamynPkwGfOl7Jko26OVehRE1W8
 hkzIIkGvZt0E6JFedb1xN6w7oqFFNPoUd9B83+WapxQFwFNX3Je2loYJQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313923042"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="313923042"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 16:01:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="883738432"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="883738432"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 14 Nov 2022 16:01:16 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 16:01:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 16:01:13 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 16:01:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZgMxleOK130tYjYuwMX07r74HP2+wegY1Z9ThNfBcyMJSqkVAurAG2zeUnk6cl6b4TGnj62dmpJsCbBrzoas5gmEtNYExJYNvUh84IplyTD19aM1gto7O8kpDylckWxTHUGNShnIjr87AoOiarZRma/5z3ztSNlrac81Vl/gPx3fmWSFcHD20nA/TtD4F4hq4h4qgwNttcrRwvJ6Qdxi5yCB8KW+R7CHLXn3KadqJ+LcQy6LN31fXCPX3Ag8cHKSafC1GEp5JLJ3Fiasby5uY6RSLBEQHdxdV9aBXbQ0PnTPDMOXE6KetwBqn2fOijLlnMXA9j7iLvOdpk3J8+mHAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z3P31AuwrBH1jiUe8bOoMlGHvPbggBvLAgj1EWuAO38=;
 b=ZVwMjDfnlXQBxKkjScSqM5GoOlbgCNRijYCpKhBPFRgTfUnH5/FJHA5rII7jzgRqBAa7FGFXqDdJ2CRsdqZAF3tePxqQRMljUOujywT83m5lCkqe+ImAjfzJ4JcKViaZqyWDoTgutCEaoOMBrZ6tX3KVdZeuZht4Es18fuI8Yo1uCxlTHmYuTJMMLSk+sz4cUUixdxi8Vt+qTsBFi9lP+Hvg92GfMlfYK0qgafvOahj3Vm6fdUDROg65KLnesHiLvNPlqVwMFr2pzNWaz7hNB+Ti+BwrUFeUUmr/KuB0Mi5Uud2NWw2Ubug/iLUsznHi1B/kHjCQFTkZ5grXY59qzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 00:01:11 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 00:01:11 +0000
Date: Mon, 14 Nov 2022 16:01:08 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Y3LWxBeTXE+Nt3m2@mdroper-desk1.amr.corp.intel.com>
References: <20221114205717.386681-1-anusha.srivatsa@intel.com>
 <20221114205717.386681-2-anusha.srivatsa@intel.com>
 <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21663F7C69EA4AD5984E85D3F8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY4PR1101MB21663F7C69EA4AD5984E85D3F8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0339.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::14) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH0PR11MB5205:EE_
X-MS-Office365-Filtering-Correlation-Id: f25d4dc4-d08a-4756-f7a6-08dac69c8126
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w2ZyGdYpE4KnWC0J6n129juU7sj6IfZUKBFs6n4FB2xgU2kM5Qa6KYaGRq++l1V5qqjSgtMnds5tdov5K/ChFcW/JcjJ0cGX1akStZWY8Rw7vGwr8p2SzSZZGYUX6tNSYcLRPUTtRoKvOWcdn1On9bk/06ruZ9BVC0HIX2YYsLyyrUR3fvPAAHFmsQ1TZZtc1Sb3YEgvia3GXHwiq0Wx2l4BS4tcTtHW05hwzVQAaVMhQKUPmy+EsSWK+QH3LEIDf3GXkuIJxIx87Ag6xBcDmC92b36+B7nw6v5iHvl3IYx3j9lRFOFKINgKINgJR5MWSw2uaVbVrUx9LlqSBFy4UZP5EAPUm1mpwih5l2J2WMhWEH2NyOmwAFpvQ/Y7ZbqrF93dp77T8lH8vrArFTmuP+pB9AJJJGZWzByNtAS0iI5z4Mddg7ZZlo4V6bB81jK0YLnmp9ONKtA6YYdXseDpdZb7DXaGT4Vsf7calThXer5go4+S3/G2lFBq/A31Rl2j8W3SizQepMBa+VhKTZu2rztpuhP+ei6dxGTrljOi4oMyV9NTp/fe0D4uO+5i7Lqy4tNjwcWbESNE8enjEK5ra4kauAtD44QbkuhI4RBL94waEx1YOFVddcBP8kTc26YAuZXHr33jyJqZ2oOkJRhsjfo0JxCr2TOpRwb1Z0J++Wh2CmVKBHM2VKZiqMboFtyDrcfYE9642vNqBpTCDYB8YZE/jvs6IIwDE+lyuPx6v2/t/VCCUHR+ZbvnHfzSVIM775ySfO1bEhdgQEZ+vA0IUg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(376002)(366004)(39860400002)(451199015)(6636002)(316002)(54906003)(478600001)(26005)(86362001)(6666004)(6512007)(2906002)(6506007)(66476007)(8676002)(186003)(66556008)(82960400001)(6862004)(8936002)(83380400001)(66946007)(41300700001)(6486002)(5660300002)(38100700002)(4326008)(17423001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+3fvdcBMo8bxeC9RWp95kjp9vUwHn8xENbd20QZ5PyKybcUPlISOcucWRvKZ?=
 =?us-ascii?Q?GHxhIgMJ5+Y2QOdYtkbmGXpDDXPufGv/AqfL/62M2VxmMpCtSSf/UYvGYHY+?=
 =?us-ascii?Q?0sOjfTlZkg5LISoD/1SdFwzw2VbWXtD0RWkjQ2Yzzft0HvP0FElHIDKiH6+H?=
 =?us-ascii?Q?p3frjyggF83ozBXtjBQ7d4i6c86eFpX+/ZC1cnykl4C1R/2DNTNSFsTAi7VF?=
 =?us-ascii?Q?tp+KkzNkSEa8hZ4FHnJ/R7x1Al0SkQgiFi8iAzcnmGyNTzejiSOXfAgwcSrO?=
 =?us-ascii?Q?FwHrsHPfwfCDkIzCiPO3t1yJMpvnEkWT0VvAn2u9iT5dpPezf2VHjEwiIpVE?=
 =?us-ascii?Q?3qRs+P5QXNbpn6XPHHyKPy6sBtHULPosKIXlphjIuymNeOuMBrMZZm1vnUU1?=
 =?us-ascii?Q?yNR5+nvyGJNw7eqEaNh37+za6zjMH54otSoCGEW3H1+7vKtRGH5WjkNOKug4?=
 =?us-ascii?Q?tMK3wYW0UPMgOOTVcBY1NgmN3GQFP7xQtT7drwMQUV7X+jq8qlOc5SgrP6S/?=
 =?us-ascii?Q?PkDg2qfNag4gu+PFHTRNf4DfZAFmI2ozvK90+xwaLpzc7DN2DtVIIChPJhTI?=
 =?us-ascii?Q?Wp1lj/ICgZTQ736D9y9rcUyh3TpYo0Z/SlEEgntEpvwLHoysl2dSkXIL+Hbu?=
 =?us-ascii?Q?s2zzxj2ORounaYZy0zoT2JlHkNp2Mcd5b2jl5HFHdSjEWvrp7kB2KlKEiw7H?=
 =?us-ascii?Q?va/q6e9oMDQ5ZVxhDuu3f0AUdTGpaM9f/MnqqRq2agxgeGwBafBtBci++QKE?=
 =?us-ascii?Q?u/CbGaXFtV2tG9pZfRk5Ap0OF08rDtjjcX5FUjSzgloX8ULjYjUg6LVy1evM?=
 =?us-ascii?Q?8s5YXo4mZydr+qVcfQEzukwXlIxdU7XDfPe0INbPkGDoiARKEh0r8azlhUOS?=
 =?us-ascii?Q?/QvLTrli74K1z4TqwaabBD3Fe6PHJnV5CV8RBl/wOossVG0T7AkCPzYn0it/?=
 =?us-ascii?Q?sjEj97iGpXPECw0M6OVuSGtN1TTUYCcDit9hP95Qac8eSoJokDkHwjs+P0OB?=
 =?us-ascii?Q?5gzJkHArFEUd9iiYAGIY8KoEIcY7zSfG+x4uZNTDOfZ68KW1An9KyUp/apsX?=
 =?us-ascii?Q?abI601rilbjtjf1z9VgH2GBHZPF+Urg6msWyPcDk9bNDbhCcOO3eHkegOxIm?=
 =?us-ascii?Q?iim81GeQemn7FecbjCb9dYZTXFir9Jme6EjVtksPZBk8gi5YZay+uLGyyNwb?=
 =?us-ascii?Q?/2Z1eE/5HXH9t9IOMBFtTQjd2qlRTPQ6JokmSwLOnJv/bBFVNFN4XwTpO0nG?=
 =?us-ascii?Q?UjL/xSmp53sLHYukYjGiXd+1axT311+m+wLO/gzpkNZEHpD6ACcA39ZdSAJv?=
 =?us-ascii?Q?qNW/VdPn9RYve4m+fTgpus+ttOJ2aw7U96Q3Sgnh5EBLKdW2gIjS9kZU5ZGD?=
 =?us-ascii?Q?0x3ypI+oVDW6QDwMy3ippQx89lwyUEKtJj/H3aWpfcZ8hx5/gbmYBiYICPT6?=
 =?us-ascii?Q?9LU4IPwUZ59thd7XM1KGmN2+0az80+Trq7ILk6JtwrX1xFmShDf5irGM2Vl8?=
 =?us-ascii?Q?5n7kO+J3Mk3XyFl/L5rcraBTes7hEmpl8U2+PfnBLeaT77wtdhlAHPo+05bE?=
 =?us-ascii?Q?3Q1qE9mtaYyjluypBmsHf8PLQAgrY1EzIgWcARAOSLcsJynCHIpahQjSvHHV?=
 =?us-ascii?Q?IA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f25d4dc4-d08a-4756-f7a6-08dac69c8126
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 00:01:11.2390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +SwbiMxHKOkyqnJF5VCw//w+jKn3dMqu4PLG8NiZzxt6ihTC+FQuQJDm3Ehze5PJ0SmTNEP2revkwpoIj4MyZtfxzbibI4o/f98Hyngzv7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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

On Mon, Nov 14, 2022 at 03:14:33PM -0800, Srivatsa, Anusha wrote:
...
> > > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > +			  const struct intel_cdclk_config *cdclk_config,
> > > +			  enum pipe pipe)
> > > +{
> > > +	struct intel_cdclk_config mid_cdclk_config;
> > > +	int cdclk = cdclk_config->cdclk;
> > > +	int ret;
> > 
> > You should initialize ret to 0 here since you don't set it in the new branch of
> > the if/else ladder below.
> > 
> > > +
> > > +	/* Inform power controller of upcoming frequency change. */
> > > +	if (DISPLAY_VER(dev_priv) >= 14) {
> > > +		/* DISPLAY14+ do not follow the PUnit mailbox
> > communication,
> > 
> > "Display versions 14 and above" or "Xe_LPD+ and beyond"
> > 
> > Also, this is another case where "/*" should be on its own line.
> > 
> > > +		 * skip this step.
> > > +		 */
> > > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> > > +		ret = skl_pcode_request(&dev_priv->uncore,
> > SKL_PCODE_CDCLK_CONTROL,
> > > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > +					SKL_CDCLK_READY_FOR_CHANGE,
> > > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > >  	} else {
> > >  		/*
> > > -		 * The timeout isn't specified, the 2ms used here is based on
> > > -		 * experiment.
> > > -		 * FIXME: Waiting for the request completion could be
> > delayed
> > > -		 * until the next PCODE request based on BSpec.
> > > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > > +		 * timeouts; the 2ms used here is based on experiment.
> > >  		 */
> > >  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> > >
> > HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > -					      cdclk_config->voltage_level,
> > > -					      150, 2);
> > > +					      0x80000000, 150, 2);
> > 
> > The switch from cdclk_config->voltage_level to a magic number
> > (0x80000000) on old platforms doesn't seem to be related to the rest of this
> > patch.  Ditto for the comment update about 150usec not being enough.
> > Were those intended for a different patch?
> Well, initially both squash and crawl support for MTl was the
> intention. The change came to be a part of this patch because MTL
> doesn't go through the Punit mailbox communication like previous
> platforms and hence the churn. Thinking out loud if changing the
> commit message makes more sense or a separate patch. A separate patch
> would just remove make sure MTL does not touch the bits of code Punit
> code. And the next patch would be the actual
> squash_crawl-mid_cdclk_config patch.

Okay, it looks like part of my confusion is just that the code movement
made the diff deltas somewhat non-intuitive; due to code ordering
changes, it's actually giving a diff of two completely different code
blocks that just happen to look similar; you're not actually changing
the value here.

However I still think there might be a problem here.  For pre-MTL
platforms there are supposed to be two pcode transactions, one before
the frequency change and one after.  Before your patch, the 'before'
transaction used a hardcoded 0x80000000 and the 'after' transaction used
cdclk_config->voltage_level [1].  Your patch keeps the 'before' step at the
beginning of bxt_set_cdclk, but it seems to drop the 'after' step as far
as I can see.  I don't believe that was intentional was it?


Matt


[1]  It looks like we might need some other updates to that pcode stuff
in general for some pre-MTL platforms.  What we have today doesn't match
what I see on the bspec for TGL at least (bspec 49208).  That would be
work for a different series though; just figured I should mention it...

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
