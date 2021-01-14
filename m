Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AFD2F6D5E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 22:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84BEB6E03B;
	Thu, 14 Jan 2021 21:39:48 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BD16E145
 for <Intel-GFX@lists.freedesktop.org>; Thu, 14 Jan 2021 21:39:47 +0000 (UTC)
IronPort-SDR: b885BFU/PcIYwsG2IxlxotXOoJQGYAKciDyx3U3FIKlgttkQNG+XQ1y3kHbbM+kAiCNyW9gsuX
 eQ1p2F7m9wgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178598595"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; 
 d="scan'208,217";a="178598595"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 13:39:45 -0800
IronPort-SDR: SFOZLfu6nnxQMSn/JXmx76MyVKwLLI9+yblGra/b6Xd25haCzHDU1cnusFSK4xsuu14tyEcokG
 Nb2fUardWcSg==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; 
 d="scan'208,217";a="499721180"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.213.165.56])
 ([10.213.165.56])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 13:39:44 -0800
To: Intel-GFX@Lists.FreeDesktop.Org
References: <20210113220724.2484897-1-John.C.Harrison@Intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <63e1adda-d723-ab5c-e15b-22e0d81f9e8d@intel.com>
Date: Thu, 14 Jan 2021 13:39:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210113220724.2484897-1-John.C.Harrison@Intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Add function to define
 defaults for GuC/HuC enable
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
Content-Type: multipart/mixed; boundary="===============0487192915=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0487192915==
Content-Type: multipart/alternative;
 boundary="------------10FFBE249DAEB9EEF3DA82DD"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------10FFBE249DAEB9EEF3DA82DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/13/2021 14:07, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> There is a module parameter for controlling what GuC/HuC features are
> enabled. Setting to -1 means 'use the default'. However, the default
> was not well defined, out of date and needs to be different across
> platforms.
>
> The default is now to disable both GuC and HuC on legacy platforms
> where legacy means TGL/RKL and anything prior to Gen12. For new
> platforms, the default is to load HuC but not GuC as GuC submission
> has not yet landed.
Daniele pointed out that the above wording is somewhat inaccurate. GuC 
is still loaded (in order to do HuC authentication). Better wording 
would be:

    The default is now to disable both GuC and HuC on legacy platforms
    where legacy means TGL/RKL and anything prior to Gen12. For new
    platforms, the default is to load HuC but not enable GuC submission
    as that has not landed yet.


John.


> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 31 ++++++++++++++++++++----
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +-----
>   drivers/gpu/drm/i915/i915_params.h       |  1 +
>   3 files changed, 28 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 6a0452815c41..6abb8f2dc33d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -15,6 +15,29 @@
>   static const struct intel_uc_ops uc_ops_off;
>   static const struct intel_uc_ops uc_ops_on;
>   
> +static void uc_expand_default_options(struct intel_uc *uc)
> +{
> +	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
> +
> +	if (i915->params.enable_guc != -1)
> +		return;
> +
> +	/* Don't enable GuC/HuC on pre-Gen12 */
> +	if (INTEL_GEN(i915) < 12) {
> +		i915->params.enable_guc = 0;
> +		return;
> +	}
> +
> +	/* Don't enable GuC/HuC on older Gen12 platforms */
> +	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
> +		i915->params.enable_guc = 0;
> +		return;
> +	}
> +
> +	/* Default: enable HuC authentication only */
> +	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
> +}
> +
>   /* Reset GuC providing us with fresh state for both GuC and HuC.
>    */
>   static int __intel_uc_reset_hw(struct intel_uc *uc)
> @@ -52,9 +75,6 @@ static void __confirm_options(struct intel_uc *uc)
>   		yesno(intel_uc_wants_guc_submission(uc)),
>   		yesno(intel_uc_wants_huc(uc)));
>   
> -	if (i915->params.enable_guc == -1)
> -		return;
> -
>   	if (i915->params.enable_guc == 0) {
>   		GEM_BUG_ON(intel_uc_wants_guc(uc));
>   		GEM_BUG_ON(intel_uc_wants_guc_submission(uc));
> @@ -79,8 +99,7 @@ static void __confirm_options(struct intel_uc *uc)
>   			 "Incompatible option enable_guc=%d - %s\n",
>   			 i915->params.enable_guc, "GuC submission is N/A");
>   
> -	if (i915->params.enable_guc & ~(ENABLE_GUC_SUBMISSION |
> -					  ENABLE_GUC_LOAD_HUC))
> +	if (i915->params.enable_guc & ~ENABLE_GUC_MASK)
>   		drm_info(&i915->drm,
>   			 "Incompatible option enable_guc=%d - %s\n",
>   			 i915->params.enable_guc, "undocumented flag");
> @@ -88,6 +107,8 @@ static void __confirm_options(struct intel_uc *uc)
>   
>   void intel_uc_init_early(struct intel_uc *uc)
>   {
> +	uc_expand_default_options(uc);
> +
>   	intel_guc_init_early(&uc->guc);
>   	intel_huc_init_early(&uc->huc);
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 602f1a0bc587..67b06fde1225 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -152,16 +152,11 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>   			uc_fw->path = NULL;
>   		}
>   	}
> -
> -	/* We don't want to enable GuC/HuC on pre-Gen11 by default */
> -	if (i915->params.enable_guc == -1 && p < INTEL_ICELAKE)
> -		uc_fw->path = NULL;
>   }
>   
>   static const char *__override_guc_firmware_path(struct drm_i915_private *i915)
>   {
> -	if (i915->params.enable_guc & (ENABLE_GUC_SUBMISSION |
> -				       ENABLE_GUC_LOAD_HUC))
> +	if (i915->params.enable_guc & ENABLE_GUC_MASK)
>   		return i915->params.guc_firmware_path;
>   	return "";
>   }
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 330c03e2b4f7..f031966af5b7 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -32,6 +32,7 @@ struct drm_printer;
>   
>   #define ENABLE_GUC_SUBMISSION		BIT(0)
>   #define ENABLE_GUC_LOAD_HUC		BIT(1)
> +#define ENABLE_GUC_MASK			GENMASK(1, 0)
>   
>   /*
>    * Invoke param, a function-like macro, for each i915 param, with arguments:


--------------10FFBE249DAEB9EEF3DA82DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    On 1/13/2021 14:07, <a class="moz-txt-link-abbreviated" href="mailto:John.C.Harrison@Intel.com">John.C.Harrison@Intel.com</a> wrote:<br>
    <blockquote type="cite"
      cite="mid:20210113220724.2484897-1-John.C.Harrison@Intel.com">
      <pre class="moz-quote-pre" wrap="">From: John Harrison <a class="moz-txt-link-rfc2396E" href="mailto:John.C.Harrison@Intel.com">&lt;John.C.Harrison@Intel.com&gt;</a>

There is a module parameter for controlling what GuC/HuC features are
enabled. Setting to -1 means 'use the default'. However, the default
was not well defined, out of date and needs to be different across
platforms.

The default is now to disable both GuC and HuC on legacy platforms
where legacy means TGL/RKL and anything prior to Gen12. For new
platforms, the default is to load HuC but not GuC as GuC submission
has not yet landed.
</pre>
    </blockquote>
    Daniele pointed out that the above wording is somewhat inaccurate.
    GuC is still loaded (in order to do HuC authentication). Better
    wording would be:<br>
    <blockquote>
      <pre class="moz-quote-pre" wrap="">The default is now to disable both GuC and HuC on legacy platforms
where legacy means TGL/RKL and anything prior to Gen12. For new
platforms, the default is to load HuC but not enable GuC submission
as that has not landed yet.
</pre>
    </blockquote>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:20210113220724.2484897-1-John.C.Harrison@Intel.com">
      <pre class="moz-quote-pre" wrap="">
Signed-off-by: John Harrison <a class="moz-txt-link-rfc2396E" href="mailto:John.C.Harrison@Intel.com">&lt;John.C.Harrison@Intel.com&gt;</a>
Reviewed-by: Daniele Ceraolo Spurio <a class="moz-txt-link-rfc2396E" href="mailto:daniele.ceraolospurio@intel.com">&lt;daniele.ceraolospurio@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 31 ++++++++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +-----
 drivers/gpu/drm/i915/i915_params.h       |  1 +
 3 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6a0452815c41..6abb8f2dc33d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -15,6 +15,29 @@
 static const struct intel_uc_ops uc_ops_off;
 static const struct intel_uc_ops uc_ops_on;
 
+static void uc_expand_default_options(struct intel_uc *uc)
+{
+	struct drm_i915_private *i915 = uc_to_gt(uc)-&gt;i915;
+
+	if (i915-&gt;params.enable_guc != -1)
+		return;
+
+	/* Don't enable GuC/HuC on pre-Gen12 */
+	if (INTEL_GEN(i915) &lt; 12) {
+		i915-&gt;params.enable_guc = 0;
+		return;
+	}
+
+	/* Don't enable GuC/HuC on older Gen12 platforms */
+	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
+		i915-&gt;params.enable_guc = 0;
+		return;
+	}
+
+	/* Default: enable HuC authentication only */
+	i915-&gt;params.enable_guc = ENABLE_GUC_LOAD_HUC;
+}
+
 /* Reset GuC providing us with fresh state for both GuC and HuC.
  */
 static int __intel_uc_reset_hw(struct intel_uc *uc)
@@ -52,9 +75,6 @@ static void __confirm_options(struct intel_uc *uc)
 		yesno(intel_uc_wants_guc_submission(uc)),
 		yesno(intel_uc_wants_huc(uc)));
 
-	if (i915-&gt;params.enable_guc == -1)
-		return;
-
 	if (i915-&gt;params.enable_guc == 0) {
 		GEM_BUG_ON(intel_uc_wants_guc(uc));
 		GEM_BUG_ON(intel_uc_wants_guc_submission(uc));
@@ -79,8 +99,7 @@ static void __confirm_options(struct intel_uc *uc)
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915-&gt;params.enable_guc, "GuC submission is N/A");
 
-	if (i915-&gt;params.enable_guc &amp; ~(ENABLE_GUC_SUBMISSION |
-					  ENABLE_GUC_LOAD_HUC))
+	if (i915-&gt;params.enable_guc &amp; ~ENABLE_GUC_MASK)
 		drm_info(&amp;i915-&gt;drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915-&gt;params.enable_guc, "undocumented flag");
@@ -88,6 +107,8 @@ static void __confirm_options(struct intel_uc *uc)
 
 void intel_uc_init_early(struct intel_uc *uc)
 {
+	uc_expand_default_options(uc);
+
 	intel_guc_init_early(&amp;uc-&gt;guc);
 	intel_huc_init_early(&amp;uc-&gt;huc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 602f1a0bc587..67b06fde1225 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -152,16 +152,11 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 			uc_fw-&gt;path = NULL;
 		}
 	}
-
-	/* We don't want to enable GuC/HuC on pre-Gen11 by default */
-	if (i915-&gt;params.enable_guc == -1 &amp;&amp; p &lt; INTEL_ICELAKE)
-		uc_fw-&gt;path = NULL;
 }
 
 static const char *__override_guc_firmware_path(struct drm_i915_private *i915)
 {
-	if (i915-&gt;params.enable_guc &amp; (ENABLE_GUC_SUBMISSION |
-				       ENABLE_GUC_LOAD_HUC))
+	if (i915-&gt;params.enable_guc &amp; ENABLE_GUC_MASK)
 		return i915-&gt;params.guc_firmware_path;
 	return "";
 }
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 330c03e2b4f7..f031966af5b7 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -32,6 +32,7 @@ struct drm_printer;
 
 #define ENABLE_GUC_SUBMISSION		BIT(0)
 #define ENABLE_GUC_LOAD_HUC		BIT(1)
+#define ENABLE_GUC_MASK			GENMASK(1, 0)
 
 /*
  * Invoke param, a function-like macro, for each i915 param, with arguments:
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------10FFBE249DAEB9EEF3DA82DD--

--===============0487192915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0487192915==--
