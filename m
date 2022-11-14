Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F62D62893D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 20:25:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867B310E10A;
	Mon, 14 Nov 2022 19:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A968E10E10A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 19:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668453917; x=1699989917;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oneXCyZXlS/yYZfCk9LXN2SeIojbktbbVNdlVXkjFKE=;
 b=KWPkJd+oGidUdJa0vN37djrePClyYLdYhq1c7+2SQhUYCwWhrcf2mQCn
 +nMwt7zWyiMwCwdGX1vXWyi+aVS7HPlng4ijvwAIrBbW0Vd1jlpXoW28/
 5bfeWKE+dOzSUAjcGuGurLtXkAahi04itQfPgDvE0n18ia+oHHI9s5aaM
 i67lRQBJ9wWjHrMfbBo+21Tc324ZR5VpnG2ySL8nQbzU9r5tF1DyMieP1
 evKc4TIh9G051G2oaszaHOg34LjL0kdgjVrZYu8ejy2GvGe0SqzCKf8PX
 3FFyUIbdfZEJJZMaqUhXprBYZpTaKYah4KbgsJLCD0qnXttOpPqnsrcZw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="376328477"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="376328477"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 11:25:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="813384994"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="813384994"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 14 Nov 2022 11:25:14 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 11:25:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 11:25:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 11:25:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 11:25:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9NWxKPzmEUmPHvimv3tXUTUQC1whrHphdMv2f5pdqFq/9s758cRJLLIibR5hDH7bM3tHqskVar+u1uFE3JdQwLfYArfPOurCbCI9opan4aZVTXEmMilJfaXhu6iFeM/HyDM4kzcr8dlCls9ap4du5XMZrQ+Ww7jeEeLXeqiKQXubPBYrHCvdX39d9RfrnDUgwVau6oIf3cMQR/M0ObfeQWqab5p6vUkp4Dgc6XfN3GxZIozHwP8mEJK9svWU36Jv8BriGW07hyVfUEJwoQ0etXu+4heDwqmsEkH5bkq1kYBbLfPYYr62Ulfa0b7jyKjLjkZBPIrp7QuvsQdvGRoKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lxjIlhGoY5lT52HqmdQ9PwaAq89EXbqvf8RGtAS9OvU=;
 b=GZnHzPwdZLS2qXB7UNB6CgC31cbfobMdllTN5AthiZLXUqnWl92Jhsmi6pFhykZFo+/ZR1SxKRpix3jzHzIwX+8Pr9kOoi/NnLZUq7NnOssu5tKNDWZ4TRmg+tJ2PLsvNE8ambkGALK/HvqTXSfV0qCLswRqwPXQ6lk9vLd2DGH3vyUepxIXb6IssyloQJ5ZlnSBsjr8m+ooiBqVigO+BlB4jwilFWRywsTkJOiKWkxCKThgwz3B+kPMMuztydgUj3hrM+uOeL1rsMxo3MdIVK/mDexmqdmp8ExBIqDzg67p7BkOI4ma7w144My5Vk1EXvzF7O601wlbcMUvhpaHdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7383.namprd11.prod.outlook.com (2603:10b6:8:134::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 19:25:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 19:25:10 +0000
Date: Mon, 14 Nov 2022 14:25:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y3KWEeNLcaqwZMiL@intel.com>
References: <20221111224930.3961511-1-skend@google.com>
 <875yfh4wpw.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <875yfh4wpw.fsf@intel.com>
X-ClientProxiedBy: SJ0P220CA0007.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7383:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b65752e-f025-46b3-1046-08dac675f1e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: edv7oA0FNChQRkS2n9NLw/nW3HuthP4g5DDpd3d/9raDZJays/nsUC5QM1Y4/5DWpnfrhJBSCw1uJCWkcPLXJRxq+o38uL3DDxwcvC7yKb7Mu81Rek+YSh9ZsrYfQXR33X6SSjLNqT1/59Qr1agoe4uAwYX2wr76jMFw2APV98H/zI1yaCZajhltAY/A+u1SY76gmhHvABO4wBxKYSHZyYyZKT2Px7u1cIOwqiPsIG13KIuH3Oxk/4nHtZqxDYleIMWkw0lVxrbD1/Cr465Q195aOFj5kUc1cRKvCfCd5Y4kQtVCMfPoFMcQKI7El7Eabyfj5yXO0WyNxX6X7Uhr44zBQJ4bhw+qBF01rJ+zdKXaIab5byYeNAap1GzwKQrjhD43kMlHfM33o3YImiLQYTIm5gPaXeu3WWM+BJdClfjvkT2vtZ7+VyyUF+GO7BnLXxZumgJzwuPdwji8ERyIuGPTdhqVlvocYSEz2RO1h0GFl4e3IYiKPGMeXlhYXEh2M8ZzNcNu9EJS/PGQLREZNYaplBM8WpJvsbKbhQMU380A6BnvprdDuD90ENpuDmdmFFVRGTYM6k7CKz3JyKbShf1Di80/5ajvqjpKlp0UNC3QJbkqPkcFgEVXss0hgLO5FeuEew90z194uWWGp524mQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(136003)(376002)(39860400002)(451199015)(83380400001)(186003)(2616005)(82960400001)(38100700002)(2906002)(44832011)(8936002)(6486002)(478600001)(5660300002)(6506007)(26005)(6666004)(6512007)(966005)(4326008)(8676002)(66476007)(66556008)(66946007)(41300700001)(316002)(6916009)(54906003)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W/YPS4Wu4MYcpR+3V+2MGUyWOKf1v6lVtJPaHfUW0rFMTZJP2uKXtbP0ErIe?=
 =?us-ascii?Q?eNDnTiOS79qaE1Dn6HW6kLJo0PmJmaLNf0SwQvgZ1OlXgpXQqTkmYXbwlNcs?=
 =?us-ascii?Q?eHiaHZpBHp/9EQ5Dksni2g9qKagWXlE4oU6jbOltKTCnRADmvejArRaK40R9?=
 =?us-ascii?Q?U5yQ0OnrlOvbkbIHIK+CR9iqspY6wnCEv1gBJyrldtVEbtI9s8Wuo95VCeq2?=
 =?us-ascii?Q?y3OlJr8YhhEs4KUZBQvlkGgtQKseMLu+2siEYZun5zwG0500F3zDTqYfPXln?=
 =?us-ascii?Q?/SOtElw/Tj2sjHKEeHxQC9Q20s+BobOY4O3h5Q/MIxEKyWdbcdwI4Qorj2XC?=
 =?us-ascii?Q?V7RKkNdEXgsht4MpsgIqSvIe/YrUWzixW2kIZ6ZmQnuvek+a90A1mHrwaoAF?=
 =?us-ascii?Q?ZtYy/+ERRplRD4/fwSAu3WbzUtBT5+JJNSMsjWi42wa6Ax7uXxX6kw1IfR8J?=
 =?us-ascii?Q?ugnnf0+VNzX98oSBZ4LallmGkuoWb7SN34eesRpZNVwGxYZ5BoPUiabScu9U?=
 =?us-ascii?Q?K2JqCrEP3qRsrRlWfl54KZtc5Y7NoP5yR9yIBqIamWE3MYbj6JnApkghlJ53?=
 =?us-ascii?Q?HSfFGau9/D+/NW+K9H6ZYPJ2vo7820tMXglkIi+Ebfhbtxv+4cQZr/MLceVd?=
 =?us-ascii?Q?VJqFHMx4KsbVN48is8pDwcXR88+EO2LNV30y4WIxYVHb7CND20uAf3moud40?=
 =?us-ascii?Q?d0zDxLrhHYSB0wRGMUt3R3XSa4hPk+oPutNFhI2V7bU7po6v3ilpTfgyojd9?=
 =?us-ascii?Q?XR9aZUJTDUg+RWS7EcCw392iaHRDhdGYlVEdSs2/ETS6CdwHmh5RfVn2le6J?=
 =?us-ascii?Q?zfCwyqEvmG6CrjVdEmxRDezIkDa7RxqXPry8tzj5uGCEss90sC/rtel6tUpU?=
 =?us-ascii?Q?PGBDGrgjW3Ne9MC2Az7cEJQ5Q0hEvCqYMgetH7DmpV2IFAX4l7nk+fJXmT+n?=
 =?us-ascii?Q?OKi2xPkyMv41MeLJJWRh7rvCGuqdsZrpO41IYJv5ByjnNOJbfZ8JD7+3gIKk?=
 =?us-ascii?Q?Ng68fV7sLVKEABcAEdFt3AwfrguvOwIRxTeLguSvD6ya5XmYsRUlCz7IDe6/?=
 =?us-ascii?Q?DSSNY+gTmguerM8rFQ9d8N+4cdEHMhg8xrH7Tjpg7Doz8OBOWFgBIdtiMd5j?=
 =?us-ascii?Q?7jN0DvRzj8dgY3ubSaB8h+iFOK5X7/o4TnMWErp27ovnABiK7SNc/eRlccLA?=
 =?us-ascii?Q?puXdndoPh01OpG0P5LdVk5fB0V0p/7vCmLqwsBk3gamxbiUxSoxIHqQZwGJR?=
 =?us-ascii?Q?XGlyfeAGifGpNOc2Utl81C/5V5dLCBHQD4mqDjuvRNZFsoCujn8TvuQwvesM?=
 =?us-ascii?Q?TRz6Rxgrjwv0DB0dNDQ42W9Kua5PN2V38yrxJpFX365ZABiVvdwn9Jw6rTSi?=
 =?us-ascii?Q?MxfZUmkiFUpHeFA9v8tCubeK6oEwV1ga/OR8jMJ6JSE2zhQraFEu4m95RBjG?=
 =?us-ascii?Q?T5kEpixkERP2jQX69g4vk9gx5uzWFDdmHPTwHf1Uqk21WcLi04pMRZMl5UWc?=
 =?us-ascii?Q?/HoL79d2YPSTkyMwVlGdB2JYaKZxsoQKZ5Xgh1KhfaxPhmgPIiRkbHklpYsV?=
 =?us-ascii?Q?JChvvpYlc/TZjQza+kagcncLzl2gkyc86n6Lx/yR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b65752e-f025-46b3-1046-08dac675f1e3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 19:25:10.1602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wV3jTwgZh1T2s/NVKak13BHYhdX+HQL1RJLJUMr+kLgmTnlbjTS91vYvzXu72420R0sqCdwhOcDVTgWM6pHArw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7383
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable DMC idle states for Intel
 UHD Graphics 620
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
Cc: intel-gfx@lists.freedesktop.org, Steven 'Steve' Kendall <skend@google.com>,
 airlied@gmail.com, daniel@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 14, 2022 at 01:11:23PM +0200, Jani Nikula wrote:
> On Fri, 11 Nov 2022, "Steven 'Steve' Kendall" <skend@chromium.org> wrote:
> > Some machines with Intel UHD Graphics 620 (8086:5917) such as Dell
> > Latitude 7490 are unable to wake from sleep. Disable DMC for
> > Intel UHD Graphics 620.
> 
> Cc: some more folks
> 
> The patch at hand seems like too heavy a hammer. But this needs
> attention.

yeap, it probably deserver a traditional quirk, including vendor ir,
instead of this change in the platform list.

> 
> BR,
> Jani.
> 
> 
> 
> >
> > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7339
> > Signed-off-by: Steven 'Steve' Kendall <skend@google.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 14 ++++++++++++++
> >  include/drm/i915_pciids.h       |  6 +++++-
> >  2 files changed, 19 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index cd4487a1d3be..ea148be46b14 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -697,6 +697,10 @@ static const struct intel_device_info skl_gt4_info = {
> >  	.gt = 4,
> >  };
> >  
> > +#define GEN9_DMCLESS_FEATURES \
> > +	GEN9_FEATURES, \
> > +	.__runtime.has_dmc = 0
> > +
> >  #define GEN9_LP_FEATURES \
> >  	GEN(9), \
> >  	.is_lp = 1, \
> > @@ -753,6 +757,10 @@ static const struct intel_device_info glk_info = {
> >  	GEN9_FEATURES, \
> >  	PLATFORM(INTEL_KABYLAKE)
> >  
> > +#define KBL_DMCLESS_PLATFORM \
> > +	GEN9_DMCLESS_FEATURES, \
> > +	PLATFORM(INTEL_KABYLAKE)
> > +
> >  static const struct intel_device_info kbl_gt1_info = {
> >  	KBL_PLATFORM,
> >  	.gt = 1,
> > @@ -763,6 +771,11 @@ static const struct intel_device_info kbl_gt2_info = {
> >  	.gt = 2,
> >  };
> >  
> > +static const struct intel_device_info dmcless_kbl_gt2_info = {
> > +	KBL_DMCLESS_PLATFORM,
> > +	.gt = 2,
> > +};
> > +
> >  static const struct intel_device_info kbl_gt3_info = {
> >  	KBL_PLATFORM,
> >  	.gt = 3,
> > @@ -1202,6 +1215,7 @@ static const struct pci_device_id pciidlist[] = {
> >  	INTEL_GLK_IDS(&glk_info),
> >  	INTEL_KBL_GT1_IDS(&kbl_gt1_info),
> >  	INTEL_KBL_GT2_IDS(&kbl_gt2_info),
> > +	DMCLESS_INTEL_KBL_GT2_IDS(&dmcless_kbl_gt2_info),
> >  	INTEL_KBL_GT3_IDS(&kbl_gt3_info),
> >  	INTEL_KBL_GT4_IDS(&kbl_gt3_info),
> >  	INTEL_AML_KBL_GT2_IDS(&kbl_gt2_info),
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 4a4c190f7698..93bea60772ff 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -420,11 +420,15 @@
> >  	INTEL_KBL_ULT_GT2_IDS(info), \
> >  	INTEL_KBL_ULX_GT2_IDS(info), \
> >  	INTEL_VGA_DEVICE(0x5912, info), /* DT  GT2 */ \
> > -	INTEL_VGA_DEVICE(0x5917, info), /* Mobile GT2 */ \
> >  	INTEL_VGA_DEVICE(0x591A, info), /* SRV GT2 */ \
> >  	INTEL_VGA_DEVICE(0x591B, info), /* Halo GT2 */ \
> >  	INTEL_VGA_DEVICE(0x591D, info) /* WKS GT2 */
> >  
> > +#define DMCLESS_INTEL_KBL_GT2_IDS(info) \
> > +	INTEL_KBL_ULT_GT2_IDS(info), \
> > +	INTEL_KBL_ULX_GT2_IDS(info), \
> > +	INTEL_VGA_DEVICE(0x5917, info) /* Mobile GT2 */
> > +
> >  #define INTEL_KBL_ULT_GT3_IDS(info) \
> >  	INTEL_VGA_DEVICE(0x5926, info) /* ULT GT3 */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
