Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16D231DE0C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482756E0E8;
	Wed, 17 Feb 2021 17:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9156E0E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:23:02 +0000 (UTC)
IronPort-SDR: XvnQxkJPkcbLtqy5f2E8rjjyOoLhsA7OkJSx75/RaYek/4IFKv6qDlf1E+XlmUTl8e5wszZsDW
 jeVRfkTQGErw==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183386641"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183386641"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:23:01 -0800
IronPort-SDR: M8M7MT8IlajpG1CN6V4N6Q90cg6b8O0MsWUxSjq0RsPu8oyBGte5puiqumOlulc73f2GGkRRdZ
 NzTpdaufAoWQ==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="385270333"
Received: from dsdani-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.4.37])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:23:01 -0800
Date: Wed, 17 Feb 2021 09:23:00 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210217172300.6uuie7js4a4cpqvl@ldmartin-desk1>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <bf2f1c9527e17310d69a818e09a7212df4ada347.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf2f1c9527e17310d69a818e09a7212df4ada347.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/bios: limit default outputs
 to ports A through F
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

On Wed, Feb 17, 2021 at 07:03:34PM +0200, Jani Nikula wrote:
>With the defaults limited to non-TypeC ports in commit 828ccb31cf41
>("drm/i915/icl: Add TypeC ports only if VBT is present"), this should be
>a no-op, but clarifies the code and prepares for subsequent changes.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index e9cb15aa2f5a..b9d99324d66d 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2057,11 +2057,12 @@ static void
> init_vbt_missing_defaults(struct drm_i915_private *i915)
> {
> 	enum port port;
>+	int ports =3D PORT_A | PORT_B | PORT_C | PORT_D | PORT_E | PORT_F;


I'd not spread the knowledge of what port uses tc phy like this.
It's painful to maintain.

Lucas De Marchi

>
> 	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
> 		return;
>
>-	for_each_port(port) {
>+	for_each_port_masked(port, ports) {
> 		struct ddi_vbt_port_info *info =3D
> 			&i915->vbt.ddi_port_info[port];
> 		enum phy phy =3D intel_port_to_phy(i915, port);
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
