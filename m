Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5385632347F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 01:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9315E89DFE;
	Wed, 24 Feb 2021 00:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BAF89DFE
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 00:37:25 +0000 (UTC)
IronPort-SDR: Nxr74v8BrNU2Mv9v9qIjoByKrZOpb4LcYzL19SUDLhuIcTHobOBx6Q65uwBl3oDYUV3KCfeCco
 SrwdhRYNGQMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="172134667"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="172134667"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 16:37:24 -0800
IronPort-SDR: qAqS7WcOL/3qNWtI9SSvg0yvOeFLADTGDRRFChOk6EQQrmu4MqzUJWpBPJi8C9HpN3JaQ72iSG
 v+jUDPDz/vBg==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="431152808"
Received: from mdweiler-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.95.214])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 16:37:24 -0800
Date: Tue, 23 Feb 2021 16:37:23 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210224003723.33iqsxtlwdtkdqnd@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <9d9a6c72ccebadbbd5b284904bc005943aee7dde.1613580193.git.jani.nikula@intel.com>
 <20210217174415.vwqcuyyqjstif7jp@ldmartin-desk1>
 <87wnv6a2vk.fsf@intel.com> <871rd7eynd.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rd7eynd.fsf@intel.com>
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

On Tue, Feb 23, 2021 at 02:50:30PM +0200, Jani Nikula wrote:
>On Wed, 17 Feb 2021, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Wed, 17 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Wed, Feb 17, 2021 at 07:03:36PM +0200, Jani Nikula wrote:
>>>>Make the naming suitable for exposing to the rest of the driver as an
>>>>opaque type. No functional changes.
>>>
>>> ack, but..
>>>
>>>>
>>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/display/intel_bios.c | 30 +++++++++++------------
>>>> 1 file changed, 15 insertions(+), 15 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/dr=
m/i915/display/intel_bios.c
>>>>index 59d315b395c2..0e882da165be 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>>>>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>>>@@ -59,7 +59,7 @@
>>>>  */
>>>>
>>>> /* Wrapper for VBT child device config */
>>>>-struct display_device_data {
>>>>+struct intel_bios_encoder_data {
>>>> 	struct child_device_config child;
>>>> 	struct dsc_compression_parameters_entry *dsc;
>>>> 	struct list_head node;
>>>>@@ -600,7 +600,7 @@ static void
>>>> parse_sdvo_device_mapping(struct drm_i915_private *i915)
>>>> {
>>>> 	struct sdvo_device_mapping *mapping;
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>
>>> shouldn't we also replace devdata with a better name?
>>
>> Yes, see cover letter. :)
>>
>> I've rolled with devdata for now because that's what was there.
>
>So. Does "intel_bios_encoder_data" make sense as a name, or do we have
>better ideas? It's basically just a wrapper to VBT child device config.
>
>The name "devdata" depends on the struct name too I guess. Within
>intel_bios.c, s/devdata/whatever/g isn't a big deal. The real question
>is what to call the pointer within struct intel_encoder.
>
>I'm really not hung up on the names I used, but I'd only like to do the
>rename+rebase of this series once and be done with it.

On that lack of a better suggestion for the name, I'm convinced we can
actually leave this for later


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>
>BR,
>Jani.
>
>
>
>>
>> BR,
>> Jani.
>>
>>
>>>
>>> Lucas De Marchi
>>>
>>>> 	const struct child_device_config *child;
>>>> 	int count =3D 0;
>>>>
>>>>@@ -1439,7 +1439,7 @@ parse_compression_parameters(struct drm_i915_priv=
ate *i915,
>>>> 			     const struct bdb_header *bdb)
>>>> {
>>>> 	const struct bdb_compression_parameters *params;
>>>>-	struct display_device_data *devdata;
>>>>+	struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>> 	u16 block_size;
>>>> 	int index;
>>>>@@ -1760,7 +1760,7 @@ static enum port dvo_port_to_port(struct drm_i915=
_private *i915,
>>>> }
>>>>
>>>> static void parse_ddi_port(struct drm_i915_private *i915,
>>>>-			   struct display_device_data *devdata)
>>>>+			   struct intel_bios_encoder_data *devdata)
>>>> {
>>>> 	const struct child_device_config *child =3D &devdata->child;
>>>> 	struct ddi_vbt_port_info *info;
>>>>@@ -1908,7 +1908,7 @@ static void parse_ddi_port(struct drm_i915_privat=
e *i915,
>>>>
>>>> static void parse_ddi_ports(struct drm_i915_private *i915)
>>>> {
>>>>-	struct display_device_data *devdata;
>>>>+	struct intel_bios_encoder_data *devdata;
>>>>
>>>> 	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
>>>> 		return;
>>>>@@ -1925,7 +1925,7 @@ parse_general_definitions(struct drm_i915_private=
 *i915,
>>>> 			  const struct bdb_header *bdb)
>>>> {
>>>> 	const struct bdb_general_definitions *defs;
>>>>-	struct display_device_data *devdata;
>>>>+	struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>> 	int i, child_device_num;
>>>> 	u8 expected_size;
>>>>@@ -2063,7 +2063,7 @@ init_vbt_missing_defaults(struct drm_i915_private=
 *i915)
>>>> 		return;
>>>>
>>>> 	for_each_port_masked(port, ports) {
>>>>-		struct display_device_data *devdata;
>>>>+		struct intel_bios_encoder_data *devdata;
>>>> 		struct child_device_config *child;
>>>> 		enum phy phy =3D intel_port_to_phy(i915, port);
>>>>
>>>>@@ -2302,7 +2302,7 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>>>>  */
>>>> void intel_bios_driver_remove(struct drm_i915_private *i915)
>>>> {
>>>>-	struct display_device_data *devdata, *n;
>>>>+	struct intel_bios_encoder_data *devdata, *n;
>>>>
>>>> 	list_for_each_entry_safe(devdata, n, &i915->vbt.display_devices, node=
) {
>>>> 		list_del(&devdata->node);
>>>>@@ -2333,7 +2333,7 @@ void intel_bios_driver_remove(struct drm_i915_pri=
vate *i915)
>>>>  */
>>>> bool intel_bios_is_tv_present(struct drm_i915_private *i915)
>>>> {
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>>
>>>> 	if (!i915->vbt.int_tv_support)
>>>>@@ -2376,7 +2376,7 @@ bool intel_bios_is_tv_present(struct drm_i915_pri=
vate *i915)
>>>>  */
>>>> bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c=
_pin)
>>>> {
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>>
>>>> 	if (list_empty(&i915->vbt.display_devices))
>>>>@@ -2425,7 +2425,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_p=
rivate *i915, u8 *i2c_pin)
>>>>  */
>>>> bool intel_bios_is_port_present(struct drm_i915_private *i915, enum po=
rt port)
>>>> {
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>> 	static const struct {
>>>> 		u16 dp, hdmi;
>>>>@@ -2471,7 +2471,7 @@ bool intel_bios_is_port_present(struct drm_i915_p=
rivate *i915, enum port port)
>>>>  */
>>>> bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port p=
ort)
>>>> {
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>> 	static const short port_mapping[] =3D {
>>>> 		[PORT_B] =3D DVO_PORT_DPB,
>>>>@@ -2534,7 +2534,7 @@ static bool child_dev_is_dp_dual_mode(const struc=
t child_device_config *child,
>>>> bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
>>>> 				     enum port port)
>>>> {
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>>
>>>> 	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>>>> 		if (child_dev_is_dp_dual_mode(&devdata->child, port))
>>>>@@ -2554,7 +2554,7 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i=
915_private *i915,
>>>> bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
>>>> 			       enum port *port)
>>>> {
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>> 	u8 dvo_port;
>>>>
>>>>@@ -2654,7 +2654,7 @@ bool intel_bios_get_dsc_params(struct intel_encod=
er *encoder,
>>>> 			       int dsc_max_bpc)
>>>> {
>>>> 	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>>>-	const struct display_device_data *devdata;
>>>>+	const struct intel_bios_encoder_data *devdata;
>>>> 	const struct child_device_config *child;
>>>>
>>>> 	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>>>>--
>>>>2.20.1
>>>>
>
>-- =

>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
