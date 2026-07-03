Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5IFjE0i+R2ozegAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 15:51:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCA170311C
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 15:51:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UZ2BQvgR;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385A410F81D;
	Fri,  3 Jul 2026 13:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C267410F81D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2026 13:51:00 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id
 98e67ed59e1d1-37cab825ec9so566186a91.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jul 2026 06:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783086660; x=1783691460; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cMeriD0NIXbW4IniYY0pIyyS2Z94DkPNWh72wtAj2zI=;
 b=UZ2BQvgRAblj/U3DYvKzk1CdayuZu7BUR24Mf1Ms9CyM9iJjXTR0dv6dDG3/iK9Rvo
 IPwmiW/qGNKmFQj62A0pwfiZ3BscMB4G0a8usKxJZkZGYmxOXY89W8kDbZqbcT70DBmH
 gHWY5c6Ka3SdorGh+Jp3JxVddp7LQX9s8B6Rlzvwo7r1d5mkWLZ7TM6I+HOa+OCoB4vE
 io/UJnqjARnySjXE522HLMygkS25JTMDOqrl7kw1KyesG2QgGUThaoUg2Q/2xk9veyTZ
 i1EFRz2DpKehvOwk1L99rtywjwL7X7zj1EEfSzhyr07KdiP1BCJnR0xQwdsZ0/RlA1ap
 r+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783086660; x=1783691460;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cMeriD0NIXbW4IniYY0pIyyS2Z94DkPNWh72wtAj2zI=;
 b=S7USTNnd6komkUrnfENlQB3W7RH78Ey0ucOuiedRIhI7/zTUA01isqiF5RRc0N3fRk
 27SqUiHXwSVpGG5UiRHvQ8eboTosHlNvajhkf7Ig90uVF8l2AuJAjQWempshLcy1SvUc
 +k8U22kIb0x4qg9wHWfYkYJMdU0fVBjAlNHxeUp64+rt71c6Qke13nGLjjs2O5/TvRBp
 9GSohfFldT8mdvO5JgkCWxh0eVlEUR1yN2VHE5rotTx/xDqYJAYhIfBX7nQ3+P3i1I/G
 2iYKSzHwDsGJXkEoPgDRIL5YVYPIPddYuDyO4jnsd+kODKGNaSueIBsb5c0TxRqdUtOV
 TE9A==
X-Forwarded-Encrypted: i=1;
 AHgh+Rp3xmUL1sIc30QdJV/yjPhtsT2rzKmF5Qi2XkN/0LuWtAu1rQWWFJ+WSsdlEb8S1lTfokEqslRk/rE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw6APYijoh3PgczOLkg40BxJlznxfjIKlg14t3rtgYFGGAsliK/
 tLG58N//A0MRO0TgDsf3WzOXZtRiqZMgnXv77Exc5a8xOGxbcNttZoSaITFiyxnxQ9A=
X-Gm-Gg: AfdE7ckqebn8hjRfJQWIwjstr1WZLjLBRhZqpMuU1Jr3ZgIF9zb4oSVvvvG/pqfTMBw
 MdPmOKLTJs6YZSL6JVrv87Ze6ivlb81mrLbqtFhhU0eT/YOhKCFCuImyUFKvSJ1gdDRQrPx2W4Z
 Dk3kzhMW5818A5rmRYj3KPB5JDmu4Yn8cdQDLd4CqTKsCt/69thY3xR5N4267+53Zp9BMY7aN2G
 JyB6zGD7CnXMr361NvxcqtOgqCJDfn6lZFZjfdpUfniKuVJh9TmBgTIiANcwH5Whs5Y9VzdaBGO
 IeGLFq1jZ1q9+zwK37ljTdT/iHKKL93bTEWyN1gJbtBt+MMVoOyb6zl85V1gXsLyKy1skwz3Uut
 iTmXq4ewl2x+IhYp6YTS0mh4WXEKnlS8HsxLGX95LmOPjxULSwvlpDKKbnU0HRF42EyN5COwVWJ
 dV6vxx7+H65M1f9ZNpUmqkeJzgZryJtlBum0q6rMld4NIrbGXGzekTZfs=
X-Received: by 2002:a17:90b:2f0b:b0:37d:7bbb:afab with SMTP id
 98e67ed59e1d1-380aa0bd384mr11654431a91.11.1783086660051; 
 Fri, 03 Jul 2026 06:51:00 -0700 (PDT)
Received: from [192.55.54.43] ([192.55.54.43])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3812801eadasm1005452a91.10.2026.07.03.06.50.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jul 2026 06:50:59 -0700 (PDT)
Message-ID: <26ed323d-c0f5-42d4-b736-de7efcf893d7@gmail.com>
Date: Fri, 3 Jul 2026 16:50:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
References: <20260618181837.687302-1-vidya.srinivas@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
In-Reply-To: <20260618181837.687302-1-vidya.srinivas@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:vidya.srinivas@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ABCA170311C

Hi Vidya,

apologies for the delayed reply. I tried to do the math and seems I got 
correct numbers as expected what you say below. I can't test this 
anywhere but it seems correct on code and idea level.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 18/06/2026 21.18, Vidya Srinivas wrote:
> Commit 16df4cc63c58 ("drm/i915/display: Use ceiling division for NV12
> UV surface offset calculation") computes the UV (chroma) surface
> start/size as ceiling(half of Y plane start/size) directly from the
> U16.16 fixed-point source rectangle:
> 
>          x = fp_16_16_to_int_ceil(fp_16_16_div2(src.x1));
> 
> For a single pipe the source coordinates are integers, so this is
> correct.
> (UV start = ceiling(half of Y plane start)).
> 
> With bigjoiner + a plane scaler the picture changes. The pipe boundary
> is a fixed integer destination pixel, but the plane's position and the
> scaler ratio are arbitrary, so drm_rect_clip_scaled() maps the seam back
> to a *fractional* per-pipe source. For a 1280->2407 upscaled NV12 plane
> crossing the seam:
> 
>          master src: width = 1204 * 1280/2407 = 640.265899, x1 = 0
>          joiner src: width = 1203 * 1280/2407 = 639.734115, x1 = 640.265884
> 
> The luma path floors this to an integer (src.x1 >> 16 = 640), but the
> UV path takes ceiling(640.265884 / 2) = ceil(320.13) = 321. The Y plane
> then starts at column 640 while the UV plane starts at 321*2 = 642,
> pushing the chroma read one column past the 640-wide chroma surface on
> the joiner secondary:
> 
>          [CRTC:382:pipe C] PLANE ATS fault
>          [CRTC:382:pipe C][PLANE:267:plane 1C] fault (CTL=0x81009400, ...)
> 
> The spec "Y plane start" is the integer pixel the luma surface actually
> programs (640), not the pre-floor fixed-point value (640.27). Convert
> the Y plane start/size to integer first - matching skl_check_main_surface()
> - and then apply the ceiling. This is a no-op for the integer (non-joiner)
> case and yields the correct, in-bounds chroma offset for the fractional
> joiner seam:
> 
>                       before fix      after fix
>          master 1B:   x=0  w=321      x=0   w=320   -> [0, 320)
>          slave  1C:   x=321 w=320     x=320 w=320   -> [320, 640)
> 
> The two halves now tile the 640-wide chroma plane exactly and the ATS
> fault is gone.
> 
> Assisted-by: GitHub-Copilot:Claude-Opus-4.8
> Fixes: 16df4cc63c58 ("drm/i915/display: Use ceiling division for NV12 UV surface offset calculation")
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   .../drm/i915/display/skl_universal_plane.c    | 33 ++++++++-----------
>   1 file changed, 13 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ad4bfff6903d..164b7d61c9a3 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2126,19 +2126,6 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
>   	return 0;
>   }
>   
> -
> -/* Divide a U16.16 fixed-point value by 2, staying in fixed-point domain */
> -static inline u32 fp_16_16_div2(u32 fp)
> -{
> -	return fp >> 1;
> -}
> -
> -/* Convert a U16.16 fixed-point value to integer, rounding up */
> -static inline int fp_16_16_to_int_ceil(u32 fp)
> -{
> -	return DIV_ROUND_UP(fp, 1 << 16);
> -}
> -
>   static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
>   {
>   	struct intel_display *display = to_intel_display(plane_state);
> @@ -2154,14 +2141,20 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
>   	int max_height = intel_plane_max_height(plane, fb, uv_plane, rotation);
>   
>   	/*
> -	 * LNL+ UV surface start/size =
> -	 * ceiling(half of Y plane start/size). Use ceiling division
> -	 * unconditionally; it is a no-op for even values.
> +	 * UV (chroma) start/size = ceiling(half of the *integer* Y plane
> +	 * start/size), i.e. the value the luma surface programs (src >> 16),
> +	 * not the raw U16.16. A bigjoiner seam mapped through the scaler can
> +	 * give a fractional luma src; ceiling that directly would round the
> +	 * chroma one column too far and read past the chroma surface.
>   	 */
> -	int x = fp_16_16_to_int_ceil(fp_16_16_div2(plane_state->uapi.src.x1));
> -	int y = fp_16_16_to_int_ceil(fp_16_16_div2(plane_state->uapi.src.y1));
> -	int w = fp_16_16_to_int_ceil(fp_16_16_div2(drm_rect_width(&plane_state->uapi.src)));
> -	int h = fp_16_16_to_int_ceil(fp_16_16_div2(drm_rect_height(&plane_state->uapi.src)));
> +	int luma_x = plane_state->uapi.src.x1 >> 16;
> +	int luma_y = plane_state->uapi.src.y1 >> 16;
> +	int luma_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> +	int luma_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> +	int x = DIV_ROUND_UP(luma_x, 2);
> +	int y = DIV_ROUND_UP(luma_y, 2);
> +	int w = DIV_ROUND_UP(luma_x + luma_w, 2) - x;
> +	int h = DIV_ROUND_UP(luma_y + luma_h, 2) - y;
>   	u32 offset;
>   
>   	/* FIXME not quite sure how/if these apply to the chroma plane */

