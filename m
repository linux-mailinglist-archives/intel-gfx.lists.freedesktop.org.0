Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C0A5A9E8B
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 20:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3808D10E0E6;
	Thu,  1 Sep 2022 18:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A43510E0E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 18:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662055209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cb/JBWxkocK+EYlOXZ3ihBm1AautbC5n1dX2XWAp/z0=;
 b=Bvfwk3Fa8O1CmVFrP9bdBEUrsZKpfzWLqOB/D+S44WnzUrhsp/Lgu0a/nRXW2bbcgyiIOJ
 X5i2s0GXi9TqXEh06nZIIRxNfV0hjQ1kK5urrgcIXOw6DJdiBjqz6IcL3uEkuuBOlfAyYm
 sNzbTEmkH+BZjRpU8HMNL40R72zsaws=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-6-sqZ6d_P-N5ety1J1oh9ELA-1; Thu, 01 Sep 2022 14:00:08 -0400
X-MC-Unique: sqZ6d_P-N5ety1J1oh9ELA-1
Received: by mail-qt1-f197.google.com with SMTP id
 cm10-20020a05622a250a00b003437b745ccdso14201816qtb.18
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Sep 2022 11:00:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=Cb/JBWxkocK+EYlOXZ3ihBm1AautbC5n1dX2XWAp/z0=;
 b=ziu7dHOcU7Ts0bO8AZmX6wLJDTEkg9YzH2p2WBdY+6WH8KKE5maUkcuZOg1sWPrSn6
 RdTAwyeosXlNEYnEJqPEhbk4FCBHx4Xh7PsMLmCxiux0aoBOts5MjUwZnfmq0yM8LH1A
 f7cG5+PJu9DSQTVKUTBIgAEIqe+VSR7LKTLgstA+mwsjD1ESqfyRw9kwV9/NmGL/hdGE
 ylIkoWJ3yccGmsHmOFzp96KJ2uVrVgG6EPMR7E82NUrhAPR/YpC4D+Yjn3JsQMR4xgjx
 QlelzxM3myrSxlTu/kTlxAemFmu4LZ6pJBSvDR/rK0AeUiM+7MJSQE8T8WSEmVXMlDKF
 y7zw==
X-Gm-Message-State: ACgBeo2u4EpCMFoTqC5vSdfuv1dr2BcqJmHiFC2J37hEN8nfhz1SfMzO
 GdtX1c93SPWzRx3cgk+cs2fAN3k/UJA570npf1pvYDwQyfuBb8bwIEgO1drenV/n0e+q7LL2KIn
 ytrGoyWBCHtO9CMXiLfcSjVlg4AtD
X-Received: by 2002:ac8:59c3:0:b0:343:6528:db29 with SMTP id
 f3-20020ac859c3000000b003436528db29mr24729272qtf.575.1662055207795; 
 Thu, 01 Sep 2022 11:00:07 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5mxUGofTVmaQv+z9svbX0/h4xRpbhjT54cRL1foB9uUz095YblTzk+GZyCB4MvRqjgrXsa0Q==
X-Received: by 2002:ac8:59c3:0:b0:343:6528:db29 with SMTP id
 f3-20020ac859c3000000b003436528db29mr24729236qtf.575.1662055207348; 
 Thu, 01 Sep 2022 11:00:07 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c48:e00::9e6? ([2600:4040:5c48:e00::9e6])
 by smtp.gmail.com with ESMTPSA id
 d19-20020ac81193000000b0031f0b43629dsm10557824qtj.23.2022.09.01.11.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Sep 2022 11:00:06 -0700 (PDT)
Message-ID: <a3817a6fff8e2ae28166bd4825109b6e7ba1ae16.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 01 Sep 2022 14:00:05 -0400
In-Reply-To: <20220901161933.1004778-1-imre.deak@intel.com>
References: <20220901161933.1004778-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp_mst: Fix mst_mgr lookup during
 atomic check
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

Reviewed-by: Lyude Paul <lyude@redhat.com>

Thanks for catching this!

On Thu, 2022-09-01 at 19:19 +0300, Imre Deak wrote:
> If an MST connector was disabled in the old state during a commit, the
> connector's best_encoder will be NULL, so we can't look up mst_mgr via
> it. Do the lookup instead via intel_connector->mst_port which always
> points to the primary encoder.
> 
> This fixes the following:
> [   58.922866] BUG: kernel NULL pointer dereference, address: 0000000000000170
> [   58.922867] #PF: supervisor read access in kernel mode
> [   58.922868] #PF: error_code(0x0000) - not-present page
> [   58.922869] PGD 0 P4D 0
> [   58.922870] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [   58.922872] CPU: 0 PID: 133 Comm: kworker/0:2 Tainted: G     U             6.0.0-rc3-imre+ #560
> [   58.922874] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR5 RVP, BIOS ADLPFWI1.R00.3135.A00.2203251419 03/25/2022
> [   58.922874] Workqueue: events output_poll_execute [drm_kms_helper]
> [   58.922879] RIP: 0010:intel_dp_mst_atomic_check+0xbb/0x1c0 [i915]
> [   58.922955] Code: 5b 7b f6 ff 84 c0 75 41 48 8b 44 24 18 65 48 2b 04 25 28 00 00 00 0f 85 ff 00 00 00 48 8b 45 10 48 8b 93 10 07 00 00 4c 89 e7 <48> 8b b0 70 01 00 00 48 83 c4 20 5b 5d 48 81 c6 f0 0c 00 00 41 5c
> [   58.922956] RSP: 0018:ffffc90000633a88 EFLAGS: 00010246
> [   58.922957] RAX: 0000000000000000 RBX: ffff888117d19000 RCX: ffff888101893308
> [   58.922958] RDX: ffff888122981000 RSI: ffffffff82309ecc RDI: ffff888114da6800
> [   58.922959] RBP: ffff8881094bab48 R08: 0000000081917436 R09: 0000000068191743
> [   58.922960] R10: 0000000000000001 R11: 0000000000000001 R12: ffff888114da6800
> [   58.922960] R13: ffff8881143f8000 R14: 0000000000000000 R15: ffff888119bf2000
> [   58.922961] FS:  0000000000000000(0000) GS:ffff888496200000(0000) knlGS:0000000000000000
> [   58.922962] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   58.922962] CR2: 0000000000000170 CR3: 0000000005612004 CR4: 0000000000770ef0
> [   58.922963] PKRU: 55555554
> [   58.922963] Call Trace:
> [   58.922964]  <TASK>
> [   58.922966]  drm_atomic_helper_check_modeset+0x3f8/0xc70 [drm_kms_helper]
> [   58.922972]  intel_atomic_check+0xb1/0x3180 [i915]
> [   58.923059]  ? find_held_lock+0x2b/0x80
> [   58.923064]  drm_atomic_check_only+0x5d3/0xa60 [drm]
> [   58.923082]  drm_atomic_commit+0x56/0xc0 [drm]
> [   58.923097]  ? drm_plane_get_damage_clips.cold+0x1c/0x1c [drm]
> [   58.923114]  drm_client_modeset_commit_atomic+0x235/0x280 [drm]
> [   58.923132]  drm_client_modeset_commit_locked+0x5b/0x190 [drm]
> [   58.923148]  drm_client_modeset_commit+0x24/0x50 [drm]
> [   58.923164]  drm_fb_helper_set_par+0xae/0xe0 [drm_kms_helper]
> [   58.923171]  drm_fb_helper_hotplug_event+0xd5/0xf0 [drm_kms_helper]
> [   58.923178]  output_poll_execute+0xac/0x200 [drm_kms_helper]
> [   58.923187]  process_one_work+0x268/0x580
> [   58.923190]  ? process_one_work+0x580/0x580
> [   58.923191]  worker_thread+0x52/0x3b0
> [   58.923193]  ? process_one_work+0x580/0x580
> [   58.923195]  kthread+0xf0/0x120
> [   58.923196]  ? kthread_complete_and_exit+0x20/0x20
> [   58.923198]  ret_from_fork+0x1f/0x30
> [   58.923202]  </TASK>
> 
> Fixes: ffac9721939d ("drm/display/dp_mst: Don't open code modeset checks for releasing time slots")
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 13abe2b2170e7..7713c19042f34 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -315,11 +315,8 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
>  			  struct drm_atomic_state *_state)
>  {
>  	struct intel_atomic_state *state = to_intel_atomic_state(_state);
> -	struct drm_connector_state *old_conn_state =
> -		drm_atomic_get_old_connector_state(&state->base, connector);
>  	struct intel_connector *intel_connector =
>  		to_intel_connector(connector);
> -	struct drm_dp_mst_topology_mgr *mgr;
>  	int ret;
>  
>  	ret = intel_digital_connector_atomic_check(connector, &state->base);
> @@ -330,8 +327,9 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
>  	if (ret)
>  		return ret;
>  
> -	mgr = &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->primary->dp.mst_mgr;
> -	return drm_dp_atomic_release_time_slots(&state->base, mgr, intel_connector->port);
> +	return drm_dp_atomic_release_time_slots(&state->base,
> +						&intel_connector->mst_port->mst_mgr,
> +						intel_connector->port);
>  }
>  
>  static void clear_act_sent(struct intel_encoder *encoder,

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

