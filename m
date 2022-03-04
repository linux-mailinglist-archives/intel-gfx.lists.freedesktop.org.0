Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4204CD7D6
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 16:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA57210FFC6;
	Fri,  4 Mar 2022 15:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862C710FFCF
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646407953; x=1677943953;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tUcKQBrRfS7zJ8sjnfb9AbndoCtqClcI/X6RaXyxFZE=;
 b=VS018kTAs39EcTbG+gAgftfERvi1LFWp2keeUsHDuzA+A7OVvW7EKFaX
 i2guHOy2B80bzlvE81Li5//zkH0CBGS7mfBmPOwBmnmVdJ40ujzGW8/uv
 thIOD8BMa/q2l/vfEZkAhVMX9+tHjrsTsgSUZzhSqpj8gooFG8j2m/NIg
 5r/33uwE/Pz9dOjs4xoRVTGREOnsrbd5vZSxiruQ6VXsdkDbLjGiSnU3i
 t/1OmoAXLHpovgoL91ihTxezQYFGOZnwHOJga8bcOdtW3phDTVqWU6Q0g
 7addisTdYBkKKoBC7wcFZ9rqVDcnrIovYQk3OM3l+xx+uOdjMjeajVWTw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="340427763"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="340427763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 07:32:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="536313725"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 04 Mar 2022 07:32:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Mar 2022 17:32:26 +0200
Date: Fri, 4 Mar 2022 17:32:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YiIxCtz1GjOXpfNn@intel.com>
References: <20220304101426.1891347-1-jani.nikula@intel.com>
 <20220304101426.1891347-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220304101426.1891347-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gmbus: use to_intel_gmbus()
 instead of open coding
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 04, 2022 at 12:14:26PM +0200, Jani Nikula wrote:
> We have a helper for getting at the enclosing gmbus struct from the
> embedded i2c_adapter, use it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 18 +++++-------------
>  1 file changed, 5 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 8f26528c3dc7..21281a7bdc17 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -300,9 +300,7 @@ static void set_data(void *data, int state_high)
>  static int
>  intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>  {
> -	struct intel_gmbus *bus = container_of(adapter,
> -					       struct intel_gmbus,
> -					       adapter);
> +	struct intel_gmbus *bus = to_intel_gmbus(adapter);
>  	struct drm_i915_private *dev_priv = bus->dev_priv;
>  
>  	intel_gmbus_reset(dev_priv);
> @@ -319,9 +317,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>  static void
>  intel_gpio_post_xfer(struct i2c_adapter *adapter)
>  {
> -	struct intel_gmbus *bus = container_of(adapter,
> -					       struct intel_gmbus,
> -					       adapter);
> +	struct intel_gmbus *bus = to_intel_gmbus(adapter);
>  	struct drm_i915_private *dev_priv = bus->dev_priv;
>  
>  	set_data(bus, 1);
> @@ -619,9 +615,7 @@ static int
>  do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
>  	      u32 gmbus0_source)
>  {
> -	struct intel_gmbus *bus = container_of(adapter,
> -					       struct intel_gmbus,
> -					       adapter);
> +	struct intel_gmbus *bus = to_intel_gmbus(adapter);
>  	struct drm_i915_private *dev_priv = bus->dev_priv;
>  	int i = 0, inc, try = 0;
>  	int ret = 0;
> @@ -751,8 +745,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
>  static int
>  gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
>  {
> -	struct intel_gmbus *bus =
> -		container_of(adapter, struct intel_gmbus, adapter);
> +	struct intel_gmbus *bus = to_intel_gmbus(adapter);
>  	struct drm_i915_private *dev_priv = bus->dev_priv;
>  	intel_wakeref_t wakeref;
>  	int ret;
> @@ -776,8 +769,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
>  
>  int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
>  {
> -	struct intel_gmbus *bus =
> -		container_of(adapter, struct intel_gmbus, adapter);
> +	struct intel_gmbus *bus = to_intel_gmbus(adapter);
>  	struct drm_i915_private *dev_priv = bus->dev_priv;
>  	u8 cmd = DRM_HDCP_DDC_AKSV;
>  	u8 buf[DRM_HDCP_KSV_LEN] = { 0 };
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
