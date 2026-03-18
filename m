Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHKTAHFkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C322F7775
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3759A10E537;
	Mon, 23 Mar 2026 16:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I0mA7yLA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com
 [209.85.160.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C6610E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 08:47:13 +0000 (UTC)
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-415b23dd6e5so2243719fac.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 01:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773823633; cv=none;
 d=google.com; s=arc-20240605;
 b=JYAyOBBsEXloIZ/eVG7xfwJzM1vIDTZBfANAIa26SRhEE5Lowg7MKemyikutE1+NLg
 u7olSGp5xkxn6tXjIxM7euS+Ktik96cMEefMm7lEKw5wloP+uCFDcYlaFlV3Jwrc9x0X
 Yp008JTWBNHS+849AYaupMT7+nLJ5o6vJDzXGzWRzwd7M9fvp2M4gFjegMDy2KhkfBcs
 CujCCe9X3hvKgGtay4kQsBziFBjnbBdQxhmeYcad3M7B/5tuSuD3Hbot4X00g7s6c8En
 Zr5wRcEc4rqrooHZ/IBcaH4N3tP+W+IyaPDZhvlVhg9Ljzmlhou7KS7fYRP9vAzcpg69
 ZbDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=83jPdky0qKJSRYzsoaPc+e5EHJzCiyWfR0yebjpaYT4=;
 fh=o5ZAjQ4Pi5eSocQNbP3f+JCn6OeGZgDw751Y2o2iktQ=;
 b=IZHUi1k0re7O9V+Llx+PyBz2VClmjCAxQv7v5f4ZZNGoFVyYQ4vhjZl+5CzYQAs5ig
 /x7nH/mGeh39C1ZEBzhmX7m+mFnB2BRJ32yAg1kjAdzPQNedF8xrGkhs1172luPL5p8C
 IyE8VuJVwvOnbYofIz1dsATtMQNDXZwyc8DVMKlVc8s6bW4JQYL5vVypnUK+fiTDqqGm
 kLJUlczDgdY20NRtNZtsC4HPBW1rYwJarrNpSopMh2zm3d92k49VRO1YfmyEoK3nVSK/
 xMhRN6yK9JlTXadtkcnxYmt/mjE0XfCBEjKVgOYJRYyWNnpJoHP7pfUGd+jg3ayd2uAc
 Jp9w==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773823633; x=1774428433; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=83jPdky0qKJSRYzsoaPc+e5EHJzCiyWfR0yebjpaYT4=;
 b=I0mA7yLA3KBwkAvsqMFVbMDHUQ7b4fRlSN/82xbjecPUG3WzdO5X4+cUC3wYEG1hx2
 jopygxH8EnOVP7LM7Z6ZAtaW+XH3DGLqhmxjBRPaoIidYSk+d1zXoyJl7QR+knY7f0ry
 +2Y2lEp2j+6jXuteWvznJb5h+p3QAslzsOkXitGnA1bZy/iZ2k2XnmB1E5FCldY6oiBh
 pvjkd7FBncX0qhsEihH1ukYzzy1/WC8rlTIb8s6kvQKFb00yf5qKhf12Y+ENtti4WFZs
 jMFevygx2yAaPa5VcDMid9zu4CukEUUI9t14S0Of19uAe+utS15jkeMQq+xmDxqPeYLm
 g5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773823633; x=1774428433;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=83jPdky0qKJSRYzsoaPc+e5EHJzCiyWfR0yebjpaYT4=;
 b=JEPEnhJ1BAMpmfLcWDOX67XMq54urjyHqm24S7gniL9hUnp4E+qOnYHuijptzZF355
 LeGrFk5jEAlK/lbgisrzCS/zD2RihjmueITssyS+7QoLmnyo6Q+IUNjU1MhjP9HJi5cE
 2VOORTdnL5xahsL1WlqdwVVpjtMRM7xYZ8FSDCP5OehShRw9Oq7iDYxv2jAGzwESdbSf
 aD0dLuu1qQ+M+MzLk8r3WGeUSLjvzX3d0ep6umdqOmt8NIDm4QiASFFCD/m2kzxCnh9Z
 WcUeOquv4qM43oTuqg4SQt77u9SJPJrAlCeqEqD5w2rV+Ywe3RGJggExSmEE5O2p+pJu
 oRIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUwhaJyv2T7wpyUObaQoxZ82ZZQ4Zh/CGSXarHMLby70frtPTM/kR6Qur105Jap1B70ZltgNmEm+9k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyEr0QCxCtrGygNPYaBxZjgyQMEEMBhgHybNCqGvBwbJW3yKVQH
 cbIGXpvgFeblklTGB8U5gjTwzANHv5ZC+nH2y/yZqq9UrjahX13OcSTyVBytpyvdq9UXjyEo/pj
 dkaXznhPwb7cs2r8nBUidDeSvwC5gSmY=
X-Gm-Gg: ATEYQzw6jTkj5Q/rzU1yzF76Xf/yNOkA+2yZCoPMj3QFn8agKuUyVsfy250cFP1KSTm
 Yit0LT+jg/FZbkbb6u0ezqT0HU6J8iEE5uq+gkJthlD+qWS5gOtvALffkORL4mUmHZlFK9MRRt8
 cCCqBM6kTvfs8tCxQDbnXcBmQzAwprJzu9aAkzsW3eG3r7zZHAp9ALkvP1cViXtL6y6jUsMOR/X
 1Cre+5NHOFFat4GhZ+qnUBomjTCKScg87MwNXW+vYNZMOhrFnAIOhXAgn3AmvDUnpOpkvriIBir
 OV83sIKydv8DhQNQVZbQ98VxTVUEbz23qELXSDxCPFXaN5VDYbhmJD4U1OWQBOWgyqgS+d+IX8w
 =
X-Received: by 2002:a05:6871:286:b0:417:64ba:82cc with SMTP id
 586e51a60fabf-41bd421a82cmr1862712fac.43.1773823632659; Wed, 18 Mar 2026
 01:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260317185920.43387-1-hanguidong02@gmail.com>
 <20260317191538.43535-1-hanguidong02@gmail.com>
 <c14b399c9c6bf96f8c7d33615561b0d787ff175b@intel.com>
 <CALbr=LadoX8g--rtU==HQfNQ9f1=KP=7AS-PGfooKaSbnYPz+Q@mail.gmail.com>
 <8ac4b6ef2dfbc1dce0047dee55f2df609287a3ec@intel.com>
In-Reply-To: <8ac4b6ef2dfbc1dce0047dee55f2df609287a3ec@intel.com>
From: Gui-Dong Han <hanguidong02@gmail.com>
Date: Wed, 18 Mar 2026 16:47:00 +0800
X-Gm-Features: AaiRm51Yf9dm9cacIuRM_2DJNr3deiXg0cux6KcppyZN1nJwEpt6FR9vmcrqdC8
Message-ID: <CALbr=LboxkVoFrRmZoq7LN=LTL+-ZgoUiTi6utSDEw7M_qX8bA@mail.gmail.com>
Subject: Re: [PATCH 4/4] drm/i915/display: initialize string params to empty
 strings
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: gregkh@linuxfoundation.org, dakr@kernel.org, rafael@kernel.org, 
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, 
 airlied@gmail.com, simona@ffwll.ch, gustavo.sousa@intel.com, 
 demarchi@kernel.org, jouni.hogander@intel.com, luciano.coelho@intel.com, 
 linux-kernel@vger.kernel.org, driver-core@lists.linux.dev, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-sound@vger.kernel.org, 
 akaieurus@gmail.com, me@ziyao.cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:23 +0000
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
	DATE_IN_PAST(1.00)[127];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:rafael@kernel.org,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:gustavo.sousa@intel.com,m:demarchi@kernel.org,m:jouni.hogander@intel.com,m:luciano.coelho@intel.com,m:linux-kernel@vger.kernel.org,m:driver-core@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-sound@vger.kernel.org,m:akaieurus@gmail.com,m:me@ziyao.cc,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,ziyao.cc];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 88C322F7775
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 4:32=E2=80=AFPM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>
> On Wed, 18 Mar 2026, Gui-Dong Han <hanguidong02@gmail.com> wrote:
> > On Wed, Mar 18, 2026 at 4:12=E2=80=AFAM Jani Nikula <jani.nikula@linux.=
intel.com> wrote:
> >>
> >> On Wed, 18 Mar 2026, Gui-Dong Han <hanguidong02@gmail.com> wrote:
> >> > Passing NULL to debugfs_create_str() causes a NULL pointer dereferen=
ce
> >> > upon reading, and is no longer permitted. Change the default values =
of
> >> > dmc_firmware_path and vbt_firmware to empty strings ("").
> >> >
> >> > Existing code that consumes these parameters already verifies both
> >> > pointer validity and string length, so empty strings are handled
> >> > correctly. Furthermore, heap allocation is not required here: these
> >> > debugfs parameters are created with strictly read-only permissions
> >> > (0400). As a result, the debugfs write operation is never invoked,
> >> > meaning the static empty string will not be erroneously freed by
> >> > kfree().
> >> >
> >> > Fixes: e9913f0bd2e1 ("drm/i915/display: move dmc_firmware_path to di=
splay params")
> >> > Fixes: 29292bc6cc37 ("drm/i915/display: Move vbt_firmware module par=
ameter under display")
> >> > Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_display_params.h | 4 ++--
> >> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/d=
rivers/gpu/drm/i915/display/intel_display_params.h
> >> > index b95ecf728daa..0a8cad98d480 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> >> > @@ -23,8 +23,8 @@ struct drm_printer;
> >> >   *       debugfs file
> >> >   */
> >> >  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
> >> > -     param(char *, dmc_firmware_path, NULL, 0400) \
> >> > -     param(char *, vbt_firmware, NULL, 0400) \
> >> > +     param(char *, dmc_firmware_path, "", 0400) \
> >> > +     param(char *, vbt_firmware, "", 0400) \
> >>
> >> Admittedly this is all very convoluted, but these NULL pointers (or
> >> pointers to them) are never passed to debugfs_create_str().
> >
> > Hi Jani,
> >
> > Thanks for your review.
> >
> > Could you elaborate on why they are never passed? Looking at
> > intel_display_debugfs_params.c, the intel_display_debugfs_params()
> > function iterates over INTEL_DISPLAY_PARAMS_FOR_EACH using the
> > REGISTER macro. This eventually calls
> > _intel_display_param_create_file(), which uses _Generic to dispatch
> > char ** types to debugfs_create_str().
>
> In _intel_display_param_create_file(), valp is &display->params.x, where
> x is dmc_firmware_path or vbt_firmware.
>
> display->params gets initialized using intel_display_params_copy() when
> struct intel_display is allocated in intel_display_device_probe(). In
> intel_display_params_copy(), _param_dup_charp() handles the NULL
> initializer.
>
> Granted, if the kstrdup() fails, you could end up having NULL there, but
> at that point it's fine if your debugfs_create_str() change barfs and
> bails out.
>
> Like I said, it's convoluted. ;)

Ah, that makes perfect sense.

Thanks for taking the time to explain this in detail! Then we could
drop this patch from the series.

Thanks.
