Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ObSFAhw+2m7bAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 18:44:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B37B54DE3E4
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 18:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA1C10EE17;
	Wed,  6 May 2026 16:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fdJMF1YB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C71A10EE1A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2026 16:44:53 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-82f9fdfc965so3104546b3a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 May 2026 09:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778085893; x=1778690693; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=N4Q6MSodkGOeqtC71K6cHMIejF8w6gSkWWa1tMdwofY=;
 b=fdJMF1YBPBnF+ZUpi4xSon3+GYKG57ElPLSefcrbX0CEH8P5/bkJDfMQDM+VwRi7uX
 VoXhPATWoGMwFBEl+CJZbfyrBZOqUH2GKklVESL8/MvtpxjzhA0w3UaUDXH4Tvd+AOQh
 VvxW9Mi8jjCkn4mbYiBP3EORhINQDv3PddlbAjlKxjNlLfv1YF7biQdsBRRFH//1hBAe
 j6CT9linQxhUtpkfqMW5b98X0xPBWNoFmy56EhwlDts1yR5j9NE6pT/+65hIToRst3Qz
 dhm6pnCtY/0NHqc5DWHZhXFm79gLWGxTXc8uSFfbTOtx4ToD7aHLE71r7fqyNbQUnEva
 4GFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778085893; x=1778690693;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=N4Q6MSodkGOeqtC71K6cHMIejF8w6gSkWWa1tMdwofY=;
 b=Oi2WZhFEBKqqe7ePOU5MOhHAHwrip4HH2fZ1DxOk5YfprlMNjXbiSoum9lkMNlwEUJ
 LHODC+xKrU92DNcLWPD8kyrYEVNY9HEFtfmfJVqFBe1VevZkn49y5Mr6bswOBHQUErXO
 BEO+2RvJKmPfB/Qslac3vJ7RFmmfbkPzZo74R4wJL851cqstGQ1fFojZkaB1W5g1Gkqt
 ZorEel5fEXgcXM0h/9MQgQGoslkZiRCNGjY94YsZ6sti+wVt+ieiHHINSv6acuqrWWtE
 gtf8heqB5CzXjRBR0ErS5kvUmgbCXzviP56y+l95HuBtUpgx2HGlRip1SiE12OXsGBV3
 Hc6w==
X-Forwarded-Encrypted: i=1;
 AFNElJ+OWDb+CBj+uVVvmwBXBbozFGOPqpsFRdHDDojoO15YRpOvWzIg7slnLwbDmvCBWwpOz0gkHTt914A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyD8AmMng/+wd9sQvZPOyv89cx+P7krfUkyZOkwEI/wPz1/cHPJ
 /ZfXm9Fh3E/qb+tVHNtbRhDHUosn9w2sF/JkYQwYqnY+EdXykgnHx2BK
X-Gm-Gg: AeBDieukFQskYww4BpB+lrPX+/PJDPBZbjv2WgsV67mkpDvGB0VUPCCM4nln4ipnCev
 lKyBRIC5XEejMGrt2wtdcXvQqoi1LO3ake/9XTcoxs8rCuDxwuoNagXr1bFBWRH6CsMwR1vB49u
 oibXJtylqrIVBvgtGDIl0B8wzUSrHG5oy68794b1arGo4DNIZo7HmQ8FK+/lYIQ3tgKftS5bPPU
 dXGrv9x8KnNmlH14HA+wqG+G1Uea/2/Wiuwvr+ISe7fE7MFnd74nPIc7GZ/1mn6/1qxcrs35wwT
 IkwIEHWYjmz3tN5YOLUX27TeBCk49h3mpPsO4kqPf+D/XV8ThX8g3ge3L/c3DKtAnmBGC3iXQyT
 zwQVRjKl+NWCBW30YgerZ0Ne+Zbt12mkxwJ1f95badv1FXFHRQOz6iUOJLhogs7fCQsxUuLEd0r
 jZU4booxsRw2MqToGkuhtVRLuinh35r67HT+Syl8Sh1WBw9vW1iL6AVCNftUKlxN89C+2cF+GNW
 U4pLT28hw==
X-Received: by 2002:a05:6a00:3c8a:b0:838:af72:fb37 with SMTP id
 d2e1a72fcca58-83a5b0dc944mr4032546b3a.7.1778085892643; 
 Wed, 06 May 2026 09:44:52 -0700 (PDT)
Received: from [134.134.139.77] ([134.134.139.77])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-83967dbcfc0sm7222443b3a.42.2026.05.06.09.44.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2026 09:44:52 -0700 (PDT)
Message-ID: <c509d626-563b-4335-8466-337d1217fd48@gmail.com>
Date: Wed, 6 May 2026 19:44:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/xe: Use fb cached min alignment
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
References: <20260430154602.11393-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
In-Reply-To: <20260430154602.11393-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: B37B54DE3E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]

look all ok.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 30/04/2026 18.46, Ville Syrjala wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> 
> Instead of just looking at the first plane use the fb cached overall
> minimum alignment.
> 
> This aligns with how the i915 version of intel_plane_pin_fb works.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> [vsyrjala: Rebase due to pin_params]
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 948446346c53..3e8114fbfbaa 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -459,6 +459,14 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
>   	return true;
>   }
>   
> +static unsigned int
> +intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
> +{
> +	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
> +
> +	return fb->min_alignment;
> +}
> +
>   int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>   		       const struct intel_plane_state *old_plane_state)
>   {
> @@ -469,7 +477,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>   	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
>   	struct intel_fb_pin_params pin_params = {
>   		.view = &new_plane_state->view.gtt,
> -		.alignment = plane->min_alignment(plane, fb, 0),
> +		.alignment = intel_plane_fb_min_alignment(new_plane_state),
>   		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
>   	};
>   

