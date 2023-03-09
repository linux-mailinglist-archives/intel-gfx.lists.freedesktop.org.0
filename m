Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 808316B27A2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 15:46:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4EE210E81A;
	Thu,  9 Mar 2023 14:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7C910E81A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 14:46:38 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 r19-20020a05600c459300b003eb3e2a5e7bso1422826wmo.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Mar 2023 06:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678373196;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=abuGHPKeretCfLslUGxn2eORFC7mr62QF116ujkLHNA=;
 b=VJNGM+Qbujy1xRfZF4JtKsyLM/X7he3TdGsASo0oLHr0FNWPWDa1aMNBxHiTKAvaY8
 qIq6ma7cMFvBQTtD4JF+Kt9QXu/s/1m1Ipem7vxgtmpcYstaL0zp6J0rKduG4+nXzGTW
 emUSCqNVkgW0pqAedn2j0qrbNtCeQsVeOmFNQVF9KzQEtA7V6qRPu8AjyxrZcnGvr2nn
 +d1eC3dq+HMWVd3+gGWQd4tkf00nVIZx3vJEJkT9rEsOs3ehAMfeV9xt2YrqcHMk77K9
 wb7bKq5q2jqfylS9HbVcWhrex7/QWPNmdYZ8WvF+j02MOFkhLED+VytQ+RLl+k8uZeT/
 Gw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678373196;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=abuGHPKeretCfLslUGxn2eORFC7mr62QF116ujkLHNA=;
 b=rbECr57q75fDan6VJheXdKyax6A+rQdiNko+KH/xY/26LWzre7cnUJdZ5aeOE/n84y
 Jo/9XzGmFtAgrWzgQ9rbpF2PbmuRWSAy50f/46CsjaNvx7dtxqMBHuPyDDc8+vbXtob6
 8snd+/azPoVHhQiFg4m/xzjYg8EXYLoWx4vxVbky4Uwlo0sD3x4JTs+xoT3PzbldTx5C
 8AQ84b/Gm6yvoTjxxwQqhkPh8WHGOp040hkQkhwy/kWbQta270h9Q0zOozf4YgiNgv7R
 RtdPjw9giS47qX8BIy9aUh89hau3SYdbfghpGDjU5syHgckKRMycGN7/vPLwyWWtGEyd
 QSKw==
X-Gm-Message-State: AO0yUKXcRaDgGW7/SMIsthh7R9K25zs4RR169b258UZV/i8ByETb0WdA
 63UU4LMPcNsYeIZ2Y0I4I14=
X-Google-Smtp-Source: AK7set+ROTSj79/0AauPUH3mY2wjSs3GyvdpntFkndxts8kpY3ZlqI1fIyWoPLqSse0tY//WDtYDsA==
X-Received: by 2002:a05:600c:1552:b0:3ea:f883:4ce with SMTP id
 f18-20020a05600c155200b003eaf88304cemr18810933wmg.20.1678373196536; 
 Thu, 09 Mar 2023 06:46:36 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e16-20020a7bc2f0000000b003e4326a6d53sm36662wmk.35.2023.03.09.06.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Mar 2023 06:46:36 -0800 (PST)
Date: Thu, 9 Mar 2023 17:46:32 +0300
From: Dan Carpenter <error27@gmail.com>
To: jani.nikula@intel.com
Message-ID: <d1cc6919-6392-41f0-b17e-86e5b706e945@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/dmc: add i915_to_dmc() and
 dmc->i915 and use them
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

Hello Jani Nikula,

This is a semi-automatic email about new static checker warnings.

The patch 1b28c1c789d0: "drm/i915/dmc: add i915_to_dmc() and 
dmc->i915 and use them" from Mar 1, 2023, leads to the following 
Smatch complaint:

    drivers/gpu/drm/i915/display/intel_dmc.c:1162 intel_dmc_debugfs_status_show()
    error: we previously assumed 'dmc' could be null (see line 1148)

drivers/gpu/drm/i915/display/intel_dmc.c
  1142  
  1143          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
  1144  
  1145          seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));'
                                                       ^^^^^^^^^^^^^^^
This is a check for NULL too.

  1146          seq_printf(m, "fw loaded: %s\n",
  1147			   str_yes_no(intel_dmc_has_payload(i915)));
  1148		seq_printf(m, "path: %s\n", dmc ? dmc->fw_path : "N/A");
                                            ^^^
The patch adds a check for NULL.

  1149		seq_printf(m, "Pipe A fw needed: %s\n",
  1150			   str_yes_no(GRAPHICS_VER(i915) >= 12));
  1151		seq_printf(m, "Pipe A fw loaded: %s\n",
  1152			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
  1153		seq_printf(m, "Pipe B fw needed: %s\n",
  1154			   str_yes_no(IS_ALDERLAKE_P(i915) ||
  1155				      DISPLAY_VER(i915) >= 14));
  1156		seq_printf(m, "Pipe B fw loaded: %s\n",
  1157			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEB)));
  1158	
  1159		if (!intel_dmc_has_payload(i915))
  1160			goto out;
  1161	
  1162		seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
                                                                    ^^^^^^^^^^^^
  1163			   DMC_VERSION_MINOR(dmc->version));
                                             ^^^^^^^^^^^^
Unchecked dereferences.

  1164	

regards,
dan carpenter
