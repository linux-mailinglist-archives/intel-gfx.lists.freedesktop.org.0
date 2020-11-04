Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C573D2A5B99
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 02:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371936E925;
	Wed,  4 Nov 2020 01:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D07E6E925
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 01:12:32 +0000 (UTC)
IronPort-SDR: LJiLbzb4dvoS7TsSfrV8Dnh6bSdc+lzkk4vnZFpjICiUyHS7sRco+LL9eVbvqBPyz9D0V//Vg2
 WbTG//CQjB9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="148426315"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="148426315"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 17:12:31 -0800
IronPort-SDR: 7E+ybM8h5Y1KnfNlUu+m8qe8EcglNnXmTVtRBYRmg9D9SFd/raDUIV6/SjoejiVevkTO/CPGu2
 ff5+K2k+46eg==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="363806695"
Received: from gustavoc-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.112.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 17:12:31 -0800
Date: Tue, 3 Nov 2020 17:12:31 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201104011231.ytex7ojj2etrqyv5@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201104010000.4165574-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104010000.4165574-1-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix typo during output setup
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 03:00:00AM +0200, Imre Deak wrote:
>Fix a typo that led to some MST short pulse event handling issue (the
>short pulse event was handled for both encoder instances, each having
>its own state).
>
>Fixes: 1d8ca002456b6 ("drm/i915: Add PORT_TCn aliases to enum port")
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Imre Deak <imre.deak@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index cddbda5303ff..19a4d81558c5 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -17223,7 +17223,7 @@ static void intel_setup_outputs(struct drm_i915_pr=
ivate *dev_priv)
> 		intel_ddi_init(dev_priv, PORT_B);
> 		intel_ddi_init(dev_priv, PORT_TC1);
> 		intel_ddi_init(dev_priv, PORT_TC2);
>-		intel_ddi_init(dev_priv, PORT_TC2);
>+		intel_ddi_init(dev_priv, PORT_TC3);

uggh... Thanks!


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

> 		intel_ddi_init(dev_priv, PORT_TC4);
> 		intel_ddi_init(dev_priv, PORT_TC5);
> 		intel_ddi_init(dev_priv, PORT_TC6);
>-- =

>2.25.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
