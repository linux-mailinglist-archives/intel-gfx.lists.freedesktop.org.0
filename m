Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5278A1A844E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423F289D43;
	Tue, 14 Apr 2020 16:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84E789D43
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:14:04 +0000 (UTC)
IronPort-SDR: DFeozazL5NgwVIk4eahPL2v3sokOpObc1k1ZBPSTP8N1fr2HNpYnfmdMm3KWjAhk+NZCOd71Fi
 N7/Ejz6uJEKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 09:14:02 -0700
IronPort-SDR: f/ye7E7vjxyVRTOA0FXvMZhzBQ8JfmilCXPqe7S2jHuy02P8Slp9s/Q8Mg9ZB5zzS0K3QrWhRU
 B6TeY9Qgfwxw==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; 
 d="scan'208,217";a="427110974"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.215.132.4])
 ([10.215.132.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 09:13:46 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200409060646.30817-1-anshuman.gupta@intel.com>
 <20200409060646.30817-5-anshuman.gupta@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <fb3f4ad8-76b9-2e64-00d7-24a6d44c0768@intel.com>
Date: Tue, 14 Apr 2020 21:43:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200409060646.30817-5-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 4/4] drm/i915: Add i915_lpsp_status
 debugfs attribute
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: multipart/mixed; boundary="===============0854727938=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0854727938==
Content-Type: multipart/alternative;
 boundary="------------F98A0DAAA136CA6DA3A1151B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F98A0DAAA136CA6DA3A1151B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09-04-2020 11:36, Anshuman Gupta wrote:
> It requires a separate debugfs attribute to expose lpsp
> status to user space, as there may be display less configuration
> without any valid connected output, those configuration will not be
> able to test lpsp status, if lpsp status exposed from a connector
> based debugfs attribute.
>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Looks good to me.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>   .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
>   .../drm/i915/display/intel_display_power.h    |  2 +
>   2 files changed, 48 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 402b89daff62..9a5b7f1cbe07 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -9,6 +9,7 @@
>   #include "i915_debugfs.h"
>   #include "intel_csr.h"
>   #include "intel_display_debugfs.h"
> +#include "intel_display_power.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
>   #include "intel_fbc.h"
> @@ -613,6 +614,8 @@ static void intel_hdcp_info(struct seq_file *m,
>   
>   #define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
>   				seq_puts(m, "LPSP: incapable\n"))
> +#define LPSP_STATUS(COND) (COND ? seq_puts(m, "LPSP: enabled\n") : \
> +				seq_puts(m, "LPSP: disabled\n"))
>   
>   static bool intel_have_edp_dsi_panel(struct drm_connector *connector)
>   {
> @@ -1165,6 +1168,48 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
>   	return 0;
>   }
>   
> +static bool
> +intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
> +			      enum i915_power_well_id power_well_id)
> +{
> +	intel_wakeref_t wakeref;
> +	bool is_enabled;
> +
> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	is_enabled = intel_display_power_well_is_enabled(i915,
> +							 power_well_id);
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +
> +	return is_enabled;
> +}
> +
> +static int i915_lpsp_status(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = node_to_i915(m->private);
> +
> +	switch (INTEL_GEN(i915)) {
> +	case 12:
> +	case 11:
> +		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
> +		break;
> +	case 10:
> +	case 9:
> +		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, SKL_DISP_PW_2));
> +		break;
> +	default:
> +		/*
> +		 * Apart from HASWELL/BROADWELL other legacy platform doesn't
> +		 * support lpsp.
> +		 */
> +		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +			LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, HSW_DISP_PW_GLOBAL));
> +		else
> +			seq_puts(m, "LPSP: not supported\n");
> +	}
> +
> +	return 0;
> +}
> +
>   static int i915_dp_mst_info(struct seq_file *m, void *unused)
>   {
>   	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> @@ -1932,6 +1977,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>   	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>   	{"i915_ddb_info", i915_ddb_info, 0},
>   	{"i915_drrs_status", i915_drrs_status, 0},
> +	{"i915_lpsp_status", i915_lpsp_status, 0},
>   };
>   
>   static const struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 56cbae6327b7..14c5ad20287f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -266,6 +266,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
>   
>   bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>   				    enum intel_display_power_domain domain);
> +bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
> +					 enum i915_power_well_id power_well_id);
>   bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>   				      enum intel_display_power_domain domain);
>   intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,

--------------F98A0DAAA136CA6DA3A1151B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre>
</pre>
    <div class="moz-cite-prefix">On 09-04-2020 11:36, Anshuman Gupta
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200409060646.30817-5-anshuman.gupta@intel.com">
      <pre class="moz-quote-pre" wrap="">It requires a separate debugfs attribute to expose lpsp
status to user space, as there may be display less configuration
without any valid connected output, those configuration will not be
able to test lpsp status, if lpsp status exposed from a connector
based debugfs attribute.

Signed-off-by: Anshuman Gupta <a class="moz-txt-link-rfc2396E" href="mailto:anshuman.gupta@intel.com">&lt;anshuman.gupta@intel.com&gt;</a></pre>
    </blockquote>
    <pre>Looks good to me.
Reviewed-by: Animesh Manna <a class="moz-txt-link-rfc2396E" href="mailto:animesh.manna@intel.com">&lt;animesh.manna@intel.com&gt;</a>
</pre>
    <blockquote type="cite"
      cite="mid:20200409060646.30817-5-anshuman.gupta@intel.com">
      <pre class="moz-quote-pre" wrap="">
---
 .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  2 +
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 402b89daff62..9a5b7f1cbe07 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -9,6 +9,7 @@
 #include "i915_debugfs.h"
 #include "intel_csr.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_fbc.h"
@@ -613,6 +614,8 @@ static void intel_hdcp_info(struct seq_file *m,
 
 #define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
 				seq_puts(m, "LPSP: incapable\n"))
+#define LPSP_STATUS(COND) (COND ? seq_puts(m, "LPSP: enabled\n") : \
+				seq_puts(m, "LPSP: disabled\n"))
 
 static bool intel_have_edp_dsi_panel(struct drm_connector *connector)
 {
@@ -1165,6 +1168,48 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static bool
+intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
+			      enum i915_power_well_id power_well_id)
+{
+	intel_wakeref_t wakeref;
+	bool is_enabled;
+
+	wakeref = intel_runtime_pm_get(&amp;i915-&gt;runtime_pm);
+	is_enabled = intel_display_power_well_is_enabled(i915,
+							 power_well_id);
+	intel_runtime_pm_put(&amp;i915-&gt;runtime_pm, wakeref);
+
+	return is_enabled;
+}
+
+static int i915_lpsp_status(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m-&gt;private);
+
+	switch (INTEL_GEN(i915)) {
+	case 12:
+	case 11:
+		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
+		break;
+	case 10:
+	case 9:
+		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, SKL_DISP_PW_2));
+		break;
+	default:
+		/*
+		 * Apart from HASWELL/BROADWELL other legacy platform doesn't
+		 * support lpsp.
+		 */
+		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+			LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, HSW_DISP_PW_GLOBAL));
+		else
+			seq_puts(m, "LPSP: not supported\n");
+	}
+
+	return 0;
+}
+
 static int i915_dp_mst_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m-&gt;private);
@@ -1932,6 +1977,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
 	{"i915_drrs_status", i915_drrs_status, 0},
+	{"i915_lpsp_status", i915_lpsp_status, 0},
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 56cbae6327b7..14c5ad20287f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -266,6 +266,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
 
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain);
+bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+					 enum i915_power_well_id power_well_id);
 bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				      enum intel_display_power_domain domain);
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
</pre>
    </blockquote>
  </body>
</html>

--------------F98A0DAAA136CA6DA3A1151B--

--===============0854727938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0854727938==--
