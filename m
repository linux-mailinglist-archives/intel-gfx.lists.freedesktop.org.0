Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 373053D1DF6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 08:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039D36EB2A;
	Thu, 22 Jul 2021 06:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FCB6EB2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 06:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211576368"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="211576368"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 23:05:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="470420892"
Received: from mtwomey-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.167.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 23:05:36 -0700
Date: Thu, 22 Jul 2021 02:05:34 -0400
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210722060534.mbbicupeecihgyww@ldmartin-desk2>
References: <20210721220023.268194-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721220023.268194-1-rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: Fix ports mask
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
Cc: Christoph Hellwig <hch@infradead.org>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 21, 2021 at 06:00:23PM -0400, Rodrigo Vivi wrote:
>PORT_A to PORT_F are regular integers defined in the enum port,
>while for_each_port_masked requires a bit mask for the ports.
>
>Current given mask: 0b111
>Desired mask: 0b111111
>
>I noticed this while Christoph was reporting a bug found on headless
>GVT configuration which bisect blamed commit 3ae04c0c7e63 ("drm/i915/bios:
>limit default outputs to ports A through F")
>
>Cc: Christoph Hellwig <hch@infradead.org>
>Fixes: 3ae04c0c7e63 ("drm/i915/bios: limit default outputs to ports A thro=
ugh F")
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>

humn.. something wrong with your git setup (maybe you have --suppress-cc
set?). Because people mentioned here were not actually Cc'ed. Adding
them.

> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi


>---
> drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 5b6922e28ef2..8bbeb5978bf7 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2166,7 +2166,8 @@ static void
> init_vbt_missing_defaults(struct drm_i915_private *i915)
> {
> 	enum port port;
>-	int ports =3D PORT_A | PORT_B | PORT_C | PORT_D | PORT_E | PORT_F;
>+	int ports =3D BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | \
>+		    BIT(PORT_D) | BIT(PORT_E) | BIT(PORT_F);
>
> 	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
> 		return;
>-- =

>2.31.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
