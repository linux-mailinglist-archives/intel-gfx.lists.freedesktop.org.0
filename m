Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B181DB89F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 17:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D19F6E7F1;
	Wed, 20 May 2020 15:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B6A6E7F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 15:46:41 +0000 (UTC)
IronPort-SDR: ALYceZFiVigxMNb06fC9MV3vh9hYaRw51yzt2oRwx7vLqGwvPonDM99q/HTxbOlSzfp3DqcPEs
 fTK0KRoq1Ozg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 08:46:40 -0700
IronPort-SDR: ZlGQ1ZjmUXwi9OcVpMgoJu/zrCbzcvI5f4Xtugx7G34OA59WpWe2g3OYL5LAHdHygYSBUafVtS
 t6ywo8/Y2kWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,414,1583222400"; d="scan'208";a="264726670"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 20 May 2020 08:46:40 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 May 2020 08:46:40 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.235]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.95]) with mapi id 14.03.0439.000;
 Wed, 20 May 2020 08:46:39 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
Thread-Index: AQHWLhqAamHxvt2rfkymC0OqBP2Oa6ixlXmA
Date: Wed, 20 May 2020 15:46:40 +0000
Message-ID: <85b3f8350a50dc28d57f9828ae897ae3808f4493.camel@intel.com>
References: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.5.73]
Content-ID: <8B5A0247049D5B49B709C0305F4FD840@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-05-19 at 13:12 -0700, Swathi Dhanavanthri wrote:
> This is a permanent w/a for JSL/EHL.This is to be applied to the
> PCH types on JSL/EHL ie JSP/MCC
> Bspec: 52888
> 
> v2: Fixed the wrong usage of logical OR(ville)
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 4dc601dffc08..d60a66d8eb40 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2902,8 +2902,9 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
>  
> -	/* Wa_14010685332:icl */
> -	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP) {
> +	/* Wa_14010685332:icl,jsl,ehl */
> +	if ((INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) &&
> +	   (INTEL_PCH_TYPE(dev_priv) <= PCH_MCC)) {

Not comfortable with this checks based on order of intel_pch enum but looks like we do it else where too.
Anyways, before send patch please run "dim
checkpatch" to catch style errors also no need of the parenthesis.

>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
>  				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
