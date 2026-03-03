Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCxQFklLpmm1NgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 03:45:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C5F1E8278
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 03:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0148E10E0E1;
	Tue,  3 Mar 2026 02:45:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="COqvj+K/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2009F10E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2026 02:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1772505924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nyIiPvo1Hi6sPVeMJBvore0WWbDttn+oJaE6w0roYKA=;
 b=COqvj+K/ic0D+4R8uKEUL0thJMDYlZvl44+gaXKjNq5kkjVmkyUzAlLYF8WtMiS1+tMHvl
 dJ+Pb+1BOEmCAayA8aef/HMOFYlQjOkMcISCP+rMJnVl/gZFEXBMsWvi0H9SgAcmsx3VDs
 QOtndZlpltGGvqIpFJj6Ht8JjGd9rks=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-671-fI-XX3ZvO6GTNNgLYtX4wA-1; Mon, 02 Mar 2026 21:45:21 -0500
X-MC-Unique: fI-XX3ZvO6GTNNgLYtX4wA-1
X-Mimecast-MFC-AGG-ID: fI-XX3ZvO6GTNNgLYtX4wA_1772505921
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-50620483ff6so474939271cf.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2026 18:45:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772505921; x=1773110721;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=nyIiPvo1Hi6sPVeMJBvore0WWbDttn+oJaE6w0roYKA=;
 b=Nc+3tfJvMLevYyYdGaK2zafXDLXUb63jgAt23D5acSpJimz8boAkyOiwPFN0QRl566
 PwUF/6ImZPsodw4pFJubu3laAiKM6frTODqVOt4tnAFn+x683Blyfsd3dSOMyhmRApOZ
 Dz8sFBSBV5V2Au9e8unJ09ymDAx+RBaRgWlJ/3EBWvTS/1U1X4UcoHcl/x2QxKcHovjd
 y9ISVA/PNjSqmBXGOXhG34Ruepsm0DhH2u7Hp8vyEn4CwGk8eis5YLYlj2xfmOvS5F6W
 mzDpoVei8JrhZBDqGs+b5EPoGKRqiQRj5aHgWW0E34+PzSH6R3EVWVBpH6jvy1FZ4f4x
 oDxA==
X-Gm-Message-State: AOJu0YxgZVAL7M5Ap71XIda+Z02UOlx1mDrdOo17lSqPkOGp/eXWJaYS
 2H5OQpvN2dQhUzMIFVzlpdei/8cCoh2avFMfgZQQBEF3uwKeyRFDzyLrJ3+ov0Ou/PA5BhsW8xT
 T9nDm67mvWnmB2+bAmWTnFpOo+GUk2cltzgd3TMoF9HQiemn+Lr65T3dd7RgUK0EynObTD17VPN
 to6Y2wI9+MLr0ITdsm4kg2XwrW+IW0ZfrQj0RgOw/h0Rl9
X-Gm-Gg: ATEYQzwcusw8t+8Fw8G8M7UOaBbNcvCE3Fuce5P2kimVMRWwpleg5zyt2TxfhV6U1Cl
 l+SQTXJtxkXMn3gva0EphWnn7pv4kjnODr2Md3bjtYznwqSG+F4TAPiu3BroKUjAHWcb7wrQ8KJ
 LaHj08/ypIR71o/2vwWmRT5DuvWhfjtU9BbJUapvdJOAn95eVVD2HDnvHx4AmrQepezlxAkNwaG
 jiv8VU=
X-Received: by 2002:a05:622a:138d:b0:506:6e65:2334 with SMTP id
 d75a77b69052e-50752884908mr162390191cf.7.1772505920865; 
 Mon, 02 Mar 2026 18:45:20 -0800 (PST)
X-Received: by 2002:a05:622a:138d:b0:506:6e65:2334 with SMTP id
 d75a77b69052e-50752884908mr162390021cf.7.1772505920456; Mon, 02 Mar 2026
 18:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <20260302174849.1541350-1-imre.deak@intel.com>
In-Reply-To: <20260302174849.1541350-1-imre.deak@intel.com>
From: Tao Liu <ltao@redhat.com>
Date: Tue, 3 Mar 2026 15:44:43 +1300
X-Gm-Features: AaiRm53OebrURJ-3U3Cm7zHgAwIYzvZZvrjnJgud4bVF_XJhK0QR7JJ_X9W5ZWM
Message-ID: <CAO7dBbU8CS7EC8+m9v-RMMs7u4XgUHvFyaRnZtyYV1BKmzQA1A@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/dmc: fix an unlikely NULL pointer deference
 at probe
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Mohammed Thasleem <mohammed.thasleem@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, stable@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: f5QolA6VAzSc9KwdjQqYn6av2iKyKnbimcyKBY9WL5A_1772505921
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
X-Rspamd-Queue-Id: 94C5F1E8278
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:intel-xe@lists.freedesktop.org,m:mohammed.thasleem@intel.com,m:jani.nikula@linux.intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[ltao@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ltao@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

I have tested this patch can work for my kdump case as described in
Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com.

Tested-by: Tao Liu <ltao@redhat.com>

On Tue, Mar 3, 2026 at 6:49=E2=80=AFAM Imre Deak <imre.deak@intel.com> wrot=
e:
>
> intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> initialized, and dmc is thus NULL.
>
> That would be the case when the call path is
> intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> intel_power_domains_init_hw() is called *before* intel_dmc_init().
>
> However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> conditionally, depending on the current and target DC states. At probe,
> the target is disabled, but if DC6 is enabled, the function is called,
> and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> at probe, as we haven't seen this failure mode before.
>
> It is also strange to have DC6 enabled at boot, since that would require
> the DMC firmware (loaded by BIOS); the BIOS loading the DMC firmware and
> the driver stopping / reprogramming the firmware is a poorly specified
> sequence and as such unlikely an intentional BIOS behaviour. It's more
> likely that BIOS is leaving an unintentionally enabled DC6 HW state
> behind (without actually loading the required DMC firmware for this).
>
> The tracking of the DC6 allowed counter only works if starting /
> stopping the counter depends on the _SW_ DC6 state vs. the current _HW_
> DC6 state (since stopping the counter requires the DC5 counter captured
> when the counter was started). Thus, using the HW DC6 state is incorrect
> and it also leads to the above oops. Fix both issues by using the SW DC6
> state for the tracking.
>
> This is v2 of the fix originally sent by Jani, updated based on the
> first References: discussion below.
>
> Link: https://lore.kernel.org/all/3626411dc9e556452c432d0919821b76d999121=
7@intel.com
> Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com
> Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter"=
)
> Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Tao Liu <ltao@redhat.com>
> Cc: <stable@vger.kernel.org> # v6.16+
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +--
>  2 files changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9c8d29839cafc..969b2c421d308 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -852,7 +852,7 @@ void gen9_set_dc_state(struct intel_display *display,=
 u32 state)
>                         power_domains->dc_state, val & mask);
>
>         enable_dc6 =3D state & DC_STATE_EN_UPTO_DC6;
> -       dc6_was_enabled =3D val & DC_STATE_EN_UPTO_DC6;
> +       dc6_was_enabled =3D power_domains->dc_state & DC_STATE_EN_UPTO_DC=
6;
>         if (!dc6_was_enabled && enable_dc6)
>                 intel_dmc_update_dc6_allowed_count(display, true);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index c3b411259a0c5..90ba932d940ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1598,8 +1598,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct =
intel_display *display, u32 *
>                 return false;
>
>         mutex_lock(&power_domains->lock);
> -       dc6_enabled =3D intel_de_read(display, DC_STATE_EN) &
> -                     DC_STATE_EN_UPTO_DC6;
> +       dc6_enabled =3D power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
>         if (dc6_enabled)
>                 intel_dmc_update_dc6_allowed_count(display, false);
>
> --
> 2.49.1
>

