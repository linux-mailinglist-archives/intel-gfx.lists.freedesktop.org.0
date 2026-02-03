Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FB0OCU8gmmVQgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 19:19:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 139B1DD769
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 19:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A3A10E253;
	Tue,  3 Feb 2026 18:19:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="QTdu4TuP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94B510E253
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Feb 2026 18:19:12 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-b885d8f4092so1028749266b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Feb 2026 10:19:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770142751; cv=none;
 d=google.com; s=arc-20240605;
 b=djdKxjdcDAyOQiLI8ui3mY3VZps338wJ5UrTqYlft0yjF2/18EXhdnNyoBwipcUZBM
 YGY0hft3k+xSsDcnmTcQMh6SN0XELBWc+/2cBOHslBZ0PhtXdZEHHy224kV/71h3e9ir
 7a3V7+oCZI/vSJqCUK8nbRfjlyThUlIukiZ37ZIHrneXIR0R5mQvP4cUspuWL4vqQJJe
 XqBytFdd+zwUCOKCk3VvJ5m/088+wC6ZYEIGvOXCELykz+9uq7Fv/cph2e6HUw0L8FSY
 GqlhSyL3+8KPk3mQ3GR3nYlcOAQYVY8XHx6s5pw4xlcOqvLg23CuLodD0qbCn/pIfgw1
 jypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=l5tvp8yjIPAoGct/CibhWcHJ7dbo/NCqMu2OOi4wSxo=;
 fh=l1QymCl9HzAQjqorJ8zJDJUat/lVHLeaNapr55cAbeI=;
 b=HotYQXd+ozEe1EaYNKqhuVDQ5dB1pGGjdZ3WZwS1VZiyXPQ6Sp5hTgSuUYxRsvZsp2
 Fc/EZLhxekUy06/4Zz2PK2R+taJz2E8m5JQDXzC62obYBSACIyAVq+hnZRNg2z+oCIzy
 G2HnpySXT4OaJzPXLtMmmcTiey/HTnkfB4XhSV9HFdff0CY86gWhhT6hJdBg2vTTl3Oq
 Ds8RP66x29xCUF7/3sVmy6P8ONFWB1DGFH+ZmRM84PAvPGIdhuH0KtmXtjJ4KnUKNYEB
 bxXwUuZokl8tmLjfp9qDpXROB7wNsf+2k0p1RTsmbcALlskm48UFUdSWIjn/VPMmFgEO
 SXzw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1770142751; x=1770747551;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=l5tvp8yjIPAoGct/CibhWcHJ7dbo/NCqMu2OOi4wSxo=;
 b=QTdu4TuPjrBILc54RRuNvNx1d83lhq/4MGTDKeGDlOjTbf4UkpKia9ATcn8bqChHyR
 ylHzKCDI+lbZgl/b5QYnAScE6BBDUjWIKrkTyFNUYHz1tM0qL3sIJ+VuC2rvEyNY58lO
 dkVyV05wFPRIftFSVEpktgvI9eiYRECUDLhrxOW3Vob0aN56O1I9w1AV+wW1OpV1zWKi
 OnhylUyZitC28mrtYocJs7VwxjVfUNJYHDmhms5OzmgIOP3kC3Xan5tWjCfejKcJU5Ia
 7ACKfnHTJ64BKN0lGggcYeMOaTWbAOrqG0TYjTyDogylp7xvxPP45DlLSs3bYLq/nAoz
 bhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770142751; x=1770747551;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=l5tvp8yjIPAoGct/CibhWcHJ7dbo/NCqMu2OOi4wSxo=;
 b=D8EPfkRDt1NanaBzbiOgWOeNOjfO2H3X3V0PEYtI5k6aFhKluauF2U9yV59/PVqHj9
 mlM5OKHBlP4y5OZxVQPJlZiFY4g5ep/CV5KfK3GKAntMbzRMfMOiC86bToNv6sTMhd5Z
 3Zl/xTjU4FTpi2Jb8GBaeso4DT/b7g6EE83vA1N+Xn4yYF3pZmgQBQkUSxnS0z+4kAWU
 KIg/CT5P6WtJGXbrrXqbb3z0IIBKsmfyneyhdw0RK7xpoW1oYqEx/cISXZfVwgaf9He9
 +m4mz5PVRrIioVU4bpFdWWxp+Tv6My2C+UltwroyZljp2cXUW1PpejgD/ReN4DTrWZoJ
 NZ7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWw8LluiFely64uwe+0/+I7EzfuJe6ZlS1ttj7t0K33IwGpITwId2Duq+HWvV5JGafuENtR0oaDYKI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxAYF2kZoHttlLyvdjqNbYiQEDHaNClyupCAwu5oLxEU0yLFH5w
 vcIU4SOFP2lEH3718PtH14LPiAM0pAM09Igv0N5cSGUDWaTOxn5CxNQwnW3NjiK76Ws1v/wwXRB
 SBmw91WgJtnnlkBWLtF1cu6XIcjDxy9phI3tt8Wje
X-Gm-Gg: AZuq6aIjm5Shwg0HAguivaiHhHkdsMLOfhT0m/taQtphIWeN1FVGKIlM6FpsaHizzSu
 sb5paVx+ueXUbaI6At4mne7go5tv+gzo5OEa62zwubjGbXfrHBNFAZiEvBUM1dCsYKb9kmAnyJJ
 gxIPp26CEcsYOEx3RjV8SLf/zYhpUkBPccPorIY2HYPWl2N+8UYbpjUjheswqpuimAbowBCaa8y
 Y+X+mjCk6+p/4S/Bjg0a5nQo7dG/8dCSYb4uhFrVCBVNhvGxqHGm4QpwD41YL/nn55W0c6pFOnT
 4GnJobLe0fy8LSdROVIK3BgLP33ebAUqO3P0sqym3UQ/QF5spqAYNgbQ23PpruzbiXS2dQ==
X-Received: by 2002:a17:907:e10c:b0:b88:6e10:62c8 with SMTP id
 a640c23a62f3a-b8e9ef24358mr23739766b.2.1770142751092; Tue, 03 Feb 2026
 10:19:11 -0800 (PST)
MIME-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
 <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
 <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
In-Reply-To: <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Tue, 3 Feb 2026 10:18:58 -0800
X-Gm-Features: AZwV_Qi0i_8n93JZXJv_MqjaTAxO3-PoHbgXohGwcqGntvHcXTSluttGZ4IGNJM
Message-ID: <CAMNLLoR6dVmYvGn66jsNobLgJzsck2rZ=LghA7zuaA-aKCn1BQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
To: Juasheem Sultan <jdsultan@google.com>, Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 intel_xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>, 
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>
Content-Type: multipart/alternative; boundary="000000000000e202970649ef795e"
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
	FORGED_SENDER(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jdsultan@google.com,m:jani.nikula@intel.com,m:jani.nikula@linux.intel.com,m:intel_xe@lists.freedesktop.org,m:rodrigo.vivi@intel.com,m:ddavenport@google.com,m:seanpaul@google.com,m:samjaco@google.com,m:rajatja@google.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 139B1DD769
X-Rspamd-Action: no action

--000000000000e202970649ef795e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jausheem for the pipe mismatch logs without your patch. And so with
your patch now since you set new_crtc_state to old_crtc_state, this goes
away and it meets the fastset right?

@Jani Nikula <jani.nikula@intel.com> : Did you want to take a look at any
other logs? The above logs are stripped out from kernel logging without his
patch and with his patch it becomes a fastset as expected.
Let us know if there is any other feedback to improve the design for
enabling seamless boot?

Regards
Manasi

On Tue, Jan 27, 2026 at 12:05=E2=80=AFAM Juasheem Sultan <jdsultan@google.c=
om>
wrote:

> > I'd like to see logs of what the differences are.
>
> Here's the logs from the pipe_config_compare without my patch:
> <6>[   43.743023] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.enable (expected yes, found no)
> <6>[   43.763730] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.active (expected yes, found no)
> <6>[   43.789093] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in cpu_transcoder (expected 0, found -1)
> <6>[   43.814759] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met ihw.enablen lane_count (expected 2, found 0)
> <6>[   43.835751] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in dp_m_n (expected tu 64 data 8007832/8388608 link
> 333659/524288, found tu 0, data 0/0 link 0/0)
> <6>[   43.835753] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in output_types (expected 0x00000100, found 0x0000000=
0)
> <6>[   43.835754] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in framestart_delay (expected 1, found 0)
> <6>[   43.856743] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_hdisplay (expected 1920, found 0=
)
> <6>[   43.888602] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_htotal (expected 2080, found 0)
> <6>[   43.888603] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_hblank_start (expected 1920, fou=
nd
> 0)
> <6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_hblank_end (expected 2080, found=
 0)
> <6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_hsync_start (expected 1966, foun=
d
> 0)
> <6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_hsync_end (expected 1996, found =
0)
> <6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_vdisplay (expected 1200, found 0=
)
> <6>[   43.888606] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_vsync_start (expected 1210, foun=
d
> 0)
> <6>[   43.888607] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_vsync_end (expected 1216, found =
0)
> <6>[   43.911732] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_vtotal (expected 1236, found 0)
> <6>[   43.911733] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_vblank_end (expected 1236, found=
 0)
> <6>[   43.932520] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_hdisplay (expected 1920, fou=
nd
> 0)
> <6>[   43.960305] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_htotal (expected 2080, found=
 0)
> <6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_hblank_start (expected 1920,
> found 0)
> <6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_hblank_end (expected 2080,
> found 0)
> <6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_hsync_start (expected 1966,
> found 0)
> <6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_hsync_end (expected 1996,
> found 0)
> <6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_vdisplay (expected 1200, fou=
nd
> 0)
> <6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_vsync_start (expected 1210,
> found 0)
> <6>[   43.960309] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_vsync_end (expected 1216,
> found 0)
> <6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_vtotal (expected 1236, found=
 0)
> <6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_vblank_end (expected 1236,
> found 0)
> <6>[   43.988392] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in pixel_multiplier (expected 1, found 0)
> <6>[   43.988393] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.flags (2) (expected 2, found 0)
> <6>[   44.016086] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.flags (8) (expected 8, found 0)
> <6>[   44.016087] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in enhanced_framing (expected yes, found no)
> <6>[   44.016088] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in pipe_bpp (expected 24, found 0)
> <6>[   44.044074] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.pipe_mode.crtc_clock (expected 154647, found 0)
> <6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in hw.adjusted_mode.crtc_clock (expected 154647, foun=
d
> 0)
> <6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in port_clock (expected 243000, found 0)
> <6>[   44.044077] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met in vrr.guardband (expected 35, found 0)
> <6>[   44.065890] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> requirement not met, forcing full modeset
>
> On Thu, Jan 22, 2026 at 7:29=E2=80=AFAM Jani Nikula <jani.nikula@linux.in=
tel.com>
> wrote:
>
>> On Wed, 21 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
>> > When attempting the initial commit, there is a mismatch between
>> > the new crtc_state and the old crtc_state. This causes us to fail the
>> > pipe_config comparison and force a modeset. In the case where we are
>> > inheriting an initialized state, we can sync the new and the old state
>> > to pass the comparison and allow us to do a fastset and achieve an
>> > uninterrupted handoff to userspace.
>> >
>> > Signed-off-by: Juasheem Sultan <jdsultan@google.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
>> >  1 file changed, 19 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> > index 0d527cf22866..6eef4bd2e251 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const
>> struct intel_crtc_state *old_crtc_sta
>> >       if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.in_ran=
ge)
>> >               new_crtc_state->update_lrr =3D false;
>> >
>> > +     /* Copying crtc state if inheriting an old state for commit */
>> > +     if (old_crtc_state->inherited) {
>> > +             new_crtc_state->hw =3D old_crtc_state->hw;
>> > +
>> > +             new_crtc_state->port_clock =3D old_crtc_state->port_cloc=
k;
>> > +             new_crtc_state->pipe_bpp =3D old_crtc_state->pipe_bpp;
>> > +             new_crtc_state->cpu_transcoder =3D
>> old_crtc_state->cpu_transcoder;
>> > +             new_crtc_state->lane_count =3D old_crtc_state->lane_coun=
t;
>> > +             new_crtc_state->output_types =3D
>> old_crtc_state->output_types;
>> > +             new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
>> > +             new_crtc_state->framestart_delay =3D
>> old_crtc_state->framestart_delay;
>> > +             new_crtc_state->pixel_multiplier =3D
>> old_crtc_state->pixel_multiplier;
>> > +             new_crtc_state->pixel_rate =3D old_crtc_state->pixel_rat=
e;
>> > +             new_crtc_state->enhanced_framing =3D
>> old_crtc_state->enhanced_framing;
>> > +             new_crtc_state->dpll_hw_state =3D
>> old_crtc_state->dpll_hw_state;
>> > +             new_crtc_state->intel_dpll =3D old_crtc_state->intel_dpl=
l;
>> > +             new_crtc_state->vrr.guardband =3D
>> old_crtc_state->vrr.guardband;
>>
>> I'd like to see logs of what the differences are.
>>
>> BR,
>> Jani.
>>
>> > +     }
>> > +
>> >       if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state,
>> true)) {
>> >               drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset
>> requirement not met, forcing full modeset\n",
>> >                           crtc->base.base.id, crtc->base.name);
>>
>> --
>> Jani Nikula, Intel
>>
>

--000000000000e202970649ef795e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Jausheem for the pipe mismatch logs without your pa=
tch. And so with your patch now since you set new_crtc_state to old_crtc_st=
ate, this goes away and it meets the fastset right?<div><br></div><div><a c=
lass=3D"gmail_plusreply" id=3D"plusReplyChip-0" href=3D"mailto:jani.nikula@=
intel.com" tabindex=3D"-1">@Jani Nikula</a>=C2=A0: Did you want to take a l=
ook at any other logs? The above logs are stripped out from kernel logging =
without his patch and with his patch it becomes a fastset as expected.<br><=
/div><div>Let us know if there is any other feedback to improve the design =
for enabling seamless boot?</div><div><br></div><div>Regards</div><div>Mana=
si</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 27, 2026 at 12:05=E2=80=AFAM Juas=
heem Sultan &lt;<a href=3D"mailto:jdsultan@google.com">jdsultan@google.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><span><div>&gt; I&#39;d like to see logs of what the differ=
ences are.</div><div><br></div></span>Here&#39;s the logs from the pipe_con=
fig_compare without my patch:=C2=A0<div>&lt;6&gt;[ =C2=A0 43.743023] xe 000=
0:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.enable =
(expected yes, found no)<br>&lt;6&gt;[ =C2=A0 43.763730] xe 0000:00:02.0: [=
drm] [CRTC:88:pipe A] fastset requirement not met in hw.active (expected ye=
s, found no)<br>&lt;6&gt;[ =C2=A0 43.789093] xe 0000:00:02.0: [drm] [CRTC:8=
8:pipe A] fastset requirement not met in cpu_transcoder (expected 0, found =
-1)<br>&lt;6&gt;[ =C2=A0 43.814759] xe 0000:00:02.0: [drm] [CRTC:88:pipe A]=
 fastset requirement not met ihw.enablen lane_count (expected 2, found 0)<b=
r>&lt;6&gt;[ =C2=A0 43.835751] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fast=
set requirement not met in dp_m_n (expected tu 64 data 8007832/8388608 link=
 333659/524288, found tu 0, data 0/0 link 0/0)<br>&lt;6&gt;[ =C2=A0 43.8357=
53] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in =
output_types (expected 0x00000100, found 0x00000000)<br>&lt;6&gt;[ =C2=A0 4=
3.835754] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not m=
et in framestart_delay (expected 1, found 0)<br>&lt;6&gt;[ =C2=A0 43.856743=
] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw=
.pipe_mode.crtc_hdisplay (expected 1920, found 0)<br>&lt;6&gt;[ =C2=A0 43.8=
88602] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met =
in hw.pipe_mode.crtc_htotal (expected 2080, found 0)<br>&lt;6&gt;[ =C2=A0 4=
3.888603] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not m=
et in hw.pipe_mode.crtc_hblank_start (expected 1920, found 0)<br>&lt;6&gt;[=
 =C2=A0 43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirem=
ent not met in hw.pipe_mode.crtc_hblank_end (expected 2080, found 0)<br>&lt=
;6&gt;[ =C2=A0 43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset r=
equirement not met in hw.pipe_mode.crtc_hsync_start (expected 1966, found 0=
)<br>&lt;6&gt;[ =C2=A0 43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] f=
astset requirement not met in hw.pipe_mode.crtc_hsync_end (expected 1996, f=
ound 0)<br>&lt;6&gt;[ =C2=A0 43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pip=
e A] fastset requirement not met in hw.pipe_mode.crtc_vdisplay (expected 12=
00, found 0)<br>&lt;6&gt;[ =C2=A0 43.888606] xe 0000:00:02.0: [drm] [CRTC:8=
8:pipe A] fastset requirement not met in hw.pipe_mode.crtc_vsync_start (exp=
ected 1210, found 0)<br>&lt;6&gt;[ =C2=A0 43.888607] xe 0000:00:02.0: [drm]=
 [CRTC:88:pipe A] fastset requirement not met in hw.pipe_mode.crtc_vsync_en=
d (expected 1216, found 0)<br>&lt;6&gt;[ =C2=A0 43.911732] xe 0000:00:02.0:=
 [drm] [CRTC:88:pipe A] fastset requirement not met in hw.pipe_mode.crtc_vt=
otal (expected 1236, found 0)<br>&lt;6&gt;[ =C2=A0 43.911733] xe 0000:00:02=
.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.pipe_mode.crtc=
_vblank_end (expected 1236, found 0)<br>&lt;6&gt;[ =C2=A0 43.932520] xe 000=
0:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.adjuste=
d_mode.crtc_hdisplay (expected 1920, found 0)<br>&lt;6&gt;[ =C2=A0 43.96030=
5] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in h=
w.adjusted_mode.crtc_htotal (expected 2080, found 0)<br>&lt;6&gt;[ =C2=A0 4=
3.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not m=
et in hw.adjusted_mode.crtc_hblank_start (expected 1920, found 0)<br>&lt;6&=
gt;[ =C2=A0 43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requ=
irement not met in hw.adjusted_mode.crtc_hblank_end (expected 2080, found 0=
)<br>&lt;6&gt;[ =C2=A0 43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] f=
astset requirement not met in hw.adjusted_mode.crtc_hsync_start (expected 1=
966, found 0)<br>&lt;6&gt;[ =C2=A0 43.960307] xe 0000:00:02.0: [drm] [CRTC:=
88:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_hsync_end (=
expected 1996, found 0)<br>&lt;6&gt;[ =C2=A0 43.960308] xe 0000:00:02.0: [d=
rm] [CRTC:88:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_v=
display (expected 1200, found 0)<br>&lt;6&gt;[ =C2=A0 43.960308] xe 0000:00=
:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw.adjusted_mo=
de.crtc_vsync_start (expected 1210, found 0)<br>&lt;6&gt;[ =C2=A0 43.960309=
] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met in hw=
.adjusted_mode.crtc_vsync_end (expected 1216, found 0)<br>&lt;6&gt;[ =C2=A0=
 43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not=
 met in hw.adjusted_mode.crtc_vtotal (expected 1236, found 0)<br>&lt;6&gt;[=
 =C2=A0 43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirem=
ent not met in hw.adjusted_mode.crtc_vblank_end (expected 1236, found 0)<br=
>&lt;6&gt;[ =C2=A0 43.988392] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fasts=
et requirement not met in pixel_multiplier (expected 1, found 0)<br>&lt;6&g=
t;[ =C2=A0 43.988393] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requi=
rement not met in hw.adjusted_mode.flags (2) (expected 2, found 0)<br>&lt;6=
&gt;[ =C2=A0 44.016086] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset req=
uirement not met in hw.adjusted_mode.flags (8) (expected 8, found 0)<br>&lt=
;6&gt;[ =C2=A0 44.016087] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset r=
equirement not met in enhanced_framing (expected yes, found no)<br>&lt;6&gt=
;[ =C2=A0 44.016088] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requir=
ement not met in pipe_bpp (expected 24, found 0)<br>&lt;6&gt;[ =C2=A0 44.04=
4074] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met i=
n hw.pipe_mode.crtc_clock (expected 154647, found 0)<br>&lt;6&gt;[ =C2=A0 4=
4.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not m=
et in hw.adjusted_mode.crtc_clock (expected 154647, found 0)<br>&lt;6&gt;[ =
=C2=A0 44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requireme=
nt not met in port_clock (expected 243000, found 0)<br>&lt;6&gt;[ =C2=A0 44=
.044077] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not me=
t in vrr.guardband (expected 35, found 0)<br>&lt;6&gt;[ =C2=A0 44.065890] x=
e 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset requirement not met, forcing=
 full modeset</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Jan 22, 2026 at 7:29=E2=80=AFAM Jani Nikula &lt;=
<a href=3D"mailto:jani.nikula@linux.intel.com" target=3D"_blank">jani.nikul=
a@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Wed, 21 Jan 2026, Juasheem Sultan &lt;<a href=3D"mailto=
:jdsultan@google.com" target=3D"_blank">jdsultan@google.com</a>&gt; wrote:<=
br>
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
</blockquote></div>

--000000000000e202970649ef795e--
