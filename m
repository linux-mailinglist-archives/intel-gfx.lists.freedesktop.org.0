Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A08B731DE84
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:44:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C1B6E1E6;
	Wed, 17 Feb 2021 17:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBDB6E1E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:44:19 +0000 (UTC)
IronPort-SDR: d6vcDgxUURdJ1PGzkVKHx1aU1MhczvpLMHPLVDDt+oSnKoH9EA1oQUqvvulF3VSodMbTg5oRa3
 fDOo77HPWzWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="162396298"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162396298"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:44:18 -0800
IronPort-SDR: pi4Necf6txJyOcLYCt6JZbUTJDOTJVUbHFQyJBXcTtRA+A4uovFLv0iDr8mpJ8jvIJHxwim7gC
 3pkHrlo17ypw==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="494209375"
Received: from dsdani-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.4.37])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:44:18 -0800
Date: Wed, 17 Feb 2021 09:44:15 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210217174415.vwqcuyyqjstif7jp@ldmartin-desk1>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <9d9a6c72ccebadbbd5b284904bc005943aee7dde.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d9a6c72ccebadbbd5b284904bc005943aee7dde.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915/bios: rename
 display_device_data to intel_bios_encoder_data
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

On Wed, Feb 17, 2021 at 07:03:36PM +0200, Jani Nikula wrote:
>Make the naming suitable for exposing to the rest of the driver as an
>opaque type. No functional changes.

ack, but..

>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c | 30 +++++++++++------------
> 1 file changed, 15 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 59d315b395c2..0e882da165be 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -59,7 +59,7 @@
>  */
>
> /* Wrapper for VBT child device config */
>-struct display_device_data {
>+struct intel_bios_encoder_data {
> 	struct child_device_config child;
> 	struct dsc_compression_parameters_entry *dsc;
> 	struct list_head node;
>@@ -600,7 +600,7 @@ static void
> parse_sdvo_device_mapping(struct drm_i915_private *i915)
> {
> 	struct sdvo_device_mapping *mapping;
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;

shouldn't we also replace devdata with a better name?

Lucas De Marchi

> 	const struct child_device_config *child;
> 	int count =3D 0;
>
>@@ -1439,7 +1439,7 @@ parse_compression_parameters(struct drm_i915_private=
 *i915,
> 			     const struct bdb_header *bdb)
> {
> 	const struct bdb_compression_parameters *params;
>-	struct display_device_data *devdata;
>+	struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
> 	u16 block_size;
> 	int index;
>@@ -1760,7 +1760,7 @@ static enum port dvo_port_to_port(struct drm_i915_pr=
ivate *i915,
> }
>
> static void parse_ddi_port(struct drm_i915_private *i915,
>-			   struct display_device_data *devdata)
>+			   struct intel_bios_encoder_data *devdata)
> {
> 	const struct child_device_config *child =3D &devdata->child;
> 	struct ddi_vbt_port_info *info;
>@@ -1908,7 +1908,7 @@ static void parse_ddi_port(struct drm_i915_private *=
i915,
>
> static void parse_ddi_ports(struct drm_i915_private *i915)
> {
>-	struct display_device_data *devdata;
>+	struct intel_bios_encoder_data *devdata;
>
> 	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
> 		return;
>@@ -1925,7 +1925,7 @@ parse_general_definitions(struct drm_i915_private *i=
915,
> 			  const struct bdb_header *bdb)
> {
> 	const struct bdb_general_definitions *defs;
>-	struct display_device_data *devdata;
>+	struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
> 	int i, child_device_num;
> 	u8 expected_size;
>@@ -2063,7 +2063,7 @@ init_vbt_missing_defaults(struct drm_i915_private *i=
915)
> 		return;
>
> 	for_each_port_masked(port, ports) {
>-		struct display_device_data *devdata;
>+		struct intel_bios_encoder_data *devdata;
> 		struct child_device_config *child;
> 		enum phy phy =3D intel_port_to_phy(i915, port);
>
>@@ -2302,7 +2302,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  */
> void intel_bios_driver_remove(struct drm_i915_private *i915)
> {
>-	struct display_device_data *devdata, *n;
>+	struct intel_bios_encoder_data *devdata, *n;
>
> 	list_for_each_entry_safe(devdata, n, &i915->vbt.display_devices, node) {
> 		list_del(&devdata->node);
>@@ -2333,7 +2333,7 @@ void intel_bios_driver_remove(struct drm_i915_privat=
e *i915)
>  */
> bool intel_bios_is_tv_present(struct drm_i915_private *i915)
> {
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
>
> 	if (!i915->vbt.int_tv_support)
>@@ -2376,7 +2376,7 @@ bool intel_bios_is_tv_present(struct drm_i915_privat=
e *i915)
>  */
> bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pi=
n)
> {
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
>
> 	if (list_empty(&i915->vbt.display_devices))
>@@ -2425,7 +2425,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_priv=
ate *i915, u8 *i2c_pin)
>  */
> bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port =
port)
> {
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
> 	static const struct {
> 		u16 dp, hdmi;
>@@ -2471,7 +2471,7 @@ bool intel_bios_is_port_present(struct drm_i915_priv=
ate *i915, enum port port)
>  */
> bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port port)
> {
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
> 	static const short port_mapping[] =3D {
> 		[PORT_B] =3D DVO_PORT_DPB,
>@@ -2534,7 +2534,7 @@ static bool child_dev_is_dp_dual_mode(const struct c=
hild_device_config *child,
> bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
> 				     enum port port)
> {
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
>
> 	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
> 		if (child_dev_is_dp_dual_mode(&devdata->child, port))
>@@ -2554,7 +2554,7 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i915=
_private *i915,
> bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
> 			       enum port *port)
> {
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
> 	u8 dvo_port;
>
>@@ -2654,7 +2654,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder =
*encoder,
> 			       int dsc_max_bpc)
> {
> 	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>-	const struct display_device_data *devdata;
>+	const struct intel_bios_encoder_data *devdata;
> 	const struct child_device_config *child;
>
> 	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
