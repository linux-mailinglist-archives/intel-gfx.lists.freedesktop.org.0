Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF61CE8455
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 23:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CD610E742;
	Mon, 29 Dec 2025 22:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="Y3ljoC2v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f226.google.com (mail-pl1-f226.google.com
 [209.85.214.226])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C6F10E742
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Dec 2025 22:05:42 +0000 (UTC)
Received: by mail-pl1-f226.google.com with SMTP id
 d9443c01a7336-2a0833b5aeeso129109125ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Dec 2025 14:05:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767045942; x=1767650742;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UwzcNp2HYOV4Z1mSXVXCsNd5TObEfxUddJJZvW7JJZk=;
 b=nSH3fmPCJ7qCYXkfQ3sUoO53FTH9cz7cB9MFKlhgL74LmIy6qbeBP3HHFDShwBzEAq
 Nxv5ZIh+ksqd/bk6MKfCyXC1NMzeuH/4hRRWjUrZhYPo1UiUDc4fCyGjSfm2iIHUZedw
 HG0VGWAaEoS3TrInNj0eGCFLZ8IzTXqJLnfuSlCu3xaJU8DJNYEEfhGa74jWOenTar2Z
 AiJAKXS+TjcHwg8qYYpcFNcjkkiM++DdFIQ3ssiQ4+5TSN9UHOH8qa2CYqJqD8aRwT4F
 bhYPLUQg+XEWwb8SstawSp/A2I56utMiO2qO7kImtsM/wQzovvGASobo8JUECZIlrGJE
 Cf2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbwPPC+YfIVuc/08xgpGGYc+i5JtYrr7TGsAwiqUHTif3CgxmvKLpWhIq3EZiUi0yTo/gNZLAgjx0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx4jDibaXidh25YEz5i57Y8IIUsQAzdKhN7xYOWXRI2ME8PgfjP
 jwb0Oaq79XlPBmnLtbeBgI/aUXZfx+9Cd7TN+032jYXZIhBBlw2ypoQOClXa4QAXW7Zg5bmrVmx
 BC9fYjrT43Z9QPPLc3j8lcAA13iZW1l6XBkdvUEyoAgHl5KT3hQFGGdplFsoJE0JWq22k3aH9jQ
 wA+tyAGoY03J88avoAOGubdII77xWKlhU70YbbsSNgvyTTXFcB6OFWIY+hFpVOnIEtm+iDDcS5L
 ApskX7zPnurKVVwxkan
X-Gm-Gg: AY/fxX5mI2IbRO92T94u10hgHpWpy/QcghAPkhButUeZU+NBeJOB8auw+G4XE7z0dac
 CZ5V9ys87sV8izu73FvCTMrOE2t4vlDAkMJOkL36EhQK2NcqnZ948UVEzo/ABinhDzhpuh09Yn+
 oX4HHeyt39GrFB65vrECm3Ahp3RQxcqSbKAEIcA5h6VgHhBlwMDJ9apZ+L+l8gxmjOcSuB+coFl
 EZ6+FMpkvUTdMqFheHW7wsBJZO4W95d0xKw1qAaGTtr+JrX9r1SYu8GzRPpeG5pRfMMI+I7KGge
 9g5m3UuXs+m2k9DI6pVJ1hChiZk1GRPy6lTlaS0Dqbds1Ft8uGad3r+TotGQUOThBpSo60aCknE
 OAZL/9JkMQ++sulPY4mHPCiapPLELxlNJO7NwFYhOLQUW2vQuNU8pRq4ueP2sVbGFryJvQZ0Udk
 s6EN+WOQA47KYMVP8+Yh2Tnvw2oXyTqtxQ49w5kl271rgO
X-Google-Smtp-Source: AGHT+IHE1AbZ9dsVXrDbX7NRsGXFW2AJXcqXOoWlhiqc50RUs63vVywRSHh8mVJ+qOLNN0j4vZpN5zCsHT/S
X-Received: by 2002:a17:903:4407:b0:2a0:9d25:c4ca with SMTP id
 d9443c01a7336-2a2f222ade3mr348114895ad.18.1767045941927; 
 Mon, 29 Dec 2025 14:05:41 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
 by smtp-relay.gmail.com with ESMTPS id
 d9443c01a7336-2a2f3d06a59sm32831185ad.40.2025.12.29.14.05.41
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Dec 2025 14:05:41 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-88883a2cabbso350150186d6.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Dec 2025 14:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1767045940; x=1767650740;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UwzcNp2HYOV4Z1mSXVXCsNd5TObEfxUddJJZvW7JJZk=;
 b=Y3ljoC2vCrzMbPu4PAWd3dstoQL6TcEW4y5rNcrNV8DS519baxMalDhWJC489b0H12
 oDogiBl5RB0DoqdNbxq4ro5X2RXM+FevDnZ5IjliGpNLKgTZImX/BjFr5T8Ed5LSe8vR
 wms0sMODC27XsR1aXcX0/l4HeQmGIViszdKSU=
X-Forwarded-Encrypted: i=1;
 AJvYcCVyOslFM9OrqOF8H0GT6XMmgvd9fLMeOpC2YgjeuFlyzZD0xWbeqDQnxfg+yCukbSxS1k6L/b2xMIE=@lists.freedesktop.org
X-Received: by 2002:a05:6214:428e:b0:88a:3681:1d96 with SMTP id
 6a1803df08f44-88d881b984fmr478636076d6.63.1767045551436; 
 Mon, 29 Dec 2025 13:59:11 -0800 (PST)
X-Received: by 2002:a05:6214:428e:b0:88a:3681:1d96 with SMTP id
 6a1803df08f44-88d881b984fmr478635666d6.63.1767045550918; 
 Mon, 29 Dec 2025 13:59:10 -0800 (PST)
Received: from localhost.localdomain
 (pool-173-49-113-140.phlapa.fios.verizon.net. [173.49.113.140])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88d9759f164sm231530026d6.24.2025.12.29.13.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Dec 2025 13:59:10 -0800 (PST)
From: Zack Rusin <zack.rusin@broadcom.com>
To: dri-devel@lists.freedesktop.org
Cc: Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Ard Biesheuvel <ardb@kernel.org>, Ce Sun <cesun102@amd.com>,
 Chia-I Wu <olvaffe@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Deepak Rawat <drawat.floss@gmail.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Hans de Goede <hansg@kernel.org>, Hawking Zhang <Hawking.Zhang@amd.com>,
 Helge Deller <deller@gmx.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Jocelyn Falempe <jfalempe@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lijo Lazar <lijo.lazar@amd.com>, linux-efi@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Maxime Ripard <mripard@kernel.org>, nouveau@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Timur=20Krist=C3=B3f?= <timur.kristof@gmail.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, virtualization@lists.linux.dev,
 Vitaly Prosyak <vitaly.prosyak@amd.com>
Subject: [PATCH 00/12] Recover sysfb after DRM probe failure
Date: Mon, 29 Dec 2025 16:58:06 -0500
Message-ID: <20251229215906.3688205-1-zack.rusin@broadcom.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
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

Almost a rite of passage for every DRM developer and most Linux users
is upgrading your DRM driver/updating boot flags/changing some config
and having DRM driver fail at probe resulting in a blank screen.

Currently there's no way to recover from DRM driver probe failure. PCI
DRM driver explicitly throw out the existing sysfb to get exclusive
access to PCI resources so if the probe fails the system is left without
a functioning display driver.

Add code to sysfb to recever system framebuffer when DRM driver's probe
fails. This means that a DRM driver that fails to load reloads the system
framebuffer driver.

This works best with simpledrm. Without it Xorg won't recover because
it still tries to load the vendor specific driver which ends up usually
not working at all. With simpledrm the system recovers really nicely
ending up with a working console and not a blank screen.

There's a caveat in that some hardware might require some special magic
register write to recover EFI display. I'd appreciate it a lot if
maintainers could introduce a temporary failure in their drivers
probe to validate that the sysfb recovers and they get a working console.
The easiest way to double check it is by adding:
 /* XXX: Temporary failure to test sysfb restore - REMOVE BEFORE COMMIT */
 dev_info(&pdev->dev, "Testing sysfb restore: forcing probe failure\n");
 ret = -EINVAL;
 goto out_error;
or such right after the devm_aperture_remove_conflicting_pci_devices .

Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: amd-gfx@lists.freedesktop.org
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Ce Sun <cesun102@amd.com>
Cc: Chia-I Wu <olvaffe@gmail.com>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: Danilo Krummrich <dakr@kernel.org>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Deepak Rawat <drawat.floss@gmail.com>
Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: dri-devel@lists.freedesktop.org
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Gurchetan Singh <gurchetansingh@chromium.org>
Cc: Hans de Goede <hansg@kernel.org>
Cc: Hawking Zhang <Hawking.Zhang@amd.com>
Cc: Helge Deller <deller@gmx.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lijo Lazar <lijo.lazar@amd.com>
Cc: linux-efi@vger.kernel.org
Cc: linux-fbdev@vger.kernel.org
Cc: linux-hyperv@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: "Mario Limonciello (AMD)" <superm1@kernel.org>
Cc: Mario Limonciello <mario.limonciello@amd.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: nouveau@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: spice-devel@lists.freedesktop.org
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: "Timur Kristóf" <timur.kristof@gmail.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: virtualization@lists.linux.dev
Cc: Vitaly Prosyak <vitaly.prosyak@amd.com>

Zack Rusin (12):
  video/aperture: Add sysfb restore on DRM probe failure
  drm/vmwgfx: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/xe: Use devm aperture helpers for sysfb restore on probe failure
  drm/amdgpu: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/virtio: Add sysfb restore on probe failure
  drm/nouveau: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/qxl: Use devm aperture helpers for sysfb restore on probe failure
  drm/vboxvideo: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/hyperv: Add sysfb restore on probe failure
  drm/ast: Use devm aperture helpers for sysfb restore on probe failure
  drm/radeon: Use devm aperture helpers for sysfb restore on probe
    failure
  drm/i915: Use devm aperture helpers for sysfb restore on probe failure

 drivers/firmware/efi/sysfb_efi.c           |   2 +-
 drivers/firmware/sysfb.c                   | 191 +++++++++++++--------
 drivers/firmware/sysfb_simplefb.c          |  10 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c |   9 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    |   7 +
 drivers/gpu/drm/ast/ast_drv.c              |  13 +-
 drivers/gpu/drm/hyperv/hyperv_drm_drv.c    |  23 +++
 drivers/gpu/drm/i915/i915_driver.c         |  13 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c      |  16 +-
 drivers/gpu/drm/qxl/qxl_drv.c              |  14 +-
 drivers/gpu/drm/radeon/radeon_drv.c        |  15 +-
 drivers/gpu/drm/vboxvideo/vbox_drv.c       |  13 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c       |  29 ++++
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c        |  13 +-
 drivers/gpu/drm/xe/xe_device.c             |   7 +-
 drivers/gpu/drm/xe/xe_pci.c                |   7 +
 drivers/video/aperture.c                   |  54 ++++++
 include/linux/aperture.h                   |  14 ++
 include/linux/sysfb.h                      |   6 +
 19 files changed, 368 insertions(+), 88 deletions(-)

-- 
2.48.1

