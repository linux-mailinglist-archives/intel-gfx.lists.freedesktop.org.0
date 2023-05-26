Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF97071261F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6178010E1C8;
	Fri, 26 May 2023 12:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B051A10E7F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:00:18 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-30ad8f33f1aso316291f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 05:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1685102416; x=1687694416;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PNw1JrVcUaFUn8SY5IQEGg3p4I4nojatCiRN5cWsBGc=;
 b=iS4tiQkEWbWxoliIa8oguOeIyfhWY1G6oGpFw/oxtb7wXuVCDC5Vay2RrcWSZKmlyY
 v+hVNscolQVnLsvdlO2b5d7Pw9mX4awkPk/dUMooMZoT5ZuRzB+2MQKNBagcHTO8m3fU
 2QmDF0WOieMHmtO6OQO5XaySDNKWHvlWRXJW+bITgqtK7D4hPxTse1esPqKHAzSjJMyK
 oqskfYEPYq6pZR4f+2KFoG2g2ATjs5mUo/ntqPIkT+AMCPYeWS7KPlWY4BG4gb7qi+Mr
 eg3d/4tIbZA0yLYDZRRLdUdniVAv6MwHL6rEFsakgJk+EJrLrdB7joU7HuA/gQzYmttK
 OOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685102416; x=1687694416;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PNw1JrVcUaFUn8SY5IQEGg3p4I4nojatCiRN5cWsBGc=;
 b=IrDrKA+ffyvlIN8vsx1zH6Yoh4Nh3IwgOCyNxMrgEc+zItQXCxLwEAleDu2BsSy9xg
 /xm0VpM7JspWmYl1xlgoWykPUUaU98c6n0hdpa4oVHOchT4Me+8W1BlMqjOPWShAgl+N
 HzW1AA3hysCmtVdQzk5WQfxdE7ionJaUs0FHP3cdctyF1eDEY1Z0BgUXE1xJ1dAyls/4
 yUm9Cf6sAvbbyNybeinj21olh1oP26+KFyizmKFrOr/EATyXOq7gMi3McI+uZT6mQ5wD
 rKVzVjR/tVOaabWTQfIBs19XMn6nx/FMpi0vO+jczFYV9/aUZEkTksU7jIccWuQsp0gl
 sFtA==
X-Gm-Message-State: AC+VfDxiDA2f/kkO5FMPeiLJc4S/7m5vL3uc3Yg83ttTKfdem0PfQBxs
 E+N+DE31hzd6xI4YzBXhp3VfUQ==
X-Google-Smtp-Source: ACHHUZ5bqXvav+oFBaRGQGWO0s8fJkZPWAvsxfOGL05ptU4e85bBumsEHjaBq6F1jLNT0syDdV/wwA==
X-Received: by 2002:adf:f151:0:b0:306:2b83:2d32 with SMTP id
 y17-20020adff151000000b003062b832d32mr1287770wro.43.1685102416805; 
 Fri, 26 May 2023 05:00:16 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 13-20020a05600c24cd00b003f4dde07956sm8627339wmu.42.2023.05.26.05.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 05:00:15 -0700 (PDT)
Date: Fri, 26 May 2023 15:00:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: matthew.d.roper@intel.com
Message-ID: <55236f93-dcc5-481e-b788-9f7e95b129d8@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/display: Handle GMD_ID
 identification in display code
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

Hello Matt Roper,

The patch 12e6f6dc78e4: "drm/i915/display: Handle GMD_ID
identification in display code" from May 23, 2023, leads to the
following Smatch static checker warning:

	drivers/gpu/drm/i915/i915_driver.c:850 i915_driver_probe()
	error: 'i915' dereferencing possible ERR_PTR()

drivers/gpu/drm/i915/i915_driver.c
    752 int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
    753 {
    754         struct drm_i915_private *i915;
    755         int ret;
    756 
    757         ret = pci_enable_device(pdev);
    758         if (ret) {
    759                 pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
    760                 return ret;
    761         }
    762 
    763         i915 = i915_driver_create(pdev, ent);
    764         if (IS_ERR(i915)) {
    765                 ret = PTR_ERR(i915);
    766                 goto out_pci_disable;
                        ^^^^^^^^^^^^^^^^^^^^^
i915 is an error pointer.

    767         }
    768 
    769         ret = i915_driver_early_probe(i915);
    770         if (ret < 0)
    771                 goto out_pci_disable;
    772 

[ snip ]

    819         return 0;
    820 
    821 out_cleanup_gem:
    822         i915_gem_suspend(i915);
    823         i915_gem_driver_remove(i915);
    824         i915_gem_driver_release(i915);
    825 out_cleanup_modeset2:
    826         /* FIXME clean up the error path */
    827         intel_display_driver_remove(i915);
    828         intel_irq_uninstall(i915);
    829         intel_display_driver_remove_noirq(i915);
    830         goto out_cleanup_modeset;
    831 out_cleanup_irq:
    832         intel_irq_uninstall(i915);
    833 out_cleanup_modeset:
    834         intel_display_driver_remove_nogem(i915);
    835 out_cleanup_hw:
    836         i915_driver_hw_remove(i915);
    837         intel_memory_regions_driver_release(i915);
    838         i915_ggtt_driver_release(i915);
    839         i915_gem_drain_freed_objects(i915);
    840         i915_ggtt_driver_late_release(i915);
    841 out_cleanup_mmio:
    842         i915_driver_mmio_release(i915);
    843 out_tiles_cleanup:
    844         intel_gt_release_all(i915);
    845 out_runtime_pm_put:
    846         enable_rpm_wakeref_asserts(&i915->runtime_pm);
    847         i915_driver_late_release(i915);
    848 out_pci_disable:
    849         pci_disable_device(pdev);
--> 850         i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
                                 ^^^^
Oops.

    851         return ret;
    852 }

regards,
dan carpenter
