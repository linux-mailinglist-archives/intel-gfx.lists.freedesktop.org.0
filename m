Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBWEBG9kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD1A2F774A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9075810E55D;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h+5GLWM7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com
 [74.125.224.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85D210EB00
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 18:04:02 +0000 (UTC)
Received: by mail-yx1-f52.google.com with SMTP id
 956f58d0204a3-64eb7def21dso53533d50.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 11:04:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774029842; cv=none;
 d=google.com; s=arc-20240605;
 b=SaZpoIwdpmJgZI7Dq6EkkP/UlujuLKEf3qUBKwmYKvWU5xaeG/T4rG8ocaj3RYQiLb
 Nfx2LJlGDExiswPKRCsIdJTjZn4ao+/h79FUBcBqwpVlXXtLhE3KPh8HFyDwI4ZUBU7+
 BjUtqYbr7BiJioQzKV7hLSiCpZh/uEMPbv2hLdqTbmNVxP6NWKq/enIQzJKdaIxVb3hX
 yyQ7TXVi4NhVOjQYUfLu8MNKDQMXs7SG1QNAA8ss6L7pJILcwoStfCDDh1g2XZci9By8
 qbmti7+W5fttEkq4ulXfg3vZPnMWH3aD6bghDP5SNYQ6OYE1erOgwPX4+8HD/mh8mpFB
 e7RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=n0ReudbBcJ1VWJQ8xSvYlWUHawfsvlE3jFdIh1UvDJg=;
 fh=lv+/9yL10rHyHHI+ELOY7zlUhsoWI9f6nNdASTFDsEA=;
 b=eZ1evM96BlN5tVGPxm5UgIfZDctlD39iRz7AcJt079ABUaYoN8+6MaGwlwfDwVNvo6
 roa/Fh2uIy1v7FK8aBdW20oCxLCFDtbsQoptFErdwvHcFYrWlJC7C+jaiCH/ONf1HMBY
 poexcE6w1fyRQJGe8Tpi+qxyqa80duld8Pj4CIthxkpgLYG1K2bB5KivyVvxaq9Qqek7
 HU42gP3GgAnqarjaIbP48ZMNUMFVetiZriNYJV8BR4ir/vbmOfQeASR91WJB0Ofrco0S
 +RxPzgYXbrn3+f7OdWiASTs2FMt5IFpwy6K5Cj+bESxXjEg6goY0udOUWZUsM4whAz1D
 tEQQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774029842; x=1774634642; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n0ReudbBcJ1VWJQ8xSvYlWUHawfsvlE3jFdIh1UvDJg=;
 b=h+5GLWM7gOz6wIV5N+PjMYBSto7oRLGWGaLrjUv4foO+8Eg7YmRwD3oc+T/saNv8OK
 2X/jZgLY+jrbBh61GzsZn2pUN3FwI7xDhcvjUkRHqX6ZEVqI6DbOh+JUpZ0U74L8Blky
 lgiY6xHshv3fhU5Jca0ADOaRaZqzNWyUT3UgHEQmCh6CFoA9Js5NSFujBfhmXzZc+uum
 67oA2f/mVvBHcpHBaWU9Zk+kkXBdQQh4/IIcagPgez6e4CdnR7GwCBmBUqA6MT/MLHM+
 H+xshFNwQWXhaZmOnfGJp6oTrkmMKmhdh0dZOWj0K2ocAwTma3mpOFBXbQPuXC4+pT1u
 ImjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774029842; x=1774634642;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=n0ReudbBcJ1VWJQ8xSvYlWUHawfsvlE3jFdIh1UvDJg=;
 b=JbDMdbx5aaz7CCYZERgMlyG1tgto8fPHTCaelCuv9H2wP0nkgiHOJcayJx9iqQ8r52
 cICkq0VEBRIdKOiOVgM15b0XplM5bhRxMm80eL16ivaJU0TOu8WRUUlRWfaldnupjUQq
 8JEICHegS4AwmA2ztNAamgKS8Z3StwpX1DqlTgy62eO4CcRLx1JtRg8FzONOvbDq0n3H
 Wt7Ox1pO+4/VrwaqduRZB14QWzSzWnAVCJdKcQ7yYfRVVRevZA2xoHB0rvc2hh0r7sve
 uc2Dw/BysLCOViGQHVvZy5tO0taJC1otSbRzC0gMFfv7ixlexfCFXodOY2hEDt7aKtQu
 +Lww==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtlWXCS3y3HSIXg2uC5TsQKyE9Md/3UGl3UIEk4xnGTjTjATco8H+sWEllbVMb+JRC91fpncx+hhU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxzo5wpYIGN7hT3aHUIS9stTyOdVz6o9qu00YKLJlx3zpCKbMHn
 lSxF/x4s30x9ApZGZ5m0Gf5Kkgfo6AuC/6Y1LLm0yvFvLmD+oVD5fHD0nvZCvn8x0MGJtI8C99M
 i9Tl6oynRSnDWl96n6w1Mt8yLJkg0Wnk=
X-Gm-Gg: ATEYQzxkoAXC0ZPy4NZWMOkJRjmXRRQtYRGd2vfHYPdyFs+RoSY1koAYzk4CVFjp/KW
 7UskVjoWuUH+bOFrPmRRaHq18tj9zyLXzsZ6uSql0Q9M+/dQW3ewNNOdh1v2A+KItckSmK6gaHC
 umZcU3rb84bUF8ThXhdy+YfOL9+6z5NU7DRjcvlEOEymf9vVYEi3YjRcHskppZs60TGIKZq0w8y
 /QGdSUrfpuunYzgT/+sP4Lb9fgGGNxA++fDPwlbJ6jeZm8HCp0Z7WZA+9ZLA61pGx80bE4Wa70V
 4hQj
X-Received: by 2002:a05:690e:74e:b0:64a:ce9a:ace2 with SMTP id
 956f58d0204a3-64eaa7f7bc9mr3212110d50.56.1774029841504; Fri, 20 Mar 2026
 11:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-32-jim.cromie@gmail.com>
 <177402491451.6181.5247342952148189934.b4-review@b4>
In-Reply-To: <177402491451.6181.5247342952148189934.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 12:03:35 -0600
X-Gm-Features: AaiRm53l_YjOB-S5RZgL9xPfAK8bYaoK2HLT6VSg9ZSzbMdUrD-RUBzNTMJmVgQ
Message-ID: <CAJfuBxx748fTNk51joPgCUTqd8PmTG-mwp0YL3gTSzcnu5w8KA@mail.gmail.com>
Subject: Re: [PATCH v11 31/65] dyndbg: add
 DYNAMIC_DEBUG_CLASSMAP_USE_(dd_class_name, offset)
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: ACD1A2F774A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:42=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:19:56 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > [...]
> > cases; perhaps a 3-X-3 of classmap-defns X classmap-users would get
> > too awkward and fiddly.
> >
> > This is an untested interface extension, so drop this patch if it
> > feels too speculative, knowing theres at least a notional solution
> > should the situation arise.
>
> I agree on the patch principle, the implementation seems good.
>
> Can you move this patch after the BROKEN removal? I think you should
> "stabilize" core features first so we can merge part of the series (and
> reduce patch count).
>

I'll do this.

> >
> >
> > diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> > index e9fa0c8868db..2083a8546460 100644
> > --- a/lib/dynamic_debug.c
> > +++ b/lib/dynamic_debug.c
> > @@ -206,12 +206,17 @@ ddebug_find_valid_class(struct _ddebug_info const=
 *di, const char *query_class,
> >       return NULL;
> >  }
> >
> > -static bool ddebug_class_in_range(const int class_id, const struct _dd=
ebug_class_map *map)
> > +static bool ddebug_class_map_in_range(const int class_id, const struct=
 _ddebug_class_map *map)
>
> (that the rename I mentionned earlier)

I dont know what you mean here.

>
> --
> Louis Chauvet <louis.chauvet@bootlin.com>
