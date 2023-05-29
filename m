Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88701714703
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 11:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FCA10E260;
	Mon, 29 May 2023 09:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D5010E260
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 09:24:51 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-3f6d01d390bso31701565e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 02:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685352290; x=1687944290;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QRLZEYJ+H8EN7y3GZIpuw1BMcpjgLOv6rJrIAMINwSs=;
 b=LzdFQsf6OP8r5/d5qFU4nbMpsmIlqSSigfmksiAC8ZGfjzPyBjPEZ67Cku14Ajghxn
 dUk/Uei5GOurSem/4QquE5yyY46V4fj7dyYdWQ/sFZMEHN66Omfc92xOuEqtVRTVIfis
 7g57/Vt2mtWqjpAokiD5Tnn6k9eyphMdmE3tuH82VvGIdfr84dKqoiS/ixLv6WrZYW9P
 O/HMxPpsXFzNC9FA5a/Jl7SVOiz/HCsv1P+x2WhNw9RgsLKxSRl8OpOeCqDY9tbKlgD8
 uCHAuURgG+OdgJBZ+27qgeZiKqgTBj1lxMM4s1345b5szbMEmO+3ZnEe580K3WrTuLHG
 zKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685352290; x=1687944290;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QRLZEYJ+H8EN7y3GZIpuw1BMcpjgLOv6rJrIAMINwSs=;
 b=N9vFpORnfm0AfXxnyuBGETn2/6hGYZd0JZXnWeWHkqwAWnhGcTW6Kuc0R9CaBd3GUN
 CrcuuLGjytl/5AY9zLKQ2suX7a3CIIny8f0obYgqf9gYperqPFjPNmmHLrfLG3OtfJtX
 q/Vtl2WkZdSHxqgRQlAE4rKQ/tvFRw+JwV8sqRJfLpr6VsWs2Bxj4/S1CqCBE6uZ2qsi
 rWbyihniqC+an/8ixg0IvRciOXbk82o4o6WkHot1+ThDCxx+0l5ZAZ3rsTo3SqLtkupr
 c5dt0CPpgPJlHM1med8RDmfovS9kYLB572TUrBJf2aUiKWUE4AgIiQ/N775LwVx+atby
 7aPw==
X-Gm-Message-State: AC+VfDzreO/HBqYFNli/vZ+8xYw9t6qkQkF7DLo2+8Uj/La0jOtDSUcz
 BPJAfiyXmkW56qrsE2fJRYGUWTfgBybF1ohSzek=
X-Google-Smtp-Source: ACHHUZ5nqs49rS1mtEWRIifcGMgABcd5KxrkUT/Jq6Sulc6TKEtx4b/1QJzbw+8ujuFjsbYnOmxP2w==
X-Received: by 2002:a05:600c:27ca:b0:3f6:1141:7cc1 with SMTP id
 l10-20020a05600c27ca00b003f611417cc1mr10284245wmb.26.1685352290188; 
 Mon, 29 May 2023 02:24:50 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e21-20020a05600c219500b003f4fffccd73sm13689432wme.9.2023.05.29.02.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 May 2023 02:24:48 -0700 (PDT)
Date: Mon, 29 May 2023 12:24:46 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <67cd1180-7ffb-46f6-ab30-717219a654fe@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero
 plane offset
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
Cc: jani.nikula@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-plane-warn-on-non-zero-plane-offset/20230527-003951
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero plane offset
config: x86_64-randconfig-m031-20230526 (https://download.01.org/0day-ci/archive/20230528/202305280453.8yzCMS2i-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>
| Closes: https://lore.kernel.org/r/202305280453.8yzCMS2i-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/i9xx_plane.c:1040 i9xx_get_initial_plane_config() error: uninitialized symbol 'offset'.

vim +/offset +1040 drivers/gpu/drm/i915/display/i9xx_plane.c

2a3014490cd18a Dave Airlie   2021-02-05   974  void
2a3014490cd18a Dave Airlie   2021-02-05   975  i9xx_get_initial_plane_config(struct intel_crtc *crtc,
2a3014490cd18a Dave Airlie   2021-02-05   976  			      struct intel_initial_plane_config *plane_config)
2a3014490cd18a Dave Airlie   2021-02-05   977  {
2a3014490cd18a Dave Airlie   2021-02-05   978  	struct drm_device *dev = crtc->base.dev;
2a3014490cd18a Dave Airlie   2021-02-05   979  	struct drm_i915_private *dev_priv = to_i915(dev);
2a3014490cd18a Dave Airlie   2021-02-05   980  	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
2a3014490cd18a Dave Airlie   2021-02-05   981  	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
2a3014490cd18a Dave Airlie   2021-02-05   982  	enum pipe pipe;
2a3014490cd18a Dave Airlie   2021-02-05   983  	u32 val, base, offset;
2a3014490cd18a Dave Airlie   2021-02-05   984  	int fourcc, pixel_format;
2a3014490cd18a Dave Airlie   2021-02-05   985  	unsigned int aligned_height;
2a3014490cd18a Dave Airlie   2021-02-05   986  	struct drm_framebuffer *fb;
2a3014490cd18a Dave Airlie   2021-02-05   987  	struct intel_framebuffer *intel_fb;
2a3014490cd18a Dave Airlie   2021-02-05   988  
2a3014490cd18a Dave Airlie   2021-02-05   989  	if (!plane->get_hw_state(plane, &pipe))
2a3014490cd18a Dave Airlie   2021-02-05   990  		return;
2a3014490cd18a Dave Airlie   2021-02-05   991  
2a3014490cd18a Dave Airlie   2021-02-05   992  	drm_WARN_ON(dev, pipe != crtc->pipe);
2a3014490cd18a Dave Airlie   2021-02-05   993  
2a3014490cd18a Dave Airlie   2021-02-05   994  	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
2a3014490cd18a Dave Airlie   2021-02-05   995  	if (!intel_fb) {
2a3014490cd18a Dave Airlie   2021-02-05   996  		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
2a3014490cd18a Dave Airlie   2021-02-05   997  		return;
2a3014490cd18a Dave Airlie   2021-02-05   998  	}
2a3014490cd18a Dave Airlie   2021-02-05   999  
2a3014490cd18a Dave Airlie   2021-02-05  1000  	fb = &intel_fb->base;
2a3014490cd18a Dave Airlie   2021-02-05  1001  
2a3014490cd18a Dave Airlie   2021-02-05  1002  	fb->dev = dev;
2a3014490cd18a Dave Airlie   2021-02-05  1003  
2a3014490cd18a Dave Airlie   2021-02-05  1004  	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
2a3014490cd18a Dave Airlie   2021-02-05  1005  
005e95377249cb Matt Roper    2021-03-19  1006  	if (DISPLAY_VER(dev_priv) >= 4) {
428cb15d5b0031 Ville Syrjälä 2022-01-21  1007  		if (val & DISP_TILED) {
2a3014490cd18a Dave Airlie   2021-02-05  1008  			plane_config->tiling = I915_TILING_X;
2a3014490cd18a Dave Airlie   2021-02-05  1009  			fb->modifier = I915_FORMAT_MOD_X_TILED;
2a3014490cd18a Dave Airlie   2021-02-05  1010  		}
2a3014490cd18a Dave Airlie   2021-02-05  1011  
428cb15d5b0031 Ville Syrjälä 2022-01-21  1012  		if (val & DISP_ROTATE_180)
2a3014490cd18a Dave Airlie   2021-02-05  1013  			plane_config->rotation = DRM_MODE_ROTATE_180;
2a3014490cd18a Dave Airlie   2021-02-05  1014  	}
2a3014490cd18a Dave Airlie   2021-02-05  1015  
2a3014490cd18a Dave Airlie   2021-02-05  1016  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
428cb15d5b0031 Ville Syrjälä 2022-01-21  1017  	    val & DISP_MIRROR)
2a3014490cd18a Dave Airlie   2021-02-05  1018  		plane_config->rotation |= DRM_MODE_REFLECT_X;
2a3014490cd18a Dave Airlie   2021-02-05  1019  
428cb15d5b0031 Ville Syrjälä 2022-01-21  1020  	pixel_format = val & DISP_FORMAT_MASK;
2a3014490cd18a Dave Airlie   2021-02-05  1021  	fourcc = i9xx_format_to_fourcc(pixel_format);
2a3014490cd18a Dave Airlie   2021-02-05  1022  	fb->format = drm_format_info(fourcc);
2a3014490cd18a Dave Airlie   2021-02-05  1023  
2a3014490cd18a Dave Airlie   2021-02-05  1024  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
2a3014490cd18a Dave Airlie   2021-02-05  1025  		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
428cb15d5b0031 Ville Syrjälä 2022-01-21  1026  		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
005e95377249cb Matt Roper    2021-03-19  1027  	} else if (DISPLAY_VER(dev_priv) >= 4) {
2a3014490cd18a Dave Airlie   2021-02-05  1028  		if (plane_config->tiling)
2a3014490cd18a Dave Airlie   2021-02-05  1029  			offset = intel_de_read(dev_priv,
2a3014490cd18a Dave Airlie   2021-02-05  1030  					       DSPTILEOFF(i9xx_plane));
2a3014490cd18a Dave Airlie   2021-02-05  1031  		else
2a3014490cd18a Dave Airlie   2021-02-05  1032  			offset = intel_de_read(dev_priv,
2a3014490cd18a Dave Airlie   2021-02-05  1033  					       DSPLINOFF(i9xx_plane));
428cb15d5b0031 Ville Syrjälä 2022-01-21  1034  		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
2a3014490cd18a Dave Airlie   2021-02-05  1035  	} else {
2a3014490cd18a Dave Airlie   2021-02-05  1036  		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));

offset not initialized on this path.

2a3014490cd18a Dave Airlie   2021-02-05  1037  	}
2a3014490cd18a Dave Airlie   2021-02-05  1038  	plane_config->base = base;
2a3014490cd18a Dave Airlie   2021-02-05  1039  
40c3d9e9221e23 Jani Nikula   2023-05-26 @1040  	drm_WARN_ON(&dev_priv->drm, offset != 0);

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

