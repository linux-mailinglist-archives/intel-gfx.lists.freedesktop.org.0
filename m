Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LiHK21kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBDF2F7732
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDF510E558;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aR8GJdfQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com
 [74.125.224.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB5210EA6F
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 17:48:31 +0000 (UTC)
Received: by mail-yx1-f41.google.com with SMTP id
 956f58d0204a3-64e87a81639so2598946d50.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 10:48:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774028910; cv=none;
 d=google.com; s=arc-20240605;
 b=V4XjhtgVILSnnph6aYblkiYhHmYVtT4EGApbvjhp7otwvY7gb8SIl65PVevPyaWe4P
 4QhJ4iSteod3jdCWjFF5GYnK9N4kN6ovoHJy8s1AltRNVNGtvQSMYg1O9RjcNhQgtri0
 Iolmp5RzsDrYdUjqFnUkLV6059o7AV3ztz15DS5WxheG3fdDZBiqKxbmVgzfscx9RKm0
 od24XqojKdOmKLbgin3s+eToCTIHNNda//4ytit9RKe5gV6b5DPcJLcLDDbIJeFDxE5A
 X5Ujt+SQWmN+KJ3Dnbr0NnOkNXlWc1/ceseLMTdepvfJ9DahHthwdPqZwZwJtDdSGkMT
 tcJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=+0Ef+wM9iBGnlAV74+t5ecaaFq7fGhBfxH9EipXPT+0=;
 fh=ba3WdErZeb5DLYoDFQs47yPyMMxz3iinrIaKVTGmv0A=;
 b=QdHUX7GE02AmEL2YHdB0PuTroD6K4GUzRwG1keFYQjfqiaYQNjiHpAdIoyM/Cl462H
 gee+OO1s+GYo9Pztmp0tWqCxKseysBDMhBPOnqdvaZ2mToKl7jfTe//S+zUg6JoywTM8
 PlTQfh9g4BwIQM/2f1/31iG6WwuaUaP/Q2Ub40jsaMW9eUHgF4KdFeIz0B9Xba53OfEn
 VWOnaYYA0QCgqAE+emauXVpT3Hp6rFzvep4zIpsMTH8gHvMPUPTZAIT/5vef3xP8OBhS
 5KxdpVRNRWLPWEQlrnNrMMTnS9m0yxY2EEKxot5Ue1ro5SMDUeBwLduQHNu5jQ6OSuEb
 Wy3A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774028910; x=1774633710; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+0Ef+wM9iBGnlAV74+t5ecaaFq7fGhBfxH9EipXPT+0=;
 b=aR8GJdfQHp5DtS0OsfAPafh10gpfyew81AJsWoYQGjH4kunZyKCK1m0sENjx4nk9uo
 p9iZHxhf6MwCUDgvpUQFs3zMccQKmltGaUJZM+AK3hj2LMfOe6d0HQ5DBZ9PRW73DJiS
 /3yMDFdjMppgRyDcQ8CO2c1u3aItcbpNlCdgjOJ25ImmYfjTfxTmj4r24Ffi+9mDZDp4
 LjdoBN7HznsJMMb0h1ETx5LvQvgNbsw/Cfn057OB1RRRwamoIc3X1utcVcPi318wAwBz
 UwItBrlHrNhlbQ5PPsCjdDAt+2fZ3bnj2PqakylVdkzUe3G2bPfFP5noG/PVyqg9T0V0
 EwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774028910; x=1774633710;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+0Ef+wM9iBGnlAV74+t5ecaaFq7fGhBfxH9EipXPT+0=;
 b=VsiDpBAoo+5Pr/uVgWwfexqvaSO2K5AG8RYcI0W9JAL4ZQqSLIyCphzwSDF2LLXTI9
 Jrzg2HjYgM2updsKh/E3rFMWfOnNTsiECakyvQa80mDICCAF+W5HJOG5IdWjNq09DBjC
 Hdz7jLYPaaBvenYtIWvvvFWxeomvqMgaT5AUYFqd3conmIhzmKSVpi5L+uyNk034DrCE
 4dE79GJiwFQ+qNOpQR07SxCEtBwg7OCUL2BPBzf74f/fpL0+aqhcQXCaXwk6Rf74av1D
 3uvM6yys2w6Ul9rZKHv4T/5YXma5Z4aQzg2vF1MQ8G08tROyaww7MltyJmX0ESUq6Sl7
 vhvw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvmEIPmX/WXlzSlpEtkoXENA+vrw0tyOGsgVNFIJ0yOcBjESQ9jy0uKDlRxMyTqVMFgQyj4Fvmdhg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyoRaJxzIII9KgJzr3VQc0TKl9ysobO0lhGJXKTN0bLnuDZbPCD
 nIwMj4ZwqbVXcj7W3XU/DJCub6BkZwjsXQ2+nRAKtMZ5+86ZLyg5KXkT5k0RP4uryZEtpQCvDwk
 WvcOvRW2j1RJc7Y8z75heJbb5SThVa/E=
X-Gm-Gg: ATEYQzzlBmjVdDlV/al4GfvgNL1inV0WG5IR7tCDeScYNCvLr1b4CT4XPkB8/LtiE3p
 ZK0Q1mcusdpUL2cDOvoSPVMUitQvnAt+lAo076vTsmBgrhkcvNXSyyUCZaa/AOsN0HmU4PdhXwm
 VD1RAZkqd87QI+rFN+Jip2xYFr6lvpqbc7cAcNV+LjbAUWM9IMrprEV6cThu3TxDmpmyT1ihxpa
 tsjOaVpPDv/5MTbotaTqDtPPX9dRwsnUop1apa556XArUQENXJGarKUylFlz+hP82adKMG4kjIV
 iSUB
X-Received: by 2002:a53:ec8b:0:b0:64c:b12f:f02f with SMTP id
 956f58d0204a3-64eaa85b7bemr2817354d50.76.1774028910527; Fri, 20 Mar 2026
 10:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-23-jim.cromie@gmail.com>
 <177402491440.6181.10370884123666440440.b4-review@b4>
In-Reply-To: <177402491440.6181.10370884123666440440.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 11:48:04 -0600
X-Gm-Features: AaiRm53q7raCfT2VIY8VRpmfB57j5ltDj3LlcQ8Lkb1cOQPVeem0bJxBrAwha0Y
Message-ID: <CAJfuBxzAuWYMs32FUcz7TAHzQxr3Pmo8xeZ=-c4BpVG-zpAMQw@mail.gmail.com>
Subject: Re: [PATCH v11 22/65] dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 5EBDF2F7732
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:42=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:19:47 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debu=
g.h
> > index 80160028461a..74ed18a038bd 100644
> > --- a/include/linux/dynamic_debug.h
> > +++ b/include/linux/dynamic_debug.h
> > @@ -81,10 +84,18 @@ struct _ddebug_class_map {
> >       enum ddebug_class_map_type map_type;
> >  };
> >
> > +struct _ddebug_class_user {
> > +     char *mod_name;
> > +     struct _ddebug_class_map *map;
> > +     const int offset;       /* user offset to re-number the used map =
*/
> > +};
>
> Is it usefull at this point?
>
> > @@ -137,6 +223,25 @@ struct _ddebug_class_param {
> > [ ... skip 14 lines ... ]
> > +     extern struct _ddebug_class_map _var;                           \
> > +     static struct _ddebug_class_user __aligned(8) __used            \
> > +     __section("__dyndbg_class_users") _uname =3D {                   =
 \
> > +             .mod_name =3D KBUILD_MODNAME,                            =
 \
> > +             .map =3D &(_var),                                        =
 \
> > +             .offset =3D _offset                                      =
 \
>
> I think this offset is useless at this point, or did I miss something?

It is unused yet, it gets used later (patch ~31) in _USE_
to deconflict class-ids when its needed.

I squashed it in here to reduce churn later, and because it is closely
related in function to the offset in class_maps, so I thought it would be
easier to explain in context.

>
> >
> > diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> > index e8ffc2b5b330..66f4bfe39e89 100644
> > --- a/lib/dynamic_debug.c
> > +++ b/lib/dynamic_debug.c
> > @@ -1190,6 +1292,22 @@ static void ddebug_attach_module_classes(struct =
ddebug_table *dt, struct _ddebug
> > [ ... skip 13 lines ... ]
> > +             return -EINVAL;
> > +     }
> > +     *reserved_ids |=3D range;
> > +     return 0;
> > +}
> > +
>
> Can you introduce this function when it is used?
>

not sure I follow,
the ddebug_attach_module_classes is from v1 (committed code),
its basically going away in v2 (candidate, at rev11 now)

> --
> Louis Chauvet <louis.chauvet@bootlin.com>
