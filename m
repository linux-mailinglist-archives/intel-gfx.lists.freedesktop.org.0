Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E35101208DE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 15:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D9116E086;
	Mon, 16 Dec 2019 14:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7B06E086
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 14:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576507769;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dBxSnIq1jHE5R2WhmyOzqBKhHh/sbZhu3dcCEtqxKf4=;
 b=Ch01G7V+lktEyB4t1afRvloZvVePn+ZwnENjGTqa7bqy6TstyydjxmHdtWeuwSxATOCnx4
 /+HBvFzB5YXgcUoHttN6rj7bAyxGkQ5uBoHTApCEQ6cIhlMPRsNV3PHjm6tGMVcNu0QbRr
 Ukhky8+Q8TAKeqFxRhMlmUWb8zq27bI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-NmFTj16kMnenbg3MGJt5bA-1; Mon, 16 Dec 2019 09:49:12 -0500
Received: by mail-wr1-f71.google.com with SMTP id c6so3811237wrm.18
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 06:49:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dBxSnIq1jHE5R2WhmyOzqBKhHh/sbZhu3dcCEtqxKf4=;
 b=PMh2NaRmwm+tr9HPt58ca//Yeyr9CTxqNo04AiROGsnpnBON6VzplRrSL+XhbIgzZV
 +NUwCIvXgu1T8C+ZpbkH3ncS5+YVQWzlzQHSLKEaK9zrqyn8NlFz8JS9yA7lZa0VnFeT
 vfO5UANml2SRMWmFLavd8wBVL6bABCHKoBfeVG2PRH2bXa8UwrdN3eKgh/l1rpUH+HbJ
 KsoALXkuYCzFBtpbSIf4VX/OXkWQ4v2xBi9ew9VshbyHD81NqTgha0fEenETcG2gjewe
 bVO1MYN61Q+zxD3YztyNxQ6HvSvcZI1VqEMH2JQ7Wbz16hIzByEX5satyO+QICxBXMsK
 JGXw==
X-Gm-Message-State: APjAAAUTsslUC8BxIR/bqhGQKVXostP9rBPFCPResgJEs3qSkDWH9aDO
 0U6zlSh+wlmDDISOLjXJYJLANYUZCVttu5SXa0stqF+uAD2O/xtX/B3uut4wO5qf3L4xlsxjegG
 cy9v456bgH3nRLuVihJFbV4l8JSRp
X-Received: by 2002:adf:f411:: with SMTP id g17mr30097006wro.89.1576507751000; 
 Mon, 16 Dec 2019 06:49:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqwfbvKu1GJU1lI3veMJnpAEQw4wRLN48rtxMyD0MRvGCZa58+ZNFn4jp3Piiu6cNkdo58ox8w==
X-Received: by 2002:adf:f411:: with SMTP id g17mr30096937wro.89.1576507750494; 
 Mon, 16 Dec 2019 06:49:10 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id b68sm2365942wme.6.2019.12.16.06.49.09
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 06:49:09 -0800 (PST)
To: intel-gfx@lists.freedesktop.org
References: <20191215164757.53130-1-hdegoede@redhat.com>
 <157644051357.27849.3081749731995451624@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5dbb4f88-3caf-9490-da9b-b7867e9c788f@redhat.com>
Date: Mon, 16 Dec 2019 15:49:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <157644051357.27849.3081749731995451624@emeril.freedesktop.org>
Content-Language: en-US
X-MC-Unique: NmFTj16kMnenbg3MGJt5bA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_opregion=3A_set_opregion_chpd_value_to_indicate_the_dr?=
 =?utf-8?q?iver_handles_hotplug_=28rev4=29?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 15-12-2019 21:08, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: opregion: set opregion chpd value to indicate the driver handles hotplug (rev4)
> URL   : https://patchwork.freedesktop.org/series/69902/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7569_full -> Patchwork_15774_full
> ====================================================
> 
> Summary
> -------
> 
>    **FAILURE**
> 
>    Serious unknown changes coming with Patchwork_15774_full absolutely need to be
>    verified manually.
>    
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_15774_full, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in CI.
> 
>    
> 
> Possible new issues
> -------------------
> 
>    Here are the unknown changes that may have been introduced in Patchwork_15774_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>    * igt@runner@aborted:
>      - shard-apl:          NOTRUN -> ([FAIL][1], [FAIL][2])
>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-apl6/igt@runner@aborted.html
>     [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-apl4/igt@runner@aborted.html

Yeah, so this is quite likely an unrelated failure, the chpd change really only impacts
ACPI behavior on LID open/close where as this crash is a NULL-ptr deref from __intel_fb_flush
so it seems unlikely that this is a regression caused by the change which is being tested.

<7>[   64.933610] [drm:drm_mode_addfb2] [FB:127]
<7>[   64.934536] [drm:drm_mode_addfb2] [FB:127]
<7>[   64.936430] [drm:drm_mode_addfb2] [FB:127]
<7>[   64.937482] [drm:drm_mode_addfb2] [FB:127]
<7>[   64.939048] [drm:drm_mode_addfb2] [FB:127]
<7>[   64.939847] [drm:drm_mode_addfb2] [FB:127]
<4>[   64.940360] general protection fault: 0000 [#1] PREEMPT SMP NOPTI
<4>[   64.940369] CPU: 2 PID: 40 Comm: kworker/u8:1 Tainted: G     U            5.5.0-rc1-CI-Patchwork_15774+ #1
<4>[   64.940372] Hardware name:  /NUC6CAYB, BIOS AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018
<4>[   64.940471] Workqueue: events_unbound fence_work [i915]
<7>[   64.940477] [drm:drm_mode_addfb2] [FB:127]
<4>[   64.940570] RIP: 0010:__intel_fb_flush+0x14/0x70 [i915]
<4>[   64.940574] Code: e8 d1 82 7f e1 eb 9a 0f 1f 44 00 00 66 2e 0f 1f 84 00 00 00 00 00 41 54 55 53 89 d3 48 83 ec 08 48 8b 87 58 01 00 00 83 fe 02 <48> 8b 68 08 74 21 85 db 75 09 48 83 c4 08 5b 5d 41 5c c3 48 83 c4
<4>[   64.940576] RSP: 0018:ffffc90000183e00 EFLAGS: 00010297
<4>[   64.940580] RAX: 6b6b6b6b6b6b6b6b RBX: 000000006b6b6b6b RCX: 0000000000000000
<4>[   64.940582] RDX: 000000006b6b6b6b RSI: 0000000000000001 RDI: ffff88826e18e800
<4>[   64.940584] RBP: ffffc90000183e40 R08: ffff8882766d08f8 R09: 00000000fffffffe
<4>[   64.940586] R10: 0000000000000000 R11: 00000000dcf23fdc R12: ffff888276c89000
<4>[   64.940587] R13: ffff888276ca8200 R14: ffff88825a8c4730 R15: ffff88826e18eef8
<4>[   64.940590] FS:  0000000000000000(0000) GS:ffff888277d00000(0000) knlGS:0000000000000000
<4>[   64.940592] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[   64.940594] CR2: 00007f8c9b0f5900 CR3: 0000000271c22000 CR4: 00000000003406e0
<4>[   64.940595] Call Trace:
<4>[   64.940681]  clflush_work+0x7f/0x1e0 [i915]
<4>[   64.940758]  fence_work+0x1c/0x90 [i915]
<4>[   64.940767]  process_one_work+0x26a/0x620
<4>[   64.940775]  worker_thread+0x37/0x380
<4>[   64.940781]  ? process_one_work+0x620/0x620
<4>[   64.940784]  kthread+0x119/0x130
<4>[   64.940788]  ? kthread_park+0x80/0x80
<4>[   64.940794]  ret_from_fork+0x3a/0x50

Since BAT did pass and this seems a false positive I plan to push this patch soonish.

Regards,

Hans






> 
>    
> #### Suppressed ####
> 
>    The following results come from untrusted machines, tests, or statuses.
>    They do not affect the overall result.
> 
>    * {igt@gen9_exec_parse@allowed-single}:
>      - shard-apl:          [PASS][3] -> [DMESG-WARN][4]
>     [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl2/igt@gen9_exec_parse@allowed-single.html
>     [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-apl4/igt@gen9_exec_parse@allowed-single.html
>      - shard-skl:          [PASS][5] -> [DMESG-WARN][6]
>     [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>     [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>    
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2drect (NEW):
>      - pig-hsw-4770r:      NOTRUN -> [FAIL][7] +94 similar issues
>     [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/pig-hsw-4770r/spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2drect.html
> 
>    
> New tests
> ---------
> 
>    New tests have been introduced between CI_DRM_7569_full and Patchwork_15774_full:
> 
> ### New Piglit tests (95) ###
> 
>    * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.72] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.76] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-r-0-uint-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.56] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.77] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.79] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.77] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-cube:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.72] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.75] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.74] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.75] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cube:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.65] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-cubearray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.62] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgb-2-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.79] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.67] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.70] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.69] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-cube:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.61] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-0-int-cubearray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.80] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-0-unorm-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.64] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.80] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.64] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.55] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-cube:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.73] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-1-int-cubearray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.54] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.67] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.68] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.73] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-cube:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.72] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-2-int-cubearray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.75] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.64] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.77] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.64] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-cube:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.73] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-3-int-cubearray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.73] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-r-0-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.22] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-r-0-uint-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.86] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-r-0-uint-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.03] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-0-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.98] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-0-uint-2d-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.78] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-1-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.36] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-1-uint-2d-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.00] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-0-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [11.10] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-0-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [11.29] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-1-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [11.14] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-1-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [11.10] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-2-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [10.99] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-2-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [10.82] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.01] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2d-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.80] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.85] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2darray-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.20] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.00] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.86] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.10] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2d-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.88] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.93] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2darray-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.01] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.09] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-1-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.24] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.17] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2d-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.27] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.33] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2darray-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.77] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.69] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.05] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-2-unorm-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.13] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.01] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2d-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.15] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.97] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2darray-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.02] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.12] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-int-2drect-const:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.42] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-r-0-uint-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.81] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rg-0-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.17] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rg-1-uint-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.90] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-0-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.26] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-1-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.28] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgb-2-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.05] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.77] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.46] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.84] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.04] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.05] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.29] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.94] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.93] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [6.87] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-int-2d:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.36] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-int-2darray:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.01] s
> 
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-int-2drect:
>      - Statuses : 1 fail(s)
>      - Exec time: [7.21] s
> 
>    * spec@arb_gpu_shader_fp64@execution@arb_gpu_shader_fp64-vs-non-uniform-control-flow-ssbo:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.10] s
> 
>    * spec@arb_pixel_buffer_object@pbo-drawpixels:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.07] s
> 
>    * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2_array5-float_mat3x2:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.19] s
> 
>    * spec@ext_polygon_offset_clamp@ext_polygon_offset_clamp-dlist:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.19] s
> 
>    * spec@glsl-4.20@execution@vs_in@vs-input-float_mat4x2-double_dvec2-position:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.20] s
> 
>    
> 
> Known issues
> ------------
> 
>    Here are the changes found in Patchwork_15774_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>    * igt@gem_ctx_isolation@vcs1-none:
>      - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080])
>     [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
>     [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html
> 
>    * igt@gem_exec_async@concurrent-writes-bsd2:
>      - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276]) +4 similar issues
>     [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
>     [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd2.html
> 
>    * igt@gem_exec_schedule@preempt-other-chain-bsd:
>      - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146])
>     [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>     [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>    * igt@gem_ppgtt@flink-and-close-vma-leak:
>      - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#644])
>     [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>     [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>    * igt@gem_userptr_blits@sync-unmap:
>      - shard-snb:          [PASS][16] -> [DMESG-WARN][17] ([fdo#111870])
>     [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb1/igt@gem_userptr_blits@sync-unmap.html
>     [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-snb5/igt@gem_userptr_blits@sync-unmap.html
> 
>    * igt@gem_workarounds@suspend-resume-context:
>      - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +1 similar issue
>     [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
>     [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
> 
>    * igt@i915_hangman@error-state-capture-vcs1:
>      - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112080]) +2 similar issues
>     [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
>     [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb6/igt@i915_hangman@error-state-capture-vcs1.html
> 
>    * igt@i915_selftest@mock_sanitycheck:
>      - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#747])
>     [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
>     [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl7/igt@i915_selftest@mock_sanitycheck.html
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>      - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#54]) +4 similar issues
>     [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>     [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>    * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>      - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#49])
>     [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>     [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
> 
>    * igt@kms_frontbuffer_tracking@fbc-suspend:
>      - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#456] / [i915#460] / [i915#474])
>     [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
>     [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>    * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>      - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +3 similar issues
>     [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>     [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>    * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
>      - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665] / [i915#648] / [i915#667])
>     [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
>     [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
> 
>    * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>      - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145])
>     [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>     [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>    * igt@kms_setmode@basic:
>      - shard-hsw:          [PASS][36] -> [FAIL][37] ([i915#31])
>     [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_setmode@basic.html
>     [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-hsw8/igt@kms_setmode@basic.html
>      - shard-kbl:          [PASS][38] -> [FAIL][39] ([i915#31])
>     [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl1/igt@kms_setmode@basic.html
>     [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-kbl7/igt@kms_setmode@basic.html
> 
>    
> #### Possible fixes ####
> 
>    * igt@gem_ctx_isolation@vcs0-s3:
>      - shard-apl:          [DMESG-WARN][40] ([i915#180]) -> [PASS][41]
>     [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_ctx_isolation@vcs0-s3.html
>     [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-apl7/igt@gem_ctx_isolation@vcs0-s3.html
> 
>    * igt@gem_ctx_isolation@vcs1-reset:
>      - shard-iclb:         [SKIP][42] ([fdo#109276] / [fdo#112080]) -> [PASS][43]
>     [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
>     [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html
> 
>    * igt@gem_ctx_shared@q-smoketest-vebox:
>      - shard-tglb:         [INCOMPLETE][44] ([fdo#111735]) -> [PASS][45]
>     [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html
>     [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html
> 
>    * igt@gem_eio@reset-stress:
>      - shard-snb:          [FAIL][46] ([i915#232]) -> [PASS][47]
>     [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb2/igt@gem_eio@reset-stress.html
>     [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-snb7/igt@gem_eio@reset-stress.html
> 
>    * igt@gem_exec_balancer@smoke:
>      - shard-iclb:         [SKIP][48] ([fdo#110854]) -> [PASS][49]
>     [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_balancer@smoke.html
>     [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb1/igt@gem_exec_balancer@smoke.html
> 
>    * igt@gem_exec_create@madvise:
>      - shard-tglb:         [INCOMPLETE][50] ([i915#435]) -> [PASS][51]
>     [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_create@madvise.html
>     [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-tglb7/igt@gem_exec_create@madvise.html
> 
>    * igt@gem_exec_gttfill@basic:
>      - shard-tglb:         [INCOMPLETE][52] ([fdo#111593]) -> [PASS][53]
>     [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_gttfill@basic.html
>     [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-tglb9/igt@gem_exec_gttfill@basic.html
> 
>    * igt@gem_exec_params@invalid-bsd-ring:
>      - shard-iclb:         [SKIP][54] ([fdo#109276]) -> [PASS][55] +1 similar issue
>     [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
>     [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
> 
>    * igt@gem_exec_schedule@preemptive-hang-bsd:
>      - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57] +3 similar issues
>     [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
>     [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>    * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
>      - shard-snb:          [DMESG-WARN][58] ([fdo#111870]) -> [PASS][59]
>     [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
>     [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
> 
>    * igt@gem_workarounds@suspend-resume-fd:
>      - shard-iclb:         [INCOMPLETE][60] ([i915#140]) -> [PASS][61]
>     [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
>     [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
>      - shard-skl:          [FAIL][62] ([i915#54]) -> [PASS][63]
>     [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
>     [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
> 
>    * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>      - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +5 similar issues
>     [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>     [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>    * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>      - shard-skl:          [INCOMPLETE][66] ([i915#435] / [i915#667]) -> [PASS][67]
>     [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>     [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>    * igt@kms_flip@flip-vs-suspend:
>      - shard-hsw:          [INCOMPLETE][68] ([i915#61]) -> [PASS][69]
>     [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_flip@flip-vs-suspend.html
>     [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-hsw5/igt@kms_flip@flip-vs-suspend.html
> 
>    * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>      - shard-skl:          [FAIL][70] ([fdo#108145]) -> [PASS][71]
>     [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>     [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>    * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>      - shard-skl:          [FAIL][72] ([fdo#108145] / [i915#265]) -> [PASS][73]
>     [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>     [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>    * igt@perf_pmu@busy-accuracy-98-vcs1:
>      - shard-iclb:         [SKIP][74] ([fdo#112080]) -> [PASS][75] +2 similar issues
>     [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
>     [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html
> 
>    
> #### Warnings ####
> 
>    * igt@gem_ctx_isolation@vcs2-nonpriv:
>      - shard-tglb:         [SKIP][76] ([fdo#112080]) -> [SKIP][77] ([fdo#111912] / [fdo#112080])
>     [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
>     [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-tglb4/igt@gem_ctx_isolation@vcs2-nonpriv.html
> 
>    * igt@gem_eio@kms:
>      - shard-snb:          [DMESG-WARN][78] ([i915#444]) -> [INCOMPLETE][79] ([i915#82])
>     [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb4/igt@gem_eio@kms.html
>     [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-snb6/igt@gem_eio@kms.html
> 
>    * igt@kms_plane@pixel-format-pipe-b-planes:
>      - shard-skl:          [INCOMPLETE][80] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][81] ([fdo#112347] / [i915#648] / [i915#667]) +1 similar issue
>     [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
>     [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
> 
>    
>    {name}: This element is suppressed. This means it is ignored when computing
>            the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>    [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>    [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>    [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>    [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>    [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
>    [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>    [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
>    [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
>    [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>    [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>    [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
>    [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
>    [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
>    [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>    [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>    [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>    [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>    [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>    [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>    [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>    [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>    [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
>    [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>    [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>    [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>    [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>    [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
>    [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
>    [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>    [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
>    [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
> 
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>    Additional (1): pig-hsw-4770r
> 
> 
> Build changes
> -------------
> 
>    * CI: CI-20190529 -> None
>    * Linux: CI_DRM_7569 -> Patchwork_15774
> 
>    CI-20190529: 20190529
>    CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_15774: 354a1397dbe2f093cfe9638742b5d07e2e27e8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15774/index.html
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
