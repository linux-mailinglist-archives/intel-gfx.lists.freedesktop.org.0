Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 222694E23F4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 11:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4793C10E357;
	Mon, 21 Mar 2022 10:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E4F10E357
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 10:05:45 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id p25so4794510qkj.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 03:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ev/9ehfQQ+C+BZQB3kKS2mVAmTqF/3sNTDeRSzuIGs=;
 b=UU43tiK8mWGAzvhXU0qt+iaMpM0WYi/3xWcIPn5ngWk82bsRGXbO94Vb2xKTIQjiWJ
 Kv/LRd5Zj/c97JDJFv2YnQPdnsjj5Otaqcl32h3JveYF905zQDKb87zjwUxAcUUXY6sZ
 R1yZ/AlUD/liDzfARz2f1SUbFgMwZ5ZGEti7QsvsW6lqbQUFEBCBOyj27ZsJpMcOTnXe
 zil5UucQW04LRi7TE3aAtnP5+g4s0HmFdpQKAr6pEq8puO3pup0+d74Bko8FX32hMuGf
 1T3AR839+A1ltI8X1D0lNlgOfHr51DhdHWZ1R6CQpM514SuA8priD0YgTk+5KGhEaaOv
 NfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ev/9ehfQQ+C+BZQB3kKS2mVAmTqF/3sNTDeRSzuIGs=;
 b=aFTNQ2xaPyShjUm/CB/VtPVF5oPwqcwz93uOsKXrwM5StsSxt7nIEaj+IWqRJxJLLo
 SHYxEl8HJ5AsZrC1If8Pog2JzGM2TseFYOm4YHcfa2bYVc5WrLIhuAObC2JpOpxVdiTC
 eH0ute1mItphoDv3HHyiQSXzuMdbvSryvBZgG7Mm0ldkAdOvI8QNKCwju3wcxPPl0PxZ
 KdRn3hc/NSq9UIT4bojSZwUUo93qy5QE3XElVdc6c8z0tDQLQ9YS1U25zMBumWgLHz26
 S5/hUDQ9gcmQj+Y1k75jLwM2MVIrK+6CNtjGPt+3DiURyFxCnoIENtvwQ9C5hM5uSU/M
 W4sg==
X-Gm-Message-State: AOAM533Bt32JyJb2uixOF7nqUzwXgTJr42GAH+7CEaHlnrbqkqU31iFc
 oFm/nR/wMOPHo9b9rFCarGObZIM6YnRwZO+ftvS5KuV+ckM=
X-Google-Smtp-Source: ABdhPJx6PB9frz8CEfglduqWsl+i/maDEhovT7th3NF2ja0xu/0lex9To3FQ9Lf6+CQZR63QEpV6qJxfd8mnMSH6Y3I=
X-Received: by 2002:a37:4cf:0:b0:67b:1821:f89a with SMTP id
 198-20020a3704cf000000b0067b1821f89amr12070284qke.7.1647857144691; Mon, 21
 Mar 2022 03:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220318233938.149744-1-andi.shyti@linux.intel.com>
 <164765558727.30531.18153694719554372917@emeril.freedesktop.org>
In-Reply-To: <164765558727.30531.18153694719554372917@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 21 Mar 2022 10:05:18 +0000
Message-ID: <CAM0jSHOjG+qz3ir40Lv892UT4hMAtqmOvzdXRXCb9Xq8nM_8_g@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
	=?utf-8?q?roduce_multitile_support?=
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

On Sat, 19 Mar 2022 at 02:06, Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> Patch Details
> Series:Introduce multitile support
> URL:https://patchwork.freedesktop.org/series/101551/
> State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22617/index.html
>
> CI Bug Log - changes from CI_DRM_11384_full -> Patchwork_22617_full
>
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_22617_full absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22617_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> Participating hosts (12 -> 12)
>
> No changes in participating hosts
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_22617_full:
>
> IGT changes
>
> Possible regressions
>
> igt@gem_workarounds@suspend-resume:
>
> shard-kbl: PASS -> INCOMPLETE

Unrelated failure. Looks like filesystem related issue:

<4>[  122.379815] EXT4-fs warning (device nvme0n1p2):
ext4_end_bio:346: I/O error 10 writing to inode 27001858 starting
block 13317428)
<6>[  122.379827] nvme0n1: detected capacity change from 1000215216 to 0
<3>[  122.379933] Buffer I/O error on device nvme0n1p2, logical block 13186100
<2>[  122.380063] EXT4-fs error (device nvme0n1p2):
__ext4_find_entry:1614: inode #24510583: comm systemd-udevd: reading
directory lblock 0
<3>[  122.380358] Aborting journal on device nvme0n1p2-8.
<2>[  122.380488] EXT4-fs error (device nvme0n1p2) in
ext4_reserve_inode_write:5706: Journal has aborted
<2>[  122.380612] EXT4-fs error (device nvme0n1p2):
ext4_journal_check_start:83: comm dmesg: Detected aborted journal
<3>[  122.380671] Buffer I/O error on dev nvme0n1p2, logical block
62423040, lost sync page write
<3>[  122.380721] JBD2: Error -5 detected when updating journal
superblock for nvme0n1p2-8.
<2>[  122.380935] EXT4-fs error (device nvme0n1p2):
ext4_journal_check_start:83: comm rs:main Q:Reg: Detected aborted
journal
<4>[  122.381311] EXT4-fs warning (device nvme0n1p2): dx_probe:788:
inode #3539533: lblock 0: comm systemd: error -5 reading directory
block
<4>[  122.381428] EXT4-fs warning (device nvme0n1p2): dx_probe:788:
inode #3539533: lblock 0: comm systemd: error -5 reading directory
block
<4>[  122.381517] EXT4-fs warning (device nvme0n1p2): dx_probe:788:
inode #3539533: lblock 0: comm systemd: error -5 reading directory
block
<4>[  122.381588] EXT4-fs warning (device nvme0n1p2): dx_probe:788:
inode #3539533: lblock 0: comm systemd: error -5 reading directory
block
<4>[  122.381659] EXT4-fs warning (device nvme0n1p2): dx_probe:788:
inode #3539533: lblock 0: comm systemd: error -5 reading directory
block
<3>[  122.381728] Buffer I/O error on dev nvme0n1p2, logical block 0,
lost sync page write
<4>[  122.381734] EXT4-fs warning (device nvme0n1p2): dx_probe:788:
inode #3539533: lblock 0: comm systemd: error -5 reading directory
block
<3>[  122.381741] EXT4-fs (nvme0n1p2): I/O error while writing superblock
<0>[  122.381744] Kernel panic - not syncing: EXT4-fs (device
nvme0n1p2): panic forced after error
<0>[  122.381750] Kernel Offset: disabled
<4>[  122.381762] CPU: 2 PID: 378 Comm: rs:main Q:Reg Not tainted
5.17.0-rc8-CI-Patchwork_22617+ #1
<4>[  122.381766] Hardware name:  /NUC7i5BNB, BIOS
BNKBL357.86A.0083.2020.0714.1344 07/14/2020
<4>[  122.381771] Call Trace:
<4>[  122.381775]  <TASK>
<4>[  122.381777]  dump_stack_lvl+0x56/0x7b
<4>[  122.381783]  panic+0x12a/0x2c3
<4>[  122.381794]  ext4_handle_error.cold.167+0x13/0x13
<4>[  122.381801]  __ext4_error+0x104/0x1f0
<4>[  122.381819]  ext4_journal_check_start+0x84/0xa0
<4>[  122.381823]  __ext4_journal_start_sb+0x41/0x180
<4>[  122.381829]  ext4_dirty_inode+0x2f/0x70
<4>[  122.381833]  __mark_inode_dirty+0x181/0x580
<4>[  122.381838]  generic_update_time+0x98/0xc0
<4>[  122.381842]  file_update_time+0xc3/0x110
<4>[  122.381844]  ? generic_write_checks+0x5c/0xc0
<4>[  122.381851]  ext4_buffered_write_iter+0x4b/0x100
<4>[  122.381858]  ext4_file_write_iter+0x5a/0x830
<4>[  122.381869]  new_sync_write+0x120/0x1b0
<4>[  122.381880]  vfs_write+0x251/0x3b0
<4>[  122.381886]  ksys_write+0x5a/0xd0
<4>[  122.381892]  do_syscall_64+0x3a/0xb0
<4>[  122.381896]  entry_SYSCALL_64_after_hwframe+0x44/0xae
<4>[  122.381899] RIP: 0033:0x7fd894e062cf

>
> Known issues
>
> Here are the changes found in Patchwork_22617_full that come from known issues:
>
> IGT changes
>
> Issues hit
>
> igt@gem_create@create-massive:
>
> shard-kbl: NOTRUN -> DMESG-WARN ([i915#4991])
>
> igt@gem_ctx_isolation@preservation-s3@vcs0:
>
> shard-kbl: NOTRUN -> DMESG-WARN ([i915#180]) +3 similar issues
>
> shard-apl: NOTRUN -> DMESG-WARN ([i915#180])
>
> igt@gem_eio@in-flight-immediate:
>
> shard-tglb: PASS -> TIMEOUT ([i915#3063])
>
> igt@gem_exec_fair@basic-none@vcs0:
>
> shard-kbl: PASS -> FAIL ([i915#2842])
>
> igt@gem_exec_fair@basic-none@vcs1:
>
> shard-iclb: NOTRUN -> FAIL ([i915#2842])
>
> igt@gem_exec_fair@basic-pace-share@rcs0:
>
> shard-tglb: PASS -> FAIL ([i915#2842]) +1 similar issue
>
> igt@gem_exec_fair@basic-pace@vecs0:
>
> shard-glk: PASS -> FAIL ([i915#2842])
>
> igt@gem_exec_fair@basic-throttle@rcs0:
>
> shard-glk: NOTRUN -> FAIL ([i915#2842])
>
> igt@gem_exec_params@no-blt:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109283])
>
> igt@gem_lmem_swapping@heavy-verify-multi:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#4613]) +5 similar issues
>
> igt@gem_lmem_swapping@parallel-random:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#4613])
>
> igt@gem_pxp@create-valid-protected-context:
>
> shard-iclb: NOTRUN -> SKIP ([i915#4270])
>
> igt@gem_render_copy@linear-to-vebox-y-tiled:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271]) +34 similar issues
>
> igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>
> shard-iclb: NOTRUN -> SKIP ([i915#768])
>
> igt@gem_userptr_blits@input-checking:
>
> shard-skl: NOTRUN -> DMESG-WARN ([i915#4991])
>
> igt@gem_userptr_blits@vma-merge:
>
> shard-skl: NOTRUN -> FAIL ([i915#3318])
>
> igt@gen7_exec_parse@oacontrol-tracking:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109289])
>
> igt@gen9_exec_parse@allowed-all:
>
> shard-iclb: NOTRUN -> SKIP ([i915#2856]) +1 similar issue
>
> igt@i915_pm_dc@dc6-dpms:
>
> shard-skl: NOTRUN -> FAIL ([i915#454])
>
> igt@i915_pm_rpm@modeset-non-lpsp:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#110892])
>
> igt@i915_selftest@live@gt_pm:
>
> shard-skl: NOTRUN -> DMESG-FAIL ([i915#1886])
>
> igt@i915_suspend@sysfs-reader:
>
> shard-skl: PASS -> INCOMPLETE ([i915#4817])
>
> igt@kms_atomic_transition@plane-all-modeset-transition:
>
> shard-iclb: NOTRUN -> SKIP ([i915#1769])
>
> igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>
> shard-iclb: NOTRUN -> SKIP ([i915#5286]) +3 similar issues
>
> igt@kms_big_fb@linear-32bpp-rotate-90:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#110725] / [fdo#111614]) +1 similar issue
>
> igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
> shard-skl: NOTRUN -> FAIL ([i915#3743]) +3 similar issues
>
> igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777]) +4 similar issues
>
> igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +1 similar issue
>
> igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [i915#3886]) +2 similar issues
>
> igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +12 similar issues
>
> igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +2 similar issues
>
> igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271]) +25 similar issues
>
> igt@kms_cdclk@mode-transition:
>
> shard-iclb: NOTRUN -> SKIP ([i915#3742])
>
> igt@kms_chamelium@dp-hpd-with-enabled-mode:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +4 similar issues
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827]) +5 similar issues
>
> igt@kms_chamelium@hdmi-aspect-ratio:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +24 similar issues
>
> igt@kms_chamelium@vga-hpd:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +2 similar issues
>
> igt@kms_color_chamelium@pipe-b-ctm-max:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827])
>
> shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +1 similar issue
>
> igt@kms_content_protection@srm:
>
> shard-apl: NOTRUN -> TIMEOUT ([i915#1319])
>
> igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
>
> shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +21 similar issues
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109279] / [i915#3359])
>
> igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [fdo#109279]) +2 similar issues
>
> igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109274] / [fdo#109278]) +3 similar issues
>
> igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:
>
> shard-iclb: NOTRUN -> SKIP ([i915#5287]) +2 similar issues
>
> igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109274]) +2 similar issues
>
> igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>
> shard-skl: PASS -> FAIL ([i915#79]) +1 similar issue
>
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>
> shard-apl: PASS -> DMESG-WARN ([i915#180]) +1 similar issue
>
> igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>
> shard-iclb: NOTRUN -> SKIP ([i915#2587])
>
> igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109280]) +12 similar issues
>
> igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#533]) +2 similar issues
>
> igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
> shard-skl: NOTRUN -> FAIL ([i915#265]) +1 similar issue
>
> igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>
> shard-apl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>
> igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
> shard-apl: NOTRUN -> FAIL ([i915#265])
>
> igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>
> shard-glk: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>
> igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>
> shard-skl: NOTRUN -> FAIL ([fdo#108145] / [i915#265]) +3 similar issues
>
> igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278]) +8 similar issues
>
> igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
>
> shard-iclb: PASS -> SKIP ([i915#5235]) +2 similar issues
>
> igt@kms_psr2_su@page_flip-p010:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#658])
>
> igt@kms_psr2_su@page_flip-xrgb8888:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +2 similar issues
>
> igt@kms_psr@psr2_cursor_render:
>
> shard-iclb: PASS -> SKIP ([fdo#109441]) +1 similar issue
>
> igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>
> shard-iclb: NOTRUN -> SKIP ([i915#5289])
>
> igt@kms_sysfs_edid_timing:
>
> shard-apl: NOTRUN -> FAIL ([IGT#2])
>
> igt@kms_vrr@flip-dpms:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109502])
>
> igt@kms_writeback@writeback-check-output:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437])
>
> igt@kms_writeback@writeback-pixel-formats:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437]) +1 similar issue
>
> igt@nouveau_crc@pipe-a-source-outp-complete:
>
> shard-iclb: NOTRUN -> SKIP ([i915#2530])
>
> igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [i915#2530])
>
> igt@perf@polling-small-buf:
>
> shard-skl: PASS -> FAIL ([i915#1722])
>
> igt@perf_pmu@module-unload:
>
> shard-apl: PASS -> INCOMPLETE ([i915#1373] / [i915#262])
>
> igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109291]) +1 similar issue
>
> igt@prime_nv_api@i915_self_import:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271]) +341 similar issues
>
> igt@sysfs_clients@busy:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994]) +4 similar issues
>
> Possible fixes
>
> igt@fbdev@nullptr:
>
> shard-skl: DMESG-WARN ([i915#1982]) -> PASS
>
> igt@gem_ctx_persistence@many-contexts:
>
> {shard-rkl}: FAIL ([i915#2410]) -> PASS
>
> shard-iclb: FAIL ([i915#2410]) -> PASS
>
> igt@gem_exec_fair@basic-none@rcs0:
>
> shard-kbl: FAIL ([i915#2842]) -> PASS +1 similar issue
>
> igt@gem_exec_fair@basic-none@vcs0:
>
> shard-apl: FAIL ([i915#2842]) -> PASS
>
> igt@gem_exec_nop@basic-series:
>
> shard-glk: DMESG-WARN ([i915#118]) -> PASS
>
> igt@gen9_exec_parse@allowed-all:
>
> shard-glk: DMESG-WARN ([i915#1436] / [i915#716]) -> PASS
>
> igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>
> shard-iclb: INCOMPLETE -> PASS
>
> igt@i915_pm_rpm@modeset-lpsp-stress:
>
> shard-tglb: SKIP ([i915#579]) -> PASS
>
> igt@i915_selftest@live@gem_contexts:
>
> shard-tglb: DMESG-WARN ([i915#2867]) -> PASS +16 similar issues
>
> igt@i915_suspend@forcewake:
>
> shard-kbl: DMESG-WARN ([i915#180]) -> PASS +1 similar issue
>
> igt@kms_big_fb@linear-16bpp-rotate-0:
>
> {shard-tglu}: DMESG-WARN ([i915#402]) -> PASS
>
> igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>
> shard-skl: FAIL ([i915#79]) -> PASS
>
> igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>
> {shard-rkl}: SKIP ([i915#4098]) -> PASS
>
> igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-dp-1-pipe-a:
>
> shard-apl: DMESG-WARN ([i915#180]) -> PASS +2 similar issues
>
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>
> shard-skl: FAIL ([fdo#108145] / [i915#265]) -> PASS
>
> igt@kms_psr@psr2_sprite_plane_move:
>
> shard-iclb: SKIP ([fdo#109441]) -> PASS +1 similar issue
>
> igt@kms_rotation_crc@cursor-rotation-180:
>
> {shard-rkl}: SKIP ([i915#1845] / [i915#4098]) -> PASS
>
> igt@perf@polling-parameterized:
>
> shard-skl: FAIL ([i915#1542]) -> PASS
>
> Warnings
>
> igt@gem_exec_balancer@parallel-bb-first:
>
> shard-iclb: DMESG-WARN ([i915#5076]) -> SKIP ([i915#4525])
>
> igt@gem_exec_balancer@parallel-ordering:
>
> shard-iclb: DMESG-FAIL ([i915#5076]) -> SKIP ([i915#4525])
>
> igt@gem_exec_balancer@parallel-out-fence:
>
> shard-iclb: SKIP ([i915#4525]) -> DMESG-WARN ([i915#5076]) +1 similar issue
>
> igt@gem_exec_fair@basic-pace-solo@rcs0:
>
> shard-kbl: FAIL ([i915#2842]) -> FAIL ([i915#2851])
>
> igt@i915_pm_dc@dc9-dpms:
>
> shard-skl: SKIP ([fdo#109271]) -> SKIP ([fdo#109271] / [i915#1888]) +1 similar issue
>
> igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
> shard-skl: SKIP ([fdo#109271] / [i915#1888] / [i915#3886]) -> SKIP ([fdo#109271] / [i915#3886])
