Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D67FAAD9E76
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Jun 2025 19:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4131110E07C;
	Sat, 14 Jun 2025 17:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=temperror (0-bit key) header.d=riscv-rocks.de header.i=@riscv-rocks.de header.b="PNRqdQ9r";
	dkim=pass (1024-bit key; unprotected) header.d=amazonses.com header.i=@amazonses.com header.b="Ri+7Jbue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 403 seconds by postgrey-1.36 at gabe;
 Wed, 04 Jun 2025 07:32:41 UTC
Received: from b224-13.smtp-out.eu-central-1.amazonses.com
 (b224-13.smtp-out.eu-central-1.amazonses.com [69.169.224.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1597910E00A;
 Wed,  4 Jun 2025 07:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=2kaovp6zxy5nzp5wqunvdq5vkiqbeqln; d=riscv-rocks.de; t=1749021944;
 h=Date:From:To:Cc:Subject:Message-ID:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=RRjprLQpHf/JeQCUvOJ1Xn6IrSoQOpmI7jKaJYaKizI=;
 b=PNRqdQ9rmkmvExtsjOP4MYlAiGLW0/jeiU8EZ2LmzWTsKjD/rFQBpV1pudtg+oEe
 Eh4DnQfLewmJvEy5oswT3gaIEiBTy2I32ruR1eZrfwDx4Nug47/WjQmqPMyZL+qD4XT
 Z4Ntq7LyMq52jsbww5/AVIaL34vXjq1mVoTUsUYhdf5aGXAE2q5PsvDPzkFRi2CR2pD
 CF/jhu9/RVQ1v4sBnkzl4m1x5oOm+lElmroS/eLnRLWRPcGAAKioezBSeyJ42as9mw+
 uTSI+s7eHgJWVcSmbsS7UiD0lo4vQ0MnDpqgvluc5F0hYi9H7sQf38V1eeW8Jqk595t
 0Bvq4n/Mbw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1749021944;
 h=Date:From:To:Cc:Subject:Message-ID:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID;
 bh=RRjprLQpHf/JeQCUvOJ1Xn6IrSoQOpmI7jKaJYaKizI=;
 b=Ri+7JbueElfFuOvosB7BLOyvi2KY4HN7qULpL+LV+6AejzaH51VzcxFSojsrzjW6
 O1bbO3GrNKOOYS/VArN7JTMUERUSwKwIl2YYTBOlgRCKugLpGVXEjsCrKx64GBAPFhp
 W+DVJmyxraaqMA1VyUZqt3DAyTYhyE1H8Ta6FWDY=
Date: Wed, 4 Jun 2025 07:25:43 +0000
From: Damian Tometzki <damian@riscv-rocks.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org
Subject: [BUG] i915 WARN: RPM wakelock not held in fwtable_read32 on Lenovo T14
Message-ID: <0107019739d4e899-81e90dc7-0ff9-43aa-91dc-d57ef84c64b3-000000@eu-central-1.amazonses.com>
Mail-Followup-To: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt
X-Operating-System: Linux Fedora release 42 (Adams) (Kernel 6.15.0)
Organization: Linux hacker
Feedback-ID: ::1.eu-central-1.yMcBPu/jK26Vj3HVmCFyFk75QMsS8V3QY5HbXP/Qrys=:AmazonSES
X-SES-Outgoing: 2025.06.04-69.169.224.13
X-Mailman-Approved-At: Sat, 14 Jun 2025 17:19:36 +0000
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
Reply-To: Damian Tometzki <damian@riscv-rocks.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dear Intel Graphics / Kernel maintainers,

I=E2=80=99m encountering repeated WARNs in the i915 driver with kernel 6.15=
=2E0 (since Kernel 6.13) on a Lenovo T14 (20XWCTO1WW, BIOS N32ET96W 1.72).
The messages suggest a missing RPM wakelock when accessing hardware registe=
rs in fwtable_read32.

[29101.659315] wlp0s20f3: associate with b0:f2:08:dc:a3:5e (try 1/3)
[29101.662856] wlp0s20f3: RX ReassocResp from b0:f2:08:dc:a3:5e (capab=3D0x=
1111 status=3D0 aid=3D9)
[29101.669115] wlp0s20f3: associated
[29101.704089] wlp0s20f3: Limiting TX power to 20 (23 - 3) dBm as advertise=
d by b0:f2:08:dc:a3:5e
[29216.585535] CIFS: VFS: \\dtometzki.file.core.windows.net has not respond=
ed in 180 seconds. Reconnecting...
[30235.603534] perf: interrupt took too long (2503 > 2500), lowering kernel=
=2Eperf_event_max_sample_rate to 79000
[31782.350817] usb 3-5: USB disconnect, device number 7
[31782.372751] ------------[ cut here ]------------
[31782.372755] RPM raw-wakeref not held
[31782.372805] WARNING: CPU: 5 PID: 0 at drivers/gpu/drm/i915/intel_runtime=
_pm.h:116 fwtable_read32+0x1cf/0x2a0 [i915]
[31782.372941] Modules linked in: uinput rfcomm snd_seq_dummy snd_hrtimer x=
t_conntrack xt_MASQUERADE bridge stp llc xt_set xt_addrtype nls_utf8 cifs c=
ifs_arc4 nls_ucs2_utils cifs_md4 dns_resolver netfs overlay xt_comment nft_=
compat nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet nft_fib_=
ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_reject_ipv6 nft=
_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_i=
pv4 ip_set nf_tables qrtr bnep sunrpc binfmt_misc snd_soc_skl_hda_dsp snd_s=
oc_intel_sof_board_helpers snd_sof_probes snd_soc_intel_hda_dsp_common snd_=
soc_dmic snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_compone=
nt snd_sof_pci_intel_tgl snd_sof_pci_intel_cnl snd_sof_intel_hda_generic so=
undwire_intel snd_sof_intel_hda_sdw_bpt snd_sof_intel_hda_common snd_soc_hd=
ac_hda snd_sof_intel_hda_mlink snd_sof_intel_hda snd_hda_codec_hdmi soundwi=
re_cadence snd_sof_pci snd_sof_xtensa_dsp iwlmvm snd_sof snd_sof_utils snd_=
soc_acpi_intel_match snd_soc_acpi_intel_sdca_quirks
[31782.372985]  soundwire_generic_allocation mac80211 snd_soc_acpi crc8 sou=
ndwire_bus snd_soc_sdca snd_soc_avs snd_soc_hda_codec libarc4 snd_hda_ext_c=
ore snd_soc_core snd_compress ac97_bus snd_pcm_dmaengine snd_hda_intel snd_=
intel_dspcfg snd_intel_sdw_acpi snd_hda_codec intel_uncore_frequency intel_=
uncore_frequency_common intel_tcc_cooling snd_hda_core uvcvideo x86_pkg_tem=
p_thermal intel_powerclamp snd_hwdep uvc spi_nor videobuf2_vmalloc processo=
r_thermal_device_pci_legacy snd_seq videobuf2_memops processor_thermal_devi=
ce coretemp processor_thermal_wt_hint iTCO_wdt videobuf2_v4l2 snd_seq_devic=
e mtd platform_temperature_control mei_hdcp videobuf2_common processor_ther=
mal_rfim mei_pxp intel_rapl_msr intel_pmc_bxt snd_pcm rapl iwlwifi think_lm=
i videodev processor_thermal_rapl iTCO_vendor_support vfat intel_rapl_commo=
n intel_cstate fat intel_uncore pcspkr firmware_attributes_class mc process=
or_thermal_wt_req spi_intel_pci snd_ctl_led wmi_bmof mei_me i2c_i801 snd_ti=
mer processor_thermal_power_floor spi_intel cfg80211
[31782.373028]  i2c_smbus mei processor_thermal_mbox thunderbolt idma64 ige=
n6_edac intel_soc_dts_iosf thinkpad_acpi platform_profile snd soundcore int=
3403_thermal soc_button_array int340x_thermal_zone intel_pmc_core pmt_telem=
etry int3400_thermal pmt_class intel_hid intel_pmc_ssram_telemetry acpi_tad=
 acpi_pad acpi_thermal_rel sparse_keymap joydev loop nfnetlink zram lz4hc_c=
ompress lz4_compress btusb btrtl btintel btbcm btmtk bluetooth rfkill xe dr=
m_ttm_helper drm_suballoc_helper gpu_sched drm_gpuvm drm_exec drm_gpusvm i9=
15 i2c_algo_bit nvme drm_buddy hid_multitouch ttm nvme_core drm_display_hel=
per polyval_clmulni ghash_clmulni_intel video sha512_ssse3 nvme_keyring sha=
1_ssse3 nvme_auth intel_vsec cec i2c_hid_acpi i2c_hid ucsi_acpi typec_ucsi =
typec wmi pinctrl_tigerlake serio_raw fuse
[31782.373074] CPU: 5 UID: 0 PID: 0 Comm: swapper/5 Tainted: G     U       =
       6.15.0 #422 PREEMPT(lazy)=20
[31782.373077] Tainted: [U]=3DUSER
[31782.373078] Hardware name: LENOVO 20XWCTO1WW/20XWCTO1WW, BIOS N32ET96W (=
1.72 ) 03/04/2025
[31782.373080] RIP: 0010:fwtable_read32+0x1cf/0x2a0 [i915]
[31782.373185] Code: 4c 89 ff e8 53 c9 ff ff eb 92 80 3d e6 da ee ff 00 0f =
85 83 fe ff ff 48 c7 c7 2c e5 e9 c0 c6 05 d2 da ee ff 01 e8 31 5c 9a ec <0f=
> 0b e9 69 fe ff ff 80 3d be da ee ff 00 0f 85 65 fe ff ff 48 c7
[31782.373187] RSP: 0018:ffffcdd70027cee8 EFLAGS: 00010046
[31782.373189] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000=
00027
[31782.373191] RDX: ffff8c974f69ce88 RSI: 0000000000000001 RDI: ffff8c974f6=
9ce80
[31782.373192] RBP: 00000000000444f8 R08: 0000000000000000 R09: ffffcdd7002=
7cd90
[31782.373194] R10: ffffffffaf1374c8 R11: 00000000ffffdfff R12: 00000000000=
00000
[31782.373195] R13: 0000000000000086 R14: 0000000000000001 R15: ffff8c9410b=
71be8
[31782.373196] FS:  0000000000000000(0000) GS:ffff8c979f72f000(0000) knlGS:=
0000000000000000
[31782.373198] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[31782.373200] CR2: 00007f0233e51ba8 CR3: 000000010274e003 CR4: 0000000000f=
70ef0
[31782.373201] PKRU: 55555554
[31782.373203] Call Trace:
[31782.373206]  <IRQ>
[31782.373209]  gen11_gu_misc_irq_ack+0x4d/0xb0 [i915]
[31782.373351]  gen11_irq_handler+0x7a/0xd0 [i915]
[31782.373421]  __handle_irq_event_percpu+0x47/0x1b0
[31782.373425]  handle_irq_event+0x38/0x80
[31782.373427]  handle_edge_irq+0x8d/0x1c0
[31782.373429]  __common_interrupt+0x50/0xf0
[31782.373433]  common_interrupt+0x80/0xa0
[31782.373435]  </IRQ>
[31782.373436]  <TASK>
[31782.373437]  asm_common_interrupt+0x26/0x40
[31782.373439] RIP: 0010:cpuidle_enter_state+0xcc/0x660
[31782.373442] Code: 00 00 e8 e7 57 f8 fe e8 32 f0 ff ff 49 89 c4 0f 1f 44 =
00 00 31 ff e8 13 e3 f6 fe 45 84 ff 0f 85 02 02 00 00 fb 0f 1f 44 00 00 <85=
> ed 0f 88 d3 01 00 00 4c 63 f5 49 83 fe 0a 0f 83 9f 04 00 00 49
[31782.373443] RSP: 0018:ffffcdd70015fe50 EFLAGS: 00000246
[31782.373444] RAX: ffff8c979f72f000 RBX: ffff8c974f6c1100 RCX: 00000000000=
00000
[31782.373445] RDX: 00001ce7e909a68b RSI: 0000000034e8f93a RDI: 00000000000=
00000
[31782.373446] RBP: 0000000000000001 R08: fffffffcefd871d4 R09: ffff8c974f6=
acae0
[31782.373447] R10: 00001ceafcd72d46 R11: 0000000000000000 R12: 00001ce7e90=
9a68b
[31782.373448] R13: ffffffffaf307de0 R14: 0000000000000001 R15: 00000000000=
00000
[31782.373451]  cpuidle_enter+0x31/0x50
[31782.373455]  cpuidle_idle_call+0xf5/0x160
[31782.373457]  do_idle+0x78/0xd0
[31782.373458]  cpu_startup_entry+0x29/0x30
[31782.373459]  start_secondary+0x126/0x170
[31782.373462]  common_startup_64+0x13e/0x141
[31782.373466]  </TASK>
[31782.373467] ---[ end trace 0000000000000000 ]---
[31782.373468] ------------[ cut here ]------------
[31782.373469] RPM wakelock ref not held during HW access
[31782.373492] WARNING: CPU: 5 PID: 0 at drivers/gpu/drm/i915/intel_runtime=
_pm.h:124 fwtable_read32+0x1f6/0x2a0 [i915]
[31782.373578] Modules linked in: uinput rfcomm snd_seq_dummy snd_hrtimer x=
t_conntrack xt_MASQUERADE bridge stp llc xt_set xt_addrtype nls_utf8 cifs c=
ifs_arc4 nls_ucs2_utils cifs_md4 dns_resolver netfs overlay xt_comment nft_=
compat nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet nft_fib_=
ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_reject_ipv6 nft=
_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_i=
pv4 ip_set nf_tables qrtr bnep sunrpc binfmt_misc snd_soc_skl_hda_dsp snd_s=
oc_intel_sof_board_helpers snd_sof_probes snd_soc_intel_hda_dsp_common snd_=
soc_dmic snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_compone=
nt snd_sof_pci_intel_tgl snd_sof_pci_intel_cnl snd_sof_intel_hda_generic so=
undwire_intel snd_sof_intel_hda_sdw_bpt snd_sof_intel_hda_common snd_soc_hd=
ac_hda snd_sof_intel_hda_mlink snd_sof_intel_hda snd_hda_codec_hdmi soundwi=
re_cadence snd_sof_pci snd_sof_xtensa_dsp iwlmvm snd_sof snd_sof_utils snd_=
soc_acpi_intel_match snd_soc_acpi_intel_sdca_quirks
[31782.373605]  soundwire_generic_allocation mac80211 snd_soc_acpi crc8 sou=
ndwire_bus snd_soc_sdca snd_soc_avs snd_soc_hda_codec libarc4 snd_hda_ext_c=
ore snd_soc_core snd_compress ac97_bus snd_pcm_dmaengine snd_hda_intel snd_=
intel_dspcfg snd_intel_sdw_acpi snd_hda_codec intel_uncore_frequency intel_=
uncore_frequency_common intel_tcc_cooling snd_hda_core uvcvideo x86_pkg_tem=
p_thermal intel_powerclamp snd_hwdep uvc spi_nor videobuf2_vmalloc processo=
r_thermal_device_pci_legacy snd_seq videobuf2_memops processor_thermal_devi=
ce coretemp processor_thermal_wt_hint iTCO_wdt videobuf2_v4l2 snd_seq_devic=
e mtd platform_temperature_control mei_hdcp videobuf2_common processor_ther=
mal_rfim mei_pxp intel_rapl_msr intel_pmc_bxt snd_pcm rapl iwlwifi think_lm=
i videodev processor_thermal_rapl iTCO_vendor_support vfat intel_rapl_commo=
n intel_cstate fat intel_uncore pcspkr firmware_attributes_class mc process=
or_thermal_wt_req spi_intel_pci snd_ctl_led wmi_bmof mei_me i2c_i801 snd_ti=
mer processor_thermal_power_floor spi_intel cfg80211
[31782.373632]  i2c_smbus mei processor_thermal_mbox thunderbolt idma64 ige=
n6_edac intel_soc_dts_iosf thinkpad_acpi platform_profile snd soundcore int=
3403_thermal soc_button_array int340x_thermal_zone intel_pmc_core pmt_telem=
etry int3400_thermal pmt_class intel_hid intel_pmc_ssram_telemetry acpi_tad=
 acpi_pad acpi_thermal_rel sparse_keymap joydev loop nfnetlink zram lz4hc_c=
ompress lz4_compress btusb btrtl btintel btbcm btmtk bluetooth rfkill xe dr=
m_ttm_helper drm_suballoc_helper gpu_sched drm_gpuvm drm_exec drm_gpusvm i9=
15 i2c_algo_bit nvme drm_buddy hid_multitouch ttm nvme_core drm_display_hel=
per polyval_clmulni ghash_clmulni_intel video sha512_ssse3 nvme_keyring sha=
1_ssse3 nvme_auth intel_vsec cec i2c_hid_acpi i2c_hid ucsi_acpi typec_ucsi =
typec wmi pinctrl_tigerlake serio_raw fuse
[31782.373660] CPU: 5 UID: 0 PID: 0 Comm: swapper/5 Tainted: G     U  W    =
       6.15.0 #422 PREEMPT(lazy)=20
[31782.373662] Tainted: [U]=3DUSER, [W]=3DWARN
[31782.373663] Hardware name: LENOVO 20XWCTO1WW/20XWCTO1WW, BIOS N32ET96W (=
1.72 ) 03/04/2025
[31782.373663] RIP: 0010:fwtable_read32+0x1f6/0x2a0 [i915]
[31782.373735] Code: 5c 9a ec 0f 0b e9 69 fe ff ff 80 3d be da ee ff 00 0f =
85 65 fe ff ff 48 c7 c7 90 95 e5 c0 c6 05 aa da ee ff 01 e8 0a 5c 9a ec <0f=
> 0b e9 4b fe ff ff 49 8b bf 58 01 00 00 48 85 ff 0f 84 5f fe ff
[31782.373736] RSP: 0018:ffffcdd70027cee8 EFLAGS: 00010046
[31782.373737] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000=
00027
[31782.373738] RDX: ffff8c974f69ce88 RSI: 0000000000000001 RDI: ffff8c974f6=
9ce80
[31782.373739] RBP: 00000000000444f8 R08: 0000000000000000 R09: ffffcdd7002=
7cd90
[31782.373739] R10: ffffffffaf1374c8 R11: 00000000ffffdfff R12: 00000000000=
00000
[31782.373740] R13: 0000000000000086 R14: 0000000000000001 R15: ffff8c9410b=
71be8
[31782.373741] FS:  0000000000000000(0000) GS:ffff8c979f72f000(0000) knlGS:=
0000000000000000
[31782.373742] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[31782.373743] CR2: 00007f0233e51ba8 CR3: 000000010274e003 CR4: 0000000000f=
70ef0
[31782.373744] PKRU: 55555554
[31782.373745] Call Trace:
[31782.373746]  <IRQ>
[31782.373747]  gen11_gu_misc_irq_ack+0x4d/0xb0 [i915]
[31782.373864]  gen11_irq_handler+0x7a/0xd0 [i915]
[31782.373931]  __handle_irq_event_percpu+0x47/0x1b0
[31782.373933]  handle_irq_event+0x38/0x80
[31782.373935]  handle_edge_irq+0x8d/0x1c0
[31782.373937]  __common_interrupt+0x50/0xf0
[31782.373939]  common_interrupt+0x80/0xa0
[31782.373941]  </IRQ>
[31782.373941]  <TASK>
[31782.373942]  asm_common_interrupt+0x26/0x40
[31782.373943] RIP: 0010:cpuidle_enter_state+0xcc/0x660
[31782.373945] Code: 00 00 e8 e7 57 f8 fe e8 32 f0 ff ff 49 89 c4 0f 1f 44 =
00 00 31 ff e8 13 e3 f6 fe 45 84 ff 0f 85 02 02 00 00 fb 0f 1f 44 00 00 <85=
> ed 0f 88 d3 01 00 00 4c 63 f5 49 83 fe 0a 0f 83 9f 04 00 00 49
[31782.373946] RSP: 0018:ffffcdd70015fe50 EFLAGS: 00000246
[31782.373948] RAX: ffff8c979f72f000 RBX: ffff8c974f6c1100 RCX: 00000000000=
00000
[31782.373948] RDX: 00001ce7e909a68b RSI: 0000000034e8f93a RDI: 00000000000=
00000
[31782.373949] RBP: 0000000000000001 R08: fffffffcefd871d4 R09: ffff8c974f6=
acae0
[31782.373950] R10: 00001ceafcd72d46 R11: 0000000000000000 R12: 00001ce7e90=
9a68b
[31782.373951] R13: ffffffffaf307de0 R14: 0000000000000001 R15: 00000000000=
00000
[31782.373953]  cpuidle_enter+0x31/0x50
[31782.373955]  cpuidle_idle_call+0xf5/0x160
[31782.373957]  do_idle+0x78/0xd0
[31782.373958]  cpu_startup_entry+0x29/0x30
[31782.373959]  start_secondary+0x126/0x170
[31782.373962]  common_startup_64+0x13e/0x141
[31782.373965]  </TASK>
[31782.373966] ---[ end trace 0000000000000000 ]---
[31783.108970] usb 3-5: new full-speed USB device number 9 using xhci_hcd
[31783.497815] usb 3-5: New USB device found, idVendor=3D1050, idProduct=3D=
0406, bcdDevice=3D 5.27
[31783.497822] usb 3-5: New USB device strings: Mfr=3D1, Product=3D2, Seria=
lNumber=3D0
[31783.497824] usb 3-5: Product: YubiKey FIDO+CCID
[31783.497826] usb 3-5: Manufacturer: Yubico
[31783.501369]

--=20
VG
Damian Tometzki
