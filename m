Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D7F5544F5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 11:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2874E10FF6B;
	Wed, 22 Jun 2022 09:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89B710FF6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 09:47:17 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id p63so12090494qkd.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 02:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Xu27xjFGd7RqreWXeGPYbCHy+3gA0nXLgTkM1ruEeAI=;
 b=dhguqZtJ9kCOzytA/1u7kKrgwHMSBX54bVuhshBd+dNWoaVnf8Avgp6Cgsts4iLwMd
 u/rUhRhzqk0uNylCM0nYDdBJ1CqWZa3CX+U3sZy+rpykZFIoNUPpfEog4tX8/h12yn4D
 rboRmT2JLKXPxZ1RAWDsWRCaLjfCrMwvNMTJSLnuBo90xA2XVCWtd8Q9AvjnBMlVv1eK
 27DDIzTC5/PiRyiMSFDsRWJYMExxykseEUqAAHr8YwuT0W+QQCRyJBzeXqw2CCHzAA2y
 WF8AfRI+KubqtyuJho+xZNJdU2wjct4x3RsIczKRysYOBTjry8yqxebYLdXziXBQcqe4
 m1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Xu27xjFGd7RqreWXeGPYbCHy+3gA0nXLgTkM1ruEeAI=;
 b=FclyHqCjNoPHj3wIBl6VmxhULAmlPcbBJYf60K4nztOQtvePU1Dk4une92LSuCVRFC
 XDVoaoSv9M56o4w2u5otcll3BKSBU9rhVO/onb/7nKgCfHMcRPTdeFHpwVxcD9VIPPPd
 vD+C5NSuWjihRxM3iPo2WlxJ6+APtvMyZ8bBDWNKja2Cj6dRVqvCuZ5wv0SAOsMgRVip
 boUY9ED9F0teXbVQWYYohI40/BEUA1wBe0ffXwFAAOleLzvR/IyhXfpfwqWsbo/+phqY
 /FNQ1iMx3GH+Aa0T2uxnYwazrvUP+9rfw9+bucnbwbNESTyhquXNQ4bH5WDfh85eiIh6
 ZPXw==
X-Gm-Message-State: AJIora+crT7rfh2isYEpeBl7oZ5LyGMp+HA6Zq4g7I+xRs38YTCgx9Jx
 OYA6RXQzZOwgLjXqHEPlphFSBIT1zaEzrH8PoGKskFFracDll/mB
X-Google-Smtp-Source: AGRyM1tW+XDxuahVnENqUUgMrdZiCSIpSWfx06KBaFPt9X2HdzqAm4aOHD6R/rXzpMRyG06t9qzRnT7wm1YxIsQm1CM=
X-Received: by 2002:a05:620a:f05:b0:6a9:7122:edb1 with SMTP id
 v5-20020a05620a0f0500b006a97122edb1mr1569978qkl.82.1655891237021; Wed, 22 Jun
 2022 02:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220616120509.1190329-1-priyanka.dandamudi@intel.com>
 <20220616120509.1190329-2-priyanka.dandamudi@intel.com>
 <87pmj8vesm.fsf@intel.com>
In-Reply-To: <87pmj8vesm.fsf@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 22 Jun 2022 10:46:50 +0100
Message-ID: <CAM0jSHN=MsqYocfhDcM3WEACcce8MiU4fXAxpymxOf0Sr0J3Lw@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] drm/i915: Add support for LMEM
 PCIe resizable bar
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
Cc: priyanka.dandamudi@intel.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Jun 2022 at 15:55, Jani Nikula <jani.nikula@linux.intel.com> wro=
te:
>
> On Thu, 16 Jun 2022, priyanka.dandamudi@intel.com wrote:
> > From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> >
> > This patch adds support for the local memory PICe resizable bar, so tha=
t
> > local memory can be resized to the maximum size supported by the device=
,
> > and mapped correctly to the PCIe memory bar. It is usual that GPU
> > devices expose only 256MB BARs primarily to be compatible with 32-bit
> > systems. So, those devices cannot claim larger memory BAR windows size =
due
> > to the system BIOS limitation. With this change, it would be possible t=
o
> > reprogram the windows of the bridge directly above the requesting devic=
e
> > on the same BAR type.
> >
> > Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> > Signed-off-by: Micha=C5=82 Winiarski <michal.winiarski@intel.com>
> > Cc: Stuart Summers <stuart.summers@intel.com>
> > Cc: Michael J Ruhl <michael.j.ruhl@intel.com>
> > Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> > Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 92 ++++++++++++++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/=
i915_driver.c
> > index d26dcca7e654..4bdb471cb2e2 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -303,6 +303,95 @@ static void sanitize_gpu(struct drm_i915_private *=
i915)
> >               __intel_gt_reset(to_gt(i915), ALL_ENGINES);
> >  }
> >
> > +static void __release_bars(struct pci_dev *pdev)
>
> What's with the double underscores?
>
> > +{
> > +     int resno;
> > +
> > +     for (resno =3D PCI_STD_RESOURCES; resno < PCI_STD_RESOURCE_END; r=
esno++) {
> > +             if (pci_resource_len(pdev, resno))
> > +                     pci_release_resource(pdev, resno);
> > +     }
> > +}
> > +
> > +static void
> > +__resize_bar(struct drm_i915_private *i915, int resno, resource_size_t=
 size)
> > +{
> > +     struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > +     int bar_size =3D pci_rebar_bytes_to_size(size);
> > +     int ret;
> > +
> > +     __release_bars(pdev);
> > +
> > +     ret =3D pci_resize_resource(pdev, resno, bar_size);
> > +     if (ret) {
> > +             drm_info(&i915->drm, "Failed to resize BAR%d to %dM (%pe)=
\n",
> > +                      resno, 1 << bar_size, ERR_PTR(ret));
> > +             return;
> > +     }
> > +
> > +     drm_info(&i915->drm, "BAR%d resized to %dM\n", resno, 1 << bar_si=
ze);
> > +}
> > +
> > +/* BAR size starts from 1MB - 2^20 */
> > +#define BAR_SIZE_SHIFT 20
> > +static resource_size_t
> > +__lmem_rebar_size(struct drm_i915_private *i915, int resno)
> > +{
> > +     struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > +     u32 rebar =3D pci_rebar_get_possible_sizes(pdev, resno);
> > +     resource_size_t size;
> > +
> > +     if (!rebar)
> > +             return 0;
> > +
> > +     size =3D 1ULL << (__fls(rebar) + BAR_SIZE_SHIFT);
> > +
> > +     if (size <=3D pci_resource_len(pdev, resno))
> > +             return 0;
> > +
> > +     return size;
> > +}
> > +
> > +#define LMEM_BAR_NUM 2
> > +static void i915_resize_lmem_bar(struct drm_i915_private *i915)
> > +{
> > +     struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > +     struct pci_bus *root =3D pdev->bus;
> > +     struct resource *root_res;
> > +     resource_size_t rebar_size =3D __lmem_rebar_size(i915, LMEM_BAR_N=
UM);
> > +     u32 pci_cmd;
> > +     int i;
> > +
> > +     if (!rebar_size)
> > +             return;
> > +
> > +     /* Find out if root bus contains 64bit memory addressing */
> > +     while (root->parent)
> > +             root =3D root->parent;
> > +
> > +     pci_bus_for_each_resource(root, root_res, i) {
> > +             if (root_res && root_res->flags & (IORESOURCE_MEM |
> > +                                     IORESOURCE_MEM_64) && root_res->s=
tart > 0x100000000ull)
> > +                     break;
> > +     }
> > +
> > +     /* pci_resize_resource will fail anyways */
> > +     if (!root_res) {
> > +             drm_info(&i915->drm, "Can't resize LMEM BAR - platform su=
pport is missing\n");
> > +             return;
> > +     }
> > +
> > +     /* First disable PCI memory decoding references */
> > +     pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
> > +     pci_write_config_dword(pdev, PCI_COMMAND,
> > +                            pci_cmd & ~PCI_COMMAND_MEMORY);
> > +
> > +     __resize_bar(i915, LMEM_BAR_NUM, rebar_size);
> > +
> > +     pci_assign_unassigned_bus_resources(pdev->bus);
> > +     pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> > +}
>
> Doesn't feel like the above code belongs in this file. The file is
> supposed to be very high level. The mchbar stuff is the only low level
> thing here, and that feels out of place too. Maybe this and the mchbar
> stuff belong in a new file.

Not sure about mchbar, but maybe i915_resize_lmem_bar() could be moved
into gt/intel_region_lmem.[ch]? That's at least where the consumer of
lmem-bar lives.

>
> BR,
> Jani.
>
>
> > +
> >  /**
> >   * i915_driver_early_probe - setup state not requiring device access
> >   * @dev_priv: device private
> > @@ -852,6 +941,9 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
> >
> >       disable_rpm_wakeref_asserts(&i915->runtime_pm);
> >
> > +     if (HAS_LMEM(i915))
> > +             i915_resize_lmem_bar(i915);
> > +
> >       intel_vgpu_detect(i915);
> >
> >       ret =3D intel_gt_probe_all(i915);
>
> --
> Jani Nikula, Intel Open Source Graphics Center
