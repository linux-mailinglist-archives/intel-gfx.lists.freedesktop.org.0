Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHOzLGtkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 401FE2F7701
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD8910E559;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jOZ5g/GN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com
 [74.125.224.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AB310EB23
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 17:26:19 +0000 (UTC)
Received: by mail-yx1-f54.google.com with SMTP id
 956f58d0204a3-64ca423ad53so2496957d50.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 10:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774027579; cv=none;
 d=google.com; s=arc-20240605;
 b=K/dchNO2l55rjqwa/5Qd4esp0YsYoAKmjjJZGfltp5dv7/NxXYFLDlhn5vPhzgw00c
 LO+OSh/704dyYrG8WCQog4rAzjsAJFBKPvR/Fp7w4V4Frz2B85JRJAhti/HzhCHrPq4i
 kh+HJ8SV1iIutPgDpFrkiEBdn4TVVEYrcKe61DCtjOP9t1IcYvxFSztK01OTsKy7uaVv
 sej//FjX9BallWp1+0hwOdjUcT+4LMThJZetSIXrzZYcEHGCWM0AH7SD3vBB6/Ko5x62
 q9A40V4fg08pjb3LtZBNUoiJXxwjCS0cLExaDjU8wrdCfUZA1nagSbk/C2wzVwKUQ2iR
 TubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=Tj3p8eyqsxs0jrqaosm095XCJBb6sVTFmtKJ+h8XxqE=;
 fh=QJGSXL9GZ92a89+DlKsDvqMHPDvw/mwGVYWYDPlnIYE=;
 b=FuyWc0rm8vGAc6u91wH3BYett1uOOHS0oUMHQWesk0u0+08ecInFC0rpLEVpb7N5z5
 q9UJra/reTSiAWRzrlyXbGIV6Cvr8Yv18aiuWS50okJmYpyTnO1OjJqE+hGfRBZOpoCq
 YsVoWAl4LYffIj4PtShZtP8NueP2P4jVX4mtkrVZF2fbbNtNdlTw63QFCHjWedsZRGBW
 Ka+IW4PugwDgC8XzqvS5MNPYtFK1aETFVAPmzGRPPg6lpJk82wXEltgIBACotM3RKv90
 zK+7Dhx1oBx4m+GrBY2bFYGc7BJBZFOtz453KMdhEBcijKkcJ4C2NbdaBkj0KcEWbDQP
 fGow==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774027579; x=1774632379; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Tj3p8eyqsxs0jrqaosm095XCJBb6sVTFmtKJ+h8XxqE=;
 b=jOZ5g/GNpWjiPQn6fcUx6KHfCZmbLNDvmaIIfNDWYqBst4A/Hm1MOIpKJ6Y1cdFP43
 4cZ+y6hyacc6tVquPGlhlIpS00gUy610LH6OTWE4sa1vf7oJRWDJdDuv6XDydeFLb1um
 +xWAWZ9Quj6DEsXC2wTJkzTDZ9qerrZRzD27n5XEEXcFLQTIlEkFaXB24t+wlwsMttuC
 qLW9B9RIhvNxqh7IFMNiuJzOW0myTmSR/NJt0wU/rS4N3hPgo/yl5ZYoEHzTRugpwRZM
 rwfK9aEVFkWH6B8Xu8r0qcNnEQd291q3hg+J9tC1s7u/2LrqpiZhdRLkxOADE8HZDnzD
 93JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774027579; x=1774632379;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Tj3p8eyqsxs0jrqaosm095XCJBb6sVTFmtKJ+h8XxqE=;
 b=itwFWUiU2YlMqO7Tiqh8f/zoxgYnnl1kzat42U7Ef0TD7BK97lSatd8ED6BgFkMvq8
 TQRs6i+5aO09pbFd35UwpJtc2p0Kru+TFegUGHDm6zzxXX0kd0zLh6HK2WMLr3dVFsQw
 8YobXIb9ga0/X44hl69HZ1+APVby7d2v3mvLlwoxrpRYM14q9xNhQ/VXHu3y9gkYUxUT
 J4+1KJFYA9mPADMqO1k0kxts/RTMKyRM4+l/YwtjoyPho3q85j6OTgW67HdqTD3vLOAL
 /u/6/Xxx9MiPUPDYoRZjjGaJH/rl5mlY2EXHOQ9k+MDGInaez4sLSg+loj2V923e63/Q
 Zqcw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeNLHG7nAJ94i/3Zk5htyv743WuiqvcWNiKmihVs8BFcz2RCZ5Fvbrb0CQlfvtGTBrcWf1hVWfEyY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyW0nX+Bhg5AF3oB4KRzdqYARtk81nno2AQKK3N0LfCfBy+zcE9
 uN2pJzqiKbj1H20BbjDhSL4mtWCSh8Ar03wLtlgJ4qo0YMU90EHiIEsG0ZKwtmwc90Z/iH6PSgr
 OvbtQxreA6x1JSgMWrRae9weVnwc3CxU=
X-Gm-Gg: ATEYQzyODvsWxb4Jg5iE4dmVHEsqyPnPpnOZ4nr7pGqNdyccr/Y3cDRfWXVJIwLVe/A
 qCTiifiQwomGbM8ObVUiMivYjihRIPt0HaUvQmbpOmtkLtC/qECB75TQfmFz9IWDNQKSGF/+1G+
 W+chtHGesci7OrKmodKNAYvr0CRGcuN2LfHvxgw5k4WnUzTohSss1tQ9BwPODLmEtDBPTBCFujv
 dbFMUqd9kviEnO+fIsZXMgfWRgzI6NQMU+5g69CLjE/BufQHWD52wUu5uoYvgQ7r++CTloUvMM0
 fdrp
X-Received: by 2002:a53:b6c5:0:b0:64c:9aa7:549d with SMTP id
 956f58d0204a3-64eaa78df37mr3443072d50.38.1774027578377; Fri, 20 Mar 2026
 10:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-2-jim.cromie@gmail.com>
 <177402491426.6181.12855763650074831089.b4-review@b4>
In-Reply-To: <177402491426.6181.12855763650074831089.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 11:25:51 -0600
X-Gm-Features: AaiRm52mzW6EX86AA5Jjc_AE9pPFD7jbLjCUGPg_V9Sh6yOZDr0TEo5Rj5JOx1Q
Message-ID: <CAJfuBxzYUdM=HJ1yc=bTCHuRfPSznRZCPdfq_hfJSW7zxk4pEg@mail.gmail.com>
Subject: Re: [PATCH v11 01/65] dyndbg: fix NULL ptr on i386 due to section
 alignment
To: Louis Chauvet <louis.chauvet@bootlin.com>
Cc: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org, mripard@kernel.org, tzimmermann@suse.de, 
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com, christian.koenig@amd.com, 
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[70];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:louis.chauvet@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 401FE2F7701
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:41=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:19:26 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > [...]
> > smaller alignments, *and* scripts/sorttable.c does not tolerate the
> > added ALIGN(8) padding.
> >

More specifically, it counts records in 2 sections, and insists
they're the same count,
and there's no slop/extra space.  the align(8) broke that last constraint.

> > Reported-by: kernel test robot <oliver.sang@intel.com>
> > Closes: https://lore.kernel.org/oe-lkp/202601211325.7e1f336-lkp@intel.c=
om
> > Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
>
> comments may be wrong.


in v12, I found a way to use the makefile to conditionally include a "heade=
r"
file which invokes DYNAMIC_DEBUG_CLASSMAP_USE().

In doing this, I encountered some lost sections (lacking a KEEP in modules)
which I fixed by reusing the codetag.lds.h model, to make dyndbg.lds.h,
which reuses the (now separated out) BOUNDED_SECTION* macros,
and contains MOD_DYNDBG_SECTIONS(). which scripts/module.lds.S invokes.
So, those comments are now obsolete.


>
> >
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vm=
linux.lds.h
> > index eeb070f330bd..a2ba7e3d9994 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -212,11 +212,13 @@
> > [ ... skip 7 lines ... ]
> >
> >  #define BOUNDED_SECTION_POST_LABEL(_sec_, _label_, _BEGIN_, _END_)   \
> > +     . =3D ALIGN(8);                                                  =
 \
> >       _label_##_BEGIN_ =3D .;                                          =
 \
> >       KEEP(*(_sec_))                                                  \
> >       _label_##_END_ =3D .;
>
> This affects a lot of existing BOUNDED_SECTION_BY. I agree that it is
> not a big issue (most of them already have ALIGN(8) or ALIGN(32), but
> some have ALIGN(4) or just not aligned at all). I think this can increase
> the size of the kernel in other places.
>
> What do you think about a new macro or a
> BOUNDED_SECTION_BY_ALIGNED(sec,label,align) with explicit aligement?

Thats not crazy, but Im not sure its justified by the 6 lines that the
_ALIGNED() variant would save.  It does add some modest complexity to
the macros.


>
> > @@ -867,15 +869,21 @@
> > [ ... skip 15 lines ... ]
> >       . =3D ALIGN(2);                                                  =
 \
> >       .orc_unwind : AT(ADDR(.orc_unwind) - LOAD_OFFSET) {             \
> > -             BOUNDED_SECTION_BY(.orc_unwind, _orc_unwind)            \
> > +             __start_orc_unwind =3D .;                                =
 \
> > +             KEEP(*(.orc_unwind))                                    \
> > +             __stop_orc_unwind =3D .;                                 =
 \
>
> You already noticed an issue here for example, and you had to manually
> expand the macro to "disable" the align. This is error-prone, I think it =
is
> better to keep BOUNDED_SECTION_BY here.
>

I'll look at it - there is a stack of 3-4 macros that would need adjusting.

> Note: I don't understand well linker scripts and all the implications, my
>
> Note: I don't understand well linker scripts and all the implications, my
>
> --
> Louis Chauvet <louis.chauvet@bootlin.com>

thanks Louis,
Jim
