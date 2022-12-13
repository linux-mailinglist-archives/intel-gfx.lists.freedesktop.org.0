Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1043064AF7A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 06:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A51210E2C9;
	Tue, 13 Dec 2022 05:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E357A10E1A8;
 Tue, 13 Dec 2022 05:52:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC4EAA00E6;
 Tue, 13 Dec 2022 05:52:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 13 Dec 2022 05:52:44 -0000
Message-ID: <167091076487.25537.1123922322552413247@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221213045516.2609109-1-suraj.kandpal@intel.com>
In-Reply-To: <20221213045516.2609109-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDCP2=2Ex_via_GSC_CS?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Enable HDCP2.x via GSC CS
URL   : https://patchwork.freedesktop.org/series/111876/
State : warning

== Summary ==

Error: dim checkpatch failed
6de8612b95c0 drm/i915/gsc: Create GSC request submission mechanism
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:140: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#140: 
new file mode 100644

-:162: ERROR:TRAILING_WHITESPACE: trailing whitespace
#162: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h:18:
+ $

-:162: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#162: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h:18:
+ $

-:167: ERROR:TRAILING_WHITESPACE: trailing whitespace
#167: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h:23:
+ $

-:167: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#167: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h:23:
+ $

total: 2 errors, 3 warnings, 0 checks, 147 lines checked
1f1f20f4af0b drm/i915/hdcp: Keep cp fw agonstic naming convention
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
rename from include/drm/i915_mei_hdcp_interface.h

total: 0 errors, 1 warnings, 0 checks, 31 lines checked
efb9891043b1 drm/i915/hdcp: HDCP2.x Refactoring to agnotic cp f/w
27aea54bfe6a drm/i915/hdcp: Refactor HDCP API structures
b5222dbaf658 drm/i915/hdcp: Fill wired_cmd_in structures at a single place
-:97: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#97: FILE: drivers/misc/mei/hdcp/mei_hdcp.c:217:
+	i915_cp_fw_fill_pairing_info_in(&pairing_info_in, pairing_info,
+				       data);

-:137: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#137: FILE: drivers/misc/mei/hdcp/mei_hdcp.c:312:
+	i915_cp_fw_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
+					    data);

-:207: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#207: FILE: drivers/misc/mei/hdcp/mei_hdcp.c:477:
+	i915_cp_fw_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
+					  cmd_size, data);

-:258: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#258: FILE: include/drm/i915_cp_fw_hdcp_interface.h:541:
+i915_cp_fw_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in *session_init_in,
+			  struct hdcp_port_data *data)

-:274: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#274: FILE: include/drm/i915_cp_fw_hdcp_interface.h:557:
+i915_cp_fw_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in *verify_rxcert_in,
+			 struct hdcp2_ake_send_cert *rx_cert,

-:292: CHECK:LINE_SPACING: Please don't use multiple blank lines
#292: FILE: include/drm/i915_cp_fw_hdcp_interface.h:575:
+
+

-:295: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#295: FILE: include/drm/i915_cp_fw_hdcp_interface.h:578:
+i915_cp_fw_fill_hprime_in(struct wired_cmd_ake_send_hprime_in *send_hprime_in,
+			 struct hdcp2_ake_send_hprime *rx_hprime,

-:313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#313: FILE: include/drm/i915_cp_fw_hdcp_interface.h:596:
+i915_cp_fw_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_in *pairing_info_in,
+			       struct hdcp2_ake_send_pairing_info *pairing_info,

-:332: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#332: FILE: include/drm/i915_cp_fw_hdcp_interface.h:615:
+i915_cp_fw_fill_locality_check_in(struct wired_cmd_init_locality_check_in *lc_init_in,
+				 struct hdcp_port_data *data)

-:346: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#346: FILE: include/drm/i915_cp_fw_hdcp_interface.h:629:
+i915_cp_fw_fill_validate_locality_in(struct wired_cmd_validate_locality_in *verify_lprime_in,
+				    struct hdcp2_lc_send_lprime *rx_lprime,

-:365: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#365: FILE: include/drm/i915_cp_fw_hdcp_interface.h:648:
+i915_cp_fw_fill_session_key_in(struct wired_cmd_get_session_key_in *get_skey_in,
+			      struct hdcp_port_data *data)

-:379: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#379: FILE: include/drm/i915_cp_fw_hdcp_interface.h:662:
+i915_cp_fw_fill_repeater_in(struct wired_cmd_verify_repeater_in *verify_repeater_in,
+			   struct hdcp2_rep_send_receiverid_list *rep_topology,

-:404: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#404: FILE: include/drm/i915_cp_fw_hdcp_interface.h:687:
+i915_cp_fw_fill_auth_stream_req_in(struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
+				  struct hdcp2_rep_stream_ready *stream_ready, ssize_t cmd_size,

-:427: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#427: FILE: include/drm/i915_cp_fw_hdcp_interface.h:710:
+i915_cp_fw_fill_enable_auth_in(struct wired_cmd_enable_auth_in *enable_auth_in,
+			      struct hdcp_port_data *data)

-:442: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#442: FILE: include/drm/i915_cp_fw_hdcp_interface.h:725:
+i915_cp_fw_fill_close_session_in(struct wired_cmd_close_session_in *session_close_in,
+				struct hdcp_port_data *data)

-:444: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#444: FILE: include/drm/i915_cp_fw_hdcp_interface.h:727:
+{
+

total: 0 errors, 0 warnings, 16 checks, 424 lines checked
4bf3407c1eee drm/i915/mtl: Adding function to send command to GSC CS
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 249 lines checked
06b0da5d4d35 drm/i915/mtl: Add HDCP GSC interface
-:592: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*data)...) over kzalloc(sizeof(struct i915_hdcp_fw_master)...)
#592: FILE: drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:499:
+	data = kzalloc(sizeof(struct i915_hdcp_fw_master), GFP_KERNEL);

total: 0 errors, 0 warnings, 1 checks, 586 lines checked


