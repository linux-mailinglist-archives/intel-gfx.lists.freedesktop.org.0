Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31812AE4DA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 01:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CAE389D9A;
	Wed, 11 Nov 2020 00:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4316A89D9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 00:20:53 +0000 (UTC)
IronPort-SDR: MkjdXkhxqJog04csXKMRFocMxyxTjNS9DcrpEBvT1Pp+GEUu63yjkkTQoWp8jBgTSW9NXE3SrY
 HTpEIVvJ8DPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="234236917"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="234236917"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 16:20:52 -0800
IronPort-SDR: UxWdTqn/wFWK1GPI1ml53ZopYw+NgG2XWoxzqCTT2zgJ/DYYeAMbBH8IEzSzQHHuUopHirrnef
 8noLyEdQOaUA==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="308626896"
Received: from sindhupa-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.243.88])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 16:20:51 -0800
Date: Tue, 10 Nov 2020 16:20:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201111002050.iz5j4egq4se26jqp@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201110175624.3524-1-ville.syrjala@linux.intel.com>
 <20201110175624.3524-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201110175624.3524-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix checkpatch warns in
 cursor code
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

On Tue, Nov 10, 2020 at 07:56:24PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Eliminate checkpatch warnings from intel_cursor.c:
>WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
>WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
>WARNING: Possible repeated word: 'by'

a comment in the commit message saying you moved to int instead of
unsigned int as suggested by the warning on purpose (since that's what
the function returns) would be good.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cursor.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm=
/i915/display/intel_cursor.c
>index d307c58db8f1..2697cc9dedc9 100644
>--- a/drivers/gpu/drm/i915/display/intel_cursor.c
>+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>@@ -477,8 +477,8 @@ static void i9xx_update_cursor(struct intel_plane *pla=
ne,
> 	unsigned long irqflags;
>
> 	if (plane_state && plane_state->uapi.visible) {
>-		unsigned width =3D drm_rect_width(&plane_state->uapi.dst);
>-		unsigned height =3D drm_rect_height(&plane_state->uapi.dst);
>+		int width =3D drm_rect_width(&plane_state->uapi.dst);
>+		int height =3D drm_rect_height(&plane_state->uapi.dst);
>
> 		cntl =3D plane_state->ctl |
> 			i9xx_cursor_ctl_crtc(crtc_state);
>@@ -507,7 +507,7 @@ static void i9xx_update_cursor(struct intel_plane *pla=
ne,
> 	 * cursor that doesn't appear to move, or even change
> 	 * shape. Thus we always write CURBASE.
> 	 *
>-	 * The other registers are armed by by the CURBASE write
>+	 * The other registers are armed by the CURBASE write
> 	 * except when the plane is getting enabled at which time
> 	 * the CURCNTR write arms the update.
> 	 */
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
