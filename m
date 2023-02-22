Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7561B69F790
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 16:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE8A10EA03;
	Wed, 22 Feb 2023 15:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8A110EA11
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 15:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677079198; x=1708615198;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VblnqRCdmO8+pCqq72aa9htzaalsR3U/ICoyklhubB0=;
 b=d0JhgA6B9OH+ybob0o5/J25OcfKecJxY2K8GjJtYp21d7Z6TuffBsXad
 pBWEyvWlVtIFQknTCnJpkQxGrhcYKv8Lt3EipkFPsQ2GYmWfxg79ypLmh
 8XSten0vGH840jEeYFhLvmGy8S3GM80+VjVM6vUUMd/h+b50Vlw74cA6B
 s9DRo9FFTgB/WNtCjeB2D0ykKxbnMYHdiXSwtQr+XRufqO9w0d0I0+vLC
 HrpJ+2SFCcptQ97t4T+WWIhmEQGG8+l7s/qXJBJjoNUY/kDNm+RiCZyX1
 83y3vvGox5Kr/9oIS3jMKa+1bNBcYkcuND26kqJZznSP6AMUe+7FwuNxZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="316673592"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="316673592"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="674137249"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="674137249"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 22 Feb 2023 07:19:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 07:19:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 07:19:55 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 07:19:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+h3VmMzmyKeN6/IEeshkXX2wy+rz6V3Qe6WCifMFfw5HS569dF5sHY6D33XIYzqmh0HwiJA7Gu+M86mI4trpM7a7Q+Gko6jy8Wqu7HPKdxQosF2nLrGMZZVw+Nzur3JHndJGmhDoUnrCFv4+nczHdl4bkj05nXIapUky5pCYeUW7C0QyQDBgW50gg3/q5m7Bb6YqUiybLjVZ8S37pcf3BzLOL3JEwPacnRd0ry5S6JJfiS/YkblS6jf7lzBcfj+lY9cx6waDf9k2kR7jBxeI+k8Woh9JNiUriU/QRe+zHtFl/rAZHHfQay8LdH8bf+5RueiQg+SfagLL+1zrlogRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k5DANTox4RVNl63vK/ngSGAhK4m4nqKRTI74CDMZeAE=;
 b=H9Z9NfCLwQXmgPPC/PMS4rd2l0s8rvoHYGm9gynfD+sI9pWQ/YSeFsJLQ5yJEtXzX7FyT7lSZhNxpcv/uEvHYqSLuZLfUgeq3GclBApXPW3ZsbqthOMuZzAw1QmUb4O1qY403Ky+nhKG9MtevDfxL5RqLmIdUzlgcjnJ5hyjCihHlcqiRF/Sk4U+A8AioWe75VviIMSEd5f3DDEkDOcT/pN5bXI0fp21tRUEvZQIVrobMqJ6bwMhPxX91XjMspCuqLb64IItrXD0lZrbWG5T5z+H67uN357UEHaIYBBfGuu8TlcJCGQ/NUhcL+IPoCzex3T5186YTyLeIVJ7Wpx2Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Wed, 22 Feb
 2023 15:19:53 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7bcc:b9b8:78df:1bd8]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7bcc:b9b8:78df:1bd8%6]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 15:19:53 +0000
Date: Wed, 22 Feb 2023 07:19:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230222151950.qan6lnlrevca7e4a@ldmartin-desk2.jf.intel.com>
X-Patchwork-Hint: comment
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-4-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230222073507.788705-4-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0226.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB7185:EE_
X-MS-Office365-Filtering-Correlation-Id: 579128b4-c2e8-4c35-33a3-08db14e83f6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RvmqwvTChaMMKQVfqWdIqcsUfovXr4ofKe4pbhKcsz9HrPB/MNzOw8h3jYMBc8H4M3IquUDTfrO8G69419NMqOyMGaAKHF46QpMzgt5feK60Nzw2hncAe+jLxP/COU14L8Re6WuKkPpQgrBdP5L119H4Ng1URVcpDWyGdiss8qd17AvJFfdBrQZyECIqd69T3G3h0K3xzE1h0DnTjG/hlf0Zd1RoWwpBsQ1PZWzLhOS5AbVH41aslSh913fyYtXQIQrOw2RxStP4MxZFba232dUi+CVlEp7QcTCi1psEswD8k3+SviwboG8dt1tZ2BxVWxvPTbT4sjN07sOZTLMDS3I38ox9MyYvXfH936/yrljRzcZLhwOeCOuvbHmSIvZegA2OqQjmYXlpnME6+MJyuUUIBDwdIZG3e0bS3sXnNmfuqZ1knNsD+Y2X8O3qeZHOIa5OhZFDfu1wUtUNNIchYIpmeMPIF/q1EvYUs6nbeudBs3nDVvp2a1IvY1tJiKnyetjBLarDMBXNiLvlBJ3FDlXQOf8H90QZdJEXzj+uARve4U7haxbPIbOuz2aBuMFKp3+CgiBNAOXyfnWB4kEpQoWOjMxmyqCyPq+jPIYvYbAD49cQret31G2qd40euF1IpfXQe/0Z27T7W/KBso32rA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(396003)(346002)(39860400002)(366004)(451199018)(26005)(6512007)(6486002)(186003)(478600001)(86362001)(66476007)(316002)(8676002)(66946007)(1076003)(6506007)(66556008)(6636002)(83380400001)(4326008)(41300700001)(6862004)(8936002)(5660300002)(2906002)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bfcvXUCf/fMp0/su8sSgHwId6fQc9NXXOZMnN+m737hTsdZXYStbxPm18jXB?=
 =?us-ascii?Q?+2Y7xBMXkmRbSO00uqJZ3Z0js0hGuh/RK7Ww4+y4CvgcV4GSfZqXYF46macX?=
 =?us-ascii?Q?iN+QcA3XweDsqrQdN0N6LUF8/3hfi4OZC1hxAX5M0+XwS39q+Co3dDSciFna?=
 =?us-ascii?Q?O1O2k0g+oKzRnzg/vdRALERbQ0j9YTLnFfSmyoekLN+pswmlUCtRBm+ufVh6?=
 =?us-ascii?Q?eW6sTJiEynenwfpOcjhRWQYbt3TpY/N7lwvz6v5n39K30PFgHStplskpyDdR?=
 =?us-ascii?Q?L9qiQrKkBWUhytOT4PMOMIyWVCgimtHmaqIvlZcO/k/LxGRcTOFgJguMKdmB?=
 =?us-ascii?Q?6UR8klt6G7f26NHnO77r60jhNY3dU01IE7slQpp2c1Qtnd38b9cMTY2In/6o?=
 =?us-ascii?Q?W+LIHB+GE9T4bVOvYWKN1O00WoynWKumwd2n/OeaJm4I3zmVxyu/ov5XxnPb?=
 =?us-ascii?Q?jRi6eZmhqy6Tt7v8YdQjaJ5ooq9X5uNrZhqNfMJeaZXxmuO+0+F6nfUMXtb1?=
 =?us-ascii?Q?V/ahETM2GphszgwXUxMTTlDFp5ckC7svq827lvcRvEJJkOJffau5SjByaxJv?=
 =?us-ascii?Q?mN0Q2rC0sq0d4fVX7vU8doMKUHtDZTZp6gGKHL8ZXsi47UMKuxj0RVTd5ppl?=
 =?us-ascii?Q?HbCFNj0ZAXAR9tEHVKFH0DaX8Vt2D/njyBco1S7fJ1r0uHjznFXHEcCNxtQS?=
 =?us-ascii?Q?aCAP0WHXfxed19LsfPWkh1dCggepOyLoHbdfmJRSYEGauLKhmOLRazIDBd2B?=
 =?us-ascii?Q?KfBfOjVgCSaLTSpBntWtySTYvlTaFuJDnykrPt5LSseUkV3c+8AOXhHl6eas?=
 =?us-ascii?Q?M8wXP0m7xeosxhGW9qShfI7N2KpApSuYJDeAmDM6FNooYqt7k4kjvW8nxNU2?=
 =?us-ascii?Q?O/57I9WJAzj4Gw9b/2t1H4SaZXn00wFJWV0CG0S1ZwU2GzTNh+PShVMYP4KY?=
 =?us-ascii?Q?EfQ0u7gyo5HIWEhxb+0YHGoKYe4As7uYTuXDjLX9plExEawDFwYHrUjhfTKl?=
 =?us-ascii?Q?GnhMNtHrNIv+YYlNbSMuUQae/DH+CpZHOii4WbuDaIjCRDOasLvBWZxk6ENX?=
 =?us-ascii?Q?5Kr2PTSEi/dvLJvGYyB6YTYNCy+aqaSJp8lb0Wr7titVOZYjNIoOmPqXwLeN?=
 =?us-ascii?Q?Ye6/kYr6yjW7IfCszouuUH863ObZUoSenEnf+9omPcwgm4eY3VvzrGa+C6h9?=
 =?us-ascii?Q?FSTL1d4ELlvMSZkNlaLl6eQyeZBa5WPnvPwkJeBEIjC1eIqJgtl7dCjJyUcK?=
 =?us-ascii?Q?DtFKpXDl40ePnzcjaYvejWXq4TmwOkQ4x0sd5VRdXyvirCUW8lExS6OojZ6U?=
 =?us-ascii?Q?jTpzQXrpzbmax2SbJsMOHIc9u0wgplCvbCGlil5DEnibEigtJAsq9+CvOBn7?=
 =?us-ascii?Q?j0+AvKManpizzM2XG2kF3iA847XMAdAQTY1x5hnWjt0BJIY6miDML2PCIS3F?=
 =?us-ascii?Q?NKSbtCvI8Aq7fsEMPZ3M04hoJ6wwHMAlBKuUreZWtgVnog1+YIreAmVHfepN?=
 =?us-ascii?Q?GmW8R6yfx3w1WRh2hQCtOhiyNGA+7CF8lcv8J+3s41Yt3LM/rHzc4EHmvTGf?=
 =?us-ascii?Q?/RQelZDsgKowJinunC5GXxXF+FF5XmjY344fXwilOC7QxlANkohRfsuxXPP8?=
 =?us-ascii?Q?wQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 579128b4-c2e8-4c35-33a3-08db14e83f6f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 15:19:53.5245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DML3PZU0yB67a/mKEPmBqjmRt+odKYRTeHtnPW9kvIWsXrmaSOXCuCgPUrcL0aD99XGtUUZaV3/GtsZLhccxy7LUZOct8Xr7/5f1FsxpoQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7185
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/mtl: make IRQ reset and
 postinstall multi-gt aware
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

On Tue, Feb 21, 2023 at 11:35:01PM -0800, Radhakrishna Sripada wrote:
>Irq reset and post install are to be made multi-gt aware for the
>interrupts to work for the media tile on Meteorlake. Iterate through
>all the gts to process irq reset for each gt.
>
>Based on original version by Paulo and Tvrtko

add a blank line here so the sentence above is not part of the commit
trailers.

>Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/i915_irq.c | 28 ++++++++++++++++++----------
> 1 file changed, 18 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index b024a3a7ca19..be1212a5f4c5 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2761,14 +2761,19 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> {
> 	struct intel_gt *gt = to_gt(dev_priv);
> 	struct intel_uncore *uncore = gt->uncore;

probably better to remove these 2, so it's explicit what we are doing on
a gt level and what we are doing on a device/root-gt level.

struct intel_gt *gt;

>+	unsigned int i;
>
> 	dg1_master_intr_disable(dev_priv->uncore.regs);
>
>-	gen11_gt_irq_reset(gt);
>-	gen11_display_irq_reset(dev_priv);
>+	for_each_gt(gt, dev_priv, i) {
>+		gen11_gt_irq_reset(gt);

ok

>
>-	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>-	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>+		uncore = gt->uncore;

remove this line

>+		GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>+		GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>+	}

s/uncore/gt->uncore/

>+
>+	gen11_display_irq_reset(dev_priv);
> }
>
> void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>@@ -3422,13 +3427,16 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>
> static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
> {
>-	struct intel_gt *gt = to_gt(dev_priv);
>-	struct intel_uncore *uncore = gt->uncore;
> 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
>+	struct intel_gt *gt;
>+	unsigned int i;
>
>-	gen11_gt_irq_postinstall(gt);
>+	for_each_gt(gt, dev_priv, i) {
>+		gen11_gt_irq_postinstall(gt);
>
>-	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
>+		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_, ~gu_misc_masked,
>+			      gu_misc_masked);
>+	}

yep, the postinstall matches the logic I mentioned above.


with the changes above,

	
	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
> 	if (HAS_DISPLAY(dev_priv)) {
> 		icp_irq_postinstall(dev_priv);
>@@ -3437,8 +3445,8 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
> 				   GEN11_DISPLAY_IRQ_ENABLE);
> 	}
>
>-	dg1_master_intr_enable(uncore->regs);
>-	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
>+	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
>+	intel_uncore_posting_read(to_gt(dev_priv)->uncore, DG1_MSTR_TILE_INTR);
> }
>
> static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
>-- 
>2.34.1
>
