Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 290005B0C70
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 20:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A067210E826;
	Wed,  7 Sep 2022 18:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318E710E826
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 18:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662575035;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/7CLuwlFoUxzrTP08KYZhUUxrEpHpoTc3rX3QKrVyk0=;
 b=jScO8uAdxhRoY9UuhuJLK7/BAf9uMtiXiEVouRphi4Q3fT1TQHnrLaLYViep+1sRRBbsoj
 e50rdtkLR6foArfSZ/yXwaMB0N7KgwJ0NhxW+yztF2PUUya8rR2bSQdeLwVn8tn24m7VVU
 UDYstY5iWde+sLHNEgkNRK6Ey9tz1Yo=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-314-J2RSVEolPna23O5U4OcZNA-1; Wed, 07 Sep 2022 14:23:54 -0400
X-MC-Unique: J2RSVEolPna23O5U4OcZNA-1
Received: by mail-qk1-f200.google.com with SMTP id
 az11-20020a05620a170b00b006bc374c71e8so12572342qkb.17
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Sep 2022 11:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=/7CLuwlFoUxzrTP08KYZhUUxrEpHpoTc3rX3QKrVyk0=;
 b=IuP208guWY4aI2GZbS4oZaFiMzZTONI5x+l9zivBCB21q708qKpFNg7VTj9M+39mvw
 ZpDoAdzjO1xI/vIFounYUbD/OSL5QI9r0hJN33oRF4ZyZ2y2fjVtolH//QBCU1hGgjAX
 +S6ox1PUmqFssxrEF9+VtQEkr3HXkHA8rIrOuK586slMyuo78Ge+Dx+hGDigT42S4aIT
 noow2Gy3mNtOnyHN29dYGF6n+fl8eHUqVh/gv/sNh5cl2tvVsvM/JeOQVWz/YP4qT9UO
 4Ec7m+ZO2qeJI0aPBogz3r0J9BSHTyNMtKbKSU/OksSbF5wl9DTLs8jSaHv4srBmiejH
 73bg==
X-Gm-Message-State: ACgBeo3iViZiaQZzovld+ObSV/KRuGPVsXJoJTHEK4upCSfYfH+f48a4
 LR1ZzHhShyQZ/18eDN9NxaYwpgw5u2QkuxR5UcniwIpA7gyh+w1O0Wd5cW60/6h/0oWVV/aYlqO
 5Ap9+dghQ3Bvy7y0MyA4Xzk5Zf2LW
X-Received: by 2002:a05:622a:134b:b0:343:7264:34ff with SMTP id
 w11-20020a05622a134b00b00343726434ffmr4432677qtk.109.1662575033412; 
 Wed, 07 Sep 2022 11:23:53 -0700 (PDT)
X-Google-Smtp-Source: AA6agR77rvdQpyEzyueEhaZYnEuC2ipr6eEW4hm+y1db/MqvEkO490Uz0xhVlu9Pcs4q6EkRgLmwtQ==
X-Received: by 2002:a05:622a:134b:b0:343:7264:34ff with SMTP id
 w11-20020a05622a134b00b00343726434ffmr4432660qtk.109.1662575033154; 
 Wed, 07 Sep 2022 11:23:53 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c48:e00:e786:1aff:4f5c:c549?
 ([2600:4040:5c48:e00:e786:1aff:4f5c:c549])
 by smtp.gmail.com with ESMTPSA id
 200-20020a3705d1000000b006bbd2c4cccfsm14350450qkf.53.2022.09.07.11.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Sep 2022 11:23:52 -0700 (PDT)
Message-ID: <47eb013190f006cca7a47208498a4f3ea5ac2559.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 07 Sep 2022 14:23:51 -0400
In-Reply-To: <20220907142542.1681994-1-imre.deak@intel.com>
References: <20220907142542.1681994-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/dp_mst: Avoid deleting payloads for
 connectors staying enabled
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

Surprised this didn't come up on Intel's CI (or at least it certainly didn't
when the series that introduced this was tested), thanks for the catch!

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Wed, 2022-09-07 at 17:25 +0300, Imre Deak wrote:
> When an MST connector stays enabled during a commit the connector's MST
> state needs to be added to the atomic state, but the corresponding MST
> payload allocation shouldn't be set for deletion; fix such modesets by
> ensuring the above even if the connector was already enabled before the
> modeset.
> 
> The issue led to the following:
> [  761.992923] i915 0000:00:02.0: drm_WARN_ON(payload->delete)
> [  761.992949] WARNING: CPU: 6 PID: 1401 at drivers/gpu/drm/display/drm_dp_mst_topology.c:4221 drm_dp_atomic_find_time_slots+0x236/0x280 [drm_display_helper]
> [  761.992955] Modules linked in: snd_hda_intel i915 drm_buddy drm_display_helper drm_kms_helper ttm drm snd_hda_codec_hdmi snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm prime_numbers i2c_algo_bit syscopyarea sysfillrect sysimgblt fb_sys_fops x86_pkg_temp_thermal cdc_ether coretemp crct10dif_pclmul usbnet crc32_pclmul mii ghash_clmulni_intel e1000e mei_me ptp i2c_i801 pps_core mei i2c_smbus intel_lpss_pci fuse [last unloaded: drm]
> [  761.992986] CPU: 6 PID: 1401 Comm: testdisplay Tainted: G     U             6.0.0-rc4-imre+ #565
> [  761.992989] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR5 RVP, BIOS ADLPFWI1.R00.3135.A00.2203251419 03/25/2022
> [  761.992990] RIP: 0010:drm_dp_atomic_find_time_slots+0x236/0x280 [drm_display_helper]
> [  761.992994] Code: 4c 8b 67 50 4d 85 e4 75 03 4c 8b 27 e8 03 28 4e e1 48 c7 c1 8b 26 2c a0 4c 89 e2 48 c7 c7 a8 26 2c a0 48 89 c6 e8 31 d5 88 e1 <0f> 0b 49 8b 85 d0 00 00 00 4c 89 fa 48 c7 c6 a0 41 2c a0 48 8b 78
> [  761.992995] RSP: 0018:ffffc9000177ba60 EFLAGS: 00010286
> [  761.992998] RAX: 0000000000000000 RBX: ffff88810d2f1540 RCX: 0000000000000000
> [  761.992999] RDX: 0000000000000001 RSI: ffffffff82368a25 RDI: 00000000ffffffff
> [  761.993000] RBP: ffff888142299d80 R08: ffff8884adbfdfe8 R09: 00000000ffefffff
> [  761.993001] R10: ffff8884a6bfe000 R11: ffff8884ac443c30 R12: ffff888102972f90
> [  761.993002] R13: ffff8881163e2cf0 R14: 00000000000003ac R15: ffff88810c501000
> [  761.993003] FS:  00007f81e4c459c0(0000) GS:ffff888496500000(0000) knlGS:0000000000000000
> [  761.993004] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  761.993005] CR2: 0000555dac962a98 CR3: 0000000123a34006 CR4: 0000000000770ee0
> [  761.993006] PKRU: 55555554
> [  761.993007] Call Trace:
> [  761.993009]  <TASK>
> [  761.993012]  intel_dp_mst_compute_config+0x19a/0x350 [i915]
> [  761.993090]  intel_atomic_check+0xf37/0x3180 [i915]
> [  761.993168]  drm_atomic_check_only+0x5d3/0xa60 [drm]
> [  761.993182]  drm_atomic_commit+0x56/0xc0 [drm]
> [  761.993192]  ? drm_plane_get_damage_clips.cold+0x1c/0x1c [drm]
> [  761.993204]  drm_atomic_helper_set_config+0x78/0xc0 [drm_kms_helper]
> [  761.993214]  drm_mode_setcrtc+0x1ed/0x750 [drm]
> [  761.993232]  ? drm_mode_getcrtc+0x180/0x180 [drm]
> [  761.993241]  drm_ioctl_kernel+0xb5/0x150 [drm]
> [  761.993252]  drm_ioctl+0x203/0x3d0 [drm]
> [  761.993261]  ? drm_mode_getcrtc+0x180/0x180 [drm]
> [  761.993276]  __x64_sys_ioctl+0x8a/0xb0
> [  761.993281]  do_syscall_64+0x38/0x90
> [  761.993285]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [  761.993287] RIP: 0033:0x7f81e551aaff
> [  761.993288] Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <41> 89 c0 3d 00 f0 ff ff 77 1f 48 8b 44 24 18 64 48 2b 04 25 28 00
> [  761.993290] RSP: 002b:00007fff4304af10 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> [  761.993292] RAX: ffffffffffffffda RBX: 00007fff4304afa0 RCX: 00007f81e551aaff
> [  761.993293] RDX: 00007fff4304afa0 RSI: 00000000c06864a2 RDI: 0000000000000004
> [  761.993294] RBP: 00000000c06864a2 R08: 0000000000000000 R09: 0000555dac8a9c68
> [  761.993294] R10: 0000000000000000 R11: 0000000000000246 R12: 00000000000008c4
> [  761.993295] R13: 0000000000000004 R14: 0000555dac8a9c68 R15: 00007fff4304b098
> [  761.993301]  </TASK>
> 
> Fixes: 083351e96386 ("drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()")
> Testcase: igt@testdisplay
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 1de438151cc39..4442cc5602d45 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4322,6 +4322,9 @@ int drm_dp_atomic_release_time_slots(struct drm_atomic_state *state,
>  		return -EINVAL;
>  	}
>  
> +	if (new_conn_state->crtc)
> +		return 0;
> +
>  	drm_dbg_atomic(mgr->dev, "[MST PORT:%p] TU %d -> 0\n", port, payload->time_slots);
>  	if (!payload->delete) {
>  		drm_dp_mst_put_port_malloc(port);

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

