Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58497286AE0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD886E9D2;
	Wed,  7 Oct 2020 22:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD6226E9D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:28:49 +0000 (UTC)
IronPort-SDR: qbbHuR9obYkQ1WyBUJ5KHyTgr8kCrSmnGS1PIXDQ3E2lrCnnFIuUQIawfHUNz14Vsxy/E7gQb/
 zr5vY8oLWWYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="229349123"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="229349123"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:28:49 -0700
IronPort-SDR: kp7bQooYfpc7C6WoP65iE9QEk4BrTq1fKMc32a3NxdNHDiXzRJSxkmIbzGlUgpJ2r0CjpqEcHk
 zKc8DLszjK3w==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="461543663"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:28:49 -0700
Date: Wed, 7 Oct 2020 15:28:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007222848.fxik7ddhtrao5vje@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915: Add PORT_TCn aliases to
 enum port
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

On Tue, Oct 06, 2020 at 05:33:32PM +0300, Ville Syrj=E4l=E4 wrote:
>diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/dr=
m/i915/display/intel_display.h
>index 8c93253cbd95..a39be3c9e0cf 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.h
>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>@@ -207,6 +207,14 @@ enum port {
> 	PORT_H,
> 	PORT_I,
>
>+	/* tgl+ */
>+	PORT_TC1 =3D PORT_D,

ICL also uses TC ports but there PORT_TC1 would be PORT_C. Just ignore
that and only add the aliases for tgl+ or should we also add for ICL to
avoid confusion?

Lucas De Marchi

>+	PORT_TC2,
>+	PORT_TC3,
>+	PORT_TC4,
>+	PORT_TC5,
>+	PORT_TC6,
>+
> 	I915_MAX_PORTS
> };
>
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
