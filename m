Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHp4NdaDpWmxCwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 13:34:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6911D89E5
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 13:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B34A10E4BA;
	Mon,  2 Mar 2026 12:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="SuOpfMFo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB2B10E4B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2026 12:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1772454866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3doa6HfxdfxJ1p5CQxQkAhxxDryXGM6DiFWfZesWQ/A=;
 b=SuOpfMFoTuz46JJTocBxbsrTuM6PNNZwqHfK7Q0VSdVUhW1s4d8Wo1cQlymtiCPKT4MiJ9
 YLBeIH5vDlZsgF2omL3HnUMqw2UPrqSRy2ufhgRgQhj+Cx69VSLb8S/dktbpf12ZXQb+9F
 4gKG/ffh4+5ZUnfZNpAh1ndF8RKRxlU=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-98-XZmZMmxHO3eLodoslL9rYw-1; Mon, 02 Mar 2026 07:34:23 -0500
X-MC-Unique: XZmZMmxHO3eLodoslL9rYw-1
X-Mimecast-MFC-AGG-ID: XZmZMmxHO3eLodoslL9rYw_1772454863
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-506c0da79c5so437345971cf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2026 04:34:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772454863; x=1773059663;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=3doa6HfxdfxJ1p5CQxQkAhxxDryXGM6DiFWfZesWQ/A=;
 b=DQWOO1e1Y6C6PcaczoDDWun/j8HcRLH+/nONzaS5aaFd43WfVZSbSz19C/VxKPu6PQ
 wp/VFXi45zn22ojf3aBeRWD8YGE/qA8ZFqZt7EtWPhPWFsCIKcvJqeQdk/re37Zv8vYf
 lrPBDy7wMIKJ1rU7UbvobZtJ2ViAM0DDoHlISKHZh1f+5TRLALhg9k2TgRKMzThQAwRY
 vVpbRYCsb/+kvxOSyPJybPOD0HkJg1BcYsbzpkbIZqCJcTjJIuJfikhBWYGeXaHgVRCP
 HpNxgHFgeSYoy9Y+2uhbTzdcmhslzqbsYkOeREhMkQC9L0Y7Lbegdn5v6+L33dtZpkWp
 m+lQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZ1cYmyGV0XvS7TCplwsGoOsB5eS4IcDFzWbeH3eqj80vXCoYgKpUD3ChJO8iEIB+NZugQJleA3Ws=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwF7dILGQADOVKRIte71o8j4HkToCaMQ9kos2z7/vuXGW+9W9sj
 Dv52pbl2jYwtojNqoeZyKSnrfdQ/ZpKAF8w9mwyk62eKLwLgz2hHUja23SFsJSyRWSGPsaeuEF7
 Y+UK44fO+b48axfCZzEEfyvdynZr2m9Y/Htx7cFCDa0jvL0Y9JUkduFYiZyHZRFBXlab/j8vn+x
 Ooa+A54IHhYyxDqRwbdE3jdG/KL7uGBYsc+CViirlfVYp/
X-Gm-Gg: ATEYQzx9V0tE+9ercIYCpYp/09JCiJxUXHIX+1y5zYzHhFQLFHltlLWwG3+96zK2Z4U
 qVTNpG7/Tbd8NsNFimGj/vah7Rh5mWBIFO692jpnISdrfCN/PnnDc/5c/VwP9IQXOZJLa2xyewT
 D5VM9KyV8xuU4TZPlrG/VDslUGFI0I1SGhIhhLe1t8yVw9rOzKugJ9d2J4ZQxotCbl5cW4uI7C5
 bFMUS4=
X-Received: by 2002:ac8:7f49:0:b0:502:a1c6:4ee with SMTP id
 d75a77b69052e-50752714b06mr153678741cf.1.1772454862533; 
 Mon, 02 Mar 2026 04:34:22 -0800 (PST)
X-Received: by 2002:ac8:7f49:0:b0:502:a1c6:4ee with SMTP id
 d75a77b69052e-50752714b06mr153678311cf.1.1772454862031; Mon, 02 Mar 2026
 04:34:22 -0800 (PST)
MIME-Version: 1.0
References: <20260228130946.50919-2-ltao@redhat.com>
 <31690b028081ba72ca9babf2d09417376e10f2f1@intel.com>
In-Reply-To: <31690b028081ba72ca9babf2d09417376e10f2f1@intel.com>
From: Tao Liu <ltao@redhat.com>
Date: Tue, 3 Mar 2026 01:33:44 +1300
X-Gm-Features: AaiRm52a0YHO0oHtZTipmB5LVpX2kFAg8VVxT3gl0IBhaHYmqB6zATtNCm8_Zxk
Message-ID: <CAO7dBbV2AtmXRCQkNgYvaAVW8S_jWoQgqC6c1k83H-aug_tNeA@mail.gmail.com>
Subject: Re: [PATCH] i915: Fix NULL pointer dereference in
 intel_dmc_update_dc6_allowed_count()
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com, 
 tursulin@ursulin.net, airlied@gmail.com, simona@ffwll.ch, imre.deak@intel.com, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, kexec@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Mqr57V0oYJmWYy-W45iI7ykoq731eDLft6GIraKvS5s_1772454863
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:imre.deak@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:kexec@lists.infradead.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[ltao@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ltao@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8D6911D89E5
X-Rspamd-Action: no action

On Mon, Mar 2, 2026 at 10:14=E2=80=AFPM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>
> On Sun, 01 Mar 2026, Tao Liu <ltao@redhat.com> wrote:
> > There is a NULL pointer dereference issue noticed in i915 when 2nd kern=
el
> > bootup during kdump. This will panic 2nd kernel and lead to no vmcore
> > generation. The issue is observed in Meteorlake CPU(cpuid: 0xA06A2):
>
> The previously posted fix is [1].

Thanks for the link, I didn't notice it. For kdump case, as far as I
have tested, only adding (!dmc) check for
intel_dmc_update_dc6_allowed_count() is sufficient to allow kdump to
work.

Thanks,
Tao Liu

>
> Imre, please R-b that. It's a NULL pointer dereference in the wild, in
> stable kernels. We need to get it fixed instead of bikeshedding on
> potential incorrect debugfs results.
>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/20251202183950.2450315-1-jani.nikula@intel.=
com
>
>
> >
> >     BUG: kernel NULL pointer dereference, address: 0000000000000000
> >     #PF: supervisor read access in kernel mode
> >     #PF: error_code(0x0000) - not-present page
> >     PGD 0 P4D 0
> >     Oops: Oops: 0000 [#1] SMP NOPTI
> >     ...
> >     RIP: 0010:intel_dmc_update_dc6_allowed_count+0x16/0xa0 [i915]
> >     ...
> >
> > It is easy to locate the NULL pointer dereference by disassembly:
> >
> >     00000000001171e0 <intel_dmc_update_dc6_allowed_count>:
> >       1171e0:       f3 0f 1e fa             endbr64
> >       1171e4:       e8 00 00 00 00          call   1171e9
> >       1171e9:       41 55                   push   %r13
> >       1171eb:       41 54                   push   %r12
> >       1171ed:       55                      push   %rbp
> >       1171ee:       53                      push   %rbx
> >       1171ef:       4c 8b a7 18 03 00 00    mov    0x318(%rdi),%r12
> >       1171f6:       49 8b 2c 24             mov    (%r12),%rbp
> >
> > To fix this, add a NULL pointer check before dereferencing.
> >
> > Signed-off-by: Tao Liu <ltao@redhat.com>
> > ---
> >
> > The issue doesn't happen in 1st kernel, but in 2nd kernel of kdump. I'm=
 not
> > an expert to i915 and unsure what lead to the NULL pointer. To help fur=
ther
> > analysis, here is the full stack:
> >
> > [    8.608520]  <TASK>
> > [    8.610652]  gen9_set_dc_state.part.0+0x25d/0x2f0 [i915]
> > [    8.616096]  icl_display_core_init+0x2d/0x620 [i915]
> > [    8.621266]  intel_power_domains_init_hw+0x1b2/0x500 [i915]
> > [    8.627047]  intel_display_driver_probe_noirq+0x87/0x300 [i915]
> > [    8.633188]  i915_driver_probe+0x207/0x5d0 [i915]
> > [    8.637977]  ? drm_privacy_screen_get+0x198/0x1c0
> > [    8.642832]  local_pci_probe+0x41/0x90
> > [    8.646646]  pci_call_probe+0x58/0x160
> > [    8.650458]  ? pci_assign_irq+0x2f/0x160
> > [    8.654447]  ? pci_match_device+0xf8/0x120
> > [    8.658522]  pci_device_probe+0x95/0x140
> > [    8.662582]  call_driver_probe+0x27/0x110
> > [    8.666570]  really_probe+0xcc/0x2c0
> > [    8.670190]  __driver_probe_device+0x78/0x120
> > [    8.674692]  driver_probe_device+0x1f/0xa0
> > [    8.678857]  __driver_attach+0xfa/0x230
> > [    8.682757]  ? __pfx___driver_attach+0x10/0x10
> > [    8.687185]  bus_for_each_dev+0x8e/0xe0
> > [    8.691159]  bus_add_driver+0x11f/0x200
> > [    8.694970]  driver_register+0x72/0xd0
> > [    8.698853]  i915_init+0x26/0x90 [i915]
> > [    8.702837]  ? __pfx_i915_init+0x10/0x10 [i915]
> > [    8.707433]  do_one_initcall+0x5c/0x320
> > [    8.711409]  do_init_module+0x60/0x240
> > [    8.715132]  init_module_from_file+0xd6/0x130
> > [    8.719634]  idempotent_init_module+0x114/0x310
> > [    8.724241]  __x64_sys_finit_module+0x71/0xe0
> > [    8.728671]  do_syscall_64+0x11b/0x6d0
> > [    8.732483]  ? ksys_read+0x6b/0xe0
> > [    8.735854]  ? arch_exit_to_user_mode_prepare.isra.0+0xa2/0xd0
> > [    8.741768]  ? do_syscall_64+0x153/0x6d0
> > [    8.745828]  ? do_syscall_64+0x153/0x6d0
> > [    8.749814]  ? do_syscall_64+0x153/0x6d0
> > [    8.753800]  ? clear_bhb_loop+0x30/0x80
> > [    8.757700]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> >
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm=
/i915/display/intel_dmc.c
> > index 1006b060c3f3..fd2756badc0c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1578,7 +1578,7 @@ void intel_dmc_update_dc6_allowed_count(struct in=
tel_display *display,
> >       struct intel_dmc *dmc =3D display_to_dmc(display);
> >       u32 dc5_cur_count;
> >
> > -     if (DISPLAY_VER(dmc->display) < 14)
> > +     if (!dmc || DISPLAY_VER(dmc->display) < 14)
> >               return;
> >
> >       dc5_cur_count =3D intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_C=
OUNT);
>
> --
> Jani Nikula, Intel
>

