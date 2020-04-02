Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C7B19CC83
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 23:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DC36EADE;
	Thu,  2 Apr 2020 21:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D12696E17D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 21:44:11 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 6B1E21C3184; Thu,  2 Apr 2020 23:35:08 +0200 (CEST)
Date: Thu, 2 Apr 2020 23:35:07 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200402213506.GA2767@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
MIME-Version: 1.0
In-Reply-To: <20200402213253.GA2691@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] 5.6-rc7: Xorg hangs, too
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
Content-Type: multipart/mixed; boundary="===============1187592890=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1187592890==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Hardware is thinkpad x220. I had this crash few days ago. And today I
> have similar-looking one, with slightly newer kernel. (Will post as a fol=
low-up).
>=20

And with 5.6-rc7, situation is similar :-(. And yes, chromium is
pushing me out of memory and no, maybe the first warning is not
related?

Best regards,
								Pavel

[225585.613231] printk: Suspending console(s) (use no_console_suspend to de=
bug)
[225585.805138] sd 2:0:0:0: [sdb] Synchronizing SCSI cache
[225585.805189] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[225585.805586] sd 0:0:0:0: [sda] Stopping disk
[225585.806490] sd 2:0:0:0: [sdb] Stopping disk
[225585.878345] wlp3s0: deauthenticating from 5c:f4:ab:10:d2:bb by local ch=
oice (Reason: 3=3DDEAUTH_LEAVING)
[225585.881610] e1000e: EEE TX LPI TIMER: 00000011
[225586.405265] PM: suspend devices took 0.792 seconds
[225586.428998] ------------[ cut here ]------------
[225586.429006] i915 raw-wakerefs=3D1 wakelocks=3D1 on cleanup
[225586.429048] WARNING: CPU: 0 PID: 17347 at drivers/gpu/drm/i915/intel_ru=
ntime_pm.c:602 intel_runtime_pm_driver_release+0x1f/0x30
[225586.429052] Modules linked in:
[225586.429063] CPU: 0 PID: 17347 Comm: kworker/u16:12 Not tainted 5.6.0-rc=
7+ #84
[225586.429068] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[225586.429079] Workqueue: events_unbound async_run_entry_fn
[225586.429091] RIP: 0010:intel_runtime_pm_driver_release+0x1f/0x30
[225586.429099] Code: 0b eb c7 0f 1f 84 00 00 00 00 00 8b 37 85 f6 75 01 c3=
 55 89 f2 48 c7 c7 88 75 67 85 0f b7 f6 48 89 e5 c1 fa 10 e8 3b 57 a1 ff <0=
f> 0b 5d c3 66 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 8b 87 c0 52
[225586.429104] RSP: 0018:ffffc9000d98bd18 EFLAGS: 00010286
[225586.429111] RAX: 0000000000000000 RBX: ffff888197270000 RCX: 0000000000=
000001
[225586.429115] RDX: 0000000080000001 RSI: 00000000c2cace46 RDI: 00000000ff=
ffffff
[225586.429120] RBP: ffffc9000d98bd18 R08: ffff88807b4fc8c8 R09: 00000000ff=
fffffe
[225586.429125] R10: 00000000ff456b9c R11: 0000000081cebad8 R12: ffff888197=
743000
[225586.429129] R13: 0000000000000000 R14: ffff88819727b0c0 R15: ffff88818b=
e86fa8
[225586.429135] FS:  0000000000000000(0000) GS:ffff88819e200000(0000) knlGS=
:0000000000000000
[225586.429140] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[225586.429145] CR2: 000055a3c9ef7a26 CR3: 000000000581e002 CR4: 0000000000=
0606b0
[225586.429149] Call Trace:
[225586.429164]  i915_drm_suspend_late+0x124/0x140
[225586.429175]  ? pci_pm_poweroff_late+0x40/0x40
[225586.429183]  i915_pm_suspend_late+0x18/0x20
[225586.429194]  pm_generic_suspend_late+0x26/0x30
[225586.429200]  pci_pm_suspend_late+0x2c/0x40
[225586.429207]  dpm_run_callback+0x41/0xa0
[225586.429213]  __device_suspend_late+0xb8/0x140
[225586.429220]  async_suspend_late+0x1a/0x90
[225586.429228]  async_run_entry_fn+0x39/0x170
[225586.429239]  process_one_work+0x21d/0x3e0
[225586.429247]  ? process_one_work+0x1b3/0x3e0
[225586.429257]  worker_thread+0x32/0x3a0
[225586.429265]  kthread+0x116/0x130
[225586.429274]  ? process_one_work+0x3e0/0x3e0
[225586.429281]  ? kthread_create_worker_on_cpu+0x60/0x60
[225586.429289]  ret_from_fork+0x35/0x40
[225586.429297] ---[ end trace d726f89c8d1f8872 ]---
[225586.434828] ACPI: EC: interrupt blocked
[225586.473507] ACPI: Preparing to enter system sleep state S3
[225586.485318] ACPI: EC: event blocked
[225586.485325] ACPI: EC: EC stopped
[225586.485332] PM: Saving platform NVS memory
[225586.485362] Disabling non-boot CPUs ...
[225586.488354] smpboot: CPU 1 is now offline
[225586.497007] smpboot: CPU 2 is now offline
[225586.499967] smpboot: CPU 3 is now offline
[225586.502395] ACPI: Low-level resume complete
[225586.502457] ACPI: EC: EC started
[225586.502459] PM: Restoring platform NVS memory
[225586.502802] Enabling non-boot CPUs ...
[225586.504008] x86: Booting SMP configuration:
[225586.504010] smpboot: Booting Node 0 Processor 1 APIC 0x1
[225586.504302] Disabled fast string operations
[225586.507361] CPU1 is up
[225586.508612] smpboot: Booting Node 0 Processor 2 APIC 0x2
[225586.508859] Disabled fast string operations
[225586.512425] CPU2 is up
[225586.515564] smpboot: Booting Node 0 Processor 3 APIC 0x3
[225586.516201] Disabled fast string operations
[225586.519880] CPU3 is up
[225586.526682] ACPI: Waking up from system sleep state S3
[225586.547671] ACPI: EC: interrupt unblocked
[225586.566794] sdhci-pci 0000:0d:00.0: MMC controller base frequency chang=
ed to 50Mhz.
[225586.592066] ACPI: EC: event unblocked
[225586.605691] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225586.624891] sd 0:0:0:0: [sda] Starting disk
[225586.624952] sd 2:0:0:0: [sdb] Starting disk
[225586.785832] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225586.838242] usb 1-1.3: reset full-speed USB device number 3 using ehci-=
pci
[225586.954320] ata3: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[225586.958320] ata2: SATA link down (SStatus 0 SControl 300)
[225586.960480] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[225586.960491] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[225586.960498] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[225586.962263] ata5: SATA link down (SStatus 0 SControl 300)
[225586.972346] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[225586.972356] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[225586.972363] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[225586.979034] ata3.00: configured for UDMA/133
[225587.026437] usb 1-1.4: reset full-speed USB device number 4 using ehci-=
pci
[225587.214393] usb 1-1.6: reset high-speed USB device number 5 using ehci-=
pci
[225587.706885] psmouse serio1: synaptics: queried max coordinates: x [..54=
72], y [..4448]
[225588.638313] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[225588.640002] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[225588.640012] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[225588.640018] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[225588.642477] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[225588.642488] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[225588.642494] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[225588.643615] ata1.00: configured for UDMA/133
[225588.682260] PM: resume devices took 2.096 seconds
[225588.683658] OOM killer enabled.
[225588.683678] Restarting tasks ... done.
[225588.702754] PM: suspend exit
[225589.127254] e1000e 0000:00:19.0 enp0s25: NIC Link is Down
[225589.349662] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225589.509631] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225589.677717] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225589.841772] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225590.557801] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225590.721754] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[225591.325143] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
[225591.328780] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
[225591.331198] wlp3s0: authenticated
[225591.334446] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
[225591.338435] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=3D0x411 =
status=3D0 aid=3D1)
[225591.342124] wlp3s0: associated
[225828.987186] i915 0000:00:02.0: VGA-1: EDID is invalid:
[225828.987200] 	[00] BAD  00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff
[225828.987207] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987213] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987219] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987225] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987231] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987237] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987243] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[225828.987962] i2c i2c-1: sendbytes: NAK bailout.
[226072.519920] i2c i2c-1: sendbytes: NAK bailout.
[226504.979711] chromium invoked oom-killer: gfp_mask=3D0x100cca(GFP_HIGHUS=
ER_MOVABLE), order=3D0, oom_score_adj=3D300
[226504.979721] CPU: 2 PID: 17343 Comm: chromium Tainted: G        W       =
  5.6.0-rc7+ #84
[226504.979725] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[226504.979729] Call Trace:
[226504.979739]  dump_stack+0x59/0x7a
[226504.979746]  dump_header+0x52/0x370
[226504.979752]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
[226504.979757]  oom_kill_process.cold.34+0xb/0x10e
[226504.979762]  out_of_memory+0x224/0x420
[226504.979768]  __alloc_pages_slowpath+0x91e/0xb20
[226504.979773]  __alloc_pages_nodemask+0x1b3/0x1e0
[226504.979778]  pagecache_get_page+0xb8/0x220
[226504.979783]  filemap_fault+0x571/0x910
[226504.979789]  ? __lock_acquire.isra.33+0x297/0x550
[226504.979795]  ? ext4_filemap_fault+0x24/0x3f
[226504.979800]  ext4_filemap_fault+0x2c/0x3f
[226504.979806]  __do_fault+0x39/0x90
[226504.979811]  __handle_mm_fault+0x730/0xb70
[226504.979816]  handle_mm_fault+0x51/0xc0
[226504.979821]  do_page_fault+0x21e/0x458
[226504.979826]  page_fault+0x2c/0x40
[226504.979831] RIP: 0033:0x56358b7b8820
[226504.979838] Code: Bad RIP value.
[226504.979842] RSP: 002b:00007ffec578e1a8 EFLAGS: 00010206
[226504.979847] RAX: 0000000000000000 RBX: 0000000000000006 RCX: 0000000000=
000000
[226504.979850] RDX: 0000563591235b60 RSI: 0000563591235b48 RDI: 000000e000=
000000
[226504.979854] RBP: 00007ffec578e2b0 R08: 00007ffec578e580 R09: 0000563591=
1be590
[226504.979858] R10: 0000000000000000 R11: 000000e000000000 R12: 0000563591=
235bb8
[226504.979861] R13: 000000e000000000 R14: 0000563591235bc0 R15: 0000563591=
235b48
[226504.984769] Mem-Info:
[226504.984781] active_anon:1193273 inactive_anon:189891 isolated_anon:0
                 active_file:521 inactive_file:713 isolated_file:15
                 unevictable:3656 dirty:1 writeback:0 unstable:0
                 slab_reclaimable:15692 slab_unreclaimable:30888
                 mapped:67999 shmem:186378 pagetables:24327 bounce:0
                 free:15701 free_pcp:109 free_cma:0
[226504.984788] Node 0 active_anon:4773092kB inactive_anon:759564kB active_=
file:2084kB inactive_file:2852kB unevictable:14624kB isolated(anon):0kB iso=
lated(file):60kB mapped:271996kB dirty:4kB writeback:0kB shmem:745512kB wri=
teback_tmp:0kB unstable:0kB all_unreclaimable? no
[226504.984795] DMA free:15360kB min:24kB low:36kB high:48kB reserved_higha=
tomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0=
kB unevictable:0kB writepending:0kB present:15984kB managed:15360kB mlocked=
:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB =
free_cma:0kB
[226504.984798] lowmem_reserve[]: 0 3381 5815 5815
[226504.984808] DMA32 free:36772kB min:24540kB low:28000kB high:31460kB res=
erved_highatomic:4096KB active_anon:2680384kB inactive_anon:594092kB active=
_file:2160kB inactive_file:2156kB unevictable:68kB writepending:4kB present=
:3561088kB managed:3466340kB mlocked:68kB kernel_stack:7480kB pagetables:40=
672kB bounce:0kB free_pcp:320kB local_pcp:88kB free_cma:0kB
[226504.984812] lowmem_reserve[]: 0 0 2433 2433
[226504.984821] Normal free:10672kB min:17664kB low:20156kB high:22648kB re=
served_highatomic:4096KB active_anon:2092708kB inactive_anon:165472kB activ=
e_file:1708kB inactive_file:1084kB unevictable:14556kB writepending:0kB pre=
sent:2594816kB managed:2492040kB mlocked:212kB kernel_stack:13768kB pagetab=
les:56636kB bounce:0kB free_pcp:116kB local_pcp:12kB free_cma:0kB
[226504.984824] lowmem_reserve[]: 0 0 0 0
[226504.984830] DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB 0*256kB 0*512=
kB 1*1024kB (U) 1*2048kB (U) 3*4096kB (M) =3D 15360kB
[226504.984843] DMA32: 802*4kB (UME) 226*8kB (UME) 865*16kB (UE) 334*32kB (=
UE) 52*64kB (UE) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 1*4096kB (H) =3D=
 36968kB
[226504.984857] Normal: 1958*4kB (UMEH) 385*8kB (UMEH) 43*16kB (UEH) 10*32k=
B (UEH) 0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 11920=
kB
[226504.984874] 194267 total pagecache pages
[226504.984879] 6588 pages in swap cache
[226504.984884] Swap cache stats: add 2381517, delete 2374882, find 2069619=
/2390399
[226504.984887] Free swap  =3D 0kB
[226504.984890] Total swap =3D 1681428kB
[226504.984894] 1542972 pages RAM
[226504.984897] 0 pages HighMem/MovableOnly
[226504.984900] 49537 pages reserved
[226504.984904] Tasks state (memory values in pages):
[226504.984907] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swap=
ents oom_score_adj name
[226504.984919] [   1743]     0  1743    21862     5629   278528      229  =
           0 systemd-journal
[226504.984926] [   1814]     0  1814     1923        2    49152       60  =
           0 blkmapd
[226504.984933] [   2709]     0  2709     5224      116    65536      307  =
       -1000 systemd-udevd
[226504.984941] [   2886]     0  2886     2271        8    49152       38  =
           0 rpc.idmapd
[226504.984948] [   2901]   116  2901     1707        5    49152      111  =
           0 rpcbind
[226504.984956] [   2904]   101  2904    23809       29    90112      210  =
           0 systemd-timesyn
[226504.984962] [   2910]     0  2910     2022        0    49152      783  =
           0 haveged
[226504.984970] [   2942]     0  2942     2527       64    53248      302  =
           0 smartd
[226504.984976] [   2943]   112  2943     2001       63    49152       42  =
           0 avahi-daemon
[226504.984982] [   2944]     0  2944     7856      135    90112       80  =
           0 alsactl
[226504.984988] [   2948]   112  2948     1969        7    49152       68  =
           0 avahi-daemon
[226504.984994] [   2950]     0  2950   137377      585   155648      648  =
           0 udisksd
[226504.985000] [   2955]   104  2955     2422      305    57344       72  =
        -900 dbus-daemon
[226504.985006] [   2956]     0  2956   170256      502   180224      304  =
           0 NetworkManager
[226504.985011] [   2958]     0  2958     5039      164    77824      115  =
           0 wpa_supplicant
[226504.985018] [   2959]     0  2959    56457      260    98304      203  =
           0 rsyslogd
[226504.985024] [   2960]     0  2960    61197      263   106496      179  =
           0 ModemManager
[226504.985030] [   2963]     0  2963     3373       73    57344       63  =
           0 bluetoothd
[226504.985036] [   2965]     0  2965     4914      115    69632      185  =
           0 systemd-logind
[226504.985041] [   2967]     0  2967    60655      301   102400      107  =
           0 accounts-daemon
[226504.985049] [   3024]     0  3024    60235      429   102400      198  =
           0 polkitd
[226504.985055] [   3038]     0  3038     3964       39    65536      175  =
       -1000 sshd
[226504.985062] [   3052]     0  3052     7941        1    98304     6278  =
           0 rpc.mountd
[226504.985069] [   3111]     0  3111     2127       25    57344       41  =
           0 cron
[226504.985074] [   3116]     0  3116    60838      211   106496      161  =
           0 lightdm
[226504.985081] [   3123]     0  3123   178917    33699   741376    12375  =
           0 Xorg
[226504.985089] [   3124]     0  3124     1404        0    45056       32  =
           0 agetty
[226504.985095] [   3145]     0  3145     1861       14    53248       52  =
           0 inetd
[226504.985102] [   3449]     0  3449    41653       96    86016      189  =
           0 lightdm
[226504.985109] [   3481]  1000  3481     5374      146    73728      282  =
           0 systemd
[226504.985116] [   3484]  1000  3484     5800       39    73728      597  =
           0 (sd-pam)
[226504.985122] [   3497]  1000  3497   115629      344   122880      190  =
           0 gnome-keyring-d
[226504.985247] [   3501]  1000  3501    71234      530   188416      712  =
           0 x-session-manag
[226504.985254] [   3510]  1000  3510     2341      242    53248       52  =
           0 dbus-daemon
[226504.985261] [   3555]  1000  3555     1464       10    40960      109  =
           0 ssh-agent
[226504.985267] [   3572]  1000  3572    79324      705   106496      368  =
           0 ibus-daemon
[226504.985274] [   3573]  1000  3573    79177        0   102400      246  =
           0 at-spi-bus-laun
[226504.985282] [   3576]  1000  3576    60048      130    94208      125  =
           0 gvfsd
[226504.985288] [   3585]  1000  3585    60151        0   102400      241  =
           0 ibus-dconf
[226504.985295] [   3586]  1000  3586    72730      855   192512     1401  =
           0 ibus-ui-gtk3
[226504.985302] [   3587]  1000  3587    71126      580   184320     1615  =
           0 ibus-extension-
[226504.985309] [   3589]  1000  3589    51661      462   172032      719  =
           0 ibus-x11
[226504.985315] [   3591]  1000  3591    60167      149    98304      136  =
           0 ibus-portal
[226504.985322] [   3601]  1000  3601     2205      104    53248       56  =
           0 dbus-daemon
[226504.985328] [   3604]  1000  3604    43536      119   102400      114  =
           0 at-spi2-registr
[226504.985335] [   3617]  1000  3617    40020      301    69632       64  =
           0 dconf-service
[226504.985341] [   3621]  1000  3621    41717      167    94208      122  =
           0 ibus-engine-sim
[226504.985348] [   3631]  1000  3631   342502     1979   339968     1205  =
           0 mate-settings-d
[226504.985354] [   3635]  1000  3635   166990     5630   352256     1086  =
           0 marco
[226504.985361] [   3640]  1000  3640   490173     2665   409600      777  =
           0 pulseaudio
[226504.985368] [   3653]  1000  3653   177762     4343   315392     2011  =
           0 mate-panel
[226504.985374] [   3654]   109  3654    38163        0    61440       65  =
           0 rtkit-daemon
[226504.985380] [   3676]  1000  3676   174177     1071   339968     2029  =
           0 caja
[226504.985386] [   3682]  1000  3682   105451     2930   278528      959  =
           0 wnck-applet
[226504.985392] [   3683]  1000  3683   107033      372   147456      282  =
           0 gvfs-udisks2-vo
[226504.985400] [   3684]  1000  3684   131759      761   241664     1322  =
           0 mate-volume-con
[226504.985406] [   3692]  1000  3692    59402        0    86016      155  =
           0 agent
[226504.985413] [   3693]  1000  3693   104082     2070   266240     1201  =
           0 nm-applet
[226504.985419] [   3698]  1000  3698    93255     4380   233472      660  =
           0 mate-power-mana
[226504.985426] [   3704]  1000  3704    17872      460   176128     2191  =
           0 smart-notifier
[226504.985432] [   3706]  1000  3706    60207       39    98304      197  =
           0 gvfs-gphoto2-vo
[226504.985440] [   3707]  1000  3707   164184      484   393216     2327  =
           0 evolution-alarm
[226504.985446] [   3713]  1000  3713   100177     5352   278528     1078  =
           0 mate-screensave
[226504.985453] [   3718]  1000  3718    59554       38    98304      146  =
           0 gvfs-mtp-volume
[226504.985459] [   3720]  1000  3720    50404      264   159744      257  =
           0 polkit-mate-aut
[226504.985466] [   3727]  1000  3727    59097        0    90112      208  =
           0 gvfs-goa-volume
[226504.985473] [   3731]  1000  3731    79764        0   114688      306  =
           0 gvfs-afc-volume
[226504.985480] [   3744]     0  3744    64664      233   110592      146  =
           0 upowerd
[226504.985486] [   3781]  1000  3781    89718      594   200704     1177  =
           0 notification-ar
[226504.985492] [   3782]  1000  3782   120658     1315   253952      951  =
           0 mateweather-app
[226504.985498] [   3783]  1000  3783   102688     1499   258048     1013  =
           0 clock-applet
[226504.985505] [   3785]  1000  3785    81767      741   229376     1335  =
           0 mate-inhibit-ap
[226504.985511] [   3787]  1000  3787    91778     2385   204800     1018  =
           0 command-applet
[226504.985519] [   3793]  1000  3793   256367      509   307200      625  =
           0 evolution-sourc
[226504.985525] [   3825]  1000  3825    79439      172   110592      188  =
           0 gvfsd-trash
[226504.985532] [   3832]  1000  3832   233198      239   331776      983  =
           0 evolution-calen
[226504.985539] [   3844]  1000  3844   168623      201   245760      853  =
           0 evolution-addre
[226504.985546] [   4430]  1000  4430   209635     9122   421888     1861  =
           0 mate-terminal
[226504.985553] [   4438]  1000  4438     1749      140    49152        6  =
           0 bash
[226504.985560] [   4460]  1000  4460     4244      795    61440      118  =
           0 herdd.py
[226504.985566] [   4461]  1000  4461     1662       59    45056        0  =
           0 bash
[226504.985573] [   4462]  1000  4462    35989     1049   180224      136  =
           0 gkrellm
[226504.985579] [   4463]  1000  4463     1749      105    45056        5  =
           0 bash
[226504.985586] [   4464]  1000  4464     1749      145    45056        0  =
           0 bash
[226504.985593] [   4469]     0  4469     2491       96    57344        0  =
           0 sudo
[226504.985600] [   4470]  1000  4470    63543     1687   299008     3234  =
           0 emacs
[226504.985607] [   4472]  1000  4472     1749      143    49152        0  =
           0 bash
[226504.985613] [   4479]     0  4479     2385       92    49152        0  =
           0 su
[226504.985621] [   4484]     0  4484     1749      103    53248        0  =
           0 bash
[226504.985627] [   4501]  1000  4501     1695       44    49152       55  =
           0 monitor
[226504.985633] [   4561]  1000  4561     1749      135    49152       10  =
           0 bash
[226504.985640] [   8880]  1000  8880     1781       58    49152       98  =
           0 bash
[226504.985646] [   8912]  1000  8912     1464       49    49152       73  =
           0 ssh-agent
[226504.985653] [   8946]  1000  8946     1781       92    49152       62  =
           0 bash
[226504.985659] [   9849]  1000  9849     1817      151    53248       57  =
           0 bash
[226504.985666] [  12046]  1000 12046     1782       94    49152       63  =
           0 bash
[226504.985673] [  12064]  1000 12064     1782      104    53248       63  =
           0 bash
[226504.985680] [  13326]  1000 13326     1749       87    49152       62  =
           0 bash
[226504.985686] [  13400]  1000 13400     1774      102    49152       59  =
           0 bash
[226504.985693] [  27250]  1000 27250   927524   195927  4595712    91116  =
           0 chromium
[226504.985699] [  27267]  1000 27267    97555      404   634880     2597  =
           0 chromium
[226504.985706] [  27293]  1000 27293   372826    95984  1929216    10506  =
         200 chromium
[226504.985712] [  27297]  1000 27297   463715    27255   983040     3995  =
         200 chromium
[226504.985719] [  27352]  1000 27352  1386285     6688  1175552     5109  =
         300 chromium
[226504.985725] [  27450]  1000 27450  1393419    13730  1359872     2739  =
         300 chromium
[226504.985731] [  27575]  1000 27575  1407326    21158  1982464    13849  =
         300 chromium
[226504.985737] [  27680]  1000 27680  1442430     9896  1171456     2156  =
         300 chromium
[226504.985744] [  27718]  1000 27718  1375046     3307   929792     3530  =
         300 chromium
[226504.985750] [  27740]  1000 27740  1450457     3708  1503232    15340  =
         300 chromium
[226504.985757] [  27755]  1000 27755  1373964      978   884736     3638  =
         300 chromium
[226504.985763] [  27768]  1000 27768  1382963     9819  1146880     3798  =
         300 chromium
[226504.985770] [  27789]  1000 27789  1379963     1306  1036288     7944  =
         300 chromium
[226504.985777] [  27803]  1000 27803  1377158     1004  1024000     6539  =
         300 chromium
[226504.985784] [  27997]  1000 27997  1386730     9694  1200128     2612  =
         300 chromium
[226504.985790] [  28334]  1000 28334  1471386    39802  1957888     2593  =
         300 chromium
[226504.985796] [  29094]  1000 29094  1387925     5047  1282048    12566  =
         300 chromium
[226504.985803] [   6918]  1000  6918  1399995     6331  1589248    19370  =
         300 chromium
[226504.985810] [   6969]  1000  6969  1376628     1132  1036288     6007  =
         300 chromium
[226504.985816] [   6990]  1000  6990  1354023      904   839680     3151  =
         300 chromium
[226504.985822] [   7003]  1000  7003  1381127     2368  1064960     6840  =
         300 chromium
[226504.985830] [   7312]  1000  7312     1778      116    45056       58  =
           0 bash
[226504.985837] [   8367]  1000  8367  1456188    36591  2060288     2980  =
         300 chromium
[226504.985843] [   9492]  1000  9492  1382634     7496  1171456     2444  =
         300 chromium
[226504.985850] [  23127]  1000 23127     1749        3    49152      145  =
           0 bash
[226504.985856] [  23997]  1000 23997     1749       16    49152      133  =
           0 bash
[226504.985863] [  32288]  1000 32288    20242       68    53248        9  =
           0 gpg-agent
[226504.985870] [   2789]  1000  2789     1774       94    53248       66  =
           0 bash
[226504.985877] [   2892]  1000  2892    97953       69   114688      288  =
           0 gvfsd-network
[226504.985883] [   2926]  1000  2926    78818       20   106496      254  =
           0 gvfsd-dnssd
[226504.985890] [   4428]  1000  4428  1355512      934   876544     3578  =
         300 chromium
[226504.985897] [   5272]   118  5272     2444        3    61440       86  =
           0 gpsd
[226504.985904] [   5494]  1000  5494     1749       64    49152       83  =
           0 bash
[226504.985911] [   5508]  1000  5508     1749        1    49152      144  =
           0 bash
[226504.985918] [   5528]  1000  5528     1662        1    49152       60  =
           0 e
[226504.985925] [   5529]  1000  5529    61627        0   282624     3048  =
           0 emacs
[226504.985930] [   5660]  1000  5660     1749       81    53248       67  =
           0 bash
[226504.985936] [   5849]  1000  5849  1384991     9095  1167360     3942  =
         300 chromium
[226504.985942] [  12235]  1000 12235  1395105    12242  1495040     6659  =
         300 chromium
[226504.985947] [  16040]  1000 16040   750842      512   827392      302  =
           0 git
[226504.985953] [  16041]  1000 16041     1401       62    53248        0  =
           0 pager
[226504.985959] [  27409]  1000 27409     1749        1    45056      153  =
           0 bash
[226504.985965] [  27489]  1000 27489     1749       77    49152       76  =
           0 bash
[226504.985971] [  28256]     0 28256     2491        0    53248       96  =
           0 sudo
[226504.985977] [  28261]     0 28261     2380        0    49152      100  =
           0 su
[226504.985983] [  28266]     0 28266     1749        0    49152      145  =
           0 bash
[226504.985989] [  28579]  1000 28579  1383242     3252  1138688    10883  =
         300 chromium
[226504.985995] [  28850]  1000 28850     1749        0    45056      145  =
           0 bash
[226504.986001] [   8473]  1000  8473  1384150     4543  1245184     9772  =
         300 chromium
[226504.986007] [   8489]  1000  8489  1387212     2505  1228800     9357  =
         300 chromium
[226504.986013] [  22511]  1000 22511  1385576     8988  1191936     6046  =
         300 chromium
[226504.986019] [  22527]  1000 22527  1378158     3688  1024000     4405  =
         300 chromium
[226504.986025] [  31609]  1000 31609  1402952    10449  1228800     3153  =
         300 chromium
[226504.986032] [   7510]  1000  7510    43350      196    94208     1929  =
           0 dirmngr
[226504.986038] [   9644]  1000  9644  1385522    10930  1146880     5165  =
         300 chromium
[226504.986045] [   9660]  1000  9660  1379020     5212  1024000     3212  =
         300 chromium
[226504.986052] [   9876]  1000  9876  1394893    10877  1413120     7059  =
         300 chromium
[226504.986059] [   9909]  1000  9909  3580592    24025  2310144    17151  =
         300 chromium
[226504.986065] [   9939]  1000  9939  1354023     1227   835584     2778  =
         300 chromium
[226504.986072] [   9946]  1000  9946  1354029     1733   835584     2274  =
         300 chromium
[226504.986078] [   9964]  1000  9964  1353997     1464   835584     2543  =
         300 chromium
[226504.986085] [   9975]  1000  9975  1353999     1116   835584     2892  =
         300 chromium
[226504.986091] [   9988]  1000  9988  1353997     1026   839680     2996  =
         300 chromium
[226504.986098] [  10000]  1000 10000  1353999     1001   839680     3007  =
         300 chromium
[226504.986104] [  10007]  1000 10007  1354027     1530   835584     2477  =
         300 chromium
[226504.986111] [  10027]  1000 10027  1354028     1227   835584     2816  =
         300 chromium
[226504.986117] [  10033]  1000 10033  1354028     1141   839680     2867  =
         300 chromium
[226504.986125] [  10048]  1000 10048  1354028     1009   835584     2996  =
         300 chromium
[226504.986131] [  11141]  1000 11141  1379179     9079  1105920     2355  =
         300 chromium
[226504.986141] [  11164]  1000 11164  1381682    11930  1052672     2241  =
         300 chromium
[226504.986147] [  11184]  1000 11184  1438357    17380  1302528     2402  =
         300 chromium
[226504.986153] [  11208]  1000 11208  1374422     3067   913408     2319  =
         300 chromium
[226504.986159] [  11225]  1000 11225  1373756     2613   888832     2378  =
         300 chromium
[226504.986165] [  11238]  1000 11238  1374932     2824   892928     2303  =
         300 chromium
[226504.986171] [  24356]  1000 24356  1433210    10250  2240512     1936  =
         300 chromium
[226504.986177] [  26296]  1000 26296     1662        0    49152       61  =
           0 e
[226504.986184] [  26297]  1000 26297    64768     5609   303104      617  =
           0 emacs
[226504.986190] [   7075]  1000  7075  1474967    47737  1880064     2607  =
         300 chromium
[226504.986196] [  11902]  1000 11902  1489349    33448  2322432     1801  =
         300 chromium
[226504.986202] [  18522]  1000 18522   579024     3427   765952        0  =
         200 chromium
[226504.986207] [  19550]  1000 19550  1401606    14040  1183744     1942  =
         300 chromium
[226504.986215] [  19571]  1000 19571  1375373     4306   942080     2076  =
         300 chromium
[226504.986221] [  19590]  1000 19590  1374763     3320   905216     2082  =
         300 chromium
[226504.986227] [  24043]  1000 24043  1373540     2361   905216     2085  =
         300 chromium
[226504.986232] [  25469]  1000 25469  1458545    29332  1523712     1871  =
         300 chromium
[226504.986239] [  25487]  1000 25487  1384598     4852  1003520     2036  =
         300 chromium
[226504.986245] [  25522]  1000 25522  1373501     2435   888832     2080  =
         300 chromium
[226504.986252] [  25564]  1000 25564  1373511     2403   909312     2072  =
         300 chromium
[226504.986259] [  28128]  1000 28128     1779      151    45056        0  =
           0 bash
[226504.986265] [   7859]  1000  7859  1374795     3220   905216     2032  =
         300 chromium
[226504.986271] [  13674]  1000 13674  1375086     4875   921600     2008  =
         300 chromium
[226504.986277] [  13909]  1000 13909  1378716     8402   974848     2000  =
         300 chromium
[226504.986283] [  17343]  1000 17343  1383638    33252  1241088     1948  =
         300 chromium
[226504.986290] [  23333]  1000 23333     1779      164    49152        0  =
           0 bash
[226504.986296] [  10866]  1000 10866     1662       60    45056        0  =
           0 m
[226504.986302] [  10868]  1000 10868     3948      184    61440        0  =
           0 ssh
[226504.986308] [  16242]  1000 16242     1695       92    53248        0  =
           0 xa2
[226504.986314] [  17826]  1000 17826   783118      914   856064        0  =
           0 git
[226504.986321] [  17827]  1000 17827     1401       26    49152        0  =
           0 pager
[226504.986327] [  31707]  1000 31707  1452431    22565  1568768     1811  =
         300 chromium
[226504.986334] [  32369]  1000 32369  1472557    26834  1716224     1806  =
         300 chromium
[226504.986340] [   2386]  1000  2386  1439443    17511  1236992     1871  =
         300 chromium
[226504.986346] [   4073]  1000  4073  1406197    24344  1617920     1925  =
         300 chromium
[226504.986352] [   5050]  1000  5050  1377513     6092   978944     1988  =
         300 chromium
[226504.986359] [   9099]  1000  9099  1364980    10044   995328     1977  =
         300 chromium
[226504.986366] [  10487]  1000 10487     1662       61    49152        0  =
           0 e
[226504.986373] [  10488]  1000 10488    63701     5073   307200        0  =
           0 emacs
[226504.986380] [  11096]  1000 11096     1774      102    49152       59  =
           0 bash
[226504.986386] [  11097]  1000 11097    10088     1931   118784        0  =
           0 mutt
[226504.986393] [  13282]  1000 13282  1388560    10498  1413120     2002  =
         300 chromium
[226504.986400] [  20684]  1000 20684     1782       99    49152       58  =
           0 bash
[226504.986407] [  20685]  1000 20685    10700     2531   114688        0  =
           0 mutt
[226504.986413] [  21739]  1000 21739  1357456     4054   937984     1985  =
         300 chromium
[226504.986421] [  23448]  1000 23448      598       16    36864        0  =
           0 a
[226504.986427] [  23449]  1000 23449     4558      224    69632        0  =
           0 ssh
[226504.986434] [  24772]  1000 24772     1816      190    49152        0  =
           0 bash
[226504.986441] [   5203]  1000  5203  1380070     8835  1024000     1976  =
         300 chromium
[226504.986447] [   5926]     0  5926     4166      287    65536        0  =
           0 sshd
[226504.986454] [   5937]  1000  5937     4166      272    65536        0  =
           0 sshd
[226504.986460] [   5942]  1000  5942     1746      142    45056        0  =
           0 bash
[226504.986467] [   5970]     0  5970     4166      287    65536        0  =
           0 sshd
[226504.986474] [   5980]  1000  5980     4166      271    65536        0  =
           0 sshd
[226504.986480] [   5986]  1000  5986     1746      158    57344        0  =
           0 bash
[226504.986487] [  12900]  1000 12900     1662       69    53248        0  =
           0 e
[226504.986493] [  12901]  1000 12901    65667     7052   315392        0  =
           0 emacs
[226504.986500] [  14750]  1000 14750     1662       69    45056        0  =
           0 e
[226504.986507] [  14751]  1000 14751    61625     2990   274432        0  =
           0 emacs
[226504.986513] [  15083]  1000 15083  1375898     5263   970752     2074  =
         300 chromium
[226504.986520] [  17036]  1000 17036  1384174     8722  1093632     1954  =
         300 chromium
[226504.986526] [  17152]  1000 17152     1316       16    45056        0  =
           0 sleep
[226504.986533] [  17702]  1000 17702     1662       67    53248        0  =
           0 e
[226504.986539] [  17703]  1000 17703    61566     2964   274432        0  =
           0 emacs
[226504.986546] [  17884]     0 17884     4166      287    65536        0  =
           0 sshd
[226504.986552] [  17894]  1000 17894     4166      273    61440        0  =
           0 sshd
[226504.986559] [  17901]  1000 17901     1746      132    45056        0  =
           0 bash
[226504.986565] [  18194]  1000 18194     4580     1145    69632        0  =
           0 commit.py
[226504.986573] [  19102]  1000 19102      598       16    36864        0  =
           0 sh
[226504.986579] [  19103]  1000 19103   710121   171840  2600960        0  =
           0 git
[226504.986586] [  19426]  1000 19426     1316       16    49152        0  =
           0 sleep
[226504.986592] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D7075,uid=3D1000
[226504.986699] Out of memory: Killed process 7075 (chromium) total-vm:5899=
868kB, anon-rss:184572kB, file-rss:0kB, shmem-rss:6376kB, UID:1000 pgtables=
:1836kB oom_score_adj:300
[226505.021885] oom_reaper: reaped process 7075 (chromium), now anon-rss:0k=
B, file-rss:0kB, shmem-rss:5468kB
[227143.708767] PM: suspend entry (deep)
[227143.830296] Filesystems sync: 0.121 seconds
[227143.831505] Freezing user space processes ... (elapsed 0.012 seconds) d=
one.
[227143.843613] OOM killer disabled.
[227143.843617] Freezing remaining freezable tasks ... (elapsed 0.003 secon=
ds) done.
[227143.847541] printk: Suspending console(s) (use no_console_suspend to de=
bug)
[227144.051536] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[227144.051896] sd 0:0:0:0: [sda] Stopping disk
[227144.067339] sd 2:0:0:0: [sdb] Synchronizing SCSI cache
[227144.068737] sd 2:0:0:0: [sdb] Stopping disk
[227144.127397] wlp3s0: deauthenticating from 5c:f4:ab:10:d2:bb by local ch=
oice (Reason: 3=3DDEAUTH_LEAVING)
[227144.130800] e1000e: EEE TX LPI TIMER: 00000011
[227144.659405] PM: suspend devices took 0.812 seconds
[227144.683337] ------------[ cut here ]------------
[227144.683346] i915 raw-wakerefs=3D1 wakelocks=3D1 on cleanup
[227144.683389] WARNING: CPU: 2 PID: 19482 at drivers/gpu/drm/i915/intel_ru=
ntime_pm.c:602 intel_runtime_pm_driver_release+0x1f/0x30
[227144.683393] Modules linked in:
[227144.683404] CPU: 2 PID: 19482 Comm: kworker/u16:0 Tainted: G        W  =
       5.6.0-rc7+ #84
[227144.683409] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[227144.683421] Workqueue: events_unbound async_run_entry_fn
[227144.683432] RIP: 0010:intel_runtime_pm_driver_release+0x1f/0x30
[227144.683440] Code: 0b eb c7 0f 1f 84 00 00 00 00 00 8b 37 85 f6 75 01 c3=
 55 89 f2 48 c7 c7 88 75 67 85 0f b7 f6 48 89 e5 c1 fa 10 e8 3b 57 a1 ff <0=
f> 0b 5d c3 66 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 8b 87 c0 52
[227144.683446] RSP: 0018:ffffc900031afd18 EFLAGS: 00010286
[227144.683452] RAX: 0000000000000000 RBX: ffff888197270000 RCX: 0000000000=
000001
[227144.683457] RDX: 0000000080000001 RSI: 00000000c2cace46 RDI: 00000000ff=
ffffff
[227144.683462] RBP: ffffc900031afd18 R08: ffff888009493188 R09: 00000000ff=
fffffe
[227144.683466] R10: 00000000ff456b9c R11: 0000000081cebad8 R12: ffff888197=
743000
[227144.683471] R13: 0000000000000000 R14: ffff88819727b0c0 R15: ffff888197=
16e428
[227144.683477] FS:  0000000000000000(0000) GS:ffff88819e280000(0000) knlGS=
:0000000000000000
[227144.683482] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[227144.683487] CR2: 000036aeba6da000 CR3: 000000000581e005 CR4: 0000000000=
0606a0
[227144.683491] Call Trace:
[227144.683506]  i915_drm_suspend_late+0x124/0x140
[227144.683516]  ? pci_pm_poweroff_late+0x40/0x40
[227144.683524]  i915_pm_suspend_late+0x18/0x20
[227144.683535]  pm_generic_suspend_late+0x26/0x30
[227144.683541]  pci_pm_suspend_late+0x2c/0x40
[227144.683548]  dpm_run_callback+0x41/0xa0
[227144.683554]  __device_suspend_late+0xb8/0x140
[227144.683561]  async_suspend_late+0x1a/0x90
[227144.683569]  async_run_entry_fn+0x39/0x170
[227144.683580]  process_one_work+0x21d/0x3e0
[227144.683588]  ? process_one_work+0x1b3/0x3e0
[227144.683597]  worker_thread+0x32/0x3a0
[227144.683606]  kthread+0x116/0x130
[227144.683614]  ? process_one_work+0x3e0/0x3e0
[227144.683622]  ? kthread_create_worker_on_cpu+0x60/0x60
[227144.683629]  ret_from_fork+0x35/0x40
[227144.683637] ---[ end trace d726f89c8d1f8873 ]---
[227144.689127] ACPI: EC: interrupt blocked
[227144.727842] ACPI: Preparing to enter system sleep state S3
[227144.739664] ACPI: EC: event blocked
[227144.739672] ACPI: EC: EC stopped
[227144.739679] PM: Saving platform NVS memory
[227144.739708] Disabling non-boot CPUs ...
[227144.742647] smpboot: CPU 1 is now offline
[227144.745873] smpboot: CPU 2 is now offline
[227144.751426] smpboot: CPU 3 is now offline
[227144.753745] ACPI: Low-level resume complete
[227144.753806] ACPI: EC: EC started
[227144.753808] PM: Restoring platform NVS memory
[227144.754160] Enabling non-boot CPUs ...
[227144.755367] x86: Booting SMP configuration:
[227144.755369] smpboot: Booting Node 0 Processor 1 APIC 0x1
[227144.755667] Disabled fast string operations
[227144.758831] CPU1 is up
[227144.760094] smpboot: Booting Node 0 Processor 2 APIC 0x2
[227144.760341] Disabled fast string operations
[227144.763608] CPU2 is up
[227144.766658] smpboot: Booting Node 0 Processor 3 APIC 0x3
[227144.767237] Disabled fast string operations
[227144.770866] CPU3 is up
[227144.777037] ACPI: Waking up from system sleep state S3
[227144.798468] ACPI: EC: interrupt unblocked
[227144.816984] sdhci-pci 0000:0d:00.0: MMC controller base frequency chang=
ed to 50Mhz.
[227144.841835] ACPI: EC: event unblocked
[227144.852571] sd 0:0:0:0: [sda] Starting disk
[227144.852661] sd 2:0:0:0: [sdb] Starting disk
[227144.855815] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[227144.987988] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[227145.092406] usb 1-1.4: reset full-speed USB device number 4 using ehci-=
pci
[227145.200477] ata3: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[227145.200587] ata2: SATA link down (SStatus 0 SControl 300)
[227145.204438] ata5: SATA link down (SStatus 0 SControl 300)
[227145.206554] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[227145.206564] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[227145.206570] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[227145.219042] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[227145.219054] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[227145.219061] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[227145.227331] ata3.00: configured for UDMA/133
[227145.280640] usb 1-1.3: reset full-speed USB device number 3 using ehci-=
pci
[227145.468478] usb 1-1.6: reset high-speed USB device number 5 using ehci-=
pci
[227145.883838] psmouse serio1: synaptics: queried max coordinates: x [..54=
72], y [..4448]
[227146.884308] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[227146.886067] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[227146.886078] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[227146.886085] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[227146.889044] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[227146.889054] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[227146.889060] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[227146.890193] ata1.00: configured for UDMA/133
[227146.934156] PM: resume devices took 2.096 seconds
[227146.935265] OOM killer enabled.
[227146.935274] Restarting tasks ... done.
[227146.946845] PM: suspend exit
[227147.508724] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
[227147.511583] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
[227147.514459] wlp3s0: authenticated
[227147.520412] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
[227147.528132] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=3D0x411 =
status=3D0 aid=3D2)
[227147.531686] wlp3s0: associated
[232247.722307] Xorg invoked oom-killer: gfp_mask=3D0x100cca(GFP_HIGHUSER_M=
OVABLE), order=3D0, oom_score_adj=3D0
[232247.722317] CPU: 1 PID: 3123 Comm: Xorg Tainted: G        W         5.6=
=2E0-rc7+ #84
[232247.722321] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[232247.722325] Call Trace:
[232247.722336]  dump_stack+0x59/0x7a
[232247.722343]  dump_header+0x52/0x370
[232247.722350]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
[232247.722355]  oom_kill_process.cold.34+0xb/0x10e
[232247.722361]  out_of_memory+0x224/0x420
[232247.722367]  __alloc_pages_slowpath+0x91e/0xb20
[232247.722372]  __alloc_pages_nodemask+0x1b3/0x1e0
[232247.722377]  pagecache_get_page+0xb8/0x220
[232247.722382]  filemap_fault+0x571/0x910
[232247.722388]  ? __lock_acquire.isra.33+0x297/0x550
[232247.722394]  ? ext4_filemap_fault+0x24/0x3f
[232247.722399]  ext4_filemap_fault+0x2c/0x3f
[232247.722405]  __do_fault+0x39/0x90
[232247.722410]  __handle_mm_fault+0x730/0xb70
[232247.722415]  handle_mm_fault+0x51/0xc0
[232247.722421]  do_page_fault+0x21e/0x458
[232247.722426]  page_fault+0x2c/0x40
[232247.722431] RIP: 0033:0x5636dc554b00
[232247.722437] Code: Bad RIP value.
[232247.722441] RSP: 002b:00007fff1c24a118 EFLAGS: 00010246
[232247.722447] RAX: 00005636dc554b00 RBX: 00005636dc66d300 RCX: 000000000d=
d7d0e6
[232247.722451] RDX: 00000000ffffffff RSI: 0dd7d0e600000000 RDI: 00005636dc=
ff4d90
[232247.722454] RBP: 00005636dc657360 R08: 0000000000000000 R09: 00007fff1c=
31d090
[232247.722458] R10: 000000000584f622 R11: 0000000000000286 R12: 00005636dc=
657344
[232247.722462] R13: 000000000012d617 R14: 00005636dc66d2c0 R15: 00005636dc=
ff4d90
[232247.722466] Mem-Info:
[232247.722473] active_anon:1176481 inactive_anon:184977 isolated_anon:0
                 active_file:4235 inactive_file:2033 isolated_file:166
                 unevictable:22638 dirty:22 writeback:0 unstable:0
                 slab_reclaimable:15706 slab_unreclaimable:30843
                 mapped:65300 shmem:184583 pagetables:23886 bounce:0
                 free:12155 free_pcp:1643 free_cma:0
[232247.722479] Node 0 active_anon:4705924kB inactive_anon:739908kB active_=
file:16940kB inactive_file:8132kB unevictable:90552kB isolated(anon):0kB is=
olated(file):664kB mapped:261200kB dirty:88kB writeback:0kB shmem:738332kB =
writeback_tmp:0kB unstable:0kB all_unreclaimable? no
[232247.722486] DMA free:15360kB min:24kB low:36kB high:48kB reserved_higha=
tomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0=
kB unevictable:0kB writepending:0kB present:15984kB managed:15360kB mlocked=
:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB =
free_cma:0kB
[232247.722489] lowmem_reserve[]: 0 3381 5815 5815
[232247.722498] DMA32 free:26600kB min:24540kB low:28000kB high:31460kB res=
erved_highatomic:4096KB active_anon:2673196kB inactive_anon:540552kB active=
_file:5952kB inactive_file:4424kB unevictable:61296kB writepending:36kB pre=
sent:3561088kB managed:3466340kB mlocked:52kB kernel_stack:7540kB pagetable=
s:40040kB bounce:0kB free_pcp:2768kB local_pcp:596kB free_cma:0kB
[232247.722502] lowmem_reserve[]: 0 0 2433 2433
[232247.722510] Normal free:6660kB min:17664kB low:20156kB high:22648kB res=
erved_highatomic:4096KB active_anon:2032728kB inactive_anon:199356kB active=
_file:11028kB inactive_file:3272kB unevictable:29256kB writepending:52kB pr=
esent:2594816kB managed:2492040kB mlocked:212kB kernel_stack:13548kB pageta=
bles:55504kB bounce:0kB free_pcp:3804kB local_pcp:632kB free_cma:0kB
[232247.722514] lowmem_reserve[]: 0 0 0 0
[232247.722519] DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB 0*256kB 0*512=
kB 1*1024kB (U) 1*2048kB (U) 3*4096kB (M) =3D 15360kB
[232247.722531] DMA32: 987*4kB (UME) 808*8kB (UME) 569*16kB (UME) 94*32kB (=
UE) 13*64kB (UE) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 1*4096kB (H) =3D=
 27452kB
[232247.722545] Normal: 675*4kB (UMEH) 263*8kB (UEH) 113*16kB (UEH) 16*32kB=
 (EH) 0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 7124kB
[232247.722558] 195074 total pagecache pages
[232247.722563] 4084 pages in swap cache
[232247.722567] Swap cache stats: add 2385605, delete 2381474, find 2084154=
/2405459
[232247.722570] Free swap  =3D 0kB
[232247.722574] Total swap =3D 1681428kB
[232247.722577] 1542972 pages RAM
[232247.722580] 0 pages HighMem/MovableOnly
[232247.722584] 49537 pages reserved
[232247.722587] Tasks state (memory values in pages):
[232247.722590] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swap=
ents oom_score_adj name
[232247.722599] [   1743]     0  1743    23906     6463   294912      230  =
           0 systemd-journal
[232247.722606] [   1814]     0  1814     1923        1    49152       61  =
           0 blkmapd
[232247.722612] [   2709]     0  2709     5224      108    65536      307  =
       -1000 systemd-udevd
[232247.722618] [   2886]     0  2886     2271        7    49152       39  =
           0 rpc.idmapd
[232247.722624] [   2901]   116  2901     1707        5    49152      111  =
           0 rpcbind
[232247.722630] [   2904]   101  2904    23809       29    90112      210  =
           0 systemd-timesyn
[232247.722637] [   2910]     0  2910     2022        0    49152      784  =
           0 haveged
[232247.722642] [   2942]     0  2942     2527       64    53248      302  =
           0 smartd
[232247.722648] [   2943]   112  2943     2001       61    49152       44  =
           0 avahi-daemon
[232247.722654] [   2944]     0  2944     7856      135    90112       80  =
           0 alsactl
[232247.722660] [   2948]   112  2948     1969        6    49152       69  =
           0 avahi-daemon
[232247.722666] [   2950]     0  2950   137377      581   155648      652  =
           0 udisksd
[232247.722673] [   2955]   104  2955     2422      305    57344       72  =
        -900 dbus-daemon
[232247.722679] [   2956]     0  2956   170256      503   180224      303  =
           0 NetworkManager
[232247.722685] [   2958]     0  2958     5039      164    77824      115  =
           0 wpa_supplicant
[232247.722691] [   2959]     0  2959    56457      262    98304      203  =
           0 rsyslogd
[232247.722697] [   2960]     0  2960    61197      267   106496      179  =
           0 ModemManager
[232247.722703] [   2963]     0  2963     3373       73    57344       63  =
           0 bluetoothd
[232247.722709] [   2965]     0  2965     4914      115    69632      185  =
           0 systemd-logind
[232247.722715] [   2967]     0  2967    60655      303   102400      107  =
           0 accounts-daemon
[232247.722721] [   3024]     0  3024    60235      429   102400      198  =
           0 polkitd
[232247.722726] [   3038]     0  3038     3964       39    65536      175  =
       -1000 sshd
[232247.722732] [   3052]     0  3052     7941        0    98304     6279  =
           0 rpc.mountd
[232247.722739] [   3111]     0  3111     2127       25    57344       41  =
           0 cron
[232247.722745] [   3116]     0  3116    60838      212   106496      162  =
           0 lightdm
[232247.722751] [   3123]     0  3123   172821    28399   704512    12428  =
           0 Xorg
[232247.722757] [   3124]     0  3124     1404        0    45056       33  =
           0 agetty
[232247.722763] [   3145]     0  3145     1861       13    53248       53  =
           0 inetd
[232247.722770] [   3449]     0  3449    41653      107    86016      179  =
           0 lightdm
[232247.722776] [   3481]  1000  3481     5374      145    73728      283  =
           0 systemd
[232247.722782] [   3484]  1000  3484     5800       38    73728      598  =
           0 (sd-pam)
[232247.722787] [   3497]  1000  3497   115629      344   122880      190  =
           0 gnome-keyring-d
[232247.722794] [   3501]  1000  3501    71234      530   188416      712  =
           0 x-session-manag
[232247.722800] [   3510]  1000  3510     2341      245    53248       52  =
           0 dbus-daemon
[232247.722806] [   3555]  1000  3555     1464        9    40960      110  =
           0 ssh-agent
[232247.722812] [   3572]  1000  3572    79324      708   106496      368  =
           0 ibus-daemon
[232247.722818] [   3573]  1000  3573    79177        0   102400      247  =
           0 at-spi-bus-laun
[232247.722824] [   3576]  1000  3576    60048      130    94208      125  =
           0 gvfsd
[232247.722831] [   3585]  1000  3585    60151        0   102400      242  =
           0 ibus-dconf
[232247.722837] [   3586]  1000  3586    72730      869   192512     1390  =
           0 ibus-ui-gtk3
[232247.722842] [   3587]  1000  3587    71126      599   184320     1596  =
           0 ibus-extension-
[232247.722847] [   3589]  1000  3589    51661      464   172032      717  =
           0 ibus-x11
[232247.722853] [   3591]  1000  3591    60167      148    98304      137  =
           0 ibus-portal
[232247.722859] [   3601]  1000  3601     2205      103    53248       57  =
           0 dbus-daemon
[232247.722865] [   3604]  1000  3604    43536      118   102400      115  =
           0 at-spi2-registr
[232247.722871] [   3617]  1000  3617    40020      301    69632       64  =
           0 dconf-service
[232247.722878] [   3621]  1000  3621    41717      166    94208      123  =
           0 ibus-engine-sim
[232247.722884] [   3631]  1000  3631   342502     1979   339968     1205  =
           0 mate-settings-d
[232247.722890] [   3635]  1000  3635   166990     5608   352256     1099  =
           0 marco
[232247.722896] [   3640]  1000  3640   228022      649   376832      774  =
           0 pulseaudio
[232247.722901] [   3653]  1000  3653   177828     4400   315392     2017  =
           0 mate-panel
[232247.722907] [   3654]   109  3654    38163        0    61440       65  =
           0 rtkit-daemon
[232247.722913] [   3676]  1000  3676   174177     1070   339968     2030  =
           0 caja
[232247.722919] [   3682]  1000  3682   105451     2924   278528      965  =
           0 wnck-applet
[232247.722925] [   3683]  1000  3683   107033      372   147456      282  =
           0 gvfs-udisks2-vo
[232247.722931] [   3684]  1000  3684   131759      762   241664     1321  =
           0 mate-volume-con
[232247.722938] [   3692]  1000  3692    59402        0    86016      156  =
           0 agent
[232247.722944] [   3693]  1000  3693   104082     2062   266240     1209  =
           0 nm-applet
[232247.722949] [   3698]  1000  3698    93255     4401   233472      662  =
           0 mate-power-mana
[232247.722955] [   3704]  1000  3704    17872      461   176128     2190  =
           0 smart-notifier
[232247.722961] [   3706]  1000  3706    60207       39    98304      197  =
           0 gvfs-gphoto2-vo
[232247.722968] [   3707]  1000  3707   164184      496   393216     2315  =
           0 evolution-alarm
[232247.722974] [   3713]  1000  3713   100945     6089   286720     1078  =
           0 mate-screensave
[232247.722979] [   3718]  1000  3718    59554       38    98304      146  =
           0 gvfs-mtp-volume
[232247.722985] [   3720]  1000  3720    50404      287   159744      235  =
           0 polkit-mate-aut
[232247.722992] [   3727]  1000  3727    59097        0    90112      209  =
           0 gvfs-goa-volume
[232247.722998] [   3731]  1000  3731    79764        0   114688      307  =
           0 gvfs-afc-volume
[232247.723004] [   3744]     0  3744    64664      233   110592      146  =
           0 upowerd
[232247.723010] [   3781]  1000  3781    89718      594   200704     1177  =
           0 notification-ar
[232247.723016] [   3782]  1000  3782   120658     1315   253952      954  =
           0 mateweather-app
[232247.723022] [   3783]  1000  3783   102688     1497   258048     1015  =
           0 clock-applet
[232247.723027] [   3785]  1000  3785    81767      752   229376     1324  =
           0 mate-inhibit-ap
[232247.723033] [   3787]  1000  3787    91811     2429   208896     1019  =
           0 command-applet
[232247.723039] [   3793]  1000  3793   256367      508   307200      626  =
           0 evolution-sourc
[232247.723045] [   3825]  1000  3825    79439      172   110592      188  =
           0 gvfsd-trash
[232247.723051] [   3832]  1000  3832   233198      239   331776      983  =
           0 evolution-calen
[232247.723057] [   3844]  1000  3844   168623      201   245760      853  =
           0 evolution-addre
[232247.723063] [   4430]  1000  4430   209699     9235   421888     1814  =
           0 mate-terminal
[232247.723070] [   4438]  1000  4438     1749      140    49152        6  =
           0 bash
[232247.723076] [   4460]  1000  4460     4244      795    61440      118  =
           0 herdd.py
[232247.723082] [   4461]  1000  4461     1662       59    45056        0  =
           0 bash
[232247.723088] [   4462]  1000  4462    35989     1049   180224      136  =
           0 gkrellm
[232247.723094] [   4463]  1000  4463     1749      105    45056        5  =
           0 bash
[232247.723099] [   4464]  1000  4464     1749      145    45056        0  =
           0 bash
[232247.723105] [   4469]     0  4469     2491       96    57344        0  =
           0 sudo
[232247.723111] [   4470]  1000  4470    63543     1687   299008     3234  =
           0 emacs
[232247.723117] [   4472]  1000  4472     1749      143    49152        0  =
           0 bash
[232247.723123] [   4479]     0  4479     2385       92    49152        0  =
           0 su
[232247.723129] [   4484]     0  4484     1749      103    53248        0  =
           0 bash
[232247.723135] [   4501]  1000  4501     1695       39    49152       55  =
           0 monitor
[232247.723141] [   4561]  1000  4561     1749      134    49152       11  =
           0 bash
[232247.723147] [   8880]  1000  8880     1781       58    49152       98  =
           0 bash
[232247.723153] [   8912]  1000  8912     1464       48    49152       74  =
           0 ssh-agent
[232247.723158] [   8946]  1000  8946     1781       89    49152       65  =
           0 bash
[232247.723164] [   9849]  1000  9849     1817      150    53248       58  =
           0 bash
[232247.723170] [  12046]  1000 12046     1782       94    49152       63  =
           0 bash
[232247.723176] [  12064]  1000 12064     1782      103    53248       64  =
           0 bash
[232247.723182] [  13326]  1000 13326     1749       86    49152       63  =
           0 bash
[232247.723188] [  13400]  1000 13400     1774      102    49152       59  =
           0 bash
[232247.723195] [  27250]  1000 27250   928297   196410  4587520    91153  =
           0 chromium
[232247.723201] [  27267]  1000 27267    97555      375   634880     2597  =
           0 chromium
[232247.723207] [  27293]  1000 27293   390324   115006  2088960    10424  =
         200 chromium
[232247.723213] [  27297]  1000 27297   463747    27223   983040     4027  =
         200 chromium
[232247.723219] [  27352]  1000 27352  1386285     6986  1175552     5114  =
         300 chromium
[232247.723225] [  27450]  1000 27450  1393419    13811  1359872     2749  =
         300 chromium
[232247.723232] [  27575]  1000 27575  1407326    21154  1982464    13853  =
         300 chromium
[232247.723238] [  27680]  1000 27680  1442430     9883  1171456     2170  =
         300 chromium
[232247.723244] [  27718]  1000 27718  1375046     3302   929792     3535  =
         300 chromium
[232247.723251] [  27740]  1000 27740  1450457     3709  1503232    15341  =
         300 chromium
[232247.723256] [  27755]  1000 27755  1373964      977   884736     3639  =
         300 chromium
[232247.723261] [  27768]  1000 27768  1382963     9747  1146880     3799  =
         300 chromium
[232247.723268] [  27789]  1000 27789  1379963     1308  1036288     7942  =
         300 chromium
[232247.723274] [  27803]  1000 27803  1377158     1003  1024000     6540  =
         300 chromium
[232247.723280] [  27997]  1000 27997  1386730     9660  1200128     2637  =
         300 chromium
[232247.723286] [  28334]  1000 28334  1473728    46393  1978368     2615  =
         300 chromium
[232247.723291] [  29094]  1000 29094  1387925     5046  1282048    12567  =
         300 chromium
[232247.723297] [   6918]  1000  6918  1399995     6328  1589248    19373  =
         300 chromium
[232247.723303] [   6969]  1000  6969  1376628     1130  1036288     6010  =
         300 chromium
[232247.723309] [   6990]  1000  6990  1354023      900   839680     3154  =
         300 chromium
[232247.723316] [   7003]  1000  7003  1381191     2373  1064960     6835  =
         300 chromium
[232247.723322] [   7312]  1000  7312     1778      108    45056       59  =
           0 bash
[232247.723328] [   8367]  1000  8367  1456188    36855  2060288     3092  =
         300 chromium
[232247.723334] [   9492]  1000  9492  1382634     7375  1171456     2565  =
         300 chromium
[232247.723339] [  23127]  1000 23127     1749       59    49152       89  =
           0 bash
[232247.723345] [  23997]  1000 23997     1749       80    49152       69  =
           0 bash
[232247.723351] [  32288]  1000 32288    20242       68    53248        9  =
           0 gpg-agent
[232247.723357] [   2789]  1000  2789     1774       93    53248       67  =
           0 bash
[232247.723363] [   2892]  1000  2892    97953       69   114688      288  =
           0 gvfsd-network
[232247.723368] [   2926]  1000  2926    78818       19   106496      255  =
           0 gvfsd-dnssd
[232247.723374] [   4428]  1000  4428  1355512      933   876544     3579  =
         300 chromium
[232247.723381] [   5272]   118  5272     2444        2    61440       87  =
           0 gpsd
[232247.723387] [   5494]  1000  5494     1749       63    49152       84  =
           0 bash
[232247.723393] [   5508]  1000  5508     1749        0    49152      145  =
           0 bash
[232247.723399] [   5528]  1000  5528     1662        0    49152       61  =
           0 e
[232247.723404] [   5529]  1000  5529    61627        0   282624     3049  =
           0 emacs
[232247.723410] [   5660]  1000  5660     1749       81    53248       67  =
           0 bash
[232247.723416] [   5849]  1000  5849  1384991     8147  1167360     3925  =
         300 chromium
[232247.723422] [  12235]  1000 12235  1395105    12160  1495040     6707  =
         300 chromium
[232247.723429] [  27409]  1000 27409     1749        0    45056      154  =
           0 bash
[232247.723435] [  27489]  1000 27489     1749       76    49152       77  =
           0 bash
[232247.723440] [  28256]     0 28256     2491        0    53248       97  =
           0 sudo
[232247.723446] [  28261]     0 28261     2380        0    49152      101  =
           0 su
[232247.723452] [  28266]     0 28266     1749        0    49152      146  =
           0 bash
[232247.723458] [  28579]  1000 28579  1383242     3251  1138688    10884  =
         300 chromium
[232247.723464] [  28850]  1000 28850     1749        0    45056      146  =
           0 bash
[232247.723471] [   8473]  1000  8473  1384150     4537  1245184     9778  =
         300 chromium
[232247.723477] [   8489]  1000  8489  1387212     2496  1228800     9366  =
         300 chromium
[232247.723484] [  22511]  1000 22511  1385576     8986  1191936     6048  =
         300 chromium
[232247.723490] [  22527]  1000 22527  1378158     3688  1024000     4405  =
         300 chromium
[232247.723496] [  31609]  1000 31609  1402952    10399  1228800     3203  =
         300 chromium
[232247.723502] [   7510]  1000  7510    43350      196    94208     1929  =
           0 dirmngr
[232247.723509] [   9644]  1000  9644  1385522    10933  1146880     5166  =
         300 chromium
[232247.723515] [   9660]  1000  9660  1379020     5209  1024000     3215  =
         300 chromium
[232247.723521] [   9876]  1000  9876  1394893    10734  1413120     7061  =
         300 chromium
[232247.723528] [   9909]  1000  9909  3580592    24772  2310144    17089  =
         300 chromium
[232247.723534] [   9939]  1000  9939  1354023     1226   835584     2779  =
         300 chromium
[232247.723540] [   9946]  1000  9946  1354029     1733   835584     2275  =
         300 chromium
[232247.723546] [   9964]  1000  9964  1353997     1465   835584     2544  =
         300 chromium
[232247.723552] [   9975]  1000  9975  1353999     1117   835584     2893  =
         300 chromium
[232247.723557] [   9988]  1000  9988  1353997     1012   839680     2997  =
         300 chromium
[232247.723563] [  10000]  1000 10000  1353999     1002   839680     3008  =
         300 chromium
[232247.723570] [  10007]  1000 10007  1354027     1529   835584     2478  =
         300 chromium
[232247.723576] [  10027]  1000 10027  1354028     1226   835584     2817  =
         300 chromium
[232247.723582] [  10033]  1000 10033  1354028     1141   839680     2868  =
         300 chromium
[232247.723588] [  10048]  1000 10048  1354028     1009   835584     2997  =
         300 chromium
[232247.723595] [  11164]  1000 11164  1381688    12977  1052672     2244  =
         300 chromium
[232247.723601] [  11184]  1000 11184  1435701    16780  1298432     2410  =
         300 chromium
[232247.723608] [  11208]  1000 11208  1374420     3070   913408     2319  =
         300 chromium
[232247.723614] [  11225]  1000 11225  1373754     2617   888832     2378  =
         300 chromium
[232247.723620] [  11238]  1000 11238  1374930     2822   892928     2303  =
         300 chromium
[232247.723626] [  24356]  1000 24356  1433210    10250  2240512     1941  =
         300 chromium
[232247.723632] [  26296]  1000 26296     1662        0    49152       61  =
           0 e
[232247.723638] [  26297]  1000 26297    64768     5609   303104      617  =
           0 emacs
[232247.723644] [  11902]  1000 11902  1489349    33093  2322432     2146  =
         300 chromium
[232247.723649] [  19550]  1000 19550  1401579    13913  1171456     1972  =
         300 chromium
[232247.723655] [  19571]  1000 19571  1375373     4306   942080     2076  =
         300 chromium
[232247.723661] [  19590]  1000 19590  1374764     3391   905216     2082  =
         300 chromium
[232247.723667] [  25469]  1000 25469  1458545    28845  1523712     2359  =
         300 chromium
[232247.723673] [  25487]  1000 25487  1384598     4851  1003520     2037  =
         300 chromium
[232247.723680] [  25522]  1000 25522  1373501     2260   888832     2255  =
         300 chromium
[232247.723685] [  25564]  1000 25564  1373511     2394   909312     2082  =
         300 chromium
[232247.723690] [  28128]  1000 28128     1779      151    45056        0  =
           0 bash
[232247.723696] [   7859]  1000  7859  1374795     3220   905216     2032  =
         300 chromium
[232247.723702] [  13674]  1000 13674  1375086     4881   921600     2007  =
         300 chromium
[232247.723708] [  13909]  1000 13909  1378716     8402   974848     2000  =
         300 chromium
[232247.723714] [  17343]  1000 17343  1382613    28613  1236992     1949  =
         300 chromium
[232247.723720] [  23333]  1000 23333     1779      164    49152        0  =
           0 bash
[232247.723726] [  10866]  1000 10866     1662       60    45056        0  =
           0 m
[232247.723733] [  10868]  1000 10868     3948      184    61440        0  =
           0 ssh
[232247.723739] [  16242]  1000 16242     1695       92    53248        0  =
           0 xa2
[232247.723745] [  17826]  1000 17826   783118      905   856064        0  =
           0 git
[232247.723751] [  17827]  1000 17827     1401       26    49152        0  =
           0 pager
[232247.723757] [  31707]  1000 31707  1452431    22585  1568768     1812  =
         300 chromium
[232247.723763] [  32369]  1000 32369  1472557    26834  1716224     1815  =
         300 chromium
[232247.723769] [   2386]  1000  2386  1439443    17459  1236992     1872  =
         300 chromium
[232247.723775] [   4073]  1000  4073  1406197    24393  1617920     1926  =
         300 chromium
[232247.723781] [   5050]  1000  5050  1377513     6101   978944     1988  =
         300 chromium
[232247.723788] [   9099]  1000  9099  1364980    10043   995328     1978  =
         300 chromium
[232247.723794] [  10487]  1000 10487     1662       61    49152        0  =
           0 e
[232247.723800] [  10488]  1000 10488    63701     5073   307200        0  =
           0 emacs
[232247.723806] [  11096]  1000 11096     1774      100    49152       61  =
           0 bash
[232247.723812] [  11097]  1000 11097    10088     1931   118784        0  =
           0 mutt
[232247.723818] [  13282]  1000 13282  1389584    12331  1421312     2002  =
         300 chromium
[232247.723824] [  20684]  1000 20684     1782       99    49152       58  =
           0 bash
[232247.723830] [  20685]  1000 20685    10700     2531   114688        0  =
           0 mutt
[232247.723836] [  21739]  1000 21739  1357456     4054   937984     1985  =
         300 chromium
[232247.723841] [  23448]  1000 23448      598       16    36864        0  =
           0 a
[232247.723847] [  23449]  1000 23449     4558      224    69632        0  =
           0 ssh
[232247.723853] [  24772]  1000 24772     1816      190    49152        0  =
           0 bash
[232247.723860] [   5203]  1000  5203  1380070     8871  1024000     1976  =
         300 chromium
[232247.723866] [   5926]     0  5926     4166      273    65536        0  =
           0 sshd
[232247.723873] [   5937]  1000  5937     4166      273    65536        0  =
           0 sshd
[232247.723879] [   5942]  1000  5942     1746      136    45056        0  =
           0 bash
[232247.723885] [   5970]     0  5970     4166      273    65536        0  =
           0 sshd
[232247.723890] [   5980]  1000  5980     4202      336    69632        0  =
           0 sshd
[232247.723895] [   5986]  1000  5986     1746      150    57344        0  =
           0 bash
[232247.723901] [  12900]  1000 12900     1662       61    53248        0  =
           0 e
[232247.723907] [  12901]  1000 12901    65667     7030   315392        0  =
           0 emacs
[232247.723913] [  14750]  1000 14750     1662       61    45056        0  =
           0 e
[232247.723919] [  14751]  1000 14751    61625     2963   274432        0  =
           0 emacs
[232247.723925] [  15083]  1000 15083  1376164     5990   970752     2074  =
         300 chromium
[232247.723931] [  17036]  1000 17036  1384174     8794  1093632     1954  =
         300 chromium
[232247.723937] [  20051]  1000 20051     2224      172    53248        0  =
           0 screen
[232247.723942] [  20052]  1000 20052     1749      144    49152        0  =
           0 bash
[232247.723948] [  22411]     0 22411     4166      274    65536        0  =
           0 sshd
[232247.723955] [  22421]  1000 22421     4166      272    65536        0  =
           0 sshd
[232247.723961] [  22429]  1000 22429     1746      128    45056        0  =
           0 bash
[232247.723968] [  22455]  1000 22455     1662       60    49152        0  =
           0 e
[232247.723974] [  22456]  1000 22456    61574     2948   274432        0  =
           0 emacs
[232247.723980] [  22610]  1000 22610     1746      136    40960        0  =
           0 bash
[232247.723987] [  22611]  1000 22611    10678     2481   122880        0  =
           0 mutt
[232247.723993] [  23566]  1000 23566     2154       63    45056        0  =
           0 screen
[232247.724000] [   9847]  1000  9847     2762      232    57344        0  =
           0 irc
[232247.724007] [  24512]  1000 24512     1749       89    49152       61  =
           0 bash
[232247.724013] [  24526]  1000 24526    10055     1870   114688        0  =
           0 mutt
[232247.724019] [  25715]  1000 25715  1375089     3698   913408     2028  =
         300 chromium
[232247.724025] [  25776]  1000 25776     1316       15    45056        0  =
           0 sleep
[232247.724032] [  26057]  1000 26057     1662       62    40960        0  =
           0 e
[232247.724038] [  26058]  1000 26058    63540     4923   299008        0  =
           0 emacs
[232247.724045] [  26755]     0 26755     4166      276    65536        0  =
           0 sshd
[232247.724051] [  26765]  1000 26765     4166      273    65536        0  =
           0 sshd
[232247.724057] [  26767]  1000 26767   274161   191956  1687552        0  =
           0 unison
[232247.724063] [  26932]  1000 26932  1355872     2375   901120     2075  =
         300 chromium
[232247.724070] [  27100]  1000 27100  1355543     3479   868352     2090  =
         300 chromium
[232247.724076] [  27131]  1000 27131  1355334     2557   876544     2072  =
         300 chromium
[232247.724082] [  27542]  1000 27542     1316       16    45056        0  =
           0 sleep
[232247.724088] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D28334,uid=3D1000
[232247.724154] Out of memory: Killed process 28334 (chromium) total-vm:589=
4912kB, anon-rss:176536kB, file-rss:0kB, shmem-rss:9036kB, UID:1000 pgtable=
s:1932kB oom_score_adj:300
[232247.788118] oom_reaper: reaped process 28334 (chromium), now anon-rss:0=
kB, file-rss:0kB, shmem-rss:8284kB
[233265.722608] i2c i2c-1: sendbytes: NAK bailout.
[234269.627423] i2c i2c-1: sendbytes: NAK bailout.
[238522.441699] PM: suspend entry (deep)
[238522.800082] Filesystems sync: 0.358 seconds
[238522.801125] Freezing user space processes ... (elapsed 0.011 seconds) d=
one.
[238522.812346] OOM killer disabled.
[238522.812350] Freezing remaining freezable tasks ... (elapsed 0.004 secon=
ds) done.
[238522.816619] printk: Suspending console(s) (use no_console_suspend to de=
bug)
[238523.012463] sd 2:0:0:0: [sdb] Synchronizing SCSI cache
[238523.014259] sd 2:0:0:0: [sdb] Stopping disk
[238523.020249] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[238523.020569] sd 0:0:0:0: [sda] Stopping disk
[238523.077024] wlp3s0: deauthenticating from 5c:f4:ab:10:d2:bb by local ch=
oice (Reason: 3=3DDEAUTH_LEAVING)
[238523.080448] e1000e: EEE TX LPI TIMER: 00000011
[238523.620220] PM: suspend devices took 0.804 seconds
[238523.644178] ------------[ cut here ]------------
[238523.644187] i915 raw-wakerefs=3D1 wakelocks=3D1 on cleanup
[238523.644230] WARNING: CPU: 3 PID: 32600 at drivers/gpu/drm/i915/intel_ru=
ntime_pm.c:602 intel_runtime_pm_driver_release+0x1f/0x30
[238523.644234] Modules linked in:
[238523.644245] CPU: 3 PID: 32600 Comm: kworker/u16:2 Tainted: G        W  =
       5.6.0-rc7+ #84
[238523.644250] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[238523.644262] Workqueue: events_unbound async_run_entry_fn
[238523.644273] RIP: 0010:intel_runtime_pm_driver_release+0x1f/0x30
[238523.644281] Code: 0b eb c7 0f 1f 84 00 00 00 00 00 8b 37 85 f6 75 01 c3=
 55 89 f2 48 c7 c7 88 75 67 85 0f b7 f6 48 89 e5 c1 fa 10 e8 3b 57 a1 ff <0=
f> 0b 5d c3 66 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 8b 87 c0 52
[238523.644286] RSP: 0018:ffffc9000e79fd18 EFLAGS: 00010286
[238523.644293] RAX: 0000000000000000 RBX: ffff888197270000 RCX: 0000000000=
000001
[238523.644298] RDX: 0000000080000001 RSI: 00000000c2cace46 RDI: 00000000ff=
ffffff
[238523.644302] RBP: ffffc9000e79fd18 R08: ffff88804a0d0a88 R09: 00000000ff=
fffffe
[238523.644307] R10: 00000000ff456b9c R11: 0000000081cebad8 R12: ffff888197=
743000
[238523.644311] R13: 0000000000000000 R14: ffff88819727b0c0 R15: ffff888143=
167fa8
[238523.644317] FS:  0000000000000000(0000) GS:ffff88819e2c0000(0000) knlGS=
:0000000000000000
[238523.644322] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[238523.644327] CR2: 000055a3c089a7e6 CR3: 000000000581e003 CR4: 0000000000=
0606a0
[238523.644331] Call Trace:
[238523.644346]  i915_drm_suspend_late+0x124/0x140
[238523.644357]  ? pci_pm_poweroff_late+0x40/0x40
[238523.644365]  i915_pm_suspend_late+0x18/0x20
[238523.644376]  pm_generic_suspend_late+0x26/0x30
[238523.644382]  pci_pm_suspend_late+0x2c/0x40
[238523.644389]  dpm_run_callback+0x41/0xa0
[238523.644395]  __device_suspend_late+0xb8/0x140
[238523.644402]  async_suspend_late+0x1a/0x90
[238523.644409]  async_run_entry_fn+0x39/0x170
[238523.644420]  process_one_work+0x21d/0x3e0
[238523.644428]  ? process_one_work+0x1b3/0x3e0
[238523.644438]  worker_thread+0x32/0x3a0
[238523.644447]  kthread+0x116/0x130
[238523.644454]  ? process_one_work+0x3e0/0x3e0
[238523.644462]  ? kthread_create_worker_on_cpu+0x60/0x60
[238523.644470]  ret_from_fork+0x35/0x40
[238523.644478] ---[ end trace d726f89c8d1f8874 ]---
[238523.649322] ACPI: EC: interrupt blocked
[238523.688584] ACPI: Preparing to enter system sleep state S3
[238523.700328] ACPI: EC: event blocked
[238523.700335] ACPI: EC: EC stopped
[238523.700342] PM: Saving platform NVS memory
[238523.700368] Disabling non-boot CPUs ...
[238523.703866] smpboot: CPU 1 is now offline
[238523.708722] smpboot: CPU 2 is now offline
[238523.712997] smpboot: CPU 3 is now offline
[238523.715330] ACPI: Low-level resume complete
[238523.715391] ACPI: EC: EC started
[238523.715393] PM: Restoring platform NVS memory
[238523.715749] Enabling non-boot CPUs ...
[238523.716948] x86: Booting SMP configuration:
[238523.716950] smpboot: Booting Node 0 Processor 1 APIC 0x1
[238523.717240] Disabled fast string operations
[238523.720637] CPU1 is up
[238523.721907] smpboot: Booting Node 0 Processor 2 APIC 0x2
[238523.722154] Disabled fast string operations
[238523.725440] CPU2 is up
[238523.729205] smpboot: Booting Node 0 Processor 3 APIC 0x3
[238523.729920] Disabled fast string operations
[238523.733570] CPU3 is up
[238523.736720] ACPI: Waking up from system sleep state S3
[238523.757916] ACPI: EC: interrupt unblocked
[238523.777855] sdhci-pci 0000:0d:00.0: MMC controller base frequency chang=
ed to 50Mhz.
[238523.804655] ACPI: EC: event unblocked
[238523.813390] sd 2:0:0:0: [sdb] Starting disk
[238523.813473] sd 0:0:0:0: [sda] Starting disk
[238523.816733] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238523.952848] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238524.049294] usb 1-1.3: reset full-speed USB device number 3 using ehci-=
pci
[238524.161419] ata3: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[238524.161484] ata2: SATA link down (SStatus 0 SControl 300)
[238524.165312] ata5: SATA link down (SStatus 0 SControl 300)
[238524.167684] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[238524.167694] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[238524.167701] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[238524.178260] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[238524.178273] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[238524.178280] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[238524.183368] ata3.00: configured for UDMA/133
[238524.241422] usb 1-1.4: reset full-speed USB device number 4 using ehci-=
pci
[238524.429452] usb 1-1.6: reset high-speed USB device number 5 using ehci-=
pci
[238524.845428] psmouse serio1: synaptics: queried max coordinates: x [..54=
72], y [..4448]
[238525.841383] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[238525.843070] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[238525.843081] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[238525.843088] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[238525.845499] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succe=
eded
[238525.845509] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOC=
K) filtered out
[238525.845516] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filte=
red out
[238525.846693] ata1.00: configured for UDMA/133
[238525.886353] PM: resume devices took 2.084 seconds
[238525.887584] OOM killer enabled.
[238525.887599] Restarting tasks ... done.
[238525.917865] PM: suspend exit
[238526.550294] e1000e 0000:00:19.0 enp0s25: NIC Link is Down
[238526.740731] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238526.876704] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238527.020820] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238527.164757] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238527.892797] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238528.036751] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[238528.524463] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
[238528.528559] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
[238528.534267] wlp3s0: authenticated
[238528.534517] wlp3s0: waiting for beacon from 5c:f4:ab:10:d2:bb
[238528.541259] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
[238528.544966] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=3D0x411 =
status=3D0 aid=3D1)
[238528.549398] wlp3s0: associated
[242748.371360] unison invoked oom-killer: gfp_mask=3D0x100dca(GFP_HIGHUSER=
_MOVABLE|__GFP_ZERO), order=3D0, oom_score_adj=3D0
[242748.371370] CPU: 2 PID: 12575 Comm: unison Tainted: G        W         =
5.6.0-rc7+ #84
[242748.371374] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[242748.371378] Call Trace:
[242748.371389]  dump_stack+0x59/0x7a
[242748.371396]  dump_header+0x52/0x370
[242748.371402]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
[242748.371408]  oom_kill_process.cold.34+0xb/0x10e
[242748.371413]  out_of_memory+0x224/0x420
[242748.371419]  __alloc_pages_slowpath+0x91e/0xb20
[242748.371425]  __alloc_pages_nodemask+0x1b3/0x1e0
[242748.371431]  __handle_mm_fault+0x7a1/0xb70
[242748.371436]  handle_mm_fault+0x51/0xc0
[242748.371442]  do_page_fault+0x21e/0x458
[242748.371448]  page_fault+0x2c/0x40
[242748.371453] RIP: 0033:0x55ef961cc719
[242748.371459] Code: fd ad 48 00 4c 89 c9 48 83 e0 f8 48 c1 e1 0a 48 83 e8=
 01 4c 89 04 24 48 8d 8c 0e fc 00 00 00 4c 89 f6 48 89 0a 4a 8d 4c ca 08 <4=
8> c7 44 38 f9 00 00 00 00 48 89 0d e7 ad 48 00 89 c1 44 29 e1 88
[242748.371463] RSP: 002b:00007ffff23862c0 EFLAGS: 00010216
[242748.371468] RAX: 000000000000000f RBX: 000055ef96656010 RCX: 00007f5075=
c84008
[242748.371472] RDX: 00007f5075c83ff0 RSI: 00007f5089e3fc3d RDI: 00007f5075=
c83ff8
[242748.371475] RBP: 00007f5075c83e80 R08: 000055ef96655ce0 R09: 0000000000=
000002
[242748.371479] R10: 00007f5089e3fc20 R11: 0000000000000206 R12: 0000000000=
00000a
[242748.371483] R13: 000000000000002a R14: 00007f5089e3fc3d R15: 00007f5075=
c83ff8
[242748.371488] Mem-Info:
[242748.371495] active_anon:1195118 inactive_anon:187257 isolated_anon:0
                 active_file:788 inactive_file:873 isolated_file:0
                 unevictable:3683 dirty:0 writeback:0 unstable:0
                 slab_reclaimable:15143 slab_unreclaimable:30818
                 mapped:67837 shmem:202968 pagetables:24917 bounce:0
                 free:16145 free_pcp:0 free_cma:0
[242748.371502] Node 0 active_anon:4780472kB inactive_anon:749028kB active_=
file:3152kB inactive_file:3492kB unevictable:14732kB isolated(anon):0kB iso=
lated(file):0kB mapped:271348kB dirty:0kB writeback:0kB shmem:811872kB writ=
eback_tmp:0kB unstable:0kB all_unreclaimable? no
[242748.371509] DMA free:15360kB min:24kB low:36kB high:48kB reserved_higha=
tomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0=
kB unevictable:0kB writepending:0kB present:15984kB managed:15360kB mlocked=
:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB =
free_cma:0kB
[242748.371513] lowmem_reserve[]: 0 3381 5815 5815
[242748.371522] DMA32 free:33376kB min:24540kB low:28000kB high:31460kB res=
erved_highatomic:4096KB active_anon:2693344kB inactive_anon:588824kB active=
_file:1180kB inactive_file:864kB unevictable:92kB writepending:0kB present:=
3561088kB managed:3466340kB mlocked:52kB kernel_stack:7704kB pagetables:409=
12kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
[242748.371526] lowmem_reserve[]: 0 0 2433 2433
[242748.371535] Normal free:15844kB min:17664kB low:20156kB high:22648kB re=
served_highatomic:4096KB active_anon:2087128kB inactive_anon:160204kB activ=
e_file:2040kB inactive_file:2468kB unevictable:14640kB writepending:0kB pre=
sent:2594816kB managed:2492040kB mlocked:228kB kernel_stack:14472kB pagetab=
les:58756kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
[242748.371538] lowmem_reserve[]: 0 0 0 0
[242748.371544] DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB 0*256kB 0*512=
kB 1*1024kB (U) 1*2048kB (U) 3*4096kB (M) =3D 15360kB
[242748.371558] DMA32: 206*4kB (UM) 0*8kB 729*16kB (UME) 456*32kB (UE) 42*6=
4kB (UE) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 1*4096kB (H) =3D 33864kB
[242748.371572] Normal: 2105*4kB (UMEH) 712*8kB (UMEH) 107*16kB (UEH) 11*32=
kB (EH) 0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 16180=
kB
[242748.371586] 206747 total pagecache pages
[242748.371592] 2162 pages in swap cache
[242748.371596] Swap cache stats: add 2397560, delete 2395350, find 2203907=
/2527014
[242748.371599] Free swap  =3D 0kB
[242748.371603] Total swap =3D 1681428kB
[242748.371606] 1542972 pages RAM
[242748.371610] 0 pages HighMem/MovableOnly
[242748.371613] 49537 pages reserved
[242748.371616] Tasks state (memory values in pages):
[242748.371620] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swap=
ents oom_score_adj name
[242748.371628] [   1743]     0  1743    23906     6552   294912      233  =
           0 systemd-journal
[242748.371635] [   1814]     0  1814     1923        1    49152       61  =
           0 blkmapd
[242748.371642] [   2709]     0  2709     5224      108    65536      307  =
       -1000 systemd-udevd
[242748.371649] [   2886]     0  2886     2271        7    49152       39  =
           0 rpc.idmapd
[242748.371655] [   2901]   116  2901     1707        5    49152      111  =
           0 rpcbind
[242748.371662] [   2904]   101  2904    23809       29    90112      210  =
           0 systemd-timesyn
[242748.371668] [   2910]     0  2910     2022        0    49152      784  =
           0 haveged
[242748.371674] [   2942]     0  2942     2527       64    53248      302  =
           0 smartd
[242748.371680] [   2943]   112  2943     2001       61    49152       44  =
           0 avahi-daemon
[242748.371687] [   2944]     0  2944     7856      135    90112       80  =
           0 alsactl
[242748.371693] [   2948]   112  2948     1969        6    49152       69  =
           0 avahi-daemon
[242748.371699] [   2950]     0  2950   137377      584   155648      649  =
           0 udisksd
[242748.371705] [   2955]   104  2955     2422      305    57344       72  =
        -900 dbus-daemon
[242748.371712] [   2956]     0  2956   170256      503   180224      303  =
           0 NetworkManager
[242748.371718] [   2958]     0  2958     5039      164    77824      115  =
           0 wpa_supplicant
[242748.371725] [   2959]     0  2959    56457      267    98304      202  =
           0 rsyslogd
[242748.371731] [   2960]     0  2960    61197      266   106496      180  =
           0 ModemManager
[242748.371737] [   2963]     0  2963     3373       73    57344       63  =
           0 bluetoothd
[242748.371743] [   2965]     0  2965     4914      115    69632      185  =
           0 systemd-logind
[242748.371749] [   2967]     0  2967    60655      304   102400      107  =
           0 accounts-daemon
[242748.371755] [   3024]     0  3024    60235      431   102400      198  =
           0 polkitd
[242748.371761] [   3038]     0  3038     3964       39    65536      175  =
       -1000 sshd
[242748.377152] [   3052]     0  3052     7941        0    98304     6279  =
           0 rpc.mountd
[242748.377162] [   3111]     0  3111     2127       25    57344       41  =
           0 cron
[242748.377169] [   3116]     0  3116    60838      212   106496      162  =
           0 lightdm
[242748.377175] [   3123]     0  3123   177779    32169   745472    12438  =
           0 Xorg
[242748.377182] [   3124]     0  3124     1404        0    45056       33  =
           0 agetty
[242748.377188] [   3145]     0  3145     1861       13    53248       53  =
           0 inetd
[242748.377195] [   3449]     0  3449    41653      113    86016      173  =
           0 lightdm
[242748.377201] [   3481]  1000  3481     5374      144    73728      284  =
           0 systemd
[242748.377208] [   3484]  1000  3484     5800       38    73728      598  =
           0 (sd-pam)
[242748.377215] [   3497]  1000  3497   115629      344   122880      190  =
           0 gnome-keyring-d
[242748.377221] [   3501]  1000  3501    71234      529   188416      713  =
           0 x-session-manag
[242748.377228] [   3510]  1000  3510     2341      242    53248       52  =
           0 dbus-daemon
[242748.377234] [   3555]  1000  3555     1464        9    40960      110  =
           0 ssh-agent
[242748.377240] [   3572]  1000  3572    79324      709   106496      367  =
           0 ibus-daemon
[242748.377247] [   3573]  1000  3573    79177        0   102400      247  =
           0 at-spi-bus-laun
[242748.377253] [   3576]  1000  3576    60048      130    94208      125  =
           0 gvfsd
[242748.377259] [   3585]  1000  3585    60151        0   102400      242  =
           0 ibus-dconf
[242748.377266] [   3586]  1000  3586    72730      869   192512     1390  =
           0 ibus-ui-gtk3
[242748.377272] [   3587]  1000  3587    71126      597   184320     1598  =
           0 ibus-extension-
[242748.377279] [   3589]  1000  3589    51661      462   172032      719  =
           0 ibus-x11
[242748.377285] [   3591]  1000  3591    60167      151    98304      137  =
           0 ibus-portal
[242748.377291] [   3601]  1000  3601     2205      103    53248       57  =
           0 dbus-daemon
[242748.377297] [   3604]  1000  3604    43536      117   102400      116  =
           0 at-spi2-registr
[242748.377303] [   3617]  1000  3617    40020      301    69632       64  =
           0 dconf-service
[242748.377310] [   3621]  1000  3621    41717      166    94208      123  =
           0 ibus-engine-sim
[242748.377317] [   3631]  1000  3631   342502     1982   339968     1201  =
           0 mate-settings-d
[242748.377323] [   3635]  1000  3635   166990     5799   352256     1080  =
           0 marco
[242748.377329] [   3640]  1000  3640   293558      659   380928      771  =
           0 pulseaudio
[242748.377336] [   3653]  1000  3653   178030     4623   319488     1991  =
           0 mate-panel
[242748.377342] [   3654]   109  3654    38163        0    61440       65  =
           0 rtkit-daemon
[242748.377348] [   3676]  1000  3676   174177     1071   339968     2029  =
           0 caja
[242748.377355] [   3682]  1000  3682   105451     2917   282624      972  =
           0 wnck-applet
[242748.377362] [   3683]  1000  3683   107033      407   147456      267  =
           0 gvfs-udisks2-vo
[242748.377368] [   3684]  1000  3684   131759      762   241664     1322  =
           0 mate-volume-con
[242748.377375] [   3692]  1000  3692    59402        0    86016      156  =
           0 agent
[242748.377381] [   3693]  1000  3693   104082     2060   266240     1211  =
           0 nm-applet
[242748.377388] [   3698]  1000  3698    93387     4527   233472      668  =
           0 mate-power-mana
[242748.377394] [   3704]  1000  3704    17872      461   176128     2190  =
           0 smart-notifier
[242748.377401] [   3706]  1000  3706    60207       39    98304      197  =
           0 gvfs-gphoto2-vo
[242748.377407] [   3707]  1000  3707   164184      491   393216     2320  =
           0 evolution-alarm
[242748.377414] [   3713]  1000  3713   100177     5368   278528     1077  =
           0 mate-screensave
[242748.377421] [   3718]  1000  3718    59554       69    98304      115  =
           0 gvfs-mtp-volume
[242748.377428] [   3720]  1000  3720    50404      288   159744      234  =
           0 polkit-mate-aut
[242748.377434] [   3727]  1000  3727    59097        0    90112      209  =
           0 gvfs-goa-volume
[242748.377441] [   3731]  1000  3731    79764        0   114688      307  =
           0 gvfs-afc-volume
[242748.377447] [   3744]     0  3744    64664      233   110592      146  =
           0 upowerd
[242748.377454] [   3781]  1000  3781    89718      592   200704     1179  =
           0 notification-ar
[242748.377460] [   3782]  1000  3782   120658     1312   253952      957  =
           0 mateweather-app
[242748.377467] [   3783]  1000  3783   102688     1498   258048     1014  =
           0 clock-applet
[242748.377473] [   3785]  1000  3785    81767      752   229376     1324  =
           0 mate-inhibit-ap
[242748.377479] [   3787]  1000  3787    91910     2655   208896     1019  =
           0 command-applet
[242748.377485] [   3793]  1000  3793   256367      508   307200      626  =
           0 evolution-sourc
[242748.377491] [   3825]  1000  3825    79439      167   110592      194  =
           0 gvfsd-trash
[242748.377496] [   3832]  1000  3832   233198      238   331776      984  =
           0 evolution-calen
[242748.377503] [   3844]  1000  3844   168623      201   245760      853  =
           0 evolution-addre
[242748.377509] [   4430]  1000  4430   209699     9385   421888     1762  =
           0 mate-terminal
[242748.377515] [   4438]  1000  4438     1749      140    49152        6  =
           0 bash
[242748.377521] [   4460]  1000  4460     4244      836    61440      118  =
           0 herdd.py
[242748.377527] [   4461]  1000  4461     1662       59    45056        0  =
           0 bash
[242748.377533] [   4462]  1000  4462    35989     1475   180224      136  =
           0 gkrellm
[242748.377540] [   4463]  1000  4463     1749      105    45056        5  =
           0 bash
[242748.377546] [   4464]  1000  4464     1749      145    45056        0  =
           0 bash
[242748.377552] [   4469]     0  4469     2491       96    57344        0  =
           0 sudo
[242748.377559] [   4470]  1000  4470    63543     1687   299008     3234  =
           0 emacs
[242748.377565] [   4472]  1000  4472     1749      143    49152        0  =
           0 bash
[242748.377571] [   4479]     0  4479     2385       92    49152        0  =
           0 su
[242748.377577] [   4484]     0  4484     1749      103    53248        0  =
           0 bash
[242748.377583] [   4501]  1000  4501     1695       57    49152       55  =
           0 monitor
[242748.377590] [   4561]  1000  4561     1749      134    49152       11  =
           0 bash
[242748.377596] [   8880]  1000  8880     1781       58    49152       98  =
           0 bash
[242748.377602] [   8912]  1000  8912     1464       48    49152       74  =
           0 ssh-agent
[242748.377608] [   8946]  1000  8946     1781       92    49152       64  =
           0 bash
[242748.377614] [   9849]  1000  9849     1817      150    53248       58  =
           0 bash
[242748.377620] [  12046]  1000 12046     1782       95    49152       62  =
           0 bash
[242748.377626] [  12064]  1000 12064     1782      107    53248       60  =
           0 bash
[242748.377632] [  13326]  1000 13326     1749       88    49152       62  =
           0 bash
[242748.377638] [  13400]  1000 13400     1774      130    49152       59  =
           0 bash
[242748.377644] [  27250]  1000 27250   941521   196351  4624384    92222  =
           0 chromium
[242748.377651] [  27267]  1000 27267    97555      418   634880     2597  =
           0 chromium
[242748.377658] [  27293]  1000 27293   393319   113898  2084864    10072  =
         200 chromium
[242748.377665] [  27297]  1000 27297   463907    27341   987136     4051  =
         200 chromium
[242748.377670] [  27352]  1000 27352  1386285     6677  1175552     5102  =
         300 chromium
[242748.377676] [  27450]  1000 27450  1394444    12135  1363968     2757  =
         300 chromium
[242748.377682] [  27575]  1000 27575  1407326    21151  1982464    13855  =
         300 chromium
[242748.377688] [  27680]  1000 27680  1447905    11792  1327104     2152  =
         300 chromium
[242748.377695] [  27718]  1000 27718  1375399     3607   942080     3524  =
         300 chromium
[242748.377701] [  27740]  1000 27740  1450457     3703  1503232    15344  =
         300 chromium
[242748.377707] [  27755]  1000 27755  1373964      974   884736     3640  =
         300 chromium
[242748.377713] [  27768]  1000 27768  1382963     9953  1146880     3801  =
         300 chromium
[242748.377719] [  27789]  1000 27789  1379963     1305  1036288     7944  =
         300 chromium
[242748.377725] [  27803]  1000 27803  1377158      999  1024000     6543  =
         300 chromium
[242748.377731] [  27997]  1000 27997  1386729     8939  1200128     2660  =
         300 chromium
[242748.377738] [  29094]  1000 29094  1387925     4989  1282048    12622  =
         300 chromium
[242748.377744] [   6918]  1000  6918  1399995     6171  1589248    19528  =
         300 chromium
[242748.377751] [   6969]  1000  6969  1376628     1126  1036288     6013  =
         300 chromium
[242748.377757] [   6990]  1000  6990  1354023      897   839680     3157  =
         300 chromium
[242748.377763] [   7003]  1000  7003  1381223     2373  1064960     6833  =
         300 chromium
[242748.377769] [   7312]  1000  7312     1778      135    45056       60  =
           0 bash
[242748.377776] [   8367]  1000  8367  1455143    32526  2039808     3236  =
         300 chromium
[242748.377782] [   9492]  1000  9492  1382635     8002  1167360     2481  =
         300 chromium
[242748.377788] [  23127]  1000 23127     1749       59    49152       89  =
           0 bash
[242748.377794] [  23997]  1000 23997     1749       82    49152       67  =
           0 bash
[242748.377800] [  32288]  1000 32288    20242       70    53248        8  =
           0 gpg-agent
[242748.377806] [   2789]  1000  2789     1774       90    53248       70  =
           0 bash
[242748.377812] [   2892]  1000  2892    97953      145   114688      212  =
           0 gvfsd-network
[242748.377818] [   2926]  1000  2926    78818       19   106496      255  =
           0 gvfsd-dnssd
[242748.377824] [   4428]  1000  4428  1355512      933   876544     3580  =
         300 chromium
[242748.377830] [   5272]   118  5272     2444        2    61440       87  =
           0 gpsd
[242748.377836] [   5494]  1000  5494     1749       63    49152       84  =
           0 bash
[242748.377841] [   5508]  1000  5508     1749        0    49152      145  =
           0 bash
[242748.377847] [   5528]  1000  5528     1662        0    49152       61  =
           0 e
[242748.377852] [   5529]  1000  5529    61627       32   282624     2995  =
           0 emacs
[242748.377858] [   5660]  1000  5660     1749       81    53248       67  =
           0 bash
[242748.377864] [   5849]  1000  5849  1384034     8637  1167360     3882  =
         300 chromium
[242748.377882] [  12235]  1000 12235  1395105    12120  1495040     6746  =
         300 chromium
[242748.377889] [  27409]  1000 27409     1749        0    45056      154  =
           0 bash
[242748.377895] [  27489]  1000 27489     1749       76    49152       77  =
           0 bash
[242748.377901] [  28256]     0 28256     2491        0    53248       97  =
           0 sudo
[242748.377907] [  28261]     0 28261     2380        0    49152      101  =
           0 su
[242748.377913] [  28266]     0 28266     1749        0    49152      146  =
           0 bash
[242748.377918] [  28579]  1000 28579  1383242     3248  1138688    10880  =
         300 chromium
[242748.377924] [  28850]  1000 28850     1749       73    45056       72  =
           0 bash
[242748.377930] [   8473]  1000  8473  1384150     4532  1245184     9781  =
         300 chromium
[242748.377950] [   8489]  1000  8489  1387212     2494  1228800     9367  =
         300 chromium
[242748.377957] [  22511]  1000 22511  1385576     8977  1191936     6050  =
         300 chromium
[242748.377963] [  22527]  1000 22527  1378158     3684  1024000     4406  =
         300 chromium
[242748.377970] [  31609]  1000 31609  1402952    10204  1228800     3396  =
         300 chromium
[242748.377974] [   7510]  1000  7510    43350      196    94208     1929  =
           0 dirmngr
[242748.377977] [   9644]  1000  9644  1385522    10929  1146880     5168  =
         300 chromium
[242748.377984] [   9660]  1000  9660  1379020     5198  1024000     3218  =
         300 chromium
[242748.377991] [   9876]  1000  9876  1394893    10003  1413120     7062  =
         300 chromium
[242748.377998] [   9909]  1000  9909  3580592    25599  2310144    17097  =
         300 chromium
[242748.378004] [   9939]  1000  9939  1354023     1224   835584     2781  =
         300 chromium
[242748.378010] [   9946]  1000  9946  1354029     1731   835584     2277  =
         300 chromium
[242748.378016] [   9964]  1000  9964  1353997     1464   835584     2545  =
         300 chromium
[242748.378023] [   9975]  1000  9975  1353999     1116   835584     2894  =
         300 chromium
[242748.378029] [   9988]  1000  9988  1353997     1011   839680     2998  =
         300 chromium
[242748.378036] [  10000]  1000 10000  1353999     1001   839680     3009  =
         300 chromium
[242748.378042] [  10007]  1000 10007  1354027     1527   835584     2480  =
         300 chromium
[242748.378049] [  10027]  1000 10027  1354028     1228   835584     2815  =
         300 chromium
[242748.378055] [  10033]  1000 10033  1354028     1140   839680     2869  =
         300 chromium
[242748.378061] [  10048]  1000 10048  1354028     1008   835584     2998  =
         300 chromium
[242748.378068] [  11184]  1000 11184  1435827    14017  1298432     2486  =
         300 chromium
[242748.378074] [  11208]  1000 11208  1374421     3016   913408     2298  =
         300 chromium
[242748.378081] [  11225]  1000 11225  1373755     2542   888832     2378  =
         300 chromium
[242748.378087] [  11238]  1000 11238  1374931     2755   892928     2304  =
         300 chromium
[242748.378094] [  24356]  1000 24356  1433292    11725  2240512     1971  =
         300 chromium
[242748.378100] [  26296]  1000 26296     1662        0    49152       61  =
           0 e
[242748.378107] [  26297]  1000 26297    64768     5537   303104      689  =
           0 emacs
[242748.378113] [  11902]  1000 11902  1492336    52163  2437120     2028  =
         300 chromium
[242748.378119] [  19550]  1000 19550  1401606    14139  1183744     1992  =
         300 chromium
[242748.378126] [  19571]  1000 19571  1375375     4304   946176     2077  =
         300 chromium
[242748.378131] [  19590]  1000 19590  1374764     3463   905216     2081  =
         300 chromium
[242748.378137] [  25469]  1000 25469  1458545    27560  1523712     3571  =
         300 chromium
[242748.378143] [  25487]  1000 25487  1384598     4790  1003520     2050  =
         300 chromium
[242748.378148] [  25522]  1000 25522  1373501     2232   888832     2274  =
         300 chromium
[242748.378155] [  25564]  1000 25564  1373511     2112   909312     2365  =
         300 chromium
[242748.378161] [   7859]  1000  7859  1374795     3250   905216     2027  =
         300 chromium
[242748.378167] [  13674]  1000 13674  1375086     4880   921600     2007  =
         300 chromium
[242748.378173] [  13909]  1000 13909  1378716     8410   974848     1999  =
         300 chromium
[242748.378179] [  17343]  1000 17343  1384941    32045  1282048     1952  =
         300 chromium
[242748.378185] [  23333]  1000 23333     1779      164    49152        0  =
           0 bash
[242748.378192] [  16242]  1000 16242     1695      109    53248        0  =
           0 xa2
[242748.378199] [  31707]  1000 31707  1455209    22495  1622016     1812  =
         300 chromium
[242748.378205] [  32369]  1000 32369  1473695    27899  1720320     1817  =
         300 chromium
[242748.378212] [   4073]  1000  4073  1407202    23054  1622016     1926  =
         300 chromium
[242748.378219] [   9099]  1000  9099  1364980    10042   995328     1979  =
         300 chromium
[242748.378226] [  21739]  1000 21739  1357456     4054   937984     1985  =
         300 chromium
[242748.378232] [  24772]  1000 24772     1816      190    49152        0  =
           0 bash
[242748.378239] [   5203]  1000  5203  1381819     9478  1048576     1975  =
         300 chromium
[242748.378245] [  12900]  1000 12900     1662       61    53248        0  =
           0 e
[242748.378252] [  12901]  1000 12901    65667     7030   315392        0  =
           0 emacs
[242748.378259] [  17036]  1000 17036  1384174     8794  1093632     1954  =
         300 chromium
[242748.378265] [  20051]  1000 20051     2224      188    53248        0  =
           0 screen
[242748.378272] [  20052]  1000 20052     1749      142    49152        0  =
           0 bash
[242748.378278] [  24512]  1000 24512     1749       87    49152       61  =
           0 bash
[242748.378285] [  24526]  1000 24526    10055     1870   114688        0  =
           0 mutt
[242748.378292] [  25715]  1000 25715  1375089     3831   913408     2028  =
         300 chromium
[242748.378298] [  27611]  1000 27611     1662       61    49152        0  =
           0 e
[242748.378305] [  27613]  1000 27613    61663     3012   274432        0  =
           0 emacs
[242748.378311] [  27928]  1000 27928  1457164    35527  1527808     1807  =
         300 chromium
[242748.378318] [  31033]  1000 31033     1662       60    49152        0  =
           0 e
[242748.378325] [  31034]  1000 31034    61770     3177   270336        0  =
           0 emacs
[242748.378332] [    893]  1000   893   417107      509   675840        0  =
           0 git
[242748.378339] [    898]  1000   898     1401       51    53248        0  =
           0 pager
[242748.378345] [   2621]  1000  2621  1377512     7317   987136     2009  =
         300 chromium
[242748.378351] [   2634]  1000  2634  1374730     3843   929792     2030  =
         300 chromium
[242748.378358] [   2647]  1000  2647  1378097    10594   970752     2077  =
         300 chromium
[242748.378364] [   2678]  1000  2678  1381698     8828  1105920     2036  =
         300 chromium
[242748.378371] [   2985]  1000  2985  1384393    14165  1191936     1972  =
         300 chromium
[242748.378378] [   3000]  1000  3000  1359223     4544   970752     2015  =
         300 chromium
[242748.378385] [   5289]  1000  5289  1375736     5248   909312     2005  =
         300 chromium
[242748.378392] [   7246]  1000  7246   292225     3017   684032        0  =
         200 chromium
[242748.378398] [   7302]  1000  7302  1443634    20370  1269760     1870  =
         300 chromium
[242748.378405] [   7414]  1000  7414  1375314     6295   937984     2032  =
         300 chromium
[242748.378411] [   7431]  1000  7431  1373507     2325   905216     2074  =
         300 chromium
[242748.378418] [   8076]  1000  8076     1662       87    49152        0  =
           0 amutt
[242748.378425] [   8077]  1000  8077    10854     4551   118784        0  =
           0 mutt
[242748.378431] [   8091]  1000  8091      598       17    40960        0  =
           0 sh
[242748.378438] [   8092]  1000  8092     4657      391    65536        0  =
           0 ssh
[242748.378445] [   9312]  1000  9312  1357698     7278   950272     2074  =
         300 chromium
[242748.378452] [  10245]  1000 10245  1356056     2973   905216     2070  =
         300 chromium
[242748.378458] [  10350]  1000 10350  1355473     3313   913408     2054  =
         300 chromium
[242748.378466] [  10783]  1000 10783     1316       16    40960        0  =
           0 sleep
[242748.378472] [  11366]  1000 11366  1462006    42067  1798144     1816  =
         300 chromium
[242748.378478] [  12482]  1000 12482     1774      102    49152       59  =
           0 bash
[242748.378484] [  12483]  1000 12483    10033     1952   114688        0  =
           0 mutt
[242748.378491] [  12561]  1000 12561     1316       17    40960        0  =
           0 sleep
[242748.378497] [  12563]     0 12563     4166      311    65536        0  =
           0 sshd
[242748.378503] [  12573]  1000 12573     4166      275    65536        0  =
           0 sshd
[242748.378508] [  12575]  1000 12575   307166   115421  1069056        0  =
           0 unison
[242748.378520] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D11902,uid=3D1000
[242748.378587] Out of memory: Killed process 11902 (chromium) total-vm:596=
9344kB, anon-rss:202804kB, file-rss:0kB, shmem-rss:5848kB, UID:1000 pgtable=
s:2380kB oom_score_adj:300
[242748.413309] oom_reaper: reaped process 11902 (chromium), now anon-rss:0=
kB, file-rss:0kB, shmem-rss:5060kB
[242748.839938] unison invoked oom-killer: gfp_mask=3D0x100dca(GFP_HIGHUSER=
_MOVABLE|__GFP_ZERO), order=3D0, oom_score_adj=3D0
[242748.839945] CPU: 0 PID: 12575 Comm: unison Tainted: G        W         =
5.6.0-rc7+ #84
[242748.839948] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[242748.839950] Call Trace:
[242748.839959]  dump_stack+0x59/0x7a
[242748.839964]  dump_header+0x52/0x370
[242748.839968]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
[242748.839972]  oom_kill_process.cold.34+0xb/0x10e
[242748.839975]  out_of_memory+0x224/0x420
[242748.839979]  __alloc_pages_slowpath+0x91e/0xb20
[242748.839983]  __alloc_pages_nodemask+0x1b3/0x1e0
[242748.839988]  __handle_mm_fault+0x7a1/0xb70
[242748.839992]  handle_mm_fault+0x51/0xc0
[242748.839995]  do_page_fault+0x21e/0x458
[242748.839999]  page_fault+0x2c/0x40
[242748.840002] RIP: 0033:0x55ef961cc711
[242748.840006] Code: 89 15 13 ae 48 00 8b 35 fd ad 48 00 4c 89 c9 48 83 e0=
 f8 48 c1 e1 0a 48 83 e8 01 4c 89 04 24 48 8d 8c 0e fc 00 00 00 4c 89 f6 <4=
8> 89 0a 4a 8d 4c ca 08 48 c7 44 38 f9 00 00 00 00 48 89 0d e7 ad
[242748.840009] RSP: 002b:00007ffff23862c0 EFLAGS: 00010216
[242748.840012] RAX: 000000000000000f RBX: 000055ef96656280 RCX: 0000000000=
0008fc
[242748.840014] RDX: 00007f5082692010 RSI: 00007f508cd24716 RDI: 00007f5082=
692018
[242748.840017] RBP: 00007f5082691ff0 R08: 000055ef96655ce0 R09: 0000000000=
000002
[242748.840019] R10: 00007f508cd246f9 R11: 0000000000000206 R12: 0000000000=
00000b
[242748.840021] R13: 000000000000002b R14: 00007f508cd24716 R15: 00007f5082=
692018
[242748.840024] Mem-Info:
[242748.840029] active_anon:1210111 inactive_anon:172955 isolated_anon:0
                 active_file:544 inactive_file:950 isolated_file:0
                 unevictable:3656 dirty:8 writeback:8 unstable:0
                 slab_reclaimable:15118 slab_unreclaimable:30815
                 mapped:67146 shmem:201884 pagetables:24538 bounce:0
                 free:16130 free_pcp:0 free_cma:0
[242748.840033] Node 0 active_anon:4840444kB inactive_anon:691820kB active_=
file:2176kB inactive_file:3800kB unevictable:14624kB isolated(anon):0kB iso=
lated(file):0kB mapped:268584kB dirty:32kB writeback:32kB shmem:807536kB wr=
iteback_tmp:0kB unstable:0kB all_unreclaimable? no
[242748.840038] DMA free:15360kB min:24kB low:36kB high:48kB reserved_higha=
tomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0=
kB unevictable:0kB writepending:0kB present:15984kB managed:15360kB mlocked=
:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB =
free_cma:0kB
[242748.840040] lowmem_reserve[]: 0 3381 5815 5815
[242748.840046] DMA32 free:32492kB min:24540kB low:28000kB high:31460kB res=
erved_highatomic:4096KB active_anon:2766960kB inactive_anon:514544kB active=
_file:2332kB inactive_file:2124kB unevictable:52kB writepending:152kB prese=
nt:3561088kB managed:3466340kB mlocked:52kB kernel_stack:7624kB pagetables:=
40044kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
[242748.840048] lowmem_reserve[]: 0 0 2433 2433
[242748.840054] Normal free:16668kB min:17664kB low:20156kB high:22648kB re=
served_highatomic:4096KB active_anon:2073872kB inactive_anon:176256kB activ=
e_file:916kB inactive_file:928kB unevictable:14572kB writepending:60kB pres=
ent:2594816kB managed:2492040kB mlocked:228kB kernel_stack:14344kB pagetabl=
es:58108kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
[242748.840056] lowmem_reserve[]: 0 0 0 0
[242748.840059] DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB 0*256kB 0*512=
kB 1*1024kB (U) 1*2048kB (U) 3*4096kB (M) =3D 15360kB
[242748.840067] DMA32: 205*4kB (UM) 15*8kB (UM) 708*16kB (UME) 456*32kB (UE=
) 42*64kB (UE) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 1*4096kB (H) =3D 3=
3644kB
[242748.840076] Normal: 2187*4kB (UMEH) 711*8kB (UEH) 104*16kB (UEH) 11*32k=
B (EH) 0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 16452kB
[242748.840084] 205673 total pagecache pages
[242748.840087] 2228 pages in swap cache
[242748.840090] Swap cache stats: add 2397802, delete 2395526, find 2203910=
/2527025
[242748.840092] Free swap  =3D 0kB
[242748.840094] Total swap =3D 1681428kB
[242748.840096] 1542972 pages RAM
[242748.840098] 0 pages HighMem/MovableOnly
[242748.840100] 49537 pages reserved
[242748.840102] Tasks state (memory values in pages):
[242748.840105] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swap=
ents oom_score_adj name
[242748.840110] [   1743]     0  1743    23906     6666   294912      233  =
           0 systemd-journal
[242748.840114] [   1814]     0  1814     1923        1    49152       61  =
           0 blkmapd
[242748.840119] [   2709]     0  2709     5224      108    65536      307  =
       -1000 systemd-udevd
[242748.840123] [   2886]     0  2886     2271        7    49152       39  =
           0 rpc.idmapd
[242748.840127] [   2901]   116  2901     1707        5    49152      111  =
           0 rpcbind
[242748.840130] [   2904]   101  2904    23809       29    90112      210  =
           0 systemd-timesyn
[242748.840134] [   2910]     0  2910     2022        0    49152      784  =
           0 haveged
[242748.840138] [   2942]     0  2942     2527       64    53248      302  =
           0 smartd
[242748.840142] [   2943]   112  2943     2001       61    49152       44  =
           0 avahi-daemon
[242748.840146] [   2944]     0  2944     7856      135    90112       80  =
           0 alsactl
[242748.840150] [   2948]   112  2948     1969        6    49152       69  =
           0 avahi-daemon
[242748.840154] [   2950]     0  2950   137377      584   155648      649  =
           0 udisksd
[242748.840158] [   2955]   104  2955     2422      305    57344       72  =
        -900 dbus-daemon
[242748.840162] [   2956]     0  2956   170256      503   180224      303  =
           0 NetworkManager
[242748.840166] [   2958]     0  2958     5039      164    77824      115  =
           0 wpa_supplicant
[242748.840170] [   2959]     0  2959    56457      267    98304      202  =
           0 rsyslogd
[242748.840174] [   2960]     0  2960    61197      266   106496      180  =
           0 ModemManager
[242748.840178] [   2963]     0  2963     3373       73    57344       63  =
           0 bluetoothd
[242748.840182] [   2965]     0  2965     4914      115    69632      185  =
           0 systemd-logind
[242748.840185] [   2967]     0  2967    60655      304   102400      107  =
           0 accounts-daemon
[242748.840189] [   3024]     0  3024    60235      431   102400      198  =
           0 polkitd
[242748.840193] [   3038]     0  3038     3964       39    65536      175  =
       -1000 sshd
[242748.840197] [   3052]     0  3052     7941        0    98304     6279  =
           0 rpc.mountd
[242748.840201] [   3111]     0  3111     2127       25    57344       41  =
           0 cron
[242748.840205] [   3116]     0  3116    60838      212   106496      162  =
           0 lightdm
[242748.840209] [   3123]     0  3123   177783    32176   745472    12438  =
           0 Xorg
[242748.840213] [   3124]     0  3124     1404        0    45056       33  =
           0 agetty
[242748.840217] [   3145]     0  3145     1861       13    53248       53  =
           0 inetd
[242748.840221] [   3449]     0  3449    41653      113    86016      173  =
           0 lightdm
[242748.840225] [   3481]  1000  3481     5374      144    73728      284  =
           0 systemd
[242748.840229] [   3484]  1000  3484     5800       38    73728      598  =
           0 (sd-pam)
[242748.840233] [   3497]  1000  3497   115629      344   122880      190  =
           0 gnome-keyring-d
[242748.840237] [   3501]  1000  3501    71234      529   188416      713  =
           0 x-session-manag
[242748.840241] [   3510]  1000  3510     2341      242    53248       52  =
           0 dbus-daemon
[242748.840244] [   3555]  1000  3555     1464        9    40960      110  =
           0 ssh-agent
[242748.840248] [   3572]  1000  3572    79324      709   106496      367  =
           0 ibus-daemon
[242748.840252] [   3573]  1000  3573    79177        0   102400      247  =
           0 at-spi-bus-laun
[242748.840256] [   3576]  1000  3576    60048      130    94208      125  =
           0 gvfsd
[242748.840260] [   3585]  1000  3585    60151        0   102400      242  =
           0 ibus-dconf
[242748.840264] [   3586]  1000  3586    72730      869   192512     1390  =
           0 ibus-ui-gtk3
[242748.840268] [   3587]  1000  3587    71126      597   184320     1598  =
           0 ibus-extension-
[242748.840272] [   3589]  1000  3589    51661      462   172032      719  =
           0 ibus-x11
[242748.840276] [   3591]  1000  3591    60167      151    98304      137  =
           0 ibus-portal
[242748.840280] [   3601]  1000  3601     2205      103    53248       57  =
           0 dbus-daemon
[242748.840284] [   3604]  1000  3604    43536      117   102400      116  =
           0 at-spi2-registr
[242748.840288] [   3617]  1000  3617    40020      301    69632       64  =
           0 dconf-service
[242748.840292] [   3621]  1000  3621    41717      166    94208      123  =
           0 ibus-engine-sim
[242748.840296] [   3631]  1000  3631   342502     1982   339968     1201  =
           0 mate-settings-d
[242748.840299] [   3635]  1000  3635   166990     5648   352256     1080  =
           0 marco
[242748.840303] [   3640]  1000  3640   293558      659   380928      771  =
           0 pulseaudio
[242748.840307] [   3653]  1000  3653   178030     4623   319488     1991  =
           0 mate-panel
[242748.840311] [   3654]   109  3654    38163        0    61440       65  =
           0 rtkit-daemon
[242748.840314] [   3676]  1000  3676   174177     1071   339968     2029  =
           0 caja
[242748.840318] [   3682]  1000  3682   105451     2917   282624      972  =
           0 wnck-applet
[242748.840322] [   3683]  1000  3683   107033      407   147456      267  =
           0 gvfs-udisks2-vo
[242748.840326] [   3684]  1000  3684   131759      762   241664     1322  =
           0 mate-volume-con
[242748.840329] [   3692]  1000  3692    59402        0    86016      156  =
           0 agent
[242748.840333] [   3693]  1000  3693   104082     2060   266240     1211  =
           0 nm-applet
[242748.840337] [   3698]  1000  3698    93387     4527   233472      668  =
           0 mate-power-mana
[242748.840341] [   3704]  1000  3704    17872      461   176128     2190  =
           0 smart-notifier
[242748.840344] [   3706]  1000  3706    60207       39    98304      197  =
           0 gvfs-gphoto2-vo
[242748.840348] [   3707]  1000  3707   164184      491   393216     2320  =
           0 evolution-alarm
[242748.840352] [   3713]  1000  3713   100177     5354   278528     1077  =
           0 mate-screensave
[242748.840356] [   3718]  1000  3718    59554       69    98304      115  =
           0 gvfs-mtp-volume
[242748.840360] [   3720]  1000  3720    50404      288   159744      234  =
           0 polkit-mate-aut
[242748.840364] [   3727]  1000  3727    59097        0    90112      209  =
           0 gvfs-goa-volume
[242748.840368] [   3731]  1000  3731    79764        0   114688      307  =
           0 gvfs-afc-volume
[242748.840371] [   3744]     0  3744    64664      233   110592      146  =
           0 upowerd
[242748.840375] [   3781]  1000  3781    89718      592   200704     1179  =
           0 notification-ar
[242748.840379] [   3782]  1000  3782   120658     1312   253952      957  =
           0 mateweather-app
[242748.840383] [   3783]  1000  3783   102688     1498   258048     1014  =
           0 clock-applet
[242748.840386] [   3785]  1000  3785    81767      752   229376     1324  =
           0 mate-inhibit-ap
[242748.840390] [   3787]  1000  3787    91910     2531   208896     1019  =
           0 command-applet
[242748.840424] [   3793]  1000  3793   256367      508   307200      626  =
           0 evolution-sourc
[242748.840429] [   3825]  1000  3825    79439      167   110592      194  =
           0 gvfsd-trash
[242748.840434] [   3832]  1000  3832   233198      238   331776      984  =
           0 evolution-calen
[242748.840440] [   3844]  1000  3844   168623      201   245760      853  =
           0 evolution-addre
[242748.840447] [   4430]  1000  4430   209699     9385   421888     1762  =
           0 mate-terminal
[242748.840453] [   4438]  1000  4438     1749      140    49152        6  =
           0 bash
[242748.840459] [   4460]  1000  4460     4244      816    61440      118  =
           0 herdd.py
[242748.840466] [   4461]  1000  4461     1662       59    45056        0  =
           0 bash
[242748.840472] [   4462]  1000  4462    35989     1049   180224      136  =
           0 gkrellm
[242748.840478] [   4463]  1000  4463     1749      105    45056        5  =
           0 bash
[242748.840484] [   4464]  1000  4464     1749      145    45056        0  =
           0 bash
[242748.840490] [   4469]     0  4469     2491       96    57344        0  =
           0 sudo
[242748.840497] [   4470]  1000  4470    63543     1687   299008     3234  =
           0 emacs
[242748.840503] [   4472]  1000  4472     1749      143    49152        0  =
           0 bash
[242748.840509] [   4479]     0  4479     2385       92    49152        0  =
           0 su
[242748.840515] [   4484]     0  4484     1749      103    53248        0  =
           0 bash
[242748.840522] [   4501]  1000  4501     1695       46    49152       55  =
           0 monitor
[242748.840528] [   4561]  1000  4561     1749      134    49152       11  =
           0 bash
[242748.840535] [   8880]  1000  8880     1781       58    49152       98  =
           0 bash
[242748.840540] [   8912]  1000  8912     1464       48    49152       74  =
           0 ssh-agent
[242748.840546] [   8946]  1000  8946     1781       92    49152       64  =
           0 bash
[242748.840551] [   9849]  1000  9849     1817      150    53248       58  =
           0 bash
[242748.840557] [  12046]  1000 12046     1782       95    49152       62  =
           0 bash
[242748.840564] [  12064]  1000 12064     1782      107    53248       60  =
           0 bash
[242748.840570] [  13326]  1000 13326     1749       88    49152       62  =
           0 bash
[242748.840576] [  13400]  1000 13400     1774      112    49152       59  =
           0 bash
[242748.840582] [  27250]  1000 27250   940496   195755  4620288    92445  =
           0 chromium
[242748.840589] [  27267]  1000 27267    97555      368   634880     2597  =
           0 chromium
[242748.840596] [  27293]  1000 27293   393291   113864  2084864    10072  =
         200 chromium
[242748.840602] [  27297]  1000 27297   463875    27322   987136     4051  =
         200 chromium
[242748.840609] [  27352]  1000 27352  1386285     6677  1175552     5102  =
         300 chromium
[242748.840615] [  27450]  1000 27450  1394444    12135  1363968     2757  =
         300 chromium
[242748.840621] [  27575]  1000 27575  1407326    21151  1982464    13855  =
         300 chromium
[242748.840627] [  27680]  1000 27680  1447905    11792  1327104     2152  =
         300 chromium
[242748.840633] [  27718]  1000 27718  1375399     3607   942080     3524  =
         300 chromium
[242748.840640] [  27740]  1000 27740  1450457     3703  1503232    15344  =
         300 chromium
[242748.840647] [  27755]  1000 27755  1373964      974   884736     3640  =
         300 chromium
[242748.840653] [  27768]  1000 27768  1382963     9961  1146880     3801  =
         300 chromium
[242748.840659] [  27789]  1000 27789  1379963     1305  1036288     7944  =
         300 chromium
[242748.840665] [  27803]  1000 27803  1377158      999  1024000     6543  =
         300 chromium
[242748.840671] [  27997]  1000 27997  1386729     8939  1200128     2660  =
         300 chromium
[242748.840677] [  29094]  1000 29094  1387925     4989  1282048    12622  =
         300 chromium
[242748.840683] [   6918]  1000  6918  1399995     6171  1589248    19528  =
         300 chromium
[242748.840689] [   6969]  1000  6969  1376628     1126  1036288     6013  =
         300 chromium
[242748.840696] [   6990]  1000  6990  1354023      897   839680     3157  =
         300 chromium
[242748.840702] [   7003]  1000  7003  1381223     2373  1064960     6833  =
         300 chromium
[242748.840708] [   7312]  1000  7312     1778      117    45056       60  =
           0 bash
[242748.840714] [   8367]  1000  8367  1455143    32526  2039808     3236  =
         300 chromium
[242748.840720] [   9492]  1000  9492  1382635     8002  1167360     2481  =
         300 chromium
[242748.840726] [  23127]  1000 23127     1749       59    49152       89  =
           0 bash
[242748.840732] [  23997]  1000 23997     1749       82    49152       67  =
           0 bash
[242748.840738] [  32288]  1000 32288    20242       70    53248        8  =
           0 gpg-agent
[242748.840744] [   2789]  1000  2789     1774       90    53248       70  =
           0 bash
[242748.840750] [   2892]  1000  2892    97953      145   114688      212  =
           0 gvfsd-network
[242748.840756] [   2926]  1000  2926    78818       19   106496      255  =
           0 gvfsd-dnssd
[242748.840762] [   4428]  1000  4428  1355512      933   876544     3580  =
         300 chromium
[242748.840769] [   5272]   118  5272     2444        2    61440       87  =
           0 gpsd
[242748.840775] [   5494]  1000  5494     1749       63    49152       84  =
           0 bash
[242748.840781] [   5508]  1000  5508     1749        0    49152      145  =
           0 bash
[242748.840786] [   5528]  1000  5528     1662        0    49152       61  =
           0 e
[242748.840792] [   5529]  1000  5529    61627       32   282624     2995  =
           0 emacs
[242748.840797] [   5660]  1000  5660     1749       81    53248       67  =
           0 bash
[242748.840803] [   5849]  1000  5849  1384034     8637  1167360     3882  =
         300 chromium
[242748.840810] [  12235]  1000 12235  1395105    12120  1495040     6746  =
         300 chromium
[242748.840816] [  27409]  1000 27409     1749        0    45056      154  =
           0 bash
[242748.840822] [  27489]  1000 27489     1749       76    49152       77  =
           0 bash
[242748.840829] [  28256]     0 28256     2491        0    53248       97  =
           0 sudo
[242748.840834] [  28261]     0 28261     2380        0    49152      101  =
           0 su
[242748.840840] [  28266]     0 28266     1749        0    49152      146  =
           0 bash
[242748.840845] [  28579]  1000 28579  1383242     3248  1138688    10880  =
         300 chromium
[242748.840851] [  28850]  1000 28850     1749       73    45056       72  =
           0 bash
[242748.840935] [   8473]  1000  8473  1384150     4532  1245184     9781  =
         300 chromium
[242748.840942] [   8489]  1000  8489  1387212     2494  1228800     9367  =
         300 chromium
[242748.840948] [  22511]  1000 22511  1385576     8977  1191936     6050  =
         300 chromium
[242748.840958] [  22527]  1000 22527  1378158     3684  1024000     4406  =
         300 chromium
[242748.840974] [  31609]  1000 31609  1402952    10204  1228800     3396  =
         300 chromium
[242748.840981] [   7510]  1000  7510    43350      196    94208     1929  =
           0 dirmngr
[242748.840987] [   9644]  1000  9644  1385522    10929  1146880     5168  =
         300 chromium
[242748.840993] [   9660]  1000  9660  1379020     5198  1024000     3218  =
         300 chromium
[242748.841000] [   9876]  1000  9876  1394893    10020  1413120     7062  =
         300 chromium
[242748.841006] [   9909]  1000  9909  3580592    25617  2310144    17097  =
         300 chromium
[242748.841012] [   9939]  1000  9939  1354023     1224   835584     2781  =
         300 chromium
[242748.841018] [   9946]  1000  9946  1354029     1731   835584     2277  =
         300 chromium
[242748.841024] [   9964]  1000  9964  1353997     1464   835584     2545  =
         300 chromium
[242748.841031] [   9975]  1000  9975  1353999     1116   835584     2894  =
         300 chromium
[242748.841037] [   9988]  1000  9988  1353997     1011   839680     2998  =
         300 chromium
[242748.841043] [  10000]  1000 10000  1353999     1001   839680     3009  =
         300 chromium
[242748.841049] [  10007]  1000 10007  1354027     1527   835584     2480  =
         300 chromium
[242748.841055] [  10027]  1000 10027  1354028     1228   835584     2815  =
         300 chromium
[242748.841060] [  10033]  1000 10033  1354028     1140   839680     2869  =
         300 chromium
[242748.841066] [  10048]  1000 10048  1354028     1008   835584     2998  =
         300 chromium
[242748.841072] [  11184]  1000 11184  1435827    14017  1298432     2486  =
         300 chromium
[242748.841078] [  11208]  1000 11208  1374421     3016   913408     2298  =
         300 chromium
[242748.841085] [  11225]  1000 11225  1373755     2542   888832     2378  =
         300 chromium
[242748.841091] [  11238]  1000 11238  1374931     2755   892928     2304  =
         300 chromium
[242748.841097] [  24356]  1000 24356  1433292    11725  2240512     1971  =
         300 chromium
[242748.841103] [  26296]  1000 26296     1662        0    49152       61  =
           0 e
[242748.841109] [  26297]  1000 26297    64768     5537   303104      689  =
           0 emacs
[242748.841115] [  19550]  1000 19550  1401606    14139  1183744     1992  =
         300 chromium
[242748.841120] [  19571]  1000 19571  1375375     4304   946176     2077  =
         300 chromium
[242748.841126] [  19590]  1000 19590  1374764     3463   905216     2081  =
         300 chromium
[242748.841131] [  25469]  1000 25469  1458545    27560  1523712     3571  =
         300 chromium
[242748.841137] [  25487]  1000 25487  1384598     4790  1003520     2050  =
         300 chromium
[242748.841142] [  25522]  1000 25522  1373501     2232   888832     2274  =
         300 chromium
[242748.841147] [  25564]  1000 25564  1373511     2112   909312     2365  =
         300 chromium
[242748.841153] [   7859]  1000  7859  1374795     3250   905216     2027  =
         300 chromium
[242748.841159] [  13674]  1000 13674  1375086     4880   921600     2007  =
         300 chromium
[242748.841165] [  13909]  1000 13909  1378716     8410   974848     1999  =
         300 chromium
[242748.841172] [  17343]  1000 17343  1384941    32045  1282048     1952  =
         300 chromium
[242748.841178] [  23333]  1000 23333     1779      164    49152        0  =
           0 bash
[242748.841184] [  16242]  1000 16242     1695      101    53248        0  =
           0 xa2
[242748.841190] [  31707]  1000 31707  1455209    22495  1622016     1812  =
         300 chromium
[242748.841197] [  32369]  1000 32369  1473695    27899  1720320     1817  =
         300 chromium
[242748.841203] [   4073]  1000  4073  1407202    23054  1622016     1926  =
         300 chromium
[242748.841209] [   9099]  1000  9099  1364980    10042   995328     1979  =
         300 chromium
[242748.841215] [  21739]  1000 21739  1357456     4054   937984     1985  =
         300 chromium
[242748.841221] [  24772]  1000 24772     1816      190    49152        0  =
           0 bash
[242748.841227] [   5203]  1000  5203  1381819     9478  1048576     1975  =
         300 chromium
[242748.841233] [  12900]  1000 12900     1662       61    53248        0  =
           0 e
[242748.841239] [  12901]  1000 12901    65667     7030   315392        0  =
           0 emacs
[242748.841245] [  17036]  1000 17036  1384174     8794  1093632     1954  =
         300 chromium
[242748.841250] [  20051]  1000 20051     2224      178    53248        0  =
           0 screen
[242748.841260] [  20052]  1000 20052     1749      142    49152        0  =
           0 bash
[242748.841275] [  24512]  1000 24512     1749       87    49152       61  =
           0 bash
[242748.841282] [  24526]  1000 24526    10055     1870   114688        0  =
           0 mutt
[242748.841288] [  25715]  1000 25715  1375089     3831   913408     2028  =
         300 chromium
[242748.841294] [  27611]  1000 27611     1662       61    49152        0  =
           0 e
[242748.841299] [  27613]  1000 27613    61663     3012   274432        0  =
           0 emacs
[242748.841305] [  27928]  1000 27928  1457164    35572  1527808     1807  =
         300 chromium
[242748.841312] [  31033]  1000 31033     1662       60    49152        0  =
           0 e
[242748.841318] [  31034]  1000 31034    61770     3177   270336        0  =
           0 emacs
[242748.841324] [    893]  1000   893   417107      509   675840        0  =
           0 git
[242748.841331] [    898]  1000   898     1401       51    53248        0  =
           0 pager
[242748.841337] [   2621]  1000  2621  1377512     7287   987136     2009  =
         300 chromium
[242748.841343] [   2634]  1000  2634  1374730     3843   929792     2030  =
         300 chromium
[242748.841349] [   2647]  1000  2647  1378097    10543   970752     2077  =
         300 chromium
[242748.841356] [   2678]  1000  2678  1381698     8879  1105920     2036  =
         300 chromium
[242748.841362] [   2985]  1000  2985  1384393    14204  1191936     1972  =
         300 chromium
[242748.841368] [   3000]  1000  3000  1359223     4544   970752     2015  =
         300 chromium
[242748.841374] [   5289]  1000  5289  1375736     5248   909312     2005  =
         300 chromium
[242748.841381] [   7246]  1000  7246   292225     3017   684032        0  =
         200 chromium
[242748.841388] [   7302]  1000  7302  1443634    20395  1269760     1870  =
         300 chromium
[242748.841394] [   7414]  1000  7414  1375314     6295   937984     2032  =
         300 chromium
[242748.841400] [   7431]  1000  7431  1373507     2325   905216     2074  =
         300 chromium
[242748.841406] [   8076]  1000  8076     1662       71    49152        0  =
           0 amutt
[242748.841412] [   8077]  1000  8077    10854     4529   118784        0  =
           0 mutt
[242748.841419] [   8091]  1000  8091      598       17    40960        0  =
           0 sh
[242748.841425] [   8092]  1000  8092     4657      371    65536        0  =
           0 ssh
[242748.841431] [   9312]  1000  9312  1357698     7220   950272     2074  =
         300 chromium
[242748.841437] [  10245]  1000 10245  1356056     2973   905216     2070  =
         300 chromium
[242748.841444] [  10350]  1000 10350  1355473     3313   913408     2054  =
         300 chromium
[242748.841450] [  10783]  1000 10783     1316       16    40960        0  =
           0 sleep
[242748.841457] [  11366]  1000 11366  1462006    42062  1798144     1816  =
         300 chromium
[242748.841463] [  12482]  1000 12482     1774      102    49152       59  =
           0 bash
[242748.841469] [  12483]  1000 12483    10033     1930   114688        0  =
           0 mutt
[242748.841476] [  12561]  1000 12561     1316       17    40960        0  =
           0 sleep
[242748.841482] [  12563]     0 12563     4166      291    65536        0  =
           0 sshd
[242748.841488] [  12573]  1000 12573     4166      272    65536        0  =
           0 sshd
[242748.841494] [  12575]  1000 12575   307166   167078  1482752        0  =
           0 unison
[242748.841500] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D11366,uid=3D1000
[242748.841557] Out of memory: Killed process 11366 (chromium) total-vm:584=
8024kB, anon-rss:166920kB, file-rss:0kB, shmem-rss:1328kB, UID:1000 pgtable=
s:1756kB oom_score_adj:300
[242748.861653] oom_reaper: reaped process 11366 (chromium), now anon-rss:0=
kB, file-rss:0kB, shmem-rss:548kB
[243360.899331] Xorg invoked oom-killer: gfp_mask=3D0x100cca(GFP_HIGHUSER_M=
OVABLE), order=3D0, oom_score_adj=3D0
[243360.899340] CPU: 3 PID: 3123 Comm: Xorg Tainted: G        W         5.6=
=2E0-rc7+ #84
[243360.899344] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[243360.899348] Call Trace:
[243360.899358]  dump_stack+0x59/0x7a
[243360.899364]  dump_header+0x52/0x370
[243360.899371]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
[243360.899376]  oom_kill_process.cold.34+0xb/0x10e
[243360.899381]  out_of_memory+0x224/0x420
[243360.899387]  __alloc_pages_slowpath+0x91e/0xb20
[243360.899393]  __alloc_pages_nodemask+0x1b3/0x1e0
[243360.899398]  pagecache_get_page+0xb8/0x220
[243360.899403]  filemap_fault+0x571/0x910
[243360.899408]  ? __lock_acquire.isra.33+0x297/0x550
[243360.899414]  ? ext4_filemap_fault+0x24/0x3f
[243360.899420]  ext4_filemap_fault+0x2c/0x3f
[243360.899426]  __do_fault+0x39/0x90
[243360.899430]  __handle_mm_fault+0x730/0xb70
[243360.899436]  handle_mm_fault+0x51/0xc0
[243360.899441]  do_page_fault+0x21e/0x458
[243360.899446]  page_fault+0x2c/0x40
[243360.899450] RIP: 0033:0x7ff33b32d3a0
[243360.899457] Code: Bad RIP value.
[243360.899460] RSP: 002b:00007fff1c24a008 EFLAGS: 00010246
[243360.899464] RAX: 0000000000000000 RBX: 00005636dc959660 RCX: 00007ff33b=
8dbe90
[243360.899467] RDX: 0000000000000000 RSI: 00000000ffffffff RDI: 00005636dc=
959660
[243360.899470] RBP: 00005636dc9a9210 R08: 0000000000000114 R09: 00007fff1c=
31d090
[243360.899474] R10: 0000000000000001 R11: 00005636dc97a410 R12: 00007fff1c=
24a0d4
[243360.899477] R13: 00005636dc657344 R14: 00007fff1c24a0d4 R15: 00007ff33c=
5bdb78
[243360.899481] Mem-Info:
[243360.899487] active_anon:1175094 inactive_anon:201985 isolated_anon:0
                 active_file:831 inactive_file:847 isolated_file:112
                 unevictable:6350 dirty:15 writeback:0 unstable:0
                 slab_reclaimable:14907 slab_unreclaimable:32017
                 mapped:62442 shmem:196311 pagetables:24547 bounce:0
                 free:16406 free_pcp:1312 free_cma:0
[243360.899493] Node 0 active_anon:4700376kB inactive_anon:807940kB active_=
file:3324kB inactive_file:3388kB unevictable:25400kB isolated(anon):0kB iso=
lated(file):448kB mapped:249768kB dirty:60kB writeback:0kB shmem:785244kB w=
riteback_tmp:0kB unstable:0kB all_unreclaimable? no
[243360.899499] DMA free:15360kB min:24kB low:36kB high:48kB reserved_higha=
tomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0=
kB unevictable:0kB writepending:0kB present:15984kB managed:15360kB mlocked=
:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB =
free_cma:0kB
[243360.899502] lowmem_reserve[]: 0 3381 5815 5815
[243360.899510] DMA32 free:36736kB min:24540kB low:28000kB high:31460kB res=
erved_highatomic:4096KB active_anon:2680576kB inactive_anon:583764kB active=
_file:2796kB inactive_file:1548kB unevictable:8120kB writepending:4kB prese=
nt:3561088kB managed:3466340kB mlocked:68kB kernel_stack:7568kB pagetables:=
40044kB bounce:0kB free_pcp:2792kB local_pcp:1432kB free_cma:0kB
[243360.899513] lowmem_reserve[]: 0 0 2433 2433
[243360.899520] Normal free:14032kB min:17664kB low:20156kB high:22648kB re=
served_highatomic:4096KB active_anon:2019800kB inactive_anon:224176kB activ=
e_file:2188kB inactive_file:2492kB unevictable:17280kB writepending:56kB pr=
esent:2594816kB managed:2492040kB mlocked:212kB kernel_stack:14272kB pageta=
bles:58144kB bounce:0kB free_pcp:1532kB local_pcp:744kB free_cma:0kB
[243360.899523] lowmem_reserve[]: 0 0 0 0
[243360.899528] DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB 0*256kB 0*512=
kB 1*1024kB (U) 1*2048kB (U) 3*4096kB (M) =3D 15360kB
[243360.899540] DMA32: 1128*4kB (UME) 452*8kB (UME) 883*16kB (UME) 288*32kB=
 (UE) 37*64kB (UE) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 1*4096kB (H) =
=3D 37936kB
[243360.899554] Normal: 1820*4kB (UMEH) 486*8kB (UMEH) 244*16kB (UEH) 19*32=
kB (UEH) 0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 1568=
0kB
[243360.899565] 200293 total pagecache pages
[243360.899570] 2220 pages in swap cache
[243360.899574] Swap cache stats: add 2397979, delete 2395711, find 2205517=
/2528699
[243360.899577] Free swap  =3D 0kB
[243360.899581] Total swap =3D 1681428kB
[243360.899584] 1542972 pages RAM
[243360.899587] 0 pages HighMem/MovableOnly
[243360.899591] 49537 pages reserved
[243360.899594] Tasks state (memory values in pages):
[243360.899598] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swap=
ents oom_score_adj name
[243360.899607] [   1743]     0  1743    23906     6699   294912      233  =
           0 systemd-journal
[243360.899613] [   1814]     0  1814     1923        1    49152       61  =
           0 blkmapd
[243360.899620] [   2709]     0  2709     5224      108    65536      307  =
       -1000 systemd-udevd
[243360.899627] [   2886]     0  2886     2271        7    49152       39  =
           0 rpc.idmapd
[243360.899634] [   2901]   116  2901     1707        5    49152      111  =
           0 rpcbind
[243360.899641] [   2904]   101  2904    23809       29    90112      210  =
           0 systemd-timesyn
[243360.899648] [   2910]     0  2910     2022        0    49152      784  =
           0 haveged
[243360.899654] [   2942]     0  2942     2527       64    53248      302  =
           0 smartd
[243360.899660] [   2943]   112  2943     2001       61    49152       44  =
           0 avahi-daemon
[243360.899667] [   2944]     0  2944     7856      135    90112       80  =
           0 alsactl
[243360.899673] [   2948]   112  2948     1969        6    49152       69  =
           0 avahi-daemon
[243360.899679] [   2950]     0  2950   137377      584   155648      649  =
           0 udisksd
[243360.899685] [   2955]   104  2955     2422      305    57344       72  =
        -900 dbus-daemon
[243360.899691] [   2956]     0  2956   170256      503   180224      303  =
           0 NetworkManager
[243360.899697] [   2958]     0  2958     5039      164    77824      115  =
           0 wpa_supplicant
[243360.899703] [   2959]     0  2959    56457      267    98304      202  =
           0 rsyslogd
[243360.899708] [   2960]     0  2960    61197      266   106496      180  =
           0 ModemManager
[243360.899714] [   2963]     0  2963     3373       73    57344       63  =
           0 bluetoothd
[243360.899719] [   2965]     0  2965     4914      115    69632      185  =
           0 systemd-logind
[243360.899725] [   2967]     0  2967    60655      304   102400      107  =
           0 accounts-daemon
[243360.899730] [   3024]     0  3024    60235      431   102400      198  =
           0 polkitd
[243360.899736] [   3038]     0  3038     3964       39    65536      175  =
       -1000 sshd
[243360.899741] [   3052]     0  3052     7941        0    98304     6279  =
           0 rpc.mountd
[243360.899747] [   3111]     0  3111     2127       25    57344       41  =
           0 cron
[243360.899752] [   3116]     0  3116    60838      212   106496      162  =
           0 lightdm
[243360.899757] [   3123]     0  3123   176870    31218   745472    12436  =
           0 Xorg
[243360.899763] [   3124]     0  3124     1404        0    45056       33  =
           0 agetty
[243360.899769] [   3145]     0  3145     1861       13    53248       53  =
           0 inetd
[243360.899775] [   3449]     0  3449    41653      113    86016      173  =
           0 lightdm
[243360.899781] [   3481]  1000  3481     5374      144    73728      284  =
           0 systemd
[243360.899787] [   3484]  1000  3484     5800       38    73728      598  =
           0 (sd-pam)
[243360.899793] [   3497]  1000  3497   115629      344   122880      190  =
           0 gnome-keyring-d
[243360.899798] [   3501]  1000  3501    71234      529   188416      713  =
           0 x-session-manag
[243360.899804] [   3510]  1000  3510     2341      242    53248       52  =
           0 dbus-daemon
[243360.899811] [   3555]  1000  3555     1464        9    40960      110  =
           0 ssh-agent
[243360.899817] [   3572]  1000  3572    79324      710   106496      366  =
           0 ibus-daemon
[243360.899822] [   3573]  1000  3573    79177        0   102400      247  =
           0 at-spi-bus-laun
[243360.899828] [   3576]  1000  3576    60048      130    94208      125  =
           0 gvfsd
[243360.899834] [   3585]  1000  3585    60151        0   102400      242  =
           0 ibus-dconf
[243360.899840] [   3586]  1000  3586    72730      871   192512     1390  =
           0 ibus-ui-gtk3
[243360.899846] [   3587]  1000  3587    71126      597   184320     1598  =
           0 ibus-extension-
[243360.899851] [   3589]  1000  3589    51661      462   172032      719  =
           0 ibus-x11
[243360.899857] [   3591]  1000  3591    60167      152    98304      137  =
           0 ibus-portal
[243360.899862] [   3601]  1000  3601     2205      103    53248       57  =
           0 dbus-daemon
[243360.899868] [   3604]  1000  3604    43536      117   102400      116  =
           0 at-spi2-registr
[243360.899874] [   3617]  1000  3617    40020      301    69632       64  =
           0 dconf-service
[243360.899880] [   3621]  1000  3621    41717      166    94208      123  =
           0 ibus-engine-sim
[243360.899885] [   3631]  1000  3631   342502     1982   339968     1201  =
           0 mate-settings-d
[243360.899891] [   3635]  1000  3635   166990     5650   352256     1078  =
           0 marco
[243360.899897] [   3640]  1000  3640   293558      652   380928      771  =
           0 pulseaudio
[243360.899902] [   3653]  1000  3653   178063     4678   319488     1990  =
           0 mate-panel
[243360.899908] [   3654]   109  3654    38163        0    61440       65  =
           0 rtkit-daemon
[243360.899914] [   3676]  1000  3676   174177     1071   339968     2029  =
           0 caja
[243360.899920] [   3682]  1000  3682   105451     2917   282624      972  =
           0 wnck-applet
[243360.899925] [   3683]  1000  3683   107033      407   147456      267  =
           0 gvfs-udisks2-vo
[243360.899930] [   3684]  1000  3684   131759      763   241664     1321  =
           0 mate-volume-con
[243360.899936] [   3692]  1000  3692    59402        0    86016      156  =
           0 agent
[243360.899942] [   3693]  1000  3693   104082     2060   266240     1211  =
           0 nm-applet
[243360.899948] [   3698]  1000  3698    93387     4544   233472      668  =
           0 mate-power-mana
[243360.899954] [   3704]  1000  3704    17872      461   176128     2190  =
           0 smart-notifier
[243360.899961] [   3706]  1000  3706    60207       39    98304      197  =
           0 gvfs-gphoto2-vo
[243360.899967] [   3707]  1000  3707   164184      491   393216     2320  =
           0 evolution-alarm
[243360.899974] [   3713]  1000  3713   100177     5354   278528     1077  =
           0 mate-screensave
[243360.899979] [   3718]  1000  3718    59554       69    98304      115  =
           0 gvfs-mtp-volume
[243360.899986] [   3720]  1000  3720    50404      288   159744      234  =
           0 polkit-mate-aut
[243360.899992] [   3727]  1000  3727    59097        0    90112      209  =
           0 gvfs-goa-volume
[243360.899997] [   3731]  1000  3731    79764        0   114688      307  =
           0 gvfs-afc-volume
[243360.900003] [   3744]     0  3744    64664      233   110592      146  =
           0 upowerd
[243360.900009] [   3781]  1000  3781    89718      592   200704     1179  =
           0 notification-ar
[243360.900015] [   3782]  1000  3782   120658     1312   253952      957  =
           0 mateweather-app
[243360.900021] [   3783]  1000  3783   102688     1498   258048     1014  =
           0 clock-applet
[243360.900027] [   3785]  1000  3785    81767      752   229376     1324  =
           0 mate-inhibit-ap
[243360.900033] [   3787]  1000  3787    91910     2516   208896     1019  =
           0 command-applet
[243360.900039] [   3793]  1000  3793   256367      508   307200      626  =
           0 evolution-sourc
[243360.900045] [   3825]  1000  3825    79439      167   110592      194  =
           0 gvfsd-trash
[243360.900052] [   3832]  1000  3832   233198      238   331776      984  =
           0 evolution-calen
[243360.900058] [   3844]  1000  3844   168623      201   245760      853  =
           0 evolution-addre
[243360.900064] [   4430]  1000  4430   209699     9403   421888     1753  =
           0 mate-terminal
[243360.900071] [   4438]  1000  4438     1749      140    49152        6  =
           0 bash
[243360.900078] [   4460]  1000  4460     4244      795    61440      118  =
           0 herdd.py
[243360.900084] [   4461]  1000  4461     1662       59    45056        0  =
           0 bash
[243360.900090] [   4462]  1000  4462    35989     1049   180224      136  =
           0 gkrellm
[243360.900094] [   4463]  1000  4463     1749      105    45056        5  =
           0 bash
[243360.900097] [   4464]  1000  4464     1749      145    45056        0  =
           0 bash
[243360.900102] [   4469]     0  4469     2491       96    57344        0  =
           0 sudo
[243360.900107] [   4470]  1000  4470    63543     1687   299008     3234  =
           0 emacs
[243360.900111] [   4472]  1000  4472     1749      143    49152        0  =
           0 bash
[243360.900114] [   4479]     0  4479     2385       92    49152        0  =
           0 su
[243360.900118] [   4484]     0  4484     1749      103    53248        0  =
           0 bash
[243360.900122] [   4501]  1000  4501     1695       42    49152       55  =
           0 monitor
[243360.900126] [   4561]  1000  4561     1749      134    49152       11  =
           0 bash
[243360.900130] [   8880]  1000  8880     1781       58    49152       98  =
           0 bash
[243360.900134] [   8912]  1000  8912     1464       48    49152       74  =
           0 ssh-agent
[243360.900138] [   8946]  1000  8946     1781       92    49152       64  =
           0 bash
[243360.900142] [   9849]  1000  9849     1817      150    53248       58  =
           0 bash
[243360.900146] [  12046]  1000 12046     1782       95    49152       62  =
           0 bash
[243360.900150] [  12064]  1000 12064     1782      107    53248       60  =
           0 bash
[243360.900154] [  13326]  1000 13326     1749       88    49152       62  =
           0 bash
[243360.900158] [  13400]  1000 13400     1774      108    49152       59  =
           0 bash
[243360.900162] [  27250]  1000 27250   937156   196251  4616192    92535  =
           0 chromium
[243360.900167] [  27267]  1000 27267    97555      367   634880     2597  =
           0 chromium
[243360.900170] [  27293]  1000 27293   391528   112682  2072576    10007  =
         200 chromium
[243360.900174] [  27297]  1000 27297   463747    27330   987136     4051  =
         200 chromium
[243360.900178] [  27352]  1000 27352  1386285     6484  1175552     5101  =
         300 chromium
[243360.900182] [  27450]  1000 27450  1394444    12164  1363968     2757  =
         300 chromium
[243360.900186] [  27575]  1000 27575  1407326    21151  1982464    13855  =
         300 chromium
[243360.900190] [  27680]  1000 27680  1447905    11835  1327104     2152  =
         300 chromium
[243360.900195] [  27718]  1000 27718  1375399     3621   942080     3524  =
         300 chromium
[243360.900198] [  27740]  1000 27740  1450457     3703  1503232    15344  =
         300 chromium
[243360.900202] [  27755]  1000 27755  1373964      974   884736     3640  =
         300 chromium
[243360.900206] [  27768]  1000 27768  1382963    10031  1146880     3801  =
         300 chromium
[243360.900211] [  27789]  1000 27789  1379963     1305  1036288     7944  =
         300 chromium
[243360.900216] [  27803]  1000 27803  1377158     1000  1024000     6542  =
         300 chromium
[243360.900220] [  27997]  1000 27997  1386729     8902  1200128     2660  =
         300 chromium
[243360.900224] [  29094]  1000 29094  1387925     4990  1282048    12621  =
         300 chromium
[243360.900228] [   6918]  1000  6918  1399995     6171  1589248    19528  =
         300 chromium
[243360.900231] [   6969]  1000  6969  1376628     1126  1036288     6013  =
         300 chromium
[243360.900235] [   6990]  1000  6990  1354023      897   839680     3157  =
         300 chromium
[243360.900240] [   7003]  1000  7003  1381223     2373  1064960     6833  =
         300 chromium
[243360.900244] [   7312]  1000  7312     1778      113    45056       60  =
           0 bash
[243360.900248] [   8367]  1000  8367  1455015    32850  2039808     3236  =
         300 chromium
[243360.900253] [   9492]  1000  9492  1382635     8002  1167360     2481  =
         300 chromium
[243360.900259] [  23127]  1000 23127     1749       59    49152       89  =
           0 bash
[243360.900265] [  23997]  1000 23997     1749       82    49152       67  =
           0 bash
[243360.900271] [  32288]  1000 32288    20242       69    53248        8  =
           0 gpg-agent
[243360.900278] [   2789]  1000  2789     1774       90    53248       70  =
           0 bash
[243360.900284] [   2892]  1000  2892    97953      145   114688      212  =
           0 gvfsd-network
[243360.900290] [   2926]  1000  2926    78818       19   106496      255  =
           0 gvfsd-dnssd
[243360.900297] [   4428]  1000  4428  1355512      933   876544     3580  =
         300 chromium
[243360.900303] [   5272]   118  5272     2444        2    61440       87  =
           0 gpsd
[243360.900309] [   5494]  1000  5494     1749       63    49152       84  =
           0 bash
[243360.900316] [   5508]  1000  5508     1749        0    49152      145  =
           0 bash
[243360.900322] [   5528]  1000  5528     1662        0    49152       61  =
           0 e
[243360.900328] [   5529]  1000  5529    61627       32   282624     2995  =
           0 emacs
[243360.900335] [   5660]  1000  5660     1749       81    53248       67  =
           0 bash
[243360.900341] [   5849]  1000  5849  1384034     8638  1167360     3882  =
         300 chromium
[243360.900346] [  12235]  1000 12235  1395105    12120  1495040     6746  =
         300 chromium
[243360.900351] [  27409]  1000 27409     1749        0    45056      154  =
           0 bash
[243360.900355] [  27489]  1000 27489     1749       76    49152       77  =
           0 bash
[243360.900359] [  28256]     0 28256     2491        0    53248       97  =
           0 sudo
[243360.900363] [  28261]     0 28261     2380        0    49152      101  =
           0 su
[243360.900367] [  28266]     0 28266     1749        0    49152      146  =
           0 bash
[243360.900371] [  28579]  1000 28579  1383242     3248  1138688    10880  =
         300 chromium
[243360.900374] [  28850]  1000 28850     1749       73    45056       72  =
           0 bash
[243360.900379] [   8473]  1000  8473  1384150     4532  1245184     9781  =
         300 chromium
[243360.900383] [   8489]  1000  8489  1387212     2494  1228800     9367  =
         300 chromium
[243360.900386] [  22511]  1000 22511  1385576     8977  1191936     6050  =
         300 chromium
[243360.900390] [  22527]  1000 22527  1378158     3684  1024000     4406  =
         300 chromium
[243360.900394] [  31609]  1000 31609  1402952    10204  1228800     3396  =
         300 chromium
[243360.900398] [   7510]  1000  7510    43350      206    94208     1929  =
           0 dirmngr
[243360.900403] [   9644]  1000  9644  1385522    10929  1146880     5168  =
         300 chromium
[243360.900407] [   9660]  1000  9660  1379020     5198  1024000     3218  =
         300 chromium
[243360.900411] [   9876]  1000  9876  1394893    10070  1413120     7062  =
         300 chromium
[243360.900415] [   9909]  1000  9909  3580592    24237  2310144    17097  =
         300 chromium
[243360.900419] [   9939]  1000  9939  1354023     1224   835584     2781  =
         300 chromium
[243360.900423] [   9946]  1000  9946  1354029     1731   835584     2277  =
         300 chromium
[243360.900427] [   9964]  1000  9964  1353997     1464   835584     2545  =
         300 chromium
[243360.900431] [   9975]  1000  9975  1353999     1117   835584     2893  =
         300 chromium
[243360.900435] [   9988]  1000  9988  1353997     1011   839680     2998  =
         300 chromium
[243360.900439] [  10000]  1000 10000  1353999     1001   839680     3009  =
         300 chromium
[243360.900442] [  10007]  1000 10007  1354027     1527   835584     2480  =
         300 chromium
[243360.900446] [  10027]  1000 10027  1354028     1229   835584     2814  =
         300 chromium
[243360.900450] [  10033]  1000 10033  1354028     1140   839680     2869  =
         300 chromium
[243360.900454] [  10048]  1000 10048  1354028     1008   835584     2998  =
         300 chromium
[243360.900458] [  11184]  1000 11184  1435827    14017  1298432     2486  =
         300 chromium
[243360.900463] [  11208]  1000 11208  1374421     3053   913408     2298  =
         300 chromium
[243360.900466] [  11225]  1000 11225  1373755     2552   888832     2378  =
         300 chromium
[243360.900470] [  11238]  1000 11238  1374931     2761   892928     2304  =
         300 chromium
[243360.900474] [  24356]  1000 24356  1433292    11737  2240512     1971  =
         300 chromium
[243360.900478] [  26296]  1000 26296     1662        0    49152       61  =
           0 e
[243360.900482] [  26297]  1000 26297    64768     5537   303104      689  =
           0 emacs
[243360.900486] [  19550]  1000 19550  1401606    13829  1187840     1992  =
         300 chromium
[243360.900490] [  19571]  1000 19571  1375375     4304   946176     2077  =
         300 chromium
[243360.900494] [  19590]  1000 19590  1374764     3467   905216     2081  =
         300 chromium
[243360.900498] [  25469]  1000 25469  1458545    27561  1523712     3571  =
         300 chromium
[243360.900502] [  25487]  1000 25487  1384598     4796  1003520     2049  =
         300 chromium
[243360.900506] [  25522]  1000 25522  1373501     2241   888832     2270  =
         300 chromium
[243360.900509] [  25564]  1000 25564  1373511     2112   909312     2365  =
         300 chromium
[243360.900513] [   7859]  1000  7859  1374795     3245   905216     2027  =
         300 chromium
[243360.900517] [  13674]  1000 13674  1375086     4880   921600     2007  =
         300 chromium
[243360.900555] [  13909]  1000 13909  1378716     8410   974848     1999  =
         300 chromium
[243360.900776] [  17343]  1000 17343  1383916    29492  1277952     1952  =
         300 chromium
[243360.900783] [  23333]  1000 23333     1779      164    49152        0  =
           0 bash
[243360.900790] [  16242]  1000 16242     1695       92    53248        0  =
           0 xa2
[243360.900796] [  31707]  1000 31707  1455209    22512  1622016     1812  =
         300 chromium
[243360.900803] [  32369]  1000 32369  1473662    27742  1720320     1817  =
         300 chromium
[243360.900809] [   4073]  1000  4073  1407202    23054  1622016     1926  =
         300 chromium
[243360.900816] [   9099]  1000  9099  1364980    10042   995328     1979  =
         300 chromium
[243360.900822] [  21739]  1000 21739  1357456     4054   937984     1985  =
         300 chromium
[243360.900829] [  24772]  1000 24772     1816      190    49152        0  =
           0 bash
[243360.900835] [   5203]  1000  5203  1381819     9495  1048576     1975  =
         300 chromium
[243360.900841] [  12900]  1000 12900     1662       61    53248        0  =
           0 e
[243360.900848] [  12901]  1000 12901    65667     7030   315392        0  =
           0 emacs
[243360.900855] [  17036]  1000 17036  1384174     8794  1093632     1954  =
         300 chromium
[243360.900861] [  20051]  1000 20051     2224      174    53248        0  =
           0 screen
[243360.900868] [  20052]  1000 20052     1749      142    49152        0  =
           0 bash
[243360.900874] [  24512]  1000 24512     1749       87    49152       61  =
           0 bash
[243360.900880] [  24526]  1000 24526    10055     1870   114688        0  =
           0 mutt
[243360.900886] [  25715]  1000 25715  1375089     3831   913408     2028  =
         300 chromium
[243360.900893] [  27611]  1000 27611     1662       61    49152        0  =
           0 e
[243360.900900] [  27613]  1000 27613    61663     3030   274432        0  =
           0 emacs
[243360.900906] [  27928]  1000 27928  1453568    31996  1507328     1807  =
         300 chromium
[243360.900912] [  31033]  1000 31033     1662       60    49152        0  =
           0 e
[243360.900918] [  31034]  1000 31034    61770     3177   270336        0  =
           0 emacs
[243360.900925] [    893]  1000   893   417107      508   675840        0  =
           0 git
[243360.900931] [    898]  1000   898     1401       51    53248        0  =
           0 pager
[243360.900938] [   2621]  1000  2621  1377512     7209   987136     2009  =
         300 chromium
[243360.900944] [   2634]  1000  2634  1374730     3843   929792     2030  =
         300 chromium
[243360.900950] [   2647]  1000  2647  1378097    10586   970752     2077  =
         300 chromium
[243360.900957] [   2678]  1000  2678  1381698     6516  1105920     2034  =
         300 chromium
[243360.900963] [   2985]  1000  2985  1384393    14373  1191936     1972  =
         300 chromium
[243360.900969] [   3000]  1000  3000  1359223     4544   970752     2015  =
         300 chromium
[243360.900975] [   5289]  1000  5289  1375736     5248   909312     2005  =
         300 chromium
[243360.900981] [   7302]  1000  7302  1443704    20496  1273856     1870  =
         300 chromium
[243360.900986] [   7414]  1000  7414  1375314     6954   942080     2026  =
         300 chromium
[243360.900992] [   7431]  1000  7431  1373507     2357   905216     2069  =
         300 chromium
[243360.900999] [   8076]  1000  8076     1662       67    49152        0  =
           0 amutt
[243360.901005] [   8077]  1000  8077    10854     4508   118784        0  =
           0 mutt
[243360.901011] [   8091]  1000  8091      598       17    40960        0  =
           0 sh
[243360.901018] [   8092]  1000  8092     4657      370    65536        0  =
           0 ssh
[243360.901024] [   9312]  1000  9312  1376131     6776   958464     2074  =
         300 chromium
[243360.901031] [  10245]  1000 10245  1374523     2904   913408     2069  =
         300 chromium
[243360.901037] [  10350]  1000 10350  1373906     3140   925696     2054  =
         300 chromium
[243360.901043] [  10783]  1000 10783     1316       16    40960        0  =
           0 sleep
[243360.901050] [  12482]  1000 12482     1774      102    49152       59  =
           0 bash
[243360.901056] [  12483]  1000 12483    10103     1982   114688        0  =
           0 mutt
[243360.901062] [  12563]     0 12563     4166      286    65536        0  =
           0 sshd
[243360.901068] [  12573]  1000 12573     4166      272    65536        0  =
           0 sshd
[243360.901073] [  12575]  1000 12575   274449   194223  1708032        0  =
           0 unison
[243360.901080] [  13040]  1000 13040  1448974    24014  1368064     1833  =
         300 chromium
[243360.901086] [  13338]  1000 13338   273795     3020   700416        0  =
         200 chromium
[243360.901092] [  13369]  1000 13369     2588       53    61440        0  =
           0 xset
[243360.901098] [  13370]  1000 13370      598       17    36864        0  =
           0 sh
[243360.901104] [  13371]  1000 13371     3203      133    57344        0  =
           0 ssh
[243360.901110] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D9909,uid=3D1000
[243360.901173] Out of memory: Killed process 9909 (chromium) total-vm:1432=
2368kB, anon-rss:95920kB, file-rss:0kB, shmem-rss:1028kB, UID:1000 pgtables=
:2256kB oom_score_adj:300
[243360.926854] oom_reaper: reaped process 9909 (chromium), now anon-rss:0k=
B, file-rss:0kB, shmem-rss:96kB
[243901.252976] Chrome_ChildIOT invoked oom-killer: gfp_mask=3D0x100cca(GFP=
_HIGHUSER_MOVABLE), order=3D0, oom_score_adj=3D200
[243901.252985] CPU: 0 PID: 27309 Comm: Chrome_ChildIOT Tainted: G        W=
         5.6.0-rc7+ #84
[243901.252989] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 =
) 03/13/2018
[243901.252993] Call Trace:
[243901.253003]  dump_stack+0x59/0x7a
[243901.253009]  dump_header+0x52/0x370
[243901.253016]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
[243901.253021]  oom_kill_process.cold.34+0xb/0x10e
[243901.253025]  out_of_memory+0x224/0x420
[243901.253032]  __alloc_pages_slowpath+0x91e/0xb20
[243901.253037]  __alloc_pages_nodemask+0x1b3/0x1e0
[243901.253042]  pagecache_get_page+0xb8/0x220
[243901.253047]  filemap_fault+0x571/0x910
[243901.253053]  ? __lock_acquire.isra.33+0x297/0x550
[243901.253059]  ? ext4_filemap_fault+0x24/0x3f
[243901.253064]  ext4_filemap_fault+0x2c/0x3f
[243901.253070]  __do_fault+0x39/0x90
[243901.253075]  __handle_mm_fault+0x730/0xb70
[243901.253081]  handle_mm_fault+0x51/0xc0
[243901.253086]  do_page_fault+0x21e/0x458
[243901.253092]  page_fault+0x2c/0x40
[243901.253097] RIP: 0033:0x55e2ab1b4519
[243901.253103] Code: Bad RIP value.
[243901.253107] RSP: 002b:00007f0756bdcd10 EFLAGS: 00010206
[243901.253112] RAX: 0000000000010000 RBX: 00007f074c704430 RCX: 00007f074c=
0008d0
[243901.253116] RDX: 00007f074d881290 RSI: 0000000000000005 RDI: 0000000000=
000003
[243901.253120] RBP: 00007f0756bdcd50 R08: 000000000000003f R09: 00007f074c=
704430
[243901.253124] R10: 0000000000000004 R11: 00007f07572a7ff0 R12: 00007f074c=
28c740
[243901.253128] R13: 0000000000010000 R14: 00007f0756bdcd28 R15: 00007f0756=
bdcd10
[243901.253132] Mem-Info:
[243901.253140] active_anon:1199031 inactive_anon:183302 isolated_anon:0
                 active_file:2198 inactive_file:2338 isolated_file:146
                 unevictable:5090 dirty:28 writeback:0 unstable:0
                 slab_reclaimable:14960 slab_unreclaimable:30454
                 mapped:65970 shmem:208239 pagetables:23185 bounce:0
                 free:13739 free_pcp:830 free_cma:0
[243901.253146] Node 0 active_anon:4796124kB inactive_anon:733208kB active_=
file:8792kB inactive_file:9192kB unevictable:20360kB isolated(anon):0kB iso=
lated(file):584kB mapped:263880kB dirty:112kB writeback:0kB shmem:832956kB =
writeback_tmp:0kB unstable:0kB all_unreclaimable? no
[243901.253153] DMA free:15360kB min:24kB low:36kB high:48kB reserved_higha=
tomic:0KB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0=
kB unevictable:0kB writepending:0kB present:15984kB managed:15360kB mlocked=
:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB =
free_cma:0kB
[243901.253157] lowmem_reserve[]: 0 3381 5815 5815
[243901.253166] DMA32 free:31944kB min:24540kB low:28000kB high:31460kB res=
erved_highatomic:4096KB active_anon:2944280kB inactive_anon:333248kB active=
_file:4800kB inactive_file:3656kB unevictable:5124kB writepending:32kB pres=
ent:3561088kB managed:3466340kB mlocked:68kB kernel_stack:7120kB pagetables=
:36932kB bounce:0kB free_pcp:2020kB local_pcp:0kB free_cma:0kB
[243901.253169] lowmem_reserve[]: 0 0 2433 2433
[243901.253178] Normal free:7652kB min:17664kB low:20156kB high:22648kB res=
erved_highatomic:4096KB active_anon:1851844kB inactive_anon:399960kB active=
_file:5480kB inactive_file:5576kB unevictable:15236kB writepending:80kB pre=
sent:2594816kB managed:2492040kB mlocked:212kB kernel_stack:13696kB pagetab=
les:55808kB bounce:0kB free_pcp:1300kB local_pcp:0kB free_cma:0kB
[243901.253181] lowmem_reserve[]: 0 0 0 0
[243901.253187] DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB 0*256kB 0*512=
kB 1*1024kB (U) 1*2048kB (U) 3*4096kB (M) =3D 15360kB
[243901.253200] DMA32: 1301*4kB (UME) 1289*8kB (UME) 369*16kB (UE) 175*32kB=
 (UE) 28*64kB (UE) 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 1*4096kB (H) =
=3D 32908kB
[243901.253215] Normal: 1474*4kB (UMEH) 186*8kB (UMEH) 75*16kB (UEH) 10*32k=
B (H) 0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 8904kB
[243901.253227] 214516 total pagecache pages
[243901.253232] 1692 pages in swap cache
[243901.253236] Swap cache stats: add 2439741, delete 2438005, find 2213388=
/2538876
[243901.253239] Free swap  =3D 0kB
[243901.253243] Total swap =3D 1681428kB
[243901.253246] 1542972 pages RAM
[243901.253249] 0 pages HighMem/MovableOnly
[243901.253253] 49537 pages reserved
[243901.253256] Tasks state (memory values in pages):
[243901.253260] [  pid  ]   uid  tgid total_vm      rss pgtables_bytes swap=
ents oom_score_adj name
[243901.253268] [   1743]     0  1743    25954     6757   307200      237  =
           0 systemd-journal
[243901.253275] [   1814]     0  1814     1923        1    49152       61  =
           0 blkmapd
[243901.253282] [   2709]     0  2709     5224       99    65536      316  =
       -1000 systemd-udevd
[243901.253289] [   2886]     0  2886     2271        7    49152       39  =
           0 rpc.idmapd
[243901.253295] [   2901]   116  2901     1707        5    49152      111  =
           0 rpcbind
[243901.253301] [   2904]   101  2904    23809       29    90112      210  =
           0 systemd-timesyn
[243901.253308] [   2910]     0  2910     2022        0    49152      784  =
           0 haveged
[243901.253314] [   2942]     0  2942     2527       64    53248      302  =
           0 smartd
[243901.253319] [   2943]   112  2943     2001       59    49152       46  =
           0 avahi-daemon
[243901.253325] [   2944]     0  2944     7856      135    90112       80  =
           0 alsactl
[243901.253330] [   2948]   112  2948     1969        6    49152       69  =
           0 avahi-daemon
[243901.253336] [   2950]     0  2950   137377      580   155648      653  =
           0 udisksd
[243901.253342] [   2955]   104  2955     2422      305    57344       72  =
        -900 dbus-daemon
[243901.253349] [   2956]     0  2956   170256      500   180224      306  =
           0 NetworkManager
[243901.253355] [   2958]     0  2958     5039      161    77824      118  =
           0 wpa_supplicant
[243901.253362] [   2959]     0  2959    56457      266    98304      206  =
           0 rsyslogd
[243901.253368] [   2960]     0  2960    61197      260   106496      186  =
           0 ModemManager
[243901.253374] [   2963]     0  2963     3373       71    57344       65  =
           0 bluetoothd
[243901.253380] [   2965]     0  2965     4914      115    69632      185  =
           0 systemd-logind
[243901.253386] [   2967]     0  2967    60655      302   102400      109  =
           0 accounts-daemon
[243901.253393] [   3024]     0  3024    60235      431   102400      198  =
           0 polkitd
[243901.253399] [   3038]     0  3038     3964       39    65536      175  =
       -1000 sshd
[243901.253405] [   3052]     0  3052     7941        0    98304     6279  =
           0 rpc.mountd
[243901.253411] [   3111]     0  3111     2127       25    57344       41  =
           0 cron
[243901.253417] [   3116]     0  3116    60838      212   106496      162  =
           0 lightdm
[243901.253423] [   3123]     0  3123   175907    26719   733184    13283  =
           0 Xorg
[243901.253429] [   3124]     0  3124     1404        0    45056       33  =
           0 agetty
[243901.253436] [   3145]     0  3145     1861       13    53248       53  =
           0 inetd
[243901.253442] [   3449]     0  3449    41653      111    86016      175  =
           0 lightdm
[243901.253449] [   3481]  1000  3481     5374      142    73728      286  =
           0 systemd
[243901.253455] [   3484]  1000  3484     5800       38    73728      598  =
           0 (sd-pam)
[243901.253462] [   3497]  1000  3497   115629      333   122880      201  =
           0 gnome-keyring-d
[243901.253468] [   3501]  1000  3501    71234      520   188416      722  =
           0 x-session-manag
[243901.253474] [   3510]  1000  3510     2341      242    53248       52  =
           0 dbus-daemon
[243901.253479] [   3555]  1000  3555     1464        9    40960      110  =
           0 ssh-agent
[243901.253485] [   3572]  1000  3572    79324      710   106496      366  =
           0 ibus-daemon
[243901.253491] [   3573]  1000  3573    79177        0   102400      247  =
           0 at-spi-bus-laun
[243901.253497] [   3576]  1000  3576    60048      130    94208      125  =
           0 gvfsd
[243901.253503] [   3585]  1000  3585    60151        0   102400      242  =
           0 ibus-dconf
[243901.253509] [   3586]  1000  3586    72730      868   192512     1393  =
           0 ibus-ui-gtk3
[243901.253516] [   3587]  1000  3587    71126      576   184320     1619  =
           0 ibus-extension-
[243901.253522] [   3589]  1000  3589    51661      448   172032      733  =
           0 ibus-x11
[243901.253528] [   3591]  1000  3591    60167      152    98304      137  =
           0 ibus-portal
[243901.253534] [   3601]  1000  3601     2205      103    53248       57  =
           0 dbus-daemon
[243901.253541] [   3604]  1000  3604    43536      117   102400      116  =
           0 at-spi2-registr
[243901.253547] [   3617]  1000  3617    40020      301    69632       64  =
           0 dconf-service
[243901.253553] [   3621]  1000  3621    41717      166    94208      123  =
           0 ibus-engine-sim
[243901.253559] [   3631]  1000  3631   342502     1879   339968     1303  =
           0 mate-settings-d
[243901.253566] [   3635]  1000  3635   166990     5612   352256     1110  =
           0 marco
[243901.253573] [   3640]  1000  3640   293558      621   380928      806  =
           0 pulseaudio
[243901.253579] [   3653]  1000  3653   178096     4611   319488     2072  =
           0 mate-panel
[243901.253586] [   3654]   109  3654    38163        0    61440       65  =
           0 rtkit-daemon
[243901.253592] [   3676]  1000  3676   174177     1016   339968     2084  =
           0 caja
[243901.253598] [   3682]  1000  3682   105451     2335   282624     1554  =
           0 wnck-applet
[243901.253604] [   3683]  1000  3683   107033      406   147456      268  =
           0 gvfs-udisks2-vo
[243901.253611] [   3684]  1000  3684   131759      753   241664     1329  =
           0 mate-volume-con
[243901.253617] [   3692]  1000  3692    59402        0    86016      156  =
           0 agent
[243901.253624] [   3693]  1000  3693   104082     2049   266240     1222  =
           0 nm-applet
[243901.253629] [   3698]  1000  3698    93387     3459   233472     1760  =
           0 mate-power-mana
[243901.253635] [   3704]  1000  3704    17872      458   176128     2193  =
           0 smart-notifier
[243901.253640] [   3706]  1000  3706    60207       39    98304      197  =
           0 gvfs-gphoto2-vo
[243901.253645] [   3707]  1000  3707   164184      489   393216     2322  =
           0 evolution-alarm
[243901.253651] [   3713]  1000  3713   100177     3424   278528     1078  =
           0 mate-screensave
[243901.253656] [   3718]  1000  3718    59554       68    98304      116  =
           0 gvfs-mtp-volume
[243901.253662] [   3720]  1000  3720    50404      283   159744      239  =
           0 polkit-mate-aut
[243901.253668] [   3727]  1000  3727    59097        0    90112      209  =
           0 gvfs-goa-volume
[243901.253673] [   3731]  1000  3731    79764        0   114688      307  =
           0 gvfs-afc-volume
[243901.253679] [   3744]     0  3744    64664      233   110592      146  =
           0 upowerd
[243901.253685] [   3781]  1000  3781    89718      592   200704     1179  =
           0 notification-ar
[243901.253692] [   3782]  1000  3782   120658     1303   253952      966  =
           0 mateweather-app
[243901.253698] [   3783]  1000  3783   102688     1498   258048     1014  =
           0 clock-applet
[243901.253704] [   3785]  1000  3785    81767      752   229376     1324  =
           0 mate-inhibit-ap
[243901.253710] [   3787]  1000  3787    91910     2498   208896     1041  =
           0 command-applet
[243901.253716] [   3793]  1000  3793   256367      405   307200      729  =
           0 evolution-sourc
[243901.253722] [   3825]  1000  3825    79439      167   110592      194  =
           0 gvfsd-trash
[243901.253729] [   3832]  1000  3832   233198      236   331776      986  =
           0 evolution-calen
[243901.253735] [   3844]  1000  3844   168623      199   245760      855  =
           0 evolution-addre
[243901.253742] [   4430]  1000  4430   209699     8366   421888     2293  =
           0 mate-terminal
[243901.253748] [   4438]  1000  4438     1749      140    49152        6  =
           0 bash
[243901.253754] [   4460]  1000  4460     4244      795    61440      118  =
           0 herdd.py
[243901.253761] [   4461]  1000  4461     1662       59    45056        0  =
           0 bash
[243901.253767] [   4462]  1000  4462    35989     1081   180224      137  =
           0 gkrellm
[243901.253772] [   4463]  1000  4463     1749      105    45056        5  =
           0 bash
[243901.253778] [   4464]  1000  4464     1749      145    45056        0  =
           0 bash
[243901.253784] [   4469]     0  4469     2491       96    57344        0  =
           0 sudo
[243901.253791] [   4470]  1000  4470    63543     1687   299008     3234  =
           0 emacs
[243901.253797] [   4472]  1000  4472     1749      143    49152        0  =
           0 bash
[243901.253804] [   4479]     0  4479     2385       92    49152        0  =
           0 su
[243901.253810] [   4484]     0  4484     1749      103    53248        0  =
           0 bash
[243901.253816] [   4501]  1000  4501     1695       42    49152       55  =
           0 monitor
[243901.253823] [   4561]  1000  4561     1749      117    49152       28  =
           0 bash
[243901.253829] [   8880]  1000  8880     1781       58    49152       98  =
           0 bash
[243901.253835] [   8912]  1000  8912     1464       48    49152       74  =
           0 ssh-agent
[243901.262341] [   8946]  1000  8946     1781       92    49152       64  =
           0 bash
[243901.262350] [   9849]  1000  9849     1817      143    53248       65  =
           0 bash
[243901.262357] [  12046]  1000 12046     1782       95    49152       62  =
           0 bash
[243901.262364] [  12064]  1000 12064     1782       98    53248       69  =
           0 bash
[243901.262370] [  13326]  1000 13326     1749       84    49152       66  =
           0 bash
[243901.262375] [  13400]  1000 13400     1774      107    49152       60  =
           0 bash
[243901.262381] [  27250]  1000 27250   944706   187054  4612096   100764  =
           0 chromium
[243901.262388] [  27267]  1000 27267    97555      393   634880     2597  =
           0 chromium
[243901.262395] [  27293]  1000 27293   394830   113881  2113536    10248  =
         200 chromium
[243901.262402] [  27297]  1000 27297   467845    23716  1011712     6750  =
         200 chromium
[243901.262408] [  27352]  1000 27352  1386285     6710  1175552     5114  =
         300 chromium
[243901.262415] [  27450]  1000 27450  1394444    11940  1363968     2955  =
         300 chromium
[243901.262422] [  27575]  1000 27575  1407326    21142  1982464    13864  =
         300 chromium
[243901.262429] [  27680]  1000 27680  1447905    10368  1327104     3619  =
         300 chromium
[243901.262439] [  27718]  1000 27718  1375399     3410   942080     3730  =
         300 chromium
[243901.262446] [  27740]  1000 27740  1450457     3684  1503232    15363  =
         300 chromium
[243901.262452] [  27755]  1000 27755  1373964      968   884736     3646  =
         300 chromium
[243901.262459] [  27768]  1000 27768  1382963     6491  1146880     7299  =
         300 chromium
[243901.262466] [  27789]  1000 27789  1379963     1302  1036288     7947  =
         300 chromium
[243901.262472] [  27803]  1000 27803  1377158     1000  1024000     6542  =
         300 chromium
[243901.262478] [  27997]  1000 27997  1386729     8809  1200128     2749  =
         300 chromium
[243901.262484] [  29094]  1000 29094  1387925     4978  1282048    12633  =
         300 chromium
[243901.262491] [   6918]  1000  6918  1399995     6166  1589248    19533  =
         300 chromium
[243901.262498] [   6969]  1000  6969  1376628     1124  1036288     6015  =
         300 chromium
[243901.262505] [   6990]  1000  6990  1354023      896   839680     3158  =
         300 chromium
[243901.262512] [   7003]  1000  7003  1381255     2293  1064960     6914  =
         300 chromium
[243901.262518] [   7312]  1000  7312     1778      113    45056       60  =
           0 bash
[243901.262525] [   8367]  1000  8367  1455867    33371  2060288     3630  =
         300 chromium
[243901.262531] [   9492]  1000  9492  1382635     8002  1167360     2481  =
         300 chromium
[243901.262538] [  23127]  1000 23127     1749       59    49152       89  =
           0 bash
[243901.262545] [  23997]  1000 23997     1749       82    49152       67  =
           0 bash
[243901.262552] [  32288]  1000 32288    20242       69    53248        8  =
           0 gpg-agent
[243901.262559] [   2789]  1000  2789     1774       71    53248       89  =
           0 bash
[243901.262566] [   2892]  1000  2892    97953      145   114688      212  =
           0 gvfsd-network
[243901.262573] [   2926]  1000  2926    78818       19   106496      255  =
           0 gvfsd-dnssd
[243901.262580] [   4428]  1000  4428  1355512      929   876544     3584  =
         300 chromium
[243901.262587] [   5272]   118  5272     2444        2    61440       87  =
           0 gpsd
[243901.262593] [   5494]  1000  5494     1749       63    49152       84  =
           0 bash
[243901.262600] [   5508]  1000  5508     1749        0    49152      145  =
           0 bash
[243901.262607] [   5528]  1000  5528     1662        0    49152       61  =
           0 e
[243901.262613] [   5529]  1000  5529    61627       32   282624     2995  =
           0 emacs
[243901.262619] [   5660]  1000  5660     1749       81    53248       67  =
           0 bash
[243901.262626] [   5849]  1000  5849  1384034     8535  1167360     3982  =
         300 chromium
[243901.262633] [  12235]  1000 12235  1395105    12104  1495040     6757  =
         300 chromium
[243901.262640] [  27409]  1000 27409     1749        0    45056      154  =
           0 bash
[243901.262646] [  27489]  1000 27489     1749       76    49152       77  =
           0 bash
[243901.262652] [  28256]     0 28256     2491        0    53248       97  =
           0 sudo
[243901.262658] [  28261]     0 28261     2380        0    49152      101  =
           0 su
[243901.262665] [  28266]     0 28266     1749        0    49152      146  =
           0 bash
[243901.262671] [  28579]  1000 28579  1383242     3244  1138688    10884  =
         300 chromium
[243901.262678] [  28850]  1000 28850     1749       73    45056       72  =
           0 bash
[243901.262685] [   8473]  1000  8473  1384150     4530  1245184     9783  =
         300 chromium
[243901.262692] [   8489]  1000  8489  1387212     2494  1228800     9367  =
         300 chromium
[243901.262697] [  22511]  1000 22511  1385576     8440  1191936     6557  =
         300 chromium
[243901.262704] [  22527]  1000 22527  1378158     3618  1024000     4447  =
         300 chromium
[243901.262710] [  31609]  1000 31609  1402952    10197  1228800     3403  =
         300 chromium
[243901.262717] [   7510]  1000  7510    43350      196    94208     1929  =
           0 dirmngr
[243901.262723] [   9644]  1000  9644  1385522    10921  1146880     5174  =
         300 chromium
[243901.262730] [   9660]  1000  9660  1379020     5160  1024000     3246  =
         300 chromium
[243901.262738] [   9876]  1000  9876  1394632    10801  1400832     6230  =
         300 chromium
[243901.262744] [  11184]  1000 11184  1435827    14011  1298432     2492  =
         300 chromium
[243901.262752] [  11208]  1000 11208  1374421     3007   913408     2344  =
         300 chromium
[243901.262758] [  11225]  1000 11225  1373755     2516   888832     2414  =
         300 chromium
[243901.262764] [  11238]  1000 11238  1374931     2741   892928     2324  =
         300 chromium
[243901.262771] [  24356]  1000 24356  1433292    11625  2240512     2008  =
         300 chromium
[243901.262777] [  26296]  1000 26296     1662        0    49152       61  =
           0 e
[243901.262783] [  26297]  1000 26297    64768     5535   303104      691  =
           0 emacs
[243901.262789] [  19550]  1000 19550  1401606    13947  1187840     2042  =
         300 chromium
[243901.262797] [  19571]  1000 19571  1375375     4692   946176     2079  =
         300 chromium
[243901.262803] [  19590]  1000 19590  1374765     3534   905216     2091  =
         300 chromium
[243901.262810] [  25469]  1000 25469  1458545    25183  1523712     5949  =
         300 chromium
[243901.262816] [  25487]  1000 25487  1384598     4773  1003520     2072  =
         300 chromium
[243901.262823] [  25522]  1000 25522  1373501     2215   888832     2296  =
         300 chromium
[243901.262829] [  25564]  1000 25564  1373511     2100   909312     2376  =
         300 chromium
[243901.262836] [   7859]  1000  7859  1374795     3236   905216     2037  =
         300 chromium
[243901.262842] [  13674]  1000 13674  1375086     3761   921600     3126  =
         300 chromium
[243901.262849] [  13909]  1000 13909  1378716     7956   974848     2453  =
         300 chromium
[243901.262856] [  17343]  1000 17343  1382612    26984  1265664     3153  =
         300 chromium
[243901.262863] [  23333]  1000 23333     1779       21    49152      143  =
           0 bash
[243901.262870] [  16242]  1000 16242     1695       36    53248       56  =
           0 xa2
[243901.262876] [  31707]  1000 31707  1455209    22436  1622016     1888  =
         300 chromium
[243901.262882] [  32369]  1000 32369  1472637    27508  1720320     1856  =
         300 chromium
[243901.262888] [   4073]  1000  4073  1411348    36906  1667072     1925  =
         300 chromium
[243901.262895] [   9099]  1000  9099  1364980    10042   995328     1979  =
         300 chromium
[243901.262901] [  21739]  1000 21739  1357456     4052   937984     1987  =
         300 chromium
[243901.262907] [  24772]  1000 24772     1816      190    49152        0  =
           0 bash
[243901.262913] [   5203]  1000  5203  1381819     9495  1048576     1975  =
         300 chromium
[243901.262919] [  12900]  1000 12900     1662       61    53248        0  =
           0 e
[243901.262925] [  12901]  1000 12901    65667     7030   315392        0  =
           0 emacs
[243901.262932] [  17036]  1000 17036  1384174     8794  1093632     1954  =
         300 chromium
[243901.262939] [  20051]  1000 20051     2224      174    53248        0  =
           0 screen
[243901.262945] [  20052]  1000 20052     1749      142    49152        0  =
           0 bash
[243901.262952] [  24512]  1000 24512     1749       87    49152       61  =
           0 bash
[243901.262960] [  24526]  1000 24526    10055     1870   114688        0  =
           0 mutt
[243901.262966] [  25715]  1000 25715  1375089     3829   913408     2030  =
         300 chromium
[243901.262971] [  27611]  1000 27611     1662       61    49152        0  =
           0 e
[243901.262978] [  27613]  1000 27613    61663     3030   274432        0  =
           0 emacs
[243901.262984] [  27928]  1000 27928  1454420    34127  1540096     1807  =
         300 chromium
[243901.262991] [  31033]  1000 31033     1662       60    49152        0  =
           0 e
[243901.262997] [  31034]  1000 31034    61770     3178   270336        0  =
           0 emacs
[243901.263004] [    893]  1000   893   417107      508   675840        0  =
           0 git
[243901.263011] [    898]  1000   898     1401       51    53248        0  =
           0 pager
[243901.263018] [   2621]  1000  2621  1380793    12340  1028096     1994  =
         300 chromium
[243901.263025] [   2634]  1000  2634  1377195     5462   946176     1998  =
         300 chromium
[243901.263031] [   2647]  1000  2647  1380110    14740  1011712     2077  =
         300 chromium
[243901.263038] [   2678]  1000  2678  1381698     6520  1105920     2034  =
         300 chromium
[243901.263044] [   2985]  1000  2985  1384393    14409  1191936     1972  =
         300 chromium
[243901.263051] [   3000]  1000  3000  1359223     4548   970752     2011  =
         300 chromium
[243901.263058] [   5289]  1000  5289  1375736     5248   909312     2005  =
         300 chromium
[243901.263063] [   7302]  1000  7302  1443704    20918  1273856     1870  =
         300 chromium
[243901.263070] [   7414]  1000  7414  1375314     7151   942080     2026  =
         300 chromium
[243901.263077] [   7431]  1000  7431  1373507     2357   905216     2069  =
         300 chromium
[243901.263084] [   8076]  1000  8076     1662       67    49152        0  =
           0 amutt
[243901.263090] [   8077]  1000  8077    10854     4508   118784        0  =
           0 mutt
[243901.263097] [   8091]  1000  8091      598       17    40960        0  =
           0 sh
[243901.263103] [   8092]  1000  8092     4657      372    65536        0  =
           0 ssh
[243901.263110] [   9312]  1000  9312  1376695     8252   966656     2074  =
         300 chromium
[243901.263116] [  10245]  1000 10245  1374523     2905   913408     2069  =
         300 chromium
[243901.263122] [  10350]  1000 10350  1374038     3419   925696     2053  =
         300 chromium
[243901.263129] [  12482]  1000 12482     1774      101    49152       60  =
           0 bash
[243901.263134] [  12483]  1000 12483    10103     1983   114688        0  =
           0 mutt
[243901.263141] [  12563]     0 12563     4166      285    65536        0  =
           0 sshd
[243901.263147] [  12573]  1000 12573     4984     1087    73728        0  =
           0 sshd
[243901.263153] [  12575]  1000 12575   275507   204777  1794048        0  =
           0 unison
[243901.263159] [  13040]  1000 13040  1446873    25531  1384448     1815  =
         300 chromium
[243901.263166] [  13338]  1000 13338   273792     3019   700416        0  =
         200 chromium
[243901.263172] [  13562]  1000 13562     1316       17    40960        0  =
           0 sleep
[243901.263178] [  13977]  1000 13977  1355665     3660   876544     2105  =
         300 chromium
[243901.263184] [  14135]  1000 14135  1336532     2164   860160     2102  =
         300 chromium
[243901.263190] [  14260]  1000 14260  1359697     7095   946176     2036  =
         300 chromium
[243901.263199] [  14345]  1000 14345  1335523     1753   827392     2155  =
         300 chromium
[243901.263205] [  14377]  1000 14377     1316       15    49152        0  =
           0 sleep
[243901.263211] oom-kill:constraint=3DCONSTRAINT_NONE,nodemask=3D(null),tas=
k=3Dchromium,pid=3D4073,uid=3D1000
[243901.263276] Out of memory: Killed process 4073 (chromium) total-vm:5645=
392kB, anon-rss:138792kB, file-rss:0kB, shmem-rss:8832kB, UID:1000 pgtables=
:1628kB oom_score_adj:300
[243901.289949] oom_reaper: reaped process 4073 (chromium), now anon-rss:0k=
B, file-rss:0kB, shmem-rss:7808kB
[258096.978506] INFO: task Xorg:3123 blocked for more than 120 seconds.
[258096.978525]       Tainted: G        W         5.6.0-rc7+ #84
[258096.978533] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[258096.978542] Xorg            D    0  3123   3116 0x00404004
[258096.978556] Call Trace:
[258096.978579]  __schedule+0x350/0x6b0
[258096.978593]  schedule+0x3b/0xf0
[258096.978605]  schedule_preempt_disabled+0x13/0x20
[258096.978617]  __mutex_lock+0x3e0/0x8a0
[258096.978629]  ? i915_vma_pin+0xb4/0x750
[258096.978642]  mutex_lock_nested+0x16/0x20
[258096.978652]  ? mutex_lock_nested+0x16/0x20
[258096.978661]  i915_vma_pin+0xb4/0x750
[258096.978676]  eb_lookup_vmas+0x1c2/0xd10
[258096.978689]  i915_gem_do_execbuffer+0x6a7/0x1ef0
[258096.978701]  ? __schedule+0x358/0x6b0
[258096.978717]  ? __lock_acquire.isra.33+0x297/0x550
[258096.978726]  ? find_held_lock+0x35/0xa0
[258096.978735]  ? find_held_lock+0x35/0xa0
[258096.978749]  ? kvmalloc_node+0x67/0x70
[258096.978760]  ? find_held_lock+0x35/0xa0
[258096.978772]  ? i915_gem_execbuffer_ioctl+0x270/0x270
[258096.978784]  i915_gem_execbuffer2_ioctl+0x1bc/0x390
[258096.978796]  ? i915_gem_execbuffer_ioctl+0x270/0x270
[258096.978808]  drm_ioctl_kernel+0xab/0xf0
[258096.978819]  drm_ioctl+0x205/0x3e0
[258096.978830]  ? i915_gem_execbuffer_ioctl+0x270/0x270
[258096.978846]  ? __fget_files+0x9d/0xd0
[258096.978860]  ksys_ioctl+0x73/0xb0
[258096.978871]  __x64_sys_ioctl+0x15/0x20
[258096.978882]  do_syscall_64+0x48/0x110
[258096.978893]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[258096.978904] RIP: 0033:0x7ff33cced427
[258096.978921] Code: Bad RIP value.
[258096.978930] RSP: 002b:00007fff1c249f28 EFLAGS: 00000246 ORIG_RAX: 00000=
00000000010
[258096.978940] RAX: ffffffffffffffda RBX: 00000000ffffffff RCX: 00007ff33c=
ced427
[258096.978949] RDX: 00007fff1c249f70 RSI: 0000000040406469 RDI: 0000000000=
00000e
[258096.978957] RBP: 00007fff1c249f70 R08: 00005636dc997310 R09: 00007fff1c=
31d090
[258096.978965] R10: 00007fff1c24a010 R11: 0000000000000246 R12: 0000000040=
406469
[258096.978973] R13: 000000000000000e R14: ffffffffffffffff R15: 0000000000=
000000
[258096.978987] INFO: task InputThread:3394 blocked for more than 120 secon=
ds.
[258096.978995]       Tainted: G        W         5.6.0-rc7+ #84
[258096.979002] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[258096.979010] InputThread     D    0  3394   3116 0x00400000
[258096.979020] Call Trace:
[258096.979032]  __schedule+0x350/0x6b0
[258096.979044]  schedule+0x3b/0xf0
[258096.979056]  schedule_preempt_disabled+0x13/0x20
[258096.979067]  __mutex_lock+0x3e0/0x8a0
[258096.979080]  ? i915_gem_object_bump_inactive_ggtt+0x3f/0x210
[258096.979092]  mutex_lock_nested+0x16/0x20
[258096.979103]  ? mutex_lock_nested+0x16/0x20
[258096.979114]  i915_gem_object_bump_inactive_ggtt+0x3f/0x210
[258096.979128]  i915_gem_object_unpin_from_display_plane+0x23/0x60
[258096.979144]  intel_unpin_fb_vma+0x40/0xb0
[258096.979156]  intel_legacy_cursor_update+0x2ae/0x320
[258096.979168]  __setplane_atomic+0xce/0x110
[258096.979179]  drm_mode_cursor_universal+0x13d/0x260
[258096.979191]  drm_mode_cursor_common+0xd5/0x240
[258096.979203]  ? drm_mode_setplane+0x1b0/0x1b0
[258096.979213]  drm_mode_cursor_ioctl+0x45/0x60
[258096.979223]  drm_ioctl_kernel+0xab/0xf0
[258096.979234]  drm_ioctl+0x205/0x3e0
[258096.979243]  ? drm_mode_setplane+0x1b0/0x1b0
[258096.979255]  ? __fget_files+0x9d/0xd0
[258096.979267]  ksys_ioctl+0x73/0xb0
[258096.979278]  __x64_sys_ioctl+0x15/0x20
[258096.979286]  do_syscall_64+0x48/0x110
[258096.979296]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[258096.979305] RIP: 0033:0x7ff33cced427
[258096.979315] Code: Bad RIP value.
[258096.979323] RSP: 002b:00007ff3393d62d8 EFLAGS: 00000246 ORIG_RAX: 00000=
00000000010
[258096.979333] RAX: ffffffffffffffda RBX: 00005636dc9a6180 RCX: 00007ff33c=
ced427
[258096.979341] RDX: 00007ff3393d6310 RSI: 00000000c01c64a3 RDI: 0000000000=
00000e
[258096.979349] RBP: 00007ff3393d6310 R08: 0000000000000001 R09: 0000000000=
000001
[258096.979356] R10: 0000000000000780 R11: 0000000000000246 R12: 00000000c0=
1c64a3
[258096.979364] R13: 000000000000000e R14: 00000000000002c5 R15: 0000000000=
00029e
[258096.979417] INFO: task GpuWatchdog:27301 blocked for more than 120 seco=
nds.
[258096.979424]       Tainted: G        W         5.6.0-rc7+ #84
[258096.979431] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[258096.979439] GpuWatchdog     D    0 27301      1 0x80004002
[258096.979449] Call Trace:
[258096.979460]  __schedule+0x350/0x6b0
[258096.979471]  schedule+0x3b/0xf0
[258096.979482]  schedule_preempt_disabled+0x13/0x20
[258096.979492]  __mutex_lock+0x3e0/0x8a0
[258096.979505]  ? i915_gem_object_release_mmap+0x30/0x70
[258096.979517]  mutex_lock_nested+0x16/0x20
[258096.979527]  ? mutex_lock_nested+0x16/0x20
[258096.979538]  i915_gem_object_release_mmap+0x30/0x70
[258096.979550]  __i915_gem_free_objects+0x68/0x1f0
[258096.979562]  i915_gem_flush_free_objects+0x19/0x20
[258096.979574]  i915_driver_postclose+0x45/0x50
[258096.979584]  drm_file_free.part.12+0x1da/0x280
[258096.979594]  drm_release+0xaa/0xe0
[258096.979605]  __fput+0xb0/0x240
[258096.979615]  ____fput+0x9/0x10
[258096.979627]  task_work_run+0x8f/0xb0
[258096.979641]  do_exit+0x372/0xa80
[258096.979653]  ? ___preempt_schedule+0x16/0x18
[258096.979665]  do_group_exit+0x4b/0xc0
[258096.979676]  __x64_sys_exit_group+0x13/0x20
[258096.979685]  do_syscall_64+0x48/0x110
[258096.979694]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[258096.979702] RIP: 0033:0x7f5cf0ee59d6
[258096.979713] Code: Bad RIP value.
[258096.979720] RSP: 002b:00007f5ceb6660d8 EFLAGS: 00000202 ORIG_RAX: 00000=
000000000e7
[258096.979730] RAX: ffffffffffffffda RBX: 0000000000000030 RCX: 00007f5cf0=
ee59d6
[258096.979737] RDX: 0000000000000001 RSI: 000000000000003c RDI: 0000000000=
000001
[258096.979745] RBP: 00007f5ceb666cf0 R08: 00000000000000e7 R09: ffffffffff=
fffef8
[258096.979753] R10: 0000000000013521 R11: 0000000000000202 R12: 0000000000=
000160
[258096.979761] R13: 0000000000000017 R14: 00005621599e16ea R15: 00007f5ceb=
6668c0
[258096.979794] INFO: task kworker/u16:0:30014 blocked for more than 120 se=
conds.
[258096.979802]       Tainted: G        W         5.6.0-rc7+ #84
[258096.979809] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[258096.979816] kworker/u16:0   D    0 30014      2 0x80004000
[258096.979832] Workqueue: i915 __i915_gem_free_work
[258096.979841] Call Trace:
[258096.979852]  __schedule+0x350/0x6b0
[258096.979863]  schedule+0x3b/0xf0
[258096.979873]  schedule_preempt_disabled+0x13/0x20
[258096.979884]  __mutex_lock+0x3e0/0x8a0
[258096.979895]  ? i915_gem_object_release_mmap+0x30/0x70
[258096.979907]  mutex_lock_nested+0x16/0x20
[258096.979918]  ? mutex_lock_nested+0x16/0x20
[258096.979929]  i915_gem_object_release_mmap+0x30/0x70
[258096.979941]  __i915_gem_free_objects+0x68/0x1f0
[258096.979952]  __i915_gem_free_work+0x1d/0x20
[258096.979966]  process_one_work+0x21d/0x3e0
[258096.979977]  ? process_one_work+0x1b3/0x3e0
[258096.979990]  worker_thread+0x32/0x3a0
[258096.980001]  kthread+0x116/0x130
[258096.980013]  ? process_one_work+0x3e0/0x3e0
[258096.980023]  ? kthread_create_worker_on_cpu+0x60/0x60
[258096.980033]  ret_from_fork+0x35/0x40
[258096.980048]=20
                Showing all locks held in the system:
[258096.980060] 1 lock held by khungtaskd/594:
[258096.980067]  #0: ffffffff858498e0 (rcu_read_lock){....}, at: debug_show=
_all_locks+0x23/0x108
[258096.980089] 3 locks held by kswapd0/1034:
[258096.980096]  #0: ffffffff85851c80 (fs_reclaim){....}, at: __fs_reclaim_=
acquire+0x0/0x30
[258096.980114]  #1: ffffffff85850b40 (shrinker_rwsem){....}, at: shrink_sl=
ab.constprop.79+0x38/0x270
[258096.980130]  #2: ffff888197278b90 (&vm->mutex){....}, at: i915_vma_unbi=
nd+0x90/0xe0
[258096.980150] 1 lock held by in:imklog/2973:
[258096.980157]  #0: ffff88819203d0e0 (&f->f_pos_lock){....}, at: __fdget_p=
os+0x40/0x50
[258096.980177] 3 locks held by Xorg/3123:
[258096.980183]  #0: ffff8881972700c8 (&dev->struct_mutex){....}, at: i915_=
gem_do_execbuffer+0x690/0x1ef0
[258096.980200]  #1: ffff88819576e950 (&ctx->mutex){....}, at: eb_lookup_vm=
as+0x7d/0xd10
[258096.980215]  #2: ffff888197278b90 (&vm->mutex){....}, at: i915_vma_pin+=
0xb4/0x750
[258096.980230] 4 locks held by InputThread/3394:
[258096.980237]  #0: ffffc9000070bcd8 (crtc_ww_class_acquire){....}, at: dr=
m_mode_cursor_common+0x8b/0x240
[258096.980252]  #1: ffff888196c22888 (crtc_ww_class_mutex){....}, at: drm_=
modeset_lock+0x10b/0x130
[258096.980269]  #2: ffff88818c65b188 (reservation_ww_class_mutex){....}, a=
t: intel_unpin_fb_vma+0x22/0xb0
[258096.980286]  #3: ffff888197278b90 (&vm->mutex){....}, at: i915_gem_obje=
ct_bump_inactive_ggtt+0x3f/0x210
[258096.980316] 2 locks held by GpuWatchdog/27301:
[258096.980323]  #0: ffffffff85879d60 (drm_global_mutex){....}, at: drm_rel=
ease+0x2b/0xe0
[258096.980338]  #1: ffff888197278b90 (&vm->mutex){....}, at: i915_gem_obje=
ct_release_mmap+0x30/0x70
[258096.980361] 2 locks held by pager/898:
[258096.980367]  #0: ffff88818c36d090 (&tty->ldisc_sem){....}, at: ldsem_do=
wn_read+0xe/0x10
[258096.980384]  #1: ffffc9000086f2e0 (&ldata->atomic_read_lock){....}, at:=
 n_tty_read+0xbc/0x920
[258096.980403] 3 locks held by kworker/u16:0/30014:
[258096.980409]  #0: ffff888196fa9728 ((wq_completion)i915){....}, at: proc=
ess_one_work+0x1b3/0x3e0
[258096.980426]  #1: ffffc90009cf3e70 ((work_completion)(&i915->mm.free_wor=
k)){....}, at: process_one_work+0x1b3/0x3e0
[258096.980442]  #2: ffff888197278b90 (&vm->mutex){....}, at: i915_gem_obje=
ct_release_mmap+0x30/0x70

[258096.980467] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D



--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXoZaigAKCRAw5/Bqldv6
8gx4AKCDXfG7KTiHTm1Stv31hKPjR2RsYACePu1BUO0kyI9QBAG2WN67y9SmMwM=
=t2Cr
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--

--===============1187592890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1187592890==--
