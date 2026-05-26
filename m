Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFtyDPvxFWp7fQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 21:18:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F145DBE46
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 21:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E94610E1DF;
	Tue, 26 May 2026 19:18:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="M6OTps0c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16BF10E4AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 19:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1779823091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=SG0VZXgnE7joBtOWfwYOMPFB5VPQhatA/6aMDA97+AE=;
 b=M6OTps0csmz0t/rT0tJzTuCjwM3XzEPEJ06A4n7nBW+DXYcqHs6LN3D4BCJ/VI/klornA+
 HmBwx1vZrqA2fQAed4yFrmF+ABs0kt6NzIOVQF5lIXfko2WPMI9QBQcSr+KFwEpZfTPGpK
 mg6CCGFCx2z1grXHlc1Xt1LdmM0GDHs=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-624-pFO_Jh7NNVOqop9JTHSm5A-1; Tue, 26 May 2026 15:18:04 -0400
X-MC-Unique: pFO_Jh7NNVOqop9JTHSm5A-1
X-Mimecast-MFC-AGG-ID: pFO_Jh7NNVOqop9JTHSm5A_1779823079
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-8b49424ad88so99234816d6.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 12:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779823079; x=1780427879;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LZ9mzM83+bK6+sNc7KbfJmscHayOTSlO+YYGLuPW7gs=;
 b=ZkqZuBtNYDU02un8V2SwdltZX119F8kNH8/dL7xsdA8zrQOC8xkdZB186LfoHpsVl0
 5ykylxEoNsYc4AFeV1f1DzQ2/jjv8pKPf5Ek5Mz366Zd7FHRZD17EOwlUfqII1au/9yC
 0CwTx3bhdHop0EPAGVKoQKV1BzIXTwrc1g48XRJykNBARIROt4g6tgxupt2kfNZiWwFR
 ebX7FSN7ctwBDJt+h/SVabpEVmnNTdVm6PMioO1R4G3NuTA0fEmxQWw66pm+JkE3hJMl
 kyfjb4tl7Qm3lB4GrIQ0FeaQgmbfiPAwBkhRep1I49gIWGRdwVj1V4UYLTb+jSNLx3oU
 jyBw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8xgerD8Uq/NDSZr0+tUp3IwaQ4UywQXX5wAhxJQO+FNcRT0Dtrv5gCdsVo2MtLOTiOcRF9InUOo7w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx1uWtidKXhEzEOp5kRn3rEwyTsZ8BUgZf4eZ725MbfQoxBeNYM
 7J/KYYXbE+R0CRzXaqb9sXEEjSxJoLIL/Sry1H+9zS9x/rSSZokLSKqDNW/khbosNZRkHAEY3dT
 wMqZIs8+aczFIFHYAYrdYNkxByS3jrFZTOy/NjwphzsIvZ47JORNebTowQWZl5HE9ZoSZjA==
X-Gm-Gg: Acq92OEnzImKeRETkjweAZmHH5DeZNwcBJ1YDr52yGJvl2ZmIIDZza4jDWc145dfWU0
 jwdDiBWC0hDUezvktCxbi8uCWNeqQktaQNFaEx8GfDgY2VvLa3T/Gisi/qwYitu8PEwCXr7ljYx
 iHeF7ZnZc+oLXh0AJPLhsTFrZBpDtNgO0inxfh7uFmcBgFMzT1ErL+rFswa1ibDlDL/s5UTgVYM
 XmoUpWJgphMZZtgSsu00d4Qa7UP58sHEpkx5wja2pU7AzHVan9wCwpbZN9poc9BUCpeAKzSI5IE
 yj32yBvhALnmS/7E15TJDGzi7tJjb2se5S7slxWkxF3Mc9+m/u9fA7jIChx5aew+qkSETdkzuQ2
 +L8m+VVARzVT9ht4x1FOwf8zjKZIZ
X-Received: by 2002:a05:6214:4508:b0:89c:eabb:f58d with SMTP id
 6a1803df08f44-8cc7b5dc35bmr328432576d6.47.1779823079392; 
 Tue, 26 May 2026 12:17:59 -0700 (PDT)
X-Received: by 2002:a05:6214:4508:b0:89c:eabb:f58d with SMTP id
 6a1803df08f44-8cc7b5dc35bmr328432106d6.47.1779823078882; 
 Tue, 26 May 2026 12:17:58 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8cc80decd48sm155816336d6.14.2026.05.26.12.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2026 12:17:58 -0700 (PDT)
Message-ID: <7fd6c044ef7f7c661cb2dfdae4806a0b7f24d02c.camel@redhat.com>
Subject: Re: [PATCH] drm/dp: Add DSC virtual DPCD quirk for Realtek MST
 branch device
From: lyude@redhat.com
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: Shawn C Lee <shawn.c.lee@intel.com>
Date: Tue, 26 May 2026 15:17:57 -0400
In-Reply-To: <20260525125516.2794636-1-imre.deak@intel.com>
References: <20260525125516.2794636-1-imre.deak@intel.com>
Autocrypt: addr=lyude@redhat.com; prefer-encrypt=mutual;
 keydata=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
 8doKQgPpApRcFGaE=
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Rirgd4JbXgIbtBX5cJ0ms6D7ioKCpH4fHwAAckgnnfE_1779823079
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:shawn.c.lee@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 36F145DBE46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Mon, 2026-05-25 at 15:55 +0300, Imre Deak wrote:
> The ASUS DC301 USB-C dock containing a Realtek MST branch device
> supports the DSC decompression functionality on each of the dock's
> downstream connectors, even though there is no discoverable peer-to-
> peer
> virtual device in the MST topology (which the DP Standard
> requires/suggests to control the DSC functionality on a per-DFP
> basis).
> Add the DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD quirk for this branch
> device as well to enable the DSC decompression functionality on all
> DFP
> connectors of the dock, similarly to how this is done for dock's
> containing older Synaptics branch devices.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Reported-and-tested-by: Shawn C Lee <shawn.c.lee@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> =C2=A0drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
> =C2=A01 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c
> b/drivers/gpu/drm/display/drm_dp_helper.c
> index a6067471dd563..9c31e14cc413b 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2546,6 +2546,8 @@ static const struct dpcd_quirk
> dpcd_quirk_list[] =3D {
> =C2=A0=09{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1',
> '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
> =C2=A0=09/* Synaptics DP1.4 MST hubs can support DSC without virtual
> DPCD */
> =C2=A0=09{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true,
> BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
> +=09/* Realtek DP1.4 MST hubs can support DSC without virtual
> DPCD */
> +=09{ OUI(0x00, 0xe0, 0x4c), DEVICE_ID('D', 'p', '1', '.', '4',
> 0), true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
> =C2=A0=09/* Synaptics DP1.4 MST hubs require DSC for some modes on
> which it applies HBLANK expansion. */
> =C2=A0=09{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true,
> BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },
> =C2=A0=09/* MediaTek panels (at least in U3224KBA) require DSC for
> modes with a short HBLANK on UHBR links. */

