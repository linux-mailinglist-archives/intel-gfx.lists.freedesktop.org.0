Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qvVrLi61PWpc5wgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 01:09:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091E26C9181
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 01:09:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kde.org header.s=users header.b=Cj15jEMN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBAC10F3BE;
	Thu, 25 Jun 2026 23:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F99610F3C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 23:09:30 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179]) (Authenticated sender: zamundaaa)
 by letterbox.kde.org (Postfix) with ESMTPSA id 851E732E498
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 00:09:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1782428968; bh=K/o3c3A5OTzQuinic9HUZn27oI9oXWleoJD5KlpDVP0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Cj15jEMNsVZ/VcZ0kO0bHNoGj0kBrICCq6j05hThsLDU3y88AlcgKJ1N00ugggLmE
 7JBHIIP2RS+uM+uy4hLmNC8wWanhEeIo/NuwJP57dkDxtzHraU3qn8ZemYI9ZoOKXY
 5a6KOHDtQo9smGb/U6VB0AzqJKV9SisL56NVASt9om81CAI1fAU2/imqVGheUAvV2r
 qSgSrvSJQQaNOI9gAM+tp7KE4EaSZWrc+DvWBi6G+ixd8eyDx/UUxMyvLzHoFH6gQ0
 qw2e1C/4/wp49d/T3J+mHc1w+/Ceo308m4IDWTzcjRYBQENuV6oFMDMRcOCVgZuQ3N
 wc3lpX393CK8A==
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-922ff615c14so51589685a.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 16:09:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ9PINfbPnZPWPw1TBrhMkUWhErh3g6hsx4IbXPtCpQP5C/tVWCdqx3Tw1sW2zaWoD6TW+M8/oMthR4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxMZ9+Y5aHI4MTrpeDOdbsvdMLgaTCINlscAZFUbvNudRSSsWQ1
 rtleSw6NNupbYyXPvu9hunlmpNX23wV+f82bpbIgz/S6Cug94D/kDyQmlodsxDUwN0HVaDI0EYP
 dmlPdq1qCqSQX3CGlx/QLB/HsEAxGPx0=
X-Received: by 2002:a05:620a:470c:b0:916:1970:5e66 with SMTP id
 af79cd13be357-9293c9e81f2mr702168885a.44.1782428966671; Thu, 25 Jun 2026
 16:09:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
 <20260331-atomic-v11-1-6a1df7ec5af8@intel.com>
In-Reply-To: <20260331-atomic-v11-1-6a1df7ec5af8@intel.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Fri, 26 Jun 2026 01:09:14 +0200
X-Gmail-Original-Message-ID: <CAFZQkGy6f9vr5HjjnKtObOGA08TvhEhoaxiBd_0_i7WqJ2S8ow@mail.gmail.com>
X-Gm-Features: AVVi8CdcXSj6ybUSkqiaEDaNVgsPqIFcwpBgQiGhsvarwZMHGOxf_V2PDTG4YQI
Message-ID: <CAFZQkGy6f9vr5HjjnKtObOGA08TvhEhoaxiBd_0_i7WqJ2S8ow@mail.gmail.com>
Subject: Re: [PATCH v11 1/7] drm: Define user readable error codes for atomic
 ioctl
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 harry.wentland@amd.com, uma.shankar@intel.com, louis.chauvet@bootlin.com, 
 naveen1.kumar@intel.com, ramya.krishna.yella@intel.com, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Suraj Kandpal <suraj.kandpal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kde.org:s=users];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:arun.r.murthy@intel.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:harry.wentland@amd.com,m:uma.shankar@intel.com,m:louis.chauvet@bootlin.com,m:naveen1.kumar@intel.com,m:ramya.krishna.yella@intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:suraj.kandpal@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[kde.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com,bootlin.com,lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kde.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 091E26C9181

Hi,

I finally got around to updating the KWin implementation, and made it
handle some more cases. I found some issues though.

Am Di., 31. M=C3=A4rz 2026 um 11:06 Uhr schrieb Arun R Murthy
<arun.r.murthy@intel.com>:
> +/**
> + * enum drm_mode_atomic_failure_codes -  error codes for failures in ato=
mic_ioctl
> + * @DRM_MODE_ATOMIC_UNSPECIFIED_ERROR: this is the default/unspecified e=
rror.
> + * @DRM_MODE_ATOMIC_INVALID_API_USAGE: invallid API usage(DRM_ATOMIC not
> + *                                    enabled, invalid falg, page_flip e=
vent
typo: falg -> flag

> + *                                    with test-only, etc)
> + * @DRM_MODE_ATOMIC_NEED_FULL_MODESET: Need full modeset on all connecte=
d crtc's
> + * @DRM_MODE_ATOMIC_ASYNC_PROP_CHANGED: Property changed in async flip
> + * @DRM_MODE_ATOMIC_SCANOUT_BW: For a given resolution, refresh rate and=
 the
> + *                              color depth cannot be accomodated. Resol=
ution
typo: accomodated -> accommodated

> + *                              is to lower the refresh rate or color de=
pth.
> + * @DRM_MODE_ATOMIC_CONNECTOR_BW: Refers to the limitation on the link r=
ate on
> + *                                a given connector.
> + * @DRM_MODE_ATOMIC_PIPE_BW: Limitation on the pipe, either pipe not ava=
ilable
> + *                           or the pipe scaling factor limitation.
What are actionable things a compositor can or should do in response
to pipe bandwidth limitations? Just turning off displays, using a
lower resolution or refresh rate? It's not clear to me if it's
practically different to scanout_bw in that way.

> + * @DRM_MODE_ATOMIC_MEMORY_DOMAIN: Any other memory/bandwidth related li=
mitation
> + *                                 other then the ones specified above.
> + * @DRM_MODE_ATOMIC_SPEC_VIOLOATION: Limitation of a particular feature =
on that
> + *                                   hardware. To get to know the featur=
e, the
> + *                                   property/object causing this is bei=
ng sent
> + *                                   back to user @failure_objs_ptr in t=
he
> + *                                   struct drm_mode_atomic_err_code
I didn't find any case these two values would be useful in KWin yet,
should we just leave them as "unspecified" for now?

> +struct drm_mode_atomic_err_code {
> +       __u64 failure_code;
> +       __u64 failure_objs_ptr;
I made use of the object list in the KWin implementation for the
CONNECTOR_BW case, to reduce the mode resolution and refresh rate on
only the affected connector.
When I did that though, I noticed that the memory management of that
pointer isn't defined. How is it supposed to work?

I think a good way to do it could be to let userspace set it to a
pointer to an array of uint32_t + specify the max number of elements
in count_objs. Either way, if it's included in the struct, its use
needs to be implemented, so these questions are definitely answered
and it can be tested.

- Xaver
