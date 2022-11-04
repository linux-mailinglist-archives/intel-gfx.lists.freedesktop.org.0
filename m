Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859A261A5B8
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 00:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6959010E8B3;
	Fri,  4 Nov 2022 23:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD10D10E8B3
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 23:26:31 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id v17so6249700plo.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Nov 2022 16:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UCbx29E4JwF9ATcfotKvDbvos4bWV+N9V7IvUGtU+00=;
 b=kPrNfLLTc++yy+o7qj3hpEUXylX5xcXdI7VqcAzGi4DioRLdBWT3R0c3dYj2yw64W/
 EzA2oLIG583prXi+HGZyEo0BWdPuiB5+vxQCNGviiFs0oiMR2BsNzpE5hzChNW8ItVDI
 hukbTofva5CIeWNfQR1K3PIwd0pi9i9YnsMMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UCbx29E4JwF9ATcfotKvDbvos4bWV+N9V7IvUGtU+00=;
 b=Oj3alOSIglavg35gs9kRI7JqI36g3zRlVtCjdDaIG++6p+238iCQpvJK9BnIdumg80
 uO6YMvJ5X+iCr8WQqxYe/eG4jvLJWgbOfoixrd/PcXh2xAj39ALstFES0SnNWQH7iu9T
 dm9VQYtU9Mf/43pXANTiGoczl13VrWR1gh3G1IDRI36TzLnoAnWGPenQWB5aHsxwC3Uy
 SVmD3KdAl9VKP4C7qus1cH62APxNlicQhjaJ8ELMIgb61pQYYca4glZAd17kplpM0OQQ
 V/yTDbUBbUcVGIdDu8i52DnMjz1wViBR6By+G/mGjdpqNIzmVvV0/69LGQrXdzMNf8OP
 g5ag==
X-Gm-Message-State: ACrzQf2C0LirALSYlj0XyBeDmxIAMXxYgBdpARKEE6za1XDSLXXQ8C+h
 /EHHCPUUswz+yYUeELX0NZBceVT029vXTw==
X-Google-Smtp-Source: AMsMyM6/pdkhHI3RJ1CXx/qxeXIoPsz2c1nFxddejMlYCT3dXdXukg1Vrb2tQtHVFzHctaVp44KXDg==
X-Received: by 2002:a17:902:c403:b0:187:222d:1ede with SMTP id
 k3-20020a170902c40300b00187222d1edemr28154484plk.150.1667604391148; 
 Fri, 04 Nov 2022 16:26:31 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:db3:7e2d:1c04:dd29])
 by smtp.gmail.com with ESMTPSA id
 t13-20020a17090340cd00b0017e232b6724sm286789pld.69.2022.11.04.16.26.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 16:26:30 -0700 (PDT)
Date: Fri, 4 Nov 2022 16:26:28 -0700
From: Brian Norris <briannorris@chromium.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y2WfpLbX1SeDtk+7@google.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
 <20220928004145.745803-12-daniele.ceraolospurio@intel.com>
 <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
Subject: Re: [Intel-gfx] [CI 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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

Hi,

On Wed, Oct 19, 2022 at 10:54:34AM +0100, Tvrtko Ursulin wrote:
> Don't know if this is real or not yet, hit it while running selftests a b=
it. Something to keep an eye on.
>=20
> [ 2928.370577] ODEBUG: init destroyed (active state 0) object type: i915_=
sw_fence hint: sw_fence_dummy_notify+0x0/0x10 [i915]
> [ 2928.370903] WARNING: CPU: 2 PID: 1113 at lib/debugobjects.c:502 debug_=
print_object+0x6b/0x90
> [ 2928.370984] Modules linked in: i915(+) drm_display_helper drm_kms_help=
er netconsole cmac algif_hash algif_skcipher af_alg bnep nls_iso8859_1 snd_=
hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio sn=
d_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm intel_tcc_cooli=
ng x86_pkg_temp_thermal intel_powerclamp snd_seq_midi snd_seq_midi_event co=
retemp snd_rawmidi btusb btrtl btbcm kvm_intel btmtk btintel ath10k_pci snd=
_seq kvm ath10k_core bluetooth snd_timer rapl intel_cstate snd_seq_device i=
nput_leds mac80211 ecdh_generic libarc4 ath snd ecc serio_raw intel_wmi_thu=
nderbolt at24 soundcore cfg80211 mei_me intel_xhci_usb_role_switch mei idea=
pad_laptop intel_pch_thermal platform_profile sparse_keymap acpi_pad sch_fq=
_codel msr efi_pstore ip_tables x_tables autofs4 crct10dif_pclmul crc32_pcl=
mul ghash_clmulni_intel sha512_ssse3 aesni_intel prime_numbers crypto_simd =
atkbd drm_buddy cryptd vivaldi_fmap r8169 ttm i2c_i801 i2c_smbus cec realte=
k xhci_pci syscopyarea ahci
> [ 2928.371145]  xhci_pci_renesas sysfillrect sysimgblt libahci fb_sys_fop=
s video wmi [last unloaded: drm_kms_helper]
> [ 2928.371489] CPU: 2 PID: 1113 Comm: modprobe Tainted: G     U  W       =
   6.1.0-rc1 #196
> [ 2928.371550] Hardware name: LENOVO 80MX/Lenovo E31-80, BIOS DCCN34WW(V2=
=2E03) 12/01/2015
> [ 2928.371615] RIP: 0010:debug_print_object+0x6b/0x90
> [ 2928.371664] Code: 49 89 c1 8b 43 10 83 c2 01 48 c7 c7 e8 be d6 bb 8b 4=
b 14 89 15 ca be b4 02 4c 8b 45 00 48 8b 14 c5 40 56 a8 bb e8 ec 5b 60 00 <=
0f> 0b 83 05 28 5a 3e 01 01 48 83 c4 08 5b 5d c3 83 05 1a 5a 3e 01
> [ 2928.371782] RSP: 0018:ffff9ed841607a18 EFLAGS: 00010286
> [ 2928.371841] RAX: 0000000000000000 RBX: ffff9208116a1d48 RCX: 000000000=
0000000
> [ 2928.371909] RDX: 0000000000000001 RSI: ffffffffbbd277d2 RDI: 00000000f=
fffffff
> [ 2928.372024] RBP: ffffffffc176a540 R08: 0000000000000000 R09: ffffffffb=
c07a1e0
> [ 2928.372128] R10: 0000000000000001 R11: 0000000000000001 R12: ffff92081=
22da830
> [ 2928.372192] R13: ffff92080089b000 R14: ffff9208122da770 R15: 000000000=
0000000
> [ 2928.372259] FS:  00007f53e7617c40(0000) GS:ffff92086e500000(0000) knlG=
S:0000000000000000
> [ 2928.372365] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 2928.372425] CR2: 000055cd28b33070 CR3: 0000000110dbd006 CR4: 000000000=
03706e0
> [ 2928.372526] Call Trace:
> [ 2928.372568]  <TASK>
> [ 2928.372614]  ? intel_guc_hang_check+0xb0/0xb0 [i915]
> [ 2928.373001]  __i915_sw_fence_init+0x2b/0x50 [i915]
> [ 2928.373374]  intel_huc_init_early+0x75/0xb0 [i915]
> [ 2928.373868]  intel_uc_init_early+0x4e/0x210 [i915]
> [ 2928.374241]  intel_gt_common_init_early+0x16f/0x180 [i915]
> [ 2928.374718]  intel_root_gt_init_early+0x49/0x60 [i915]
> [ 2928.375074]  i915_driver_probe+0x917/0xed0 [i915]
=2E..

Did you track this down? Or consider reverting? This is tripping me up
on drm-tip now when running selftests with CONFIG_DEBUG_OBJECTS=3Dy /
CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS=3Dy. It means I can't actually run
any subsequent tests, because of the kernel taint.

Brian
