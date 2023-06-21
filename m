Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CFC73924F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 00:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4978A10E367;
	Wed, 21 Jun 2023 22:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF8F10E367
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 22:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1687385525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FmN6vynnk346Zef3QsDpwSts1f6YVa3MgD/3b47GBZg=;
 b=HfM52FwF/SXT7KHOKtoABEPsU3kI3Je5zdnbtTBuCv7m87AO+wbueicHQv37L5MOk17tCd
 qwdjBnEVX7dq2Y5X7QbKh6DFV29pJWY29XqxdNhAelW3PC91io7pRXaqzHZDIi2GSazwVQ
 9ifGlVX3/3/tGdrV/gwZDAePtviTI3s=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-90oN1QOBM0iy4PZVwu7SrA-1; Wed, 21 Jun 2023 18:12:04 -0400
X-MC-Unique: 90oN1QOBM0iy4PZVwu7SrA-1
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-62fe5abe808so91006d6.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 15:12:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687385523; x=1689977523;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FmN6vynnk346Zef3QsDpwSts1f6YVa3MgD/3b47GBZg=;
 b=D9teax4Oc9D94Gf7y2NC4NjV1B0WMGfoWyoZMgJtIiUUOVIkbIsFSbnhQCzat+wv5L
 83I7DD8WViUzqm5r0okxZmrdszyG9AT4q0PUX5kltRuz0NO18bzsXA7XrSQIO50L85XW
 DE46WrPIwYXzEUrVYEkVLL6pix1ekFFSn8dBru9N+gIlCxcLUeano4VybsQy48yPhLyE
 Ds6/z7MUPNzPODoL+Oq7uPZFG9ZtW4l7dNrcqR9yyyMpf3fxjMJmhf/k2+D9NicgPg0P
 jo+7l69WTP2hsozwEtFaZrgudUdfHKHUF1PiQ7C3iuurJIzZgZ0EAH+jdPehyQPZCyFF
 G1gg==
X-Gm-Message-State: AC+VfDwJjOTZeGyzb8g2gzlLjeW3u13XIwSexa6dyAnyPNICp3k+0u06
 umtnpUXIKsVsvmj2BzJEnbStW6jFCXsh46+oUQ+sFJqTEyToJkk8xenNWqMxAwVl6CJx6zbPJdh
 OYVgy6cYvMz5yVmId/kwWmLsxWx9W
X-Received: by 2002:a05:6214:29e1:b0:62d:f04b:b51 with SMTP id
 jv1-20020a05621429e100b0062df04b0b51mr17438814qvb.29.1687385523573; 
 Wed, 21 Jun 2023 15:12:03 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ56B7bI2LZsiCjtiffrV5rEA606kXuKzqD7PkY8RBVrcj0Iu0zK+Ncvisj1nwNYM7qYublmuA==
X-Received: by 2002:a05:6214:29e1:b0:62d:f04b:b51 with SMTP id
 jv1-20020a05621429e100b0062df04b0b51mr17438789qvb.29.1687385523319; 
 Wed, 21 Jun 2023 15:12:03 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c62:8200::feb? ([2600:4040:5c62:8200::feb])
 by smtp.gmail.com with ESMTPSA id
 p6-20020a0cf546000000b00623819de804sm2982153qvm.127.2023.06.21.15.12.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 15:12:02 -0700 (PDT)
Message-ID: <0afadc69f99a36bc9d03ecf54ff25859dbc10e28.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Sui Jingfeng <15330273260@189.cn>, Alex Deucher
 <alexander.deucher@amd.com>,  Christian Konig <christian.koenig@amd.com>,
 Pan Xinhui <Xinhui.Pan@amd.com>, David Airlie <airlied@gmail.com>,  Daniel
 Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>,  Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ben Skeggs <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Alex Williamson
 <alex.williamson@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Hawking Zhang
 <Hawking.Zhang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>,
 Lijo Lazar <lijo.lazar@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Andrey
 Grodzovsky <andrey.grodzovsky@amd.com>,  Somalapuram Amaranath
 <Amaranath.Somalapuram@amd.com>, Bokun Zhang <Bokun.Zhang@amd.com>, Ville
 Syrjala <ville.syrjala@linux.intel.com>, Li Yi <liyi@loongson.cn>, Sui
 Jingfeng <suijingfeng@loongson.cn>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin
 Tian <kevin.tian@intel.com>, Cornelia Huck <cohuck@redhat.com>, Yishai
 Hadas <yishaih@nvidia.com>, Abhishek Sahu <abhsahu@nvidia.com>, Yi Liu
 <yi.l.liu@intel.com>
Date: Wed, 21 Jun 2023 18:11:59 -0400
In-Reply-To: <20230612192550.197053-1-15330273260@189.cn>
References: <20230612192550.197053-1-15330273260@189.cn>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v6 0/8] PCI/VGA: introduce is_boot_device
 function callback to vga_client_register
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
Cc: kvm@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, loongson-kernel@lists.loongnix.cn,
 amd-gfx@lists.freedesktop.org, linux-pci@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the nouveau bits:

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Tue, 2023-06-13 at 03:25 +0800, Sui Jingfeng wrote:
> From: Sui Jingfeng <suijingfeng@loongson.cn>
>=20
> The vga_is_firmware_default() function is arch-dependent, it's probably
> wrong if we simply remove the arch guard. As the VRAM BAR which contains
> firmware framebuffer may move, while the lfb_base and lfb_size members of
> the screen_info does not change accordingly. In short, it should take the
> re-allocation of the PCI BAR into consideration.
>=20
> With the observation that device drivers or video aperture helpers may
> have better knowledge about which PCI bar contains the firmware fb,
> which could avoid the need to iterate all of the PCI BARs. But as a PCI
> function at pci/vgaarb.c, vga_is_firmware_default() is not suitable to
> make such an optimization since it is loaded too early.
>=20
> There are PCI display controllers that don't have a dedicated VRAM bar,
> this function will lose its effectiveness in such a case. Luckily, the
> device driver can provide an accurate workaround.
>=20
> Therefore, this patch introduces a callback that allows the device driver
> to tell the VGAARB if the device is the default boot device. Also honor
> the comment: "Clients have two callback mechanisms they can use"
>=20
> Sui Jingfeng (8):
>   PCI/VGA: Use unsigned type for the io_state variable
>   PCI/VGA: Deal only with VGA class devices
>   PCI/VGA: Tidy up the code and comment format
>   PCI/VGA: Replace full MIT license text with SPDX identifier
>   video/aperture: Add a helper to detect if an aperture contains
>     firmware FB
>   PCI/VGA: Introduce is_boot_device function callback to
>     vga_client_register
>   drm/amdgpu: Implement the is_boot_device callback function
>   drm/radeon: Implement the is_boot_device callback function
>=20
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c |  12 +-
>  drivers/gpu/drm/drm_aperture.c             |  16 +++
>  drivers/gpu/drm/i915/display/intel_vga.c   |   3 +-
>  drivers/gpu/drm/nouveau/nouveau_vga.c      |   2 +-
>  drivers/gpu/drm/radeon/radeon_device.c     |  12 +-
>  drivers/pci/vgaarb.c                       | 153 +++++++++++++--------
>  drivers/vfio/pci/vfio_pci_core.c           |   2 +-
>  drivers/video/aperture.c                   |  29 ++++
>  include/drm/drm_aperture.h                 |   2 +
>  include/linux/aperture.h                   |   7 +
>  include/linux/vgaarb.h                     |  35 ++---
>  11 files changed, 184 insertions(+), 89 deletions(-)
>=20

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

