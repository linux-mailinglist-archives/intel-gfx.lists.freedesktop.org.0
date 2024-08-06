Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5347094927F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 16:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36FA10E388;
	Tue,  6 Aug 2024 14:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AuzMUceB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5F310E38E;
 Tue,  6 Aug 2024 14:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722953016; x=1754489016;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YQazHRD/3pfND7dqyaYKI8mGVgwPYiOzmCkuZU0dRuY=;
 b=AuzMUceBElKN6kkvCJWeUBTfaPk+UiOjODF5tWjPFtljUnGxJpaDtxmK
 ZfLLwZv/Sn33SXNJlKFKgWsbj+T3e0LLergcmLx5udpbKLsx++ppYOBWC
 VUw7bQ91No4aiGviS34MSnwbOyxzZxp4pE0xHI5f6l6ZgIepa5XfHnjZU
 jS+BVtP0UV3VKkTNScOXzvbk3Ygg4/dqmk7mvvv6Ez0Tcmwqdo/Gazs4D
 ucAsX4c9TOJGX2R8rRkdhDXnOSso2VvXM6yf+baTHMU3qVVF6pt415Kh9
 hTzqoiYbQTcmMZwvEn1rIlAN2wSMyfOsunY297QGEkvphHZ0XmI1fm8aL A==;
X-CSE-ConnectionGUID: nifKbeneTPm3Qu4YsSdNZg==
X-CSE-MsgGUID: FiSGtRu9T/Cl17iujogglg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21119245"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="21119245"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 07:03:35 -0700
X-CSE-ConnectionGUID: 2nPWCNn0Qdioohi+GuXEeg==
X-CSE-MsgGUID: Ed1PSg38TEekAXDzlHRWHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56220030"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 07:03:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/10] drm/i915/hdcp: migrate away from kdev_to_i915()
 in GSC messaging
In-Reply-To: <172253577624.5121.4958252043028255730@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722263308.git.jani.nikula@intel.com>
 <3e32cbf601f367e353637afc22dc84436aaaf06f.1722263308.git.jani.nikula@intel.com>
 <172253577624.5121.4958252043028255730@gjsousa-mobl2>
Date: Tue, 06 Aug 2024 17:03:18 +0300
Message-ID: <878qx9695l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 01 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-07-29 11:30:10-03:00)
>>Use to_intel_display() instead of kdev_to_i915() in the HDCP component
>>API hooks. Avoid further drive-by changes at this point, and just
>>convert the display pointer to i915, and leave the struct intel_display
>>conversion for later.
>>
>>The NULL error checking in the hooks make this a bit cumbersome. I'm not
>>actually sure they're really required, but don't go down that rabbit
>>hole just now.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>> 1 file changed, 45 insertions(+), 22 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>>index 6548e71b4c49..35bdb532bbb3 100644
>>--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>>+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>>@@ -7,6 +7,7 @@
>> #include <drm/intel/i915_hdcp_interface.h>
>> 
>> #include "i915_drv.h"
>>+#include "intel_display_types.h"
>> #include "intel_hdcp_gsc_message.h"
>> 
>> int
>>@@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
>> {
>>         struct wired_cmd_initiate_hdcp2_session_in session_init_in = {};
>>         struct wired_cmd_initiate_hdcp2_session_out session_init_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !ake_data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>
> Hm... I'm afraid that wouldn't really work if drvdata was NULL, would
> it?
>
> With a NULL drvdata, I believe we would probably get a non-zero offset
> here.

Right, good catch. Not sure I want to add that check to everything in
to_intel_display() macro, because in most cases the passed in value
can't be NULL. Driver data is a bit different, though I don't think it
should really be NULL either.

BR,
Jani.



>
> --
> Gustavo Sousa
>
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         session_init_in.header.api_version = HDCP_API_VERSION;
>>         session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
>>@@ -72,17 +75,19 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
>> {
>>         struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = {};
>>         struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         verify_rxcert_in.header.api_version = HDCP_API_VERSION;
>>         verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
>>@@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
>> {
>>         struct wired_cmd_ake_send_hprime_in send_hprime_in = {};
>>         struct wired_cmd_ake_send_hprime_out send_hprime_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !rx_hprime)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         send_hprime_in.header.api_version = HDCP_API_VERSION;
>>         send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
>>@@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
>> {
>>         struct wired_cmd_ake_send_pairing_info_in pairing_info_in = {};
>>         struct wired_cmd_ake_send_pairing_info_out pairing_info_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !pairing_info)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         pairing_info_in.header.api_version = HDCP_API_VERSION;
>>         pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
>>@@ -234,17 +243,19 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
>> {
>>         struct wired_cmd_init_locality_check_in lc_init_in = {};
>>         struct wired_cmd_init_locality_check_out lc_init_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !lc_init_data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         lc_init_in.header.api_version = HDCP_API_VERSION;
>>         lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
>>@@ -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
>> {
>>         struct wired_cmd_validate_locality_in verify_lprime_in = {};
>>         struct wired_cmd_validate_locality_out verify_lprime_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !rx_lprime)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         verify_lprime_in.header.api_version = HDCP_API_VERSION;
>>         verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
>>@@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
>> {
>>         struct wired_cmd_get_session_key_in get_skey_in = {};
>>         struct wired_cmd_get_session_key_out get_skey_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data || !ske_data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         get_skey_in.header.api_version = HDCP_API_VERSION;
>>         get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
>>@@ -382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>> {
>>         struct wired_cmd_verify_repeater_in verify_repeater_in = {};
>>         struct wired_cmd_verify_repeater_out verify_repeater_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !rep_topology || !rep_send_ack || !data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         verify_repeater_in.header.api_version = HDCP_API_VERSION;
>>         verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
>>@@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
>> {
>>         struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>>         struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>>         size_t cmd_size;
>>@@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
>>         if (!dev || !stream_ready || !data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         cmd_size = struct_size(verify_mprime_in, streams, data->k);
>>         if (cmd_size == SIZE_MAX)
>>@@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
>> {
>>         struct wired_cmd_enable_auth_in enable_auth_in = {};
>>         struct wired_cmd_enable_auth_out enable_auth_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         enable_auth_in.header.api_version = HDCP_API_VERSION;
>>         enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
>>@@ -549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
>> {
>>         struct wired_cmd_close_session_in session_close_in = {};
>>         struct wired_cmd_close_session_out session_close_out = {};
>>+        struct intel_display *display;
>>         struct drm_i915_private *i915;
>>         ssize_t byte;
>> 
>>         if (!dev || !data)
>>                 return -EINVAL;
>> 
>>-        i915 = kdev_to_i915(dev);
>>-        if (!i915) {
>>+        display = to_intel_display(dev);
>>+        if (!display) {
>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>                 return -ENODEV;
>>         }
>>+        i915 = to_i915(display->drm);
>> 
>>         session_close_in.header.api_version = HDCP_API_VERSION;
>>         session_close_in.header.command_id = WIRED_CLOSE_SESSION;
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
