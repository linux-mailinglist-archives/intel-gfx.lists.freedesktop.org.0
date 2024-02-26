Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ADB866FDF
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 11:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5041510E697;
	Mon, 26 Feb 2024 10:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="MNRBzq7f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46A6710E697
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 10:05:11 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-412a3371133so6567475e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 02:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708941909; x=1709546709; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=fcBIOucMAN+S6gTpmGCOg/zW6YlSfsS7OHTd/xLQuSI=;
 b=MNRBzq7fBdqM4WOYPCZhmmAjGBnfykMohsvfCQd08mBkPe56jPWbB4qC+SZxb+XGS3
 IRemmw47E7t9DAyoYtZ8FIwlyn8aSjwFo1c16dqiD2QKshaLaPeE4pZVcYJ/FLltK3/p
 H5VA/+Mid3aEcD4qBZJLMqJLf8afRmOEYx+ymEWeu6Sg847NITMhMlv//Hz7Ipch8UkF
 XsKKjxzLH8tmTd0EVc8iG7E78rqxFUE2hlGjTOvG6auKY2fPXSrORLVw2x0EMj8rrFrc
 rK8NqwGGf9dRQvNUr0XegWbZfzvnoxr1IbbL08UKN48UP0XejfO+74t4a6XyBRf0lc08
 Noew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708941909; x=1709546709;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fcBIOucMAN+S6gTpmGCOg/zW6YlSfsS7OHTd/xLQuSI=;
 b=TtiqyNY1DOzJKBCt6dx3MYQc+i3U5fU/WFZnlR/fARb3NijGm3BjcgtzcMV54ZTnxc
 WVrieNb3N8TR2IQVu/su2Vi4Q8uR1mW4XjhPWXd2C3PP+ASc2SNTgmmagTlq3h6Wfnxp
 gtugY1bn8NmlgE3tFAOJelG7rjhYEp1yViknvhTyScVdTo767yL4MzaQpajTGe+gn89f
 cwUi8fImI5p2BJ+cxW6D2xELO/KgA2EhboCPxtE75OmoIuCDC0RdVLGagbmfA/3uGe++
 K0BPVgVlubg2FjVfu62Fmu/teW1xMolmL+h/ax6fq73x2EE2Fx1W5ppCr1h6phV40coE
 Kqfg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2VhBLC83DF9I1ROkWIQOPuCAXHVJl93iBNcdR2aTDWrZHEwE4jy6JAUGR4BryZqdhZwPx7TZenraiEicrhFp2DttwP0DFIVG7VKvdhGtA
X-Gm-Message-State: AOJu0YzJCKVviN3i/dfnpS2LqRTMcIExakX+PJ6mwibVABhDsEbQnf9q
 GVDYXf+5rONs7zZfZ9s1CJZn6G9qNoTjwCV7BO6VwVo2fPcIgtZC2IBCyIKdDCg=
X-Google-Smtp-Source: AGHT+IGsGKWqF0+bDTc6+hQ/DghJAVK6dro+xWXta3HaOLtgEwNx1tGcEphVsnFdTW0bSv8HEvr4Jw==
X-Received: by 2002:a05:600c:1553:b0:412:a206:ad16 with SMTP id
 f19-20020a05600c155300b00412a206ad16mr3104748wmg.12.1708941909322; 
 Mon, 26 Feb 2024 02:05:09 -0800 (PST)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 f6-20020a05600c4e8600b00412a0ce903dsm5234762wmq.46.2024.02.26.02.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 02:05:08 -0800 (PST)
Date: Mon, 26 Feb 2024 13:05:04 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines
 calculation
Message-ID: <88b9f039-65ed-4138-9479-50f564ac992e@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221075322.2764209-3-jouni.hogander@intel.com>
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

Hi Jouni,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-display-Add-aux-function-pointer-for-fast-wake-sync-pulse-count/20240221-160220
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240221075322.2764209-3-jouni.hogander%40intel.com
patch subject: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines calculation
config: i386-randconfig-r081-20240223 (https://download.01.org/0day-ci/archive/20240225/202402250758.KqBqXYrz-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202402250758.KqBqXYrz-lkp@intel.com/

smatch warnings:
drivers/gpu/drm/i915/display/intel_psr.c:1203 _compute_alpm_params() error: uninitialized symbol 'io_wake_time'.

vim +/io_wake_time +1203 drivers/gpu/drm/i915/display/intel_psr.c

7903f1d36c3d97 Jouni Högander 2024-02-21  1174  
96a24945731fe9 Jouni Högander 2024-01-30  1175  static bool _compute_alpm_params(struct intel_dp *intel_dp,
cb42e8ede5b475 Jouni Högander 2023-02-21  1176  				 struct intel_crtc_state *crtc_state)
cb42e8ede5b475 Jouni Högander 2023-02-21  1177  {
cb42e8ede5b475 Jouni Högander 2023-02-21  1178  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
cb42e8ede5b475 Jouni Högander 2023-02-21  1179  	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
                                                                           ^^^^^^^^^^^^

cb42e8ede5b475 Jouni Högander 2023-02-21  1180  	u8 max_wake_lines;
cb42e8ede5b475 Jouni Högander 2023-02-21  1181  
7903f1d36c3d97 Jouni Högander 2024-02-21  1182  	if (intel_dp->get_aux_fw_sync_len) {
7903f1d36c3d97 Jouni Högander 2024-02-21  1183  		int io_wake_time = get_io_wake_time(intel_dp, crtc_state);

This declaration shadows the earlier io_wake_time declaration.

7903f1d36c3d97 Jouni Högander 2024-02-21  1184  		int tfw_exit_latency = 20; /* eDP spec */
7903f1d36c3d97 Jouni Högander 2024-02-21  1185  		int phy_wake = 4;	   /* eDP spec */
7903f1d36c3d97 Jouni Högander 2024-02-21  1186  		int preamble = 8;	   /* eDP spec */
7903f1d36c3d97 Jouni Högander 2024-02-21  1187  		int precharge = intel_dp->get_aux_fw_sync_len() - preamble;
7903f1d36c3d97 Jouni Högander 2024-02-21  1188  
7903f1d36c3d97 Jouni Högander 2024-02-21  1189  		io_wake_time = max(precharge, io_wake_time) + preamble +
7903f1d36c3d97 Jouni Högander 2024-02-21  1190  			phy_wake + tfw_exit_latency;
7903f1d36c3d97 Jouni Högander 2024-02-21  1191  		fast_wake_time = precharge + preamble + phy_wake +
7903f1d36c3d97 Jouni Högander 2024-02-21  1192  			tfw_exit_latency;
29f3067a236ac5 Jouni Högander 2024-01-30  1193  
29f3067a236ac5 Jouni Högander 2024-01-30  1194  		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
cb42e8ede5b475 Jouni Högander 2023-02-21  1195  		max_wake_lines = 12;
cb42e8ede5b475 Jouni Högander 2023-02-21  1196  	} else {
cb42e8ede5b475 Jouni Högander 2023-02-21  1197  		io_wake_time = 50;
cb42e8ede5b475 Jouni Högander 2023-02-21  1198  		fast_wake_time = 32;
cb42e8ede5b475 Jouni Högander 2023-02-21  1199  		max_wake_lines = 8;
cb42e8ede5b475 Jouni Högander 2023-02-21  1200  	}
cb42e8ede5b475 Jouni Högander 2023-02-21  1201  
cb42e8ede5b475 Jouni Högander 2023-02-21  1202  	io_wake_lines = intel_usecs_to_scanlines(
ef0af9db2a2125 Jouni Högander 2023-06-20 @1203  		&crtc_state->hw.adjusted_mode, io_wake_time);
                                                                                               ^^^^^^^^^^^^
Uninitialized

cb42e8ede5b475 Jouni Högander 2023-02-21  1204  	fast_wake_lines = intel_usecs_to_scanlines(
ef0af9db2a2125 Jouni Högander 2023-06-20  1205  		&crtc_state->hw.adjusted_mode, fast_wake_time);
cb42e8ede5b475 Jouni Högander 2023-02-21  1206  
cb42e8ede5b475 Jouni Högander 2023-02-21  1207  	if (io_wake_lines > max_wake_lines ||
cb42e8ede5b475 Jouni Högander 2023-02-21  1208  	    fast_wake_lines > max_wake_lines)
cb42e8ede5b475 Jouni Högander 2023-02-21  1209  		return false;
cb42e8ede5b475 Jouni Högander 2023-02-21  1210  
29f3067a236ac5 Jouni Högander 2024-01-30  1211  	if (!_lnl_compute_alpm_params(intel_dp, crtc_state))
29f3067a236ac5 Jouni Högander 2024-01-30  1212  		return false;
29f3067a236ac5 Jouni Högander 2024-01-30  1213  
942d654171bdaf Jouni Högander 2023-10-24  1214  	if (i915->display.params.psr_safest_params)
cb42e8ede5b475 Jouni Högander 2023-02-21  1215  		io_wake_lines = fast_wake_lines = max_wake_lines;
cb42e8ede5b475 Jouni Högander 2023-02-21  1216  
cb42e8ede5b475 Jouni Högander 2023-02-21  1217  	/* According to Bspec lower limit should be set as 7 lines. */
96a24945731fe9 Jouni Högander 2024-01-30  1218  	intel_dp->psr.alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
96a24945731fe9 Jouni Högander 2024-01-30  1219  	intel_dp->psr.alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
cb42e8ede5b475 Jouni Högander 2023-02-21  1220  
cb42e8ede5b475 Jouni Högander 2023-02-21  1221  	return true;
cb42e8ede5b475 Jouni Högander 2023-02-21  1222  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

