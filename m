Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 148FD6C7AE7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 10:12:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C7F10E088;
	Fri, 24 Mar 2023 09:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B5410E088
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 09:12:18 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 m6-20020a05600c3b0600b003ee6e324b19so512423wms.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 02:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679649137;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wfWwCkEVY+z6sr9vsxdwehHiVDOPte0m78pqGEs8yHY=;
 b=FfDiaOhF73XkZaLfObNZ5OSDnrMbC7kxwebSvk6cCLrCoKXlH2xKp33CYrgm2aRxWQ
 oeiMm1jCmnGDaWoLGIOGx1Sne/5fx/gkJGPghLLGXNQcAmFPPF1xBjma2hFzFcrfe9xy
 924Xy3CM0yRrC8X5PdwndhPnULzMgVRk7UdaikMqVjuML3nGYbXDJiv9Y/Zqxd50sBrk
 1u3G/uZkEB9N3wprGmTwuUVprjAGAVZD1nI613gYErXudkh/dJFQBMEqUQGx96Vnj2Yb
 L2I771e4QlqAj/zyFAQTvtFo49AZQpJHW6RfDaQO0onYE4+qCAudG8eq2xTKcc7ZE8LT
 mlBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679649137;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wfWwCkEVY+z6sr9vsxdwehHiVDOPte0m78pqGEs8yHY=;
 b=cx+TPPoSroDaBkFo9GrubTakw2N5dejFjnTedHHcKGEd8AGkAZo3LX3JCFx1AMQ+Pp
 AUZQRIt9pGeuISHIVNlpxOnBkflZF6Ty39+YZUnMX7V2+q/c3+V+kG/tn8TVWuPKospR
 AlxtOnV01yZ2AWjSfS0iSZKM0LwXJPOoqIGC0Ozf8dP7FD+yL2qfF4Fg0C5Vzq7d/QAL
 h1EdPIQc4jukruWpYZcNulGS2GP/yeDMH79pB7Qzs70OdRB5vzYYsIOBaQp2cj7Z5Or8
 lBO/KNqfyRBcsp+Dvphv0A4fcWaXwiNGcHLShqHt7ExuFKSfvMD8PG87zhlvY+HShOPr
 rv4g==
X-Gm-Message-State: AO0yUKX3nP+aggHJyQhBuUUQtDXAGDR3guo1ocU14cSTRrLPwWuSkhtv
 P0wad2V9X6CH/p+2m+4BKSZq2GXjf3QC/Q==
X-Google-Smtp-Source: AK7set80gMZ8c3BBBLBA/5ODXfNPpdW/Gm1hJKPWTJa7jr/7t/ANMLKzAsTMe/2bd5OFkcnl7vCoSA==
X-Received: by 2002:a1c:f606:0:b0:3ee:8e3d:4b7a with SMTP id
 w6-20020a1cf606000000b003ee8e3d4b7amr1710656wmc.39.1679649136936; 
 Fri, 24 Mar 2023 02:12:16 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 f20-20020a1c6a14000000b003edcc2223c6sm4288919wmc.28.2023.03.24.02.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Mar 2023 02:12:16 -0700 (PDT)
Date: Fri, 24 Mar 2023 12:12:11 +0300
From: Dan Carpenter <error27@gmail.com>
To: John.C.Harrison@intel.com
Message-ID: <325f97de-d94f-4e5e-b096-3533b88c8a38@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [bug report] drm/i915/guc: Use GuC submission API
 version number
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

Hello John Harrison,

The patch 9bbba0667f37: "drm/i915/guc: Use GuC submission API version
number" from Nov 29, 2022, leads to the following Smatch static
checker warning:

	drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:821 intel_uc_fw_fetch()
	warn: passing zero to 'ERR_PTR'

drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
    709 int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
    710 {
    711         struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
    712         struct drm_i915_private *i915 = gt->i915;
    713         struct intel_uc_fw_file file_ideal;
    714         struct drm_i915_gem_object *obj;
    715         const struct firmware *fw = NULL;
    716         bool old_ver = false;
    717         int err;
    718 
    719         GEM_BUG_ON(!gt->wopcm.size);
    720         GEM_BUG_ON(!intel_uc_fw_is_enabled(uc_fw));
    721 
    722         err = i915_inject_probe_error(i915, -ENXIO);
    723         if (err)
    724                 goto fail;
    725 
    726         __force_fw_fetch_failures(uc_fw, -EINVAL);
    727         __force_fw_fetch_failures(uc_fw, -ESTALE);
    728 
    729         err = try_firmware_load(uc_fw, &fw);
    730         memcpy(&file_ideal, &uc_fw->file_wanted, sizeof(file_ideal));
    731 
    732         /* Any error is terminal if overriding. Don't bother searching for older versions */
    733         if (err && intel_uc_fw_is_overridden(uc_fw))
    734                 goto fail;
    735 
    736         while (err == -ENOENT) {
    737                 old_ver = true;
    738 
    739                 __uc_fw_auto_select(i915, uc_fw);
    740                 if (!uc_fw->file_selected.path) {
    741                         /*
    742                          * No more options! But set the path back to something
    743                          * valid just in case it gets dereferenced.
    744                          */
    745                         uc_fw->file_selected.path = file_ideal.path;
    746 
    747                         /* Also, preserve the version that was really wanted */
    748                         memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
    749                         break;
    750                 }
    751 
    752                 err = try_firmware_load(uc_fw, &fw);
    753         }
    754 
    755         if (err)
    756                 goto fail;
    757 
    758         err = check_fw_header(gt, fw, uc_fw);
    759         if (err)
    760                 goto fail;
    761 
    762         if (uc_fw->type == INTEL_UC_FW_TYPE_GUC && !guc_check_version_range(uc_fw))
    763                 goto fail;
                        ^^^^^^^^^
Should "err" be set on this path?


    764 
    765         if (uc_fw->file_wanted.ver.major && uc_fw->file_selected.ver.major) {
    766                 /* Check the file's major version was as it claimed */
    767                 if (uc_fw->file_selected.ver.major != uc_fw->file_wanted.ver.major) {
    768                         gt_notice(gt, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
    769                                   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
    770                                   uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor,
    771                                   uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor);
    772                         if (!intel_uc_fw_is_overridden(uc_fw)) {
    773                                 err = -ENOEXEC;
    774                                 goto fail;
    775                         }
    776                 } else {
    777                         if (uc_fw->file_selected.ver.minor < uc_fw->file_wanted.ver.minor)
    778                                 old_ver = true;
    779                 }
    780         }
    781 
    782         if (old_ver && uc_fw->file_selected.ver.major) {
    783                 /* Preserve the version that was really wanted */
    784                 memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
    785 
    786                 gt_notice(gt, "%s firmware %s (%d.%d) is recommended, but only %s (%d.%d) was found\n",
    787                           intel_uc_fw_type_repr(uc_fw->type),
    788                           uc_fw->file_wanted.path,
    789                           uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor,
    790                           uc_fw->file_selected.path,
    791                           uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor);
    792                 gt_info(gt, "Consider updating your linux-firmware pkg or downloading from %s\n",
    793                         INTEL_UC_FIRMWARE_URL);
    794         }
    795 
    796         if (HAS_LMEM(i915)) {
    797                 obj = i915_gem_object_create_lmem_from_data(i915, fw->data, fw->size);
    798                 if (!IS_ERR(obj))
    799                         obj->flags |= I915_BO_ALLOC_PM_EARLY;
    800         } else {
    801                 obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
    802         }
    803 
    804         if (IS_ERR(obj)) {
    805                 err = PTR_ERR(obj);
    806                 goto fail;
    807         }
    808 
    809         uc_fw->obj = obj;
    810         uc_fw->size = fw->size;
    811         intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
    812 
    813         release_firmware(fw);
    814         return 0;
    815 
    816 fail:
    817         intel_uc_fw_change_status(uc_fw, err == -ENOENT ?
    818                                   INTEL_UC_FIRMWARE_MISSING :
    819                                   INTEL_UC_FIRMWARE_ERROR);
    820 
--> 821         gt_probe_error(gt, "%s firmware %s: fetch failed %pe\n",
    822                        intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path, ERR_PTR(err));
    823         gt_info(gt, "%s firmware(s) can be downloaded from %s\n",
    824                 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
    825 
    826         release_firmware(fw);                /* OK even if fw is NULL */
    827         return err;
    828 }

regards,
dan carpenter
