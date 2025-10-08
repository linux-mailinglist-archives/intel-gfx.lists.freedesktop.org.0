Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE0DBC35FE
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 07:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21D310E754;
	Wed,  8 Oct 2025 05:18:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="gnKfif1M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937CB10E754
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 05:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1759900693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k+B16xBvsHCRoC4nVy0QOzc7PaAhqXvqSXSDvv3fIDc=;
 b=gnKfif1M0r3W2Wct/XKfFuIRTckCU9+uPyDBJYsIF8Rw1INaPL+cBtskIsBzrKwFSm72IG
 RcbtIG+qEHtXMT9U05Mf8Kds9wudZ7bkyPPJgotjITYvXlreOi632lBg3aPc1CXmPR4sRx
 JW+7dPtDO6pkpjwjU4ZtYMK3Od9MRjY=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-9987UyBaONScMHYjQLbkvA-1; Wed, 08 Oct 2025 01:18:12 -0400
X-MC-Unique: 9987UyBaONScMHYjQLbkvA-1
X-Mimecast-MFC-AGG-ID: 9987UyBaONScMHYjQLbkvA_1759900691
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-27ee41e062cso89610105ad.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Oct 2025 22:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759900691; x=1760505491;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=k+B16xBvsHCRoC4nVy0QOzc7PaAhqXvqSXSDvv3fIDc=;
 b=tTti7YVsQgEuv1rbKl+i//0/QBdPjUuV5p61MOnPydD/e4dFQNwISRBa8DKOP7cRe7
 RWZV7kbYT46GhYSu7sPoPrK+Md5FAm6UqlcKANRwQnuLlYll6/NZvyJS/mOb5IKZGryh
 /kUU8pt6RUv48Wm88PGD+TU2fkJEYFcQ+CTZBd95jD5nEx5yzXJBmSLW9QuIk3Vj+6TN
 l0tdczlOnHoL+T6HiiSLYUuiubZBf/r3ArxE3NYk7yPKS/3l/R0onVUckvorW3xzbD6D
 N/76RgU3w/hye5lv1DVpeFKy053fpmqNIJ3DTHW+p+/XX5YRpoaeIHg8xogoORMCH8lQ
 l7fg==
X-Gm-Message-State: AOJu0YwQIyO136qPMONUv1GguODsV6PyMvZUGcoz0kuC67ESNuu8Zt8W
 au1vPsLRHRthZcvKSMZKBQ94ZGRxUEDAZVDhnYuS1BK9Xa8uOAeAFQNbZlWqwU0cbfQeu001Lsi
 imDjiwt+iLQ7c6N2eNwfNfMEw6VwMGNNkEuhUGIk39Z+8pEhejmNdzUKAXNeFyU2NgY52DsFbtA
 JYxJZnuC4PonzB8vluOXSkd/wlchrI65wmeyqRFwK7MByH
X-Gm-Gg: ASbGnct9C9dcdwv29hH8E731M1iudHLxmspoRRAqTHBh3gMnQdiqqyxLer1LGa7CYWX
 YHvZuSq3FJ6j/b4L6+ZVxH9iMi6KApdKYFHA7VoGWCLrIuXYTfxolsfFwmdczGJGvDdvzuKuw8j
 fIrynvqDDUrtz1F8bovHSDguREX1c=
X-Received: by 2002:a17:903:1107:b0:275:f932:8636 with SMTP id
 d9443c01a7336-29027344a2amr31320595ad.38.1759900691204; 
 Tue, 07 Oct 2025 22:18:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQURzA8sQcugcp0BYo2x39jDcZt6sqsYdCEKEtVMSZMMlwpQzf0Y/IUqYTr3YcO/iTa7zq9IZzJT+ki58kiyA=
X-Received: by 2002:a17:903:1107:b0:275:f932:8636 with SMTP id
 d9443c01a7336-29027344a2amr31320405ad.38.1759900690776; Tue, 07 Oct 2025
 22:18:10 -0700 (PDT)
MIME-Version: 1.0
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com>
In-Reply-To: <20251007202514.1661491-1-jia.yao@intel.com>
From: Pingfan Liu <piliu@redhat.com>
Date: Wed, 8 Oct 2025 13:17:59 +0800
X-Gm-Features: AS18NWCy7FSFpSFSpCqPAOwT1fdsj4jRGrGrg_3cL9QIqPWaG9WM5WHFy_ZDGgI
Message-ID: <CAF+s44SVMWnCRGvtYCPHdSEORoRVwUNNH2JVva-FnXbdgUOevw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
To: Jia Yao <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Alex Zuo <alex.zuo@intel.com>, 
 Shuicheng Lin <shuicheng.lin@intel.com>, Askar Safin <safinaskar@gmail.com>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ClJavRfH13aODwydrTUV_xCx6ukAC558PN_FgsArkbw_1759900691
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi Jia,

Thanks for the patch, please see the comments below.

On Wed, Oct 8, 2025 at 4:25=E2=80=AFAM Jia Yao <jia.yao@intel.com> wrote:
>
> Make i915's PCI device management more robust by always setting/clearing
> the memory access bit when enabling/disabling the device, and by
> consolidating this logic into helper functions.
>
> It fixes kexec reboot issue by disabling memory access before shutting
> down the device, which can block unsafe and unwanted access from DMA.
>

PCI_COMMAND_MEMORY blocks the access to i915
PCI_COMMAND_MASTER blocks i915 from accessing the system memory.

In the case of kexec-reboot, I think PCI_COMMAND_MASTER has been set
on all pci devices. So I can not figure out how clearing
PCI_COMMAND_MEMORY can help in this case.

Can you explain a little bit?

Thanks,

Pingfan

> v2:
>   - follow brace style
>
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Askar Safin <safinaskar@gmail.com>
> Cc: Pingfan Liu <piliu@redhat.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 35 +++++++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index b46cb54ef5dc..766f85726b67 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -118,6 +118,33 @@
>
>  static const struct drm_driver i915_drm_driver;
>
> +static int i915_enable_device(struct pci_dev *pdev)
> +{
> +       u32 cmd;
> +       int ret;
> +
> +       ret =3D pci_enable_device(pdev);
> +       if (ret)
> +               return ret;
> +
> +       pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +       if (!(cmd & PCI_COMMAND_MEMORY))
> +               pci_write_config_dword(pdev, PCI_COMMAND, cmd | PCI_COMMA=
ND_MEMORY);
> +
> +       return 0;
> +}
> +
> +static void i915_disable_device(struct pci_dev *pdev)
> +{
> +       u32 cmd;
> +
> +       pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +       if (cmd & PCI_COMMAND_MEMORY)
> +               pci_write_config_dword(pdev, PCI_COMMAND, cmd & ~PCI_COMM=
AND_MEMORY);
> +
> +       pci_disable_device(pdev);
> +}
> +
>  static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>  {
>         /*
> @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>         struct intel_display *display;
>         int ret;
>
> -       ret =3D pci_enable_device(pdev);
> +       ret =3D i915_enable_device(pdev);
>         if (ret) {
>                 pr_err("Failed to enable graphics device: %pe\n", ERR_PTR=
(ret));
>                 return ret;
> @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>
>         i915 =3D i915_driver_create(pdev, ent);
>         if (IS_ERR(i915)) {
> -               pci_disable_device(pdev);
> +               i915_disable_device(pdev);
>                 return PTR_ERR(i915);
>         }
>
> @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>         enable_rpm_wakeref_asserts(&i915->runtime_pm);
>         i915_driver_late_release(i915);
>  out_pci_disable:
> -       pci_disable_device(pdev);
> +       i915_disable_device(pdev);
>         i915_probe_error(i915, "Device initialization failed (%d)\n", ret=
);
>         return ret;
>  }
> @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct drm_i915_private *=
i915)
>
>         intel_dmc_suspend(display);
>
> +       intel_pxp_fini(i915);
>         i915_gem_suspend(i915);
>
>         /*
> @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *=
i915)
>         enable_rpm_wakeref_asserts(&i915->runtime_pm);
>
>         intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> +       i915_disable_device(to_pci_dev(i915->drm.dev));
>  }
>
>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> --
> 2.34.1
>

