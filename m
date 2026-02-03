Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C0VANZQgmn9SAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 20:47:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5041DDE42D
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 20:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4CA10E05F;
	Tue,  3 Feb 2026 19:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aEPbmw8Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7579410E05F;
 Tue,  3 Feb 2026 19:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770148050; x=1801684050;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=MpDgfjhS611hG7xgGlI3ucgJWJDNCYn++LfLxPc+hEU=;
 b=aEPbmw8QwWYbdOvFz0M1QK/U1GvTnN4Iu6XOhy71NEsjF88dGPWOWIJs
 BgwA4ahW3x7Wxu0PkEGRo9r4S9QZ6K2mQ0j4/AiRGbytMaCnOM1SiC6Gk
 Fgni7jTWutpssAAqRtHUM9wHQqr7/xYzWynM5ktPDxzMVxVcjN65kWNq7
 6bLR72UMNrUEuW+GH0AP38oPAigbB7JJaw85ZlunWVwopakKeB0fwulVG
 QXlAgUh8jKX2GkJyBnMHlMTbCNUYH/EYYQP7cyDAjJTyixOQu/aXcxDxi
 L914P7JJIsV5TI34q3Hf0Uwnc8GLDtGkaeoCoa4qlpqp5TbY/PcJ9J1BQ Q==;
X-CSE-ConnectionGUID: RlxKQqytRK+nmobtgRBbug==
X-CSE-MsgGUID: 9YU0bnZ8R/KAUIHAgpOlFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="81643195"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="81643195"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 11:47:30 -0800
X-CSE-ConnectionGUID: J0ouP9JWQc6Md1au0MALyA==
X-CSE-MsgGUID: iRzPeVDaTYqNchPlSXvtKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="214102513"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 11:47:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <navaremanasi@google.com>, Juasheem Sultan
 <jdsultan@google.com>
Cc: intel-gfx@lists.freedesktop.org, intel_xe@lists.freedesktop.org, Rodrigo
 Vivi <rodrigo.vivi@intel.com>, Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>, Rajat
 Jain <rajatja@google.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
In-Reply-To: <CAMNLLoR6dVmYvGn66jsNobLgJzsck2rZ=LghA7zuaA-aKCn1BQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
 <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
 <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
 <CAMNLLoR6dVmYvGn66jsNobLgJzsck2rZ=LghA7zuaA-aKCn1BQ@mail.gmail.com>
Date: Tue, 03 Feb 2026 21:47:24 +0200
Message-ID: <f8096b857e6c0a24f32c1eb6479d95b0dbb4adad@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,pages.freedesktop.org:url]
X-Rspamd-Queue-Id: 5041DDE42D
X-Rspamd-Action: no action

On Tue, 03 Feb 2026, Manasi Navare <navaremanasi@google.com> wrote:
> Thanks Jausheem for the pipe mismatch logs without your patch. And so with
> your patch now since you set new_crtc_state to old_crtc_state, this goes
> away and it meets the fastset right?
>
> @Jani Nikula <jani.nikula@intel.com> : Did you want to take a look at any
> other logs? The above logs are stripped out from kernel logging without h=
is
> patch and with his patch it becomes a fastset as expected.
> Let us know if there is any other feedback to improve the design for
> enabling seamless boot?

I think it would be better to file an issue at fdo gitlab and attach the
full logs with debugs as described at [1]. The short snippets don't
really give a good picture of what's going on.

The initial commit should be about 1) reading out the hw state to sw
state, 2) some sanitization steps where there might be discrepancies
between read out state and what would be the computed state, 3) ensuring
everything matches in the initial commit so fastset is possible.

In the below log snippet, everything's being turned off. That's not just
about some individual values differing and requiring a full
modeset. It's hard to say what's going on. But simply copying the state
over is not the way to go.


BR,
Jani.



[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

>
> Regards
> Manasi
>
> On Tue, Jan 27, 2026 at 12:05=E2=80=AFAM Juasheem Sultan <jdsultan@google=
.com>
> wrote:
>
>> > I'd like to see logs of what the differences are.
>>
>> Here's the logs from the pipe_config_compare without my patch:
>> <6>[   43.743023] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.enable (expected yes, found no)
>> <6>[   43.763730] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.active (expected yes, found no)
>> <6>[   43.789093] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in cpu_transcoder (expected 0, found -1)
>> <6>[   43.814759] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met ihw.enablen lane_count (expected 2, found 0)
>> <6>[   43.835751] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in dp_m_n (expected tu 64 data 8007832/8388608 link
>> 333659/524288, found tu 0, data 0/0 link 0/0)
>> <6>[   43.835753] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in output_types (expected 0x00000100, found 0x000000=
00)
>> <6>[   43.835754] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in framestart_delay (expected 1, found 0)
>> <6>[   43.856743] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_hdisplay (expected 1920, found =
0)
>> <6>[   43.888602] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_htotal (expected 2080, found 0)
>> <6>[   43.888603] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_hblank_start (expected 1920, fo=
und
>> 0)
>> <6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_hblank_end (expected 2080, foun=
d 0)
>> <6>[   43.888604] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_hsync_start (expected 1966, fou=
nd
>> 0)
>> <6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_hsync_end (expected 1996, found=
 0)
>> <6>[   43.888605] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_vdisplay (expected 1200, found =
0)
>> <6>[   43.888606] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_vsync_start (expected 1210, fou=
nd
>> 0)
>> <6>[   43.888607] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_vsync_end (expected 1216, found=
 0)
>> <6>[   43.911732] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_vtotal (expected 1236, found 0)
>> <6>[   43.911733] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_vblank_end (expected 1236, foun=
d 0)
>> <6>[   43.932520] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_hdisplay (expected 1920, fo=
und
>> 0)
>> <6>[   43.960305] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_htotal (expected 2080, foun=
d 0)
>> <6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_hblank_start (expected 1920,
>> found 0)
>> <6>[   43.960306] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_hblank_end (expected 2080,
>> found 0)
>> <6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_hsync_start (expected 1966,
>> found 0)
>> <6>[   43.960307] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_hsync_end (expected 1996,
>> found 0)
>> <6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_vdisplay (expected 1200, fo=
und
>> 0)
>> <6>[   43.960308] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_vsync_start (expected 1210,
>> found 0)
>> <6>[   43.960309] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_vsync_end (expected 1216,
>> found 0)
>> <6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_vtotal (expected 1236, foun=
d 0)
>> <6>[   43.960310] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_vblank_end (expected 1236,
>> found 0)
>> <6>[   43.988392] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in pixel_multiplier (expected 1, found 0)
>> <6>[   43.988393] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.flags (2) (expected 2, found 0)
>> <6>[   44.016086] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.flags (8) (expected 8, found 0)
>> <6>[   44.016087] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in enhanced_framing (expected yes, found no)
>> <6>[   44.016088] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in pipe_bpp (expected 24, found 0)
>> <6>[   44.044074] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.pipe_mode.crtc_clock (expected 154647, found 0)
>> <6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in hw.adjusted_mode.crtc_clock (expected 154647, fou=
nd
>> 0)
>> <6>[   44.044075] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in port_clock (expected 243000, found 0)
>> <6>[   44.044077] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met in vrr.guardband (expected 35, found 0)
>> <6>[   44.065890] xe 0000:00:02.0: [drm] [CRTC:88:pipe A] fastset
>> requirement not met, forcing full modeset
>>
>> On Thu, Jan 22, 2026 at 7:29=E2=80=AFAM Jani Nikula <jani.nikula@linux.i=
ntel.com>
>> wrote:
>>
>>> On Wed, 21 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
>>> > When attempting the initial commit, there is a mismatch between
>>> > the new crtc_state and the old crtc_state. This causes us to fail the
>>> > pipe_config comparison and force a modeset. In the case where we are
>>> > inheriting an initialized state, we can sync the new and the old state
>>> > to pass the comparison and allow us to do a fastset and achieve an
>>> > uninterrupted handoff to userspace.
>>> >
>>> > Signed-off-by: Juasheem Sultan <jdsultan@google.com>
>>> > ---
>>> >  drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
>>> >  1 file changed, 19 insertions(+)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> > index 0d527cf22866..6eef4bd2e251 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> > @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const
>>> struct intel_crtc_state *old_crtc_sta
>>> >       if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.in_ra=
nge)
>>> >               new_crtc_state->update_lrr =3D false;
>>> >
>>> > +     /* Copying crtc state if inheriting an old state for commit */
>>> > +     if (old_crtc_state->inherited) {
>>> > +             new_crtc_state->hw =3D old_crtc_state->hw;
>>> > +
>>> > +             new_crtc_state->port_clock =3D old_crtc_state->port_clo=
ck;
>>> > +             new_crtc_state->pipe_bpp =3D old_crtc_state->pipe_bpp;
>>> > +             new_crtc_state->cpu_transcoder =3D
>>> old_crtc_state->cpu_transcoder;
>>> > +             new_crtc_state->lane_count =3D old_crtc_state->lane_cou=
nt;
>>> > +             new_crtc_state->output_types =3D
>>> old_crtc_state->output_types;
>>> > +             new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
>>> > +             new_crtc_state->framestart_delay =3D
>>> old_crtc_state->framestart_delay;
>>> > +             new_crtc_state->pixel_multiplier =3D
>>> old_crtc_state->pixel_multiplier;
>>> > +             new_crtc_state->pixel_rate =3D old_crtc_state->pixel_ra=
te;
>>> > +             new_crtc_state->enhanced_framing =3D
>>> old_crtc_state->enhanced_framing;
>>> > +             new_crtc_state->dpll_hw_state =3D
>>> old_crtc_state->dpll_hw_state;
>>> > +             new_crtc_state->intel_dpll =3D old_crtc_state->intel_dp=
ll;
>>> > +             new_crtc_state->vrr.guardband =3D
>>> old_crtc_state->vrr.guardband;
>>>
>>> I'd like to see logs of what the differences are.
>>>
>>> BR,
>>> Jani.
>>>
>>> > +     }
>>> > +
>>> >       if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state,
>>> true)) {
>>> >               drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset
>>> requirement not met, forcing full modeset\n",
>>> >                           crtc->base.base.id, crtc->base.name);
>>>
>>> --
>>> Jani Nikula, Intel
>>>
>>

--=20
Jani Nikula, Intel
