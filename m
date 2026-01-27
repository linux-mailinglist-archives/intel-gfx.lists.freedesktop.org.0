Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIVfJedxeGnEpwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:05:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EBE90EA7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E01610E4CC;
	Tue, 27 Jan 2026 08:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="nSarG0gE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8142510E4CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jan 2026 08:05:53 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-b87677a8abeso814498566b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jan 2026 00:05:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769501152; cv=none;
 d=google.com; s=arc-20240605;
 b=ZRcvTrys3/45NI9D2Roq31eqQvGWoWXE4wM6gOP16nS/AA/5F/UCt+hrE454Zm6Olu
 Wl2mQrPoYNvSHG9Em49efJkoC8GegOx5f109KQX75jb7sxHj/AUKXJHaMx11eJXmc74d
 k4BEj3zTu7yjfBszGQygYOA1lxKPKnHI55vNYw2BYiOshs5Uj/TQzep+SiGG+f/w5cr3
 luK4KSKkcz4O6Kvb/JUbPulgInorDXfBxUH6P//7+8VtQYnSnHPkvWUTcoj5ddU8Z05J
 t1s4YRLF8IfqmfcdD3a+vHP/oWYoyFC8F55NJoCNWUkaKOKLSfzOTOcmtnAMAqodN37y
 EObQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=Nc/gHQubbPXzt+nuGEIisaowD42kgVBJ+bLCU9qxKOY=;
 fh=coMO0toNIE8zHj3c+bZAoLUAxedEZiT6DWJndpLBUL4=;
 b=bW0B6EFCDVs4qZnP0BqMm4snDeoiOrMZxD4yIx+DFByR5M7L+FMaG01ImgzVRzbsHn
 SKjVyRKZ1/wsTY3EeSzkcbypv8o7oARBq58VELuMZSLtMsIlvs91NCGIpDdwhJ6TrjV1
 tLKEiCZbKzvG8VJN+aJtrkV3F7JuQsuJ6idLkdeBJvi8d3YM1/RgrZ+PwRNI6luEx+au
 Ip2TcqvJh0wytXlqwfyRZXPSTFnSF9AXtwyC56cr6mA0yU5bjTLVBd5s7VnTMTuzm1wD
 SSFGgSRJJL9AEQrOQsN5/fr7QLhegRKBxav0rsQiW6Et/e0pTWV9MmPGoWPILyZ2qUoW
 BuwA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769501152; x=1770105952;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Nc/gHQubbPXzt+nuGEIisaowD42kgVBJ+bLCU9qxKOY=;
 b=nSarG0gEwegAuC+UJcOTUeIxNeIvr0Ze1jEmhj3heeZU5oHQ9DIqkWOMW5CbMqiN8U
 BK7ueNcJh/tm39Wr2Kb+OlyMypSaQyehqU4WVF3RkkWwm7sHirbUoYO02C9C1kB1rzvx
 Ur/IoRSPBHpe+y/bk3upzGdWOwCh+mZA34GOe4n4ekn+2edCewlHqjY7UhZJ1bw/ZppM
 fdVwRTQ2MFzn4CcVHNsA6dVHEgOD1Czc6Z7NEXLjQxlLfLnur1T4UVlb8udKru0BzySS
 3YOM6atRkPC7zhM9hrNHCPxMkJ78L1UoS4IjVHwH1o1UWQRczXhMqcEp1jFb0WmVcjAR
 re2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769501152; x=1770105952;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nc/gHQubbPXzt+nuGEIisaowD42kgVBJ+bLCU9qxKOY=;
 b=gGNRvE7ohQ1anDAyuo/ZpZAJmi1dRD5uDAXgXfdJki4LXPQ0YZdZRnzyzTCs6iSLL+
 pSMrJXxrEM4bZKqKYJlNxhOVj2viYlDVuMWnWf5ip8gQES2P+YhP3iIhIH1dQJXI5tKD
 OeK7SrzSsEd82UXtnQzaUr49OD+Jl945OMuOywKwVUV9OEZoOJce0t/ORQ1ZbCY2IvrM
 cRaPmcGn/TERsjJ538PQKa4Rhu2x8MuM5dlg8GWsounM+8tB1EDDIttC6kw19wJS+5z2
 C+GrRq1fO/Delgyl1Jvl7XkUXZkm0HEaTc68NBHu3KeGmlalGBskZd9mwH3xKvL4M/Vy
 3g7w==
X-Gm-Message-State: AOJu0YyLimlJ/UckdRHU0th3/dGeKM2kH2qY5XE4vdP+cP1DqTxuZWZg
 rUpaa0J6oR91p5XRqeWLO6clY0HFar00Q381tCmWPqaA9m2mJAJ0YkevmF4+scO/UtYT8U5Dqa3
 ef1BPBIlJgbmVT3BieH9tfF2gA+FokMpCkelrBoEa
X-Gm-Gg: AZuq6aL6y2vio1hDhcZS2Bj5X4HnKvd1KV9+antbHcwfXomKccqj0IZx6wdzF2Nf957
 kFd4uR/8FrDqO8r/9mV3LZRvxUfe+uXjETq7JTHU20UVLOpzBB7vNvDtzLd8WDwr2hqphYWmpSK
 0u+KqwaCcUJN8MipZSc3sBPkK3ciqd43QK8hbSjKClkiWot4d0/hE4lHGCqs5lzAXsrsnLoS4EQ
 aMV39Yc5SZboDSP1A/XGJTJi+bYq9iUEF9VwzrEBTCa03vCz84K5sDAHc4KGTaLAbPWQ6Ao7Z0Z
 Ap6h3x04q0zvlatGrwiVGBRBk8BVT/DD14+yIAAFBnS26sD1rdtXmb/X8g==
X-Received: by 2002:a17:907:9692:b0:b87:718:5da2 with SMTP id
 a640c23a62f3a-b8dab28c815mr73780766b.1.1769501151560; Tue, 27 Jan 2026
 00:05:51 -0800 (PST)
MIME-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
 <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
In-Reply-To: <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
From: Juasheem Sultan <jdsultan@google.com>
Date: Tue, 27 Jan 2026 00:05:39 -0800
X-Gm-Features: AZwV_QhKmDYoQu2wDK6wjO1Wf73XdcjztZ7TUFwKNaSwFgT7oVREQjfLB7fg0W4
Message-ID: <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel_xe@lists.freedesktop.org, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Manasi Navare <navaremanasi@google.com>,
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>, 
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>
Content-Type: multipart/alternative; boundary="000000000000929c9d06495a1712"
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:intel_xe@lists.freedesktop.org,m:rodrigo.vivi@intel.com,m:navaremanasi@google.com,m:ddavenport@google.com,m:seanpaul@google.com,m:samjaco@google.com,m:rajatja@google.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,base.name:url,base.id:url]
X-Rspamd-Queue-Id: 56EBE90EA7
X-Rspamd-Action: no action

--000000000000929c9d06495a1712
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I'd like to see logs of what the differences are.

Here's the logs from the pipe_config_compare without my patch:
<6>[   43.743023] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.enable (expected yes, found no)
<6>[   43.763730] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.active (expected yes, found no)
<6>[   43.789093] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in cpu_transcoder (expected 0, found -1)
<6>[   43.814759] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met ihw.enablen lane_count (expected 2, found 0)
<6>[   43.835751] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in dp_m_n (expected tu 64 data 8007832/8388608 link
333659/524288, found tu 0, data 0/0 link 0/0)
<6>[   43.835753] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in output_types (expected 0x00000100, found 0x00000000)
<6>[   43.835754] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in framestart_delay (expected 1, found 0)
<6>[   43.856743] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_hdisplay (expected 1920, found 0)
<6>[   43.888602] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_htotal (expected 2080, found 0)
<6>[   43.888603] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_hblank_start (expected 1920, found
0)
<6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_hblank_end (expected 2080, found 0=
)
<6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_hsync_start (expected 1966, found
0)
<6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_hsync_end (expected 1996, found 0)
<6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_vdisplay (expected 1200, found 0)
<6>[   43.888606] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_vsync_start (expected 1210, found
0)
<6>[   43.888607] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_vsync_end (expected 1216, found 0)
<6>[   43.911732] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_vtotal (expected 1236, found 0)
<6>[   43.911733] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_vblank_end (expected 1236, found 0=
)
<6>[   43.932520] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_hdisplay (expected 1920, found
0)
<6>[   43.960305] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_htotal (expected 2080, found 0=
)
<6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_hblank_start (expected 1920,
found 0)
<6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_hblank_end (expected 2080,
found 0)
<6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_hsync_start (expected 1966,
found 0)
<6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_hsync_end (expected 1996,
found 0)
<6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_vdisplay (expected 1200, found
0)
<6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_vsync_start (expected 1210,
found 0)
<6>[   43.960309] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_vsync_end (expected 1216,
found 0)
<6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_vtotal (expected 1236, found 0=
)
<6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_vblank_end (expected 1236,
found 0)
<6>[   43.988392] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in pixel_multiplier (expected 1, found 0)
<6>[   43.988393] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.flags (2) (expected 2, found 0)
<6>[   44.016086] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.flags (8) (expected 8, found 0)
<6>[   44.016087] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in enhanced_framing (expected yes, found no)
<6>[   44.016088] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in pipe_bpp (expected 24, found 0)
<6>[   44.044074] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.pipe_mode.crtc_clock (expected 154647, found 0)
<6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in hw.adjusted_mode.crtc_clock (expected 154647, found
0)
<6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in port_clock (expected 243000, found 0)
<6>[   44.044077] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met in vrr.guardband (expected 35, found 0)
<6>[   44.065890] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
requirement not met, forcing full modeset

On Thu, Jan 22, 2026 at 7:29=E2=80=AFAM Jani Nikula <jani.nikula@linux.inte=
l.com>
wrote:

> On Wed, 21 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
> > When attempting the initial commit, there is a mismatch between
> > the new crtc_state and the old crtc_state. This causes us to fail the
> > pipe_config comparison and force a modeset. In the case where we are
> > inheriting an initialized state, we can sync the new and the old state
> > to pass the comparison and allow us to do a fastset and achieve an
> > uninterrupted handoff to userspace.
> >
> > Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0d527cf22866..6eef4bd2e251 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const struc=
t
> intel_crtc_state *old_crtc_sta
> >       if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.in_rang=
e)
> >               new_crtc_state->update_lrr =3D false;
> >
> > +     /* Copying crtc state if inheriting an old state for commit */
> > +     if (old_crtc_state->inherited) {
> > +             new_crtc_state->hw =3D old_crtc_state->hw;
> > +
> > +             new_crtc_state->port_clock =3D old_crtc_state->port_clock=
;
> > +             new_crtc_state->pipe_bpp =3D old_crtc_state->pipe_bpp;
> > +             new_crtc_state->cpu_transcoder =3D
> old_crtc_state->cpu_transcoder;
> > +             new_crtc_state->lane_count =3D old_crtc_state->lane_count=
;
> > +             new_crtc_state->output_types =3D
> old_crtc_state->output_types;
> > +             new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > +             new_crtc_state->framestart_delay =3D
> old_crtc_state->framestart_delay;
> > +             new_crtc_state->pixel_multiplier =3D
> old_crtc_state->pixel_multiplier;
> > +             new_crtc_state->pixel_rate =3D old_crtc_state->pixel_rate=
;
> > +             new_crtc_state->enhanced_framing =3D
> old_crtc_state->enhanced_framing;
> > +             new_crtc_state->dpll_hw_state =3D
> old_crtc_state->dpll_hw_state;
> > +             new_crtc_state->intel_dpll =3D old_crtc_state->intel_dpll=
;
> > +             new_crtc_state->vrr.guardband =3D
> old_crtc_state->vrr.guardband;
>
> I'd like to see logs of what the differences are.
>
> BR,
> Jani.
>
> > +     }
> > +
> >       if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state,
> true)) {
> >               drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset
> requirement not met, forcing full modeset\n",
> >                           crtc->base.base.id, crtc->base.name);
>
> --
> Jani Nikula, Intel
>

--000000000000929c9d06495a1712
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-im"><div>&gt; I&#39;d like to see log=
s of what the differences are.</div><div><br></div></span>Here&#39;s the lo=
gs from the pipe_config_compare without my patch:=C2=A0<div>&lt;6&gt;[ =C2=
=A0 43.743023] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement =
not met in hw.enable (expected yes, found no)<br>&lt;6&gt;[ =C2=A0 43.76373=
0] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in h=
w.active (expected yes, found no)<br>&lt;6&gt;[ =C2=A0 43.789093] xe 0000:0=
0:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in cpu_transcode=
r (expected 0, found -1)<br>&lt;6&gt;[ =C2=A0 43.814759] xe 0000:00:02.0: [=
drm] [CRTC:88:pipe A] fastset requirement not met ihw.enablen lane_count (e=
xpected 2, found 0)<br>&lt;6&gt;[ =C2=A0 43.835751] xe 0000:00:02.0: [drm] =
[CRTC:88:pipe A] fastset requirement not met in dp_m_n (expected tu 64 data=
 8007832/8388608 link 333659/524288, found tu 0, data 0/0 link 0/0)<br>&lt;=
6&gt;[ =C2=A0 43.835753] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset re=
quirement not met in output_types (expected 0x00000100, found 0x00000000)<b=
r>&lt;6&gt;[ =C2=A0 43.835754] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fast=
set requirement not met in framestart_delay (expected 1, found 0)<br>&lt;6&=
gt;[ =C2=A0 43.856743] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requ=
irement not met in hw.pipe_mode.crtc_hdisplay (expected 1920, found 0)<br>&=
lt;6&gt;[ =C2=A0 43.888602] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset=
 requirement not met in hw.pipe_mode.crtc_htotal (expected 2080, found 0)<b=
r>&lt;6&gt;[ =C2=A0 43.888603] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fast=
set requirement not met in hw.pipe_mode.crtc_hblank_start (expected 1920, f=
ound 0)<br>&lt;6&gt;[ =C2=A0 43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pip=
e A] fastset requirement not met in hw.pipe_mode.crtc_hblank_end (expected =
2080, found 0)<br>&lt;6&gt;[ =C2=A0 43.888604] xe 0000:00:02.0: [drm] [CRTC=
:88:pipe A] fastset requirement not met in hw.pipe_mode.crtc_hsync_start (e=
xpected 1966, found 0)<br>&lt;6&gt;[ =C2=A0 43.888605] xe 0000:00:02.0: [dr=
m] [CRTC:88:pipe A] fastset requirement not met in hw.pipe_mode.crtc_hsync_=
end (expected 1996, found 0)<br>&lt;6&gt;[ =C2=A0 43.888605] xe 0000:00:02.=
0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.pipe_mode.crtc_=
vdisplay (expected 1200, found 0)<br>&lt;6&gt;[ =C2=A0 43.888606] xe 0000:0=
0:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.pipe_mode.=
crtc_vsync_start (expected 1210, found 0)<br>&lt;6&gt;[ =C2=A0 43.888607] x=
e 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.pi=
pe_mode.crtc_vsync_end (expected 1216, found 0)<br>&lt;6&gt;[ =C2=A0 43.911=
732] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in=
 hw.pipe_mode.crtc_vtotal (expected 1236, found 0)<br>&lt;6&gt;[ =C2=A0 43.=
911733] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met=
 in hw.pipe_mode.crtc_vblank_end (expected 1236, found 0)<br>&lt;6&gt;[ =C2=
=A0 43.932520] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement =
not met in hw.adjusted_mode.crtc_hdisplay (expected 1920, found 0)<br>&lt;6=
&gt;[ =C2=A0 43.960305] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset req=
uirement not met in hw.adjusted_mode.crtc_htotal (expected 2080, found 0)<b=
r>&lt;6&gt;[ =C2=A0 43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fast=
set requirement not met in hw.adjusted_mode.crtc_hblank_start (expected 192=
0, found 0)<br>&lt;6&gt;[ =C2=A0 43.960306] xe 0000:00:02.0: [drm] [CRTC:88=
:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_hblank_end (e=
xpected 2080, found 0)<br>&lt;6&gt;[ =C2=A0 43.960307] xe 0000:00:02.0: [dr=
m] [CRTC:88:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_hs=
ync_start (expected 1966, found 0)<br>&lt;6&gt;[ =C2=A0 43.960307] xe 0000:=
00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.adjusted_=
mode.crtc_hsync_end (expected 1996, found 0)<br>&lt;6&gt;[ =C2=A0 43.960308=
] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw=
.adjusted_mode.crtc_vdisplay (expected 1200, found 0)<br>&lt;6&gt;[ =C2=A0 =
43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not =
met in hw.adjusted_mode.crtc_vsync_start (expected 1210, found 0)<br>&lt;6&=
gt;[ =C2=A0 43.960309] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requ=
irement not met in hw.adjusted_mode.crtc_vsync_end (expected 1216, found 0)=
<br>&lt;6&gt;[ =C2=A0 43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fa=
stset requirement not met in hw.adjusted_mode.crtc_vtotal (expected 1236, f=
ound 0)<br>&lt;6&gt;[ =C2=A0 43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pip=
e A] fastset requirement not met in hw.adjusted_mode.crtc_vblank_end (expec=
ted 1236, found 0)<br>&lt;6&gt;[ =C2=A0 43.988392] xe 0000:00:02.0: [drm] [=
CRTC:88:pipe A] fastset requirement not met in pixel_multiplier (expected 1=
, found 0)<br>&lt;6&gt;[ =C2=A0 43.988393] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset requirement not met in hw.adjusted_mode.flags (2) (expected=
 2, found 0)<br>&lt;6&gt;[ =C2=A0 44.016086] xe 0000:00:02.0: [drm] [CRTC:8=
8:pipe A] fastset requirement not met in hw.adjusted_mode.flags (8) (expect=
ed 8, found 0)<br>&lt;6&gt;[ =C2=A0 44.016087] xe 0000:00:02.0: [drm] [CRTC=
:88:pipe A] fastset requirement not met in enhanced_framing (expected yes, =
found no)<br>&lt;6&gt;[ =C2=A0 44.016088] xe 0000:00:02.0: [drm] [CRTC:88:p=
ipe A] fastset requirement not met in pipe_bpp (expected 24, found 0)<br>&l=
t;6&gt;[ =C2=A0 44.044074] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset =
requirement not met in hw.pipe_mode.crtc_clock (expected 154647, found 0)<b=
r>&lt;6&gt;[ =C2=A0 44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fast=
set requirement not met in hw.adjusted_mode.crtc_clock (expected 154647, fo=
und 0)<br>&lt;6&gt;[ =C2=A0 44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe=
 A] fastset requirement not met in port_clock (expected 243000, found 0)<br=
>&lt;6&gt;[ =C2=A0 44.044077] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fasts=
et requirement not met in vrr.guardband (expected 35, found 0)<br>&lt;6&gt;=
[ =C2=A0 44.065890] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset require=
ment not met, forcing full modeset</div></div><br><div class=3D"gmail_quote=
 gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 2=
2, 2026 at 7:29=E2=80=AFAM Jani Nikula &lt;<a href=3D"mailto:jani.nikula@li=
nux.intel.com">jani.nikula@linux.intel.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Wed, 21 Jan 2026, Juasheem Sul=
tan &lt;<a href=3D"mailto:jdsultan@google.com" target=3D"_blank">jdsultan@g=
oogle.com</a>&gt; wrote:<br>
&gt; When attempting the initial commit, there is a mismatch between<br>
&gt; the new crtc_state and the old crtc_state. This causes us to fail the<=
br>
&gt; pipe_config comparison and force a modeset. In the case where we are<b=
r>
&gt; inheriting an initialized state, we can sync the new and the old state=
<br>
&gt; to pass the comparison and allow us to do a fastset and achieve an<br>
&gt; uninterrupted handoff to userspace.<br>
&gt;<br>
&gt; Signed-off-by: Juasheem Sultan &lt;<a href=3D"mailto:jdsultan@google.c=
om" target=3D"_blank">jdsultan@google.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++=
+++++<br>
&gt;=C2=A0 1 file changed, 19 insertions(+)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c<br>
&gt; index 0d527cf22866..6eef4bd2e251 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const stru=
ct intel_crtc_state *old_crtc_sta<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (old_crtc_state-&gt;vrr.in_range !=3D new=
_crtc_state-&gt;vrr.in_range)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&=
gt;update_lrr =3D false;<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* Copying crtc state if inheriting an old state =
for commit */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (old_crtc_state-&gt;inherited) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;hw=
 =3D old_crtc_state-&gt;hw;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;po=
rt_clock =3D old_crtc_state-&gt;port_clock;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;pi=
pe_bpp =3D old_crtc_state-&gt;pipe_bpp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;cp=
u_transcoder =3D old_crtc_state-&gt;cpu_transcoder;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;la=
ne_count =3D old_crtc_state-&gt;lane_count;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;ou=
tput_types =3D old_crtc_state-&gt;output_types;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;dp=
_m_n =3D old_crtc_state-&gt;dp_m_n;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;fr=
amestart_delay =3D old_crtc_state-&gt;framestart_delay;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;pi=
xel_multiplier =3D old_crtc_state-&gt;pixel_multiplier;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;pi=
xel_rate =3D old_crtc_state-&gt;pixel_rate;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;en=
hanced_framing =3D old_crtc_state-&gt;enhanced_framing;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;dp=
ll_hw_state =3D old_crtc_state-&gt;dpll_hw_state;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;in=
tel_dpll =3D old_crtc_state-&gt;intel_dpll;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;vr=
r.guardband =3D old_crtc_state-&gt;vrr.guardband;<br>
<br>
I&#39;d like to see logs of what the differences are.<br>
<br>
BR,<br>
Jani.<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!intel_pipe_config_compare(old_crtc_stat=
e, new_crtc_state, true)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drm_dbg_kms(disp=
lay-&gt;drm, &quot;[CRTC:%d:%s] fastset requirement not met, forcing full m=
odeset\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0crtc-&gt;<a href=3D"http://base.base.id" rel=3D"=
noreferrer" target=3D"_blank">base.base.id</a>, crtc-&gt;<a href=3D"http://=
base.name" rel=3D"noreferrer" target=3D"_blank">base.name</a>);<br>
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div>

--000000000000929c9d06495a1712--
