Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFUlJr5igmnfTQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 22:03:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CA7DEB6E
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 22:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7E910E1FA;
	Tue,  3 Feb 2026 21:03:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="yK8OazqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3755C10E266
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Feb 2026 21:03:54 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-6580dbdb41eso9215335a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Feb 2026 13:03:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770152633; cv=none;
 d=google.com; s=arc-20240605;
 b=CMQzu6Zb69lp1bGYEsDvCryq90MivQ774HCjp2yf8AHvcEMa4Omd+UFsyst2my78gj
 26NZblebE0yu7gBmdI/OgceZJeUp5F/WqdIoGHmZRt2kbbA/N1gX3SF1FS7F/pRE+lEK
 xZ690pec7AXJ/Jsyk/ImV4ZMoAH5n2yOlkxWvDpyjlb0aYzTK/3Ow9DkeTHHRCAqGDuf
 T7p0VpfnIHdSL1K2quzu7McBEvLuA9ePI2Ft5a6ymyDBrHYiw8qGB7zWcItT0kWr0cYQ
 yzjR3QBLGqJOYtogGqEvXC9txJ005fsWm5HxonAl364tdmHGfaF246Ccm43Q083Bxtg4
 k7kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=Qj7HOolW3nqKG4TlTtwOPpRiDTyXDA3N9mWMFSsh+/I=;
 fh=yuPIbLtQqGesufsUxdTWLlL0dw6RBiJZzSIev7FseqM=;
 b=ayzjyFuuktO1E7VAg3QXO0cimqTwFbcgy6aFakXmdYQ6j7ouBalby0DI3A5YyHePgR
 Q6JZojYNe3kIBq3Uurs/bGaGdsT/k2diaBxCAYZfKmvKqL7Vw0SGVeAtv+Nt/Z2+bOw5
 DwMISqgHvmL2qFilANgX8fRT4vNFrcYctOh7EEZMJj/0EvE/RJRrkyAYr0AM/RwuXtQw
 DwLCuR4+6djBFrHGTIlHSvoMM3BdU1BpwiMr4eMyWS6cdnxYbxcAlQ18gTdOoqGHeIJk
 +Pn6rSVaWeLMWFvFAA423mRvnrG9NuuuBuTIX61vKgd65AwAsYR//AebqWmqWchRcGQH
 KDzw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1770152633; x=1770757433;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Qj7HOolW3nqKG4TlTtwOPpRiDTyXDA3N9mWMFSsh+/I=;
 b=yK8OazqXkF3r7sNQc+4i3RpGoXhArxQ/jqxmGrGldAfCkyw9B74gc3Np/jE99sZlWT
 0Kz7PAiuGOE0/w6lnhbgh9AHvSiZwDyI+1ds8vdxQwpwUdTdCzVT1BWVAWfnm0bphZjy
 qiymN9mWL6IXfGcjHk4SonABeI11RuDxkojugYYTwIBUkWPI6uubXEAF4qSEPX+YF98K
 NwSXLY5wWpHbFH5VbDu5ol/UQe6rILvGdpZjkOTuzID6XpdVW4TjhwIfkvzi7uP07TiM
 sVnTXVHU/V8pqDR2btruMZEsJwvwexEeFRG7EbIQOg8/kOmY19NUx5mNpeiBAryrv96B
 Ahmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770152633; x=1770757433;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qj7HOolW3nqKG4TlTtwOPpRiDTyXDA3N9mWMFSsh+/I=;
 b=uymHmj6yjqJ9oyJYFUR9qidMb6nQLtMf4+CpZnPupWElZifZzRgDi7d+tCIk06gwuR
 f1sdZ4PnJ1UhjRsxZZVVZYXexvSVgOJM5khUTfYuATv/QG7NEY6TScdFmn7XyjU4owRA
 c4FKhEthPl0x9gPkM7M5IfIOSsoBZ4iMJoce0w4vcl/hOz4rWKyqSXdWZ7w1wcqgnHkC
 75CAl+yqDQBFQfz/4j6OIkBLh92rJJ4JjBF8k0eu317pVj6a2MmfSkNHRMQFkWWzb75w
 B/5X4V/xChR8RHxzyV7xp1vfAh0CCyDI1Apu+4zChf8BgUyg/0QxcEwHzGRMS1Rqd4j3
 0AIQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLunL2nVhnpRxARuhAJBfQwOD9DPS59zd+20f0uSgBJ38jJ1z4KjkVLhU0NRhcrg/bXxcvkSGOji0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzGGqqt6hyHlPmarqK8i0WwgI7ona3xzFlubGZKbSdSXm/I0+dt
 dThoqpyXL5Dz/gzl+nKbT7dFaAi+uGp2k7sTd3y5YmwXTt2q5/7p+89S9Ve8BJwof7WUTZfUh/s
 lXUppcRzuSXLLZAcW6tyPInUt4VENhipAzvirdvQh
X-Gm-Gg: AZuq6aJVlVMU/XZmWBTqC6pWYeCRJwuUYGcLnBKjH+bV9DRSFE0aSX3EYk8QXTlAo6Q
 jmMqe+KUlTsuwNK0DxadAdqp8rxGlFDqDNIHAfqo6YDBaolAXsPqFBqmMSIsuuDFDYb+ctHwisD
 0lX5L1spGRgUfwhOn8UfwGFB8/Wg74XGZlo6i2/REtj3xoc9p1VgCo2chRBPvbOlrD6IuiYrspa
 63P9yR0KQToJ7K2lZcCXcKWUj9tmLDQ5lIxwdKKyC64qzui9e4h1/X2Bqpbwyyhohs7QNMlgsF5
 mrjLoUWKs/b5348YrQ9KaPZz/5y4xEwYvDoeWb4MnKIp4MH7vJ/4ddQHjgeEj9xmWrYRrQ==
X-Received: by 2002:a17:907:d19:b0:b87:39d:2bb4 with SMTP id
 a640c23a62f3a-b8e9f6a0f53mr55801766b.59.1770152632340; Tue, 03 Feb 2026
 13:03:52 -0800 (PST)
MIME-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
 <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
 <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
 <CAMNLLoR6dVmYvGn66jsNobLgJzsck2rZ=LghA7zuaA-aKCn1BQ@mail.gmail.com>
 <f8096b857e6c0a24f32c1eb6479d95b0dbb4adad@intel.com>
In-Reply-To: <f8096b857e6c0a24f32c1eb6479d95b0dbb4adad@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Tue, 3 Feb 2026 13:03:40 -0800
X-Gm-Features: AZwV_QhvCK1O2fqDyZBjYvL2r7B2nwWq7BTN3x8mCJlqZsRd6gHMBxjJ0ePyWJ4
Message-ID: <CAMNLLoS2Yg+2EssW-ykXcKSfV7v2sYq-zcwFUYhKM+ErLTVc8w@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
To: Jani Nikula <jani.nikula@intel.com>
Cc: Juasheem Sultan <jdsultan@google.com>, intel-gfx@lists.freedesktop.org, 
 intel_xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>, 
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>
Content-Type: multipart/alternative; boundary="000000000000da46260649f1c664"
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
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:jdsultan@google.com,m:intel_xe@lists.freedesktop.org,m:rodrigo.vivi@intel.com,m:ddavenport@google.com,m:seanpaul@google.com,m:samjaco@google.com,m:rajatja@google.com,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D3CA7DEB6E
X-Rspamd-Action: no action

--000000000000da46260649f1c664
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 3, 2026 at 11:47=E2=80=AFAM Jani Nikula <jani.nikula@intel.com>=
 wrote:

> On Tue, 03 Feb 2026, Manasi Navare <navaremanasi@google.com> wrote:
> > Thanks Jausheem for the pipe mismatch logs without your patch. And so
> with
> > your patch now since you set new_crtc_state to old_crtc_state, this goe=
s
> > away and it meets the fastset right?
> >
> > @Jani Nikula <jani.nikula@intel.com> : Did you want to take a look at
> any
> > other logs? The above logs are stripped out from kernel logging without
> his
> > patch and with his patch it becomes a fastset as expected.
> > Let us know if there is any other feedback to improve the design for
> > enabling seamless boot?
>
> I think it would be better to file an issue at fdo gitlab and attach the
> full logs with debugs as described at [1]. The short snippets don't
> really give a good picture of what's going on.
>
> The initial commit should be about 1) reading out the hw state to sw
> state, 2) some sanitization steps where there might be discrepancies
> between read out state and what would be the computed state, 3) ensuring
> everything matches in the initial commit so fastset is possible.
>
> In the below log snippet, everything's being turned off. That's not just
> about some individual values differing and requiring a full
> modeset. It's hard to say what's going on. But simply copying the state
> over is not the way to go.
>

Thanks Jani for your feedback.
@Jani Nikula <jani.nikula@intel.com>  so ideally the expectation would be
that if the FW is initializing the HW to a state, then we should do a
readout
and save that into pipe_config and that should have the values set by the
FW and now next would be to make sure that
the new_crtc_state matches those values ensuring fastset, is that the
correct understanding?
We are possibly missing that HW state readout, since FW programs the HW,
the pipe_config is still all 0s unless
we add the HW state readout and set pipe_config to that?

@Jausheem, we need to understand why everything is turned off on the HW
because of which during the readout,
where the pipe_config_compare throws a mismatch we see that in the
pipe_config (Found values) are all 0.
If we expect that the fimware has programmed the HW to some initial value,
which it should have then
the HW state read out or the found values should not be all 0s.
Could we double check that hw state read out has the values that FW has set
it to,
without your patch and making sure DRM HWC is not clearing out all the
crtcs/connectors
on the initial modeset (so reverting that clean up patch).

As per Jani's suggestion if that is not the case, we can file a bug against
the kernel at FDO and have them triage this.

Regards
Manasi

>
>
> BR,
> Jani.
>
>
>
> [1]
> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>
> >
> > Regards
> > Manasi
> >
> > On Tue, Jan 27, 2026 at 12:05=E2=80=AFAM Juasheem Sultan <jdsultan@goog=
le.com>
> > wrote:
> >
> >> > I'd like to see logs of what the differences are.
> >>
> >> Here's the logs from the pipe_config_compare without my patch:
> >> <6>[   43.743023] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.enable (expected yes, found no)
> >> <6>[   43.763730] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.active (expected yes, found no)
> >> <6>[   43.789093] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in cpu_transcoder (expected 0, found -1)
> >> <6>[   43.814759] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met ihw.enablen lane_count (expected 2, found 0)
> >> <6>[   43.835751] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in dp_m_n (expected tu 64 data 8007832/8388608 lin=
k
> >> 333659/524288, found tu 0, data 0/0 link 0/0)
> >> <6>[   43.835753] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in output_types (expected 0x00000100, found
> 0x00000000)
> >> <6>[   43.835754] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in framestart_delay (expected 1, found 0)
> >> <6>[   43.856743] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_hdisplay (expected 1920, foun=
d
> 0)
> >> <6>[   43.888602] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_htotal (expected 2080, found =
0)
> >> <6>[   43.888603] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_hblank_start (expected 1920,
> found
> >> 0)
> >> <6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_hblank_end (expected 2080,
> found 0)
> >> <6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_hsync_start (expected 1966,
> found
> >> 0)
> >> <6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_hsync_end (expected 1996,
> found 0)
> >> <6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_vdisplay (expected 1200, foun=
d
> 0)
> >> <6>[   43.888606] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_vsync_start (expected 1210,
> found
> >> 0)
> >> <6>[   43.888607] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_vsync_end (expected 1216,
> found 0)
> >> <6>[   43.911732] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_vtotal (expected 1236, found =
0)
> >> <6>[   43.911733] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_vblank_end (expected 1236,
> found 0)
> >> <6>[   43.932520] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_hdisplay (expected 1920,
> found
> >> 0)
> >> <6>[   43.960305] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_htotal (expected 2080,
> found 0)
> >> <6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_hblank_start (expected
> 1920,
> >> found 0)
> >> <6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_hblank_end (expected 2080=
,
> >> found 0)
> >> <6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_hsync_start (expected 196=
6,
> >> found 0)
> >> <6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_hsync_end (expected 1996,
> >> found 0)
> >> <6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_vdisplay (expected 1200,
> found
> >> 0)
> >> <6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_vsync_start (expected 121=
0,
> >> found 0)
> >> <6>[   43.960309] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_vsync_end (expected 1216,
> >> found 0)
> >> <6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_vtotal (expected 1236,
> found 0)
> >> <6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_vblank_end (expected 1236=
,
> >> found 0)
> >> <6>[   43.988392] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in pixel_multiplier (expected 1, found 0)
> >> <6>[   43.988393] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.flags (2) (expected 2, found 0=
)
> >> <6>[   44.016086] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.flags (8) (expected 8, found 0=
)
> >> <6>[   44.016087] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in enhanced_framing (expected yes, found no)
> >> <6>[   44.016088] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in pipe_bpp (expected 24, found 0)
> >> <6>[   44.044074] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.pipe_mode.crtc_clock (expected 154647, found
> 0)
> >> <6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in hw.adjusted_mode.crtc_clock (expected 154647,
> found
> >> 0)
> >> <6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in port_clock (expected 243000, found 0)
> >> <6>[   44.044077] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met in vrr.guardband (expected 35, found 0)
> >> <6>[   44.065890] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
> >> requirement not met, forcing full modeset
> >>
> >> On Thu, Jan 22, 2026 at 7:29=E2=80=AFAM Jani Nikula <
> jani.nikula@linux.intel.com>
> >> wrote:
> >>
> >>> On Wed, 21 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
> >>> > When attempting the initial commit, there is a mismatch between
> >>> > the new crtc_state and the old crtc_state. This causes us to fail t=
he
> >>> > pipe_config comparison and force a modeset. In the case where we ar=
e
> >>> > inheriting an initialized state, we can sync the new and the old
> state
> >>> > to pass the comparison and allow us to do a fastset and achieve an
> >>> > uninterrupted handoff to userspace.
> >>> >
> >>> > Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> >>> > ---
> >>> >  drivers/gpu/drm/i915/display/intel_display.c | 19
> +++++++++++++++++++
> >>> >  1 file changed, 19 insertions(+)
> >>> >
> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >>> b/drivers/gpu/drm/i915/display/intel_display.c
> >>> > index 0d527cf22866..6eef4bd2e251 100644
> >>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>> > @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const
> >>> struct intel_crtc_state *old_crtc_sta
> >>> >       if (old_crtc_state->vrr.in_range !=3D
> new_crtc_state->vrr.in_range)
> >>> >               new_crtc_state->update_lrr =3D false;
> >>> >
> >>> > +     /* Copying crtc state if inheriting an old state for commit *=
/
> >>> > +     if (old_crtc_state->inherited) {
> >>> > +             new_crtc_state->hw =3D old_crtc_state->hw;
> >>> > +
> >>> > +             new_crtc_state->port_clock =3D
> old_crtc_state->port_clock;
> >>> > +             new_crtc_state->pipe_bpp =3D old_crtc_state->pipe_bpp=
;
> >>> > +             new_crtc_state->cpu_transcoder =3D
> >>> old_crtc_state->cpu_transcoder;
> >>> > +             new_crtc_state->lane_count =3D
> old_crtc_state->lane_count;
> >>> > +             new_crtc_state->output_types =3D
> >>> old_crtc_state->output_types;
> >>> > +             new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> >>> > +             new_crtc_state->framestart_delay =3D
> >>> old_crtc_state->framestart_delay;
> >>> > +             new_crtc_state->pixel_multiplier =3D
> >>> old_crtc_state->pixel_multiplier;
> >>> > +             new_crtc_state->pixel_rate =3D
> old_crtc_state->pixel_rate;
> >>> > +             new_crtc_state->enhanced_framing =3D
> >>> old_crtc_state->enhanced_framing;
> >>> > +             new_crtc_state->dpll_hw_state =3D
> >>> old_crtc_state->dpll_hw_state;
> >>> > +             new_crtc_state->intel_dpll =3D
> old_crtc_state->intel_dpll;
> >>> > +             new_crtc_state->vrr.guardband =3D
> >>> old_crtc_state->vrr.guardband;
> >>>
> >>> I'd like to see logs of what the differences are.
> >>>
> >>> BR,
> >>> Jani.
> >>>
> >>> > +     }
> >>> > +
> >>> >       if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state=
,
> >>> true)) {
> >>> >               drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset
> >>> requirement not met, forcing full modeset\n",
> >>> >                           crtc->base.base.id, crtc->base.name);
> >>>
> >>> --
> >>> Jani Nikula, Intel
> >>>
> >>
>
> --
> Jani Nikula, Intel
>

--000000000000da46260649f1c664
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 3, =
2026 at 11:47=E2=80=AFAM Jani Nikula &lt;<a href=3D"mailto:jani.nikula@inte=
l.com">jani.nikula@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Tue, 03 Feb 2026, Manasi Navare &lt;<a href=
=3D"mailto:navaremanasi@google.com" target=3D"_blank">navaremanasi@google.c=
om</a>&gt; wrote:<br>
&gt; Thanks Jausheem for the pipe mismatch logs without your patch. And so =
with<br>
&gt; your patch now since you set new_crtc_state to old_crtc_state, this go=
es<br>
&gt; away and it meets the fastset right?<br>
&gt;<br>
&gt; @Jani Nikula &lt;<a href=3D"mailto:jani.nikula@intel.com" target=3D"_b=
lank">jani.nikula@intel.com</a>&gt; : Did you want to take a look at any<br=
>
&gt; other logs? The above logs are stripped out from kernel logging withou=
t his<br>
&gt; patch and with his patch it becomes a fastset as expected.<br>
&gt; Let us know if there is any other feedback to improve the design for<b=
r>
&gt; enabling seamless boot?<br>
<br>
I think it would be better to file an issue at fdo gitlab and attach the<br=
>
full logs with debugs as described at [1]. The short snippets don&#39;t<br>
really give a good picture of what&#39;s going on.<br>
<br>
The initial commit should be about 1) reading out the hw state to sw<br>
state, 2) some sanitization steps where there might be discrepancies<br>
between read out state and what would be the computed state, 3) ensuring<br=
>
everything matches in the initial commit so fastset is possible.<br>
<br>
In the below log snippet, everything&#39;s being turned off. That&#39;s not=
 just<br>
about some individual values differing and requiring a full<br>
modeset. It&#39;s hard to say what&#39;s going on. But simply copying the s=
tate<br>
over is not the way to go.<br></blockquote><div><br></div><div>Thanks Jani =
for your feedback.</div><div><a class=3D"gmail_plusreply" id=3D"plusReplyCh=
ip-1" href=3D"mailto:jani.nikula@intel.com" tabindex=3D"-1">@Jani Nikula</a=
>=C2=A0 so ideally the expectation would be that if the FW is initializing =
the HW to a state, then we should do a readout</div><div>and save that into=
 pipe_config and that should have the values set by the FW and now next wou=
ld be to make sure that</div><div>the new_crtc_state matches those values e=
nsuring fastset, is that the correct understanding?</div><div>We are possib=
ly missing that HW state readout, since FW programs the HW, the pipe_config=
 is still all 0s unless</div><div>we add the HW state readout and set pipe_=
config to that?</div><div><br></div><div>@Jausheem, we need to understand w=
hy everything is turned off on the HW because of which during the readout,<=
/div><div>where the pipe_config_compare throws a mismatch we see that in th=
e pipe_config (Found values) are all 0.=C2=A0</div><div>If we expect that t=
he fimware has programmed the HW to some initial value, which it should hav=
e then</div><div>the HW state read out or the found values should not be al=
l 0s.</div><div>Could we double check that hw state read out has the values=
 that FW has set it to,</div><div>without your patch and making sure DRM HW=
C is not clearing out all the crtcs/connectors=C2=A0</div><div>on the initi=
al modeset (so reverting that clean up patch).</div><div><br></div><div>As =
per Jani&#39;s suggestion if that is not the case, we can file a bug agains=
t the kernel at FDO and have them triage this.</div><div><br></div><div>Reg=
ards</div><div>Manasi</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
<br>
[1] <a href=3D"https://drm.pages.freedesktop.org/intel-docs/how-to-file-i91=
5-bugs.html" rel=3D"noreferrer" target=3D"_blank">https://drm.pages.freedes=
ktop.org/intel-docs/how-to-file-i915-bugs.html</a><br>
<br>
&gt;<br>
&gt; Regards<br>
&gt; Manasi<br>
&gt;<br>
&gt; On Tue, Jan 27, 2026 at 12:05=E2=80=AFAM Juasheem Sultan &lt;<a href=
=3D"mailto:jdsultan@google.com" target=3D"_blank">jdsultan@google.com</a>&g=
t;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; &gt; I&#39;d like to see logs of what the differences are.<br>
&gt;&gt;<br>
&gt;&gt; Here&#39;s the logs from the pipe_config_compare without my patch:=
<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.743023] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.enable (expected yes, found no)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.763730] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.active (expected yes, found no)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.789093] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in cpu_transcoder (expected 0, found -1)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.814759] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met ihw.enablen lane_count (expected 2, found 0)<b=
r>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.835751] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in dp_m_n (expected tu 64 data 8007832/8388608=
 link<br>
&gt;&gt; 333659/524288, found tu 0, data 0/0 link 0/0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.835753] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in output_types (expected 0x00000100, found 0x=
00000000)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.835754] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in framestart_delay (expected 1, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.856743] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_hdisplay (expected 1920, =
found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888602] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_htotal (expected 2080, fo=
und 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888603] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_hblank_start (expected 19=
20, found<br>
&gt;&gt; 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888604] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_hblank_end (expected 2080=
, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888604] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_hsync_start (expected 196=
6, found<br>
&gt;&gt; 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888605] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_hsync_end (expected 1996,=
 found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888605] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_vdisplay (expected 1200, =
found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888606] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_vsync_start (expected 121=
0, found<br>
&gt;&gt; 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.888607] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_vsync_end (expected 1216,=
 found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.911732] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_vtotal (expected 1236, fo=
und 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.911733] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_vblank_end (expected 1236=
, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.932520] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_hdisplay (expected 19=
20, found<br>
&gt;&gt; 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960305] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_htotal (expected 2080=
, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960306] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_hblank_start (expecte=
d 1920,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960306] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_hblank_end (expected =
2080,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960307] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_hsync_start (expected=
 1966,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960307] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_hsync_end (expected 1=
996,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960308] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_vdisplay (expected 12=
00, found<br>
&gt;&gt; 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960308] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_vsync_start (expected=
 1210,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960309] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_vsync_end (expected 1=
216,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960310] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_vtotal (expected 1236=
, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.960310] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_vblank_end (expected =
1236,<br>
&gt;&gt; found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.988392] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in pixel_multiplier (expected 1, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A043.988393] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.flags (2) (expected 2, fou=
nd 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.016086] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.flags (8) (expected 8, fou=
nd 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.016087] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in enhanced_framing (expected yes, found no)<b=
r>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.016088] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in pipe_bpp (expected 24, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.044074] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.pipe_mode.crtc_clock (expected 154647, f=
ound 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.044075] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in hw.adjusted_mode.crtc_clock (expected 15464=
7, found<br>
&gt;&gt; 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.044075] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in port_clock (expected 243000, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.044077] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met in vrr.guardband (expected 35, found 0)<br>
&gt;&gt; &lt;6&gt;[=C2=A0 =C2=A044.065890] xe 0000:00:02.0: [drm] [CRTC:88:=
pipe A] fastset<br>
&gt;&gt; requirement not met, forcing full modeset<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Jan 22, 2026 at 7:29=E2=80=AFAM Jani Nikula &lt;<a href=3D=
"mailto:jani.nikula@linux.intel.com" target=3D"_blank">jani.nikula@linux.in=
tel.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Wed, 21 Jan 2026, Juasheem Sultan &lt;<a href=3D"mailto:jds=
ultan@google.com" target=3D"_blank">jdsultan@google.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; When attempting the initial commit, there is a mismatch b=
etween<br>
&gt;&gt;&gt; &gt; the new crtc_state and the old crtc_state. This causes us=
 to fail the<br>
&gt;&gt;&gt; &gt; pipe_config comparison and force a modeset. In the case w=
here we are<br>
&gt;&gt;&gt; &gt; inheriting an initialized state, we can sync the new and =
the old state<br>
&gt;&gt;&gt; &gt; to pass the comparison and allow us to do a fastset and a=
chieve an<br>
&gt;&gt;&gt; &gt; uninterrupted handoff to userspace.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Signed-off-by: Juasheem Sultan &lt;<a href=3D"mailto:jdsu=
ltan@google.com" target=3D"_blank">jdsultan@google.com</a>&gt;<br>
&gt;&gt;&gt; &gt; ---<br>
&gt;&gt;&gt; &gt;=C2=A0 drivers/gpu/drm/i915/display/intel_display.c | 19 +=
++++++++++++++++++<br>
&gt;&gt;&gt; &gt;=C2=A0 1 file changed, 19 insertions(+)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_display.c=
<br>
&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt;&gt;&gt; &gt; index 0d527cf22866..6eef4bd2e251 100644<br>
&gt;&gt;&gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt;&gt;&gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt;&gt;&gt; &gt; @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fasts=
et(const<br>
&gt;&gt;&gt; struct intel_crtc_state *old_crtc_sta<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (old_crtc_state-&gt;vrr.in_r=
ange !=3D new_crtc_state-&gt;vrr.in_range)<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new=
_crtc_state-&gt;update_lrr =3D false;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0/* Copying crtc state if inheriting =
an old state for commit */<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (old_crtc_state-&gt;inherited) {<=
br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;hw =3D old_crtc_state-&gt;hw;<br>
&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;port_clock =3D old_crtc_state-&gt;port_clock;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;pipe_bpp =3D old_crtc_state-&gt;pipe_bpp;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;cpu_transcoder =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;cpu_transcoder;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;lane_count =3D old_crtc_state-&gt;lane_count;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;output_types =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;output_types;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;dp_m_n =3D old_crtc_state-&gt;dp_m_n;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;framestart_delay =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;framestart_delay;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;pixel_multiplier =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;pixel_multiplier;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;pixel_rate =3D old_crtc_state-&gt;pixel_rate;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;enhanced_framing =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;enhanced_framing;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;dpll_hw_state =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;dpll_hw_state;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;intel_dpll =3D old_crtc_state-&gt;intel_dpll;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc=
_state-&gt;vrr.guardband =3D<br>
&gt;&gt;&gt; old_crtc_state-&gt;vrr.guardband;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;d like to see logs of what the differences are.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; BR,<br>
&gt;&gt;&gt; Jani.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!intel_pipe_config_compare(=
old_crtc_state, new_crtc_state,<br>
&gt;&gt;&gt; true)) {<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drm=
_dbg_kms(display-&gt;drm, &quot;[CRTC:%d:%s] fastset<br>
&gt;&gt;&gt; requirement not met, forcing full modeset\n&quot;,<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0crtc-&gt;<a href=3D"http://base.ba=
se.id" rel=3D"noreferrer" target=3D"_blank">base.base.id</a>, crtc-&gt;<a h=
ref=3D"http://base.name" rel=3D"noreferrer" target=3D"_blank">base.name</a>=
);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Jani Nikula, Intel<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div></div>

--000000000000da46260649f1c664--
