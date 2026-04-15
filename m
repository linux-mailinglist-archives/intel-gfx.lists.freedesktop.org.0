Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DhPKq+/32lOYgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 18:41:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F14344066F8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 18:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B00B10E181;
	Wed, 15 Apr 2026 16:41:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="bvH80gFC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D1B10E181
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 16:41:14 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id
 4fb4d7f45d1cf-6720c7968e4so3563435a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1776271273; x=1776876073;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=y7Lb39tX80cyqh4EoAouwl4tDKxTNBcVjFCL5GxqOEY=;
 b=bvH80gFCf86nt5AznWwy+DIdBcfzhuk+oj2xoDIqsQqJJexbZxcVpSezevXpy/oznU
 yfesX3pydU1pkYQZJICp5b8etNcY7veqyKWhcrgo3ESVdpKMs0OZDyfyU2kexEkgaoPk
 Zsbn6DjYSyOo2HVVRQUz3lXnLsw5uRgy9Tt6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776271273; x=1776876073;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y7Lb39tX80cyqh4EoAouwl4tDKxTNBcVjFCL5GxqOEY=;
 b=bC9Uuupl6p32Zl1Gi0IFujFgdzgRU34/axCE1JQatzv+Wa19YTJYYpj27xpsBTNA0z
 8SMRgqFOJUmsIcci/mo4QdmLLhsPE1KjLJw9igavEjM0YwYxWnyjvRN/x/NUoGD1V51U
 0hsSDwHDbPMUtbwv6w2Ep+yifh9KQyNsL9YpwvJK+JaSpWJ+MryJ6/1cfjnxcCX89zrg
 Fl6iI6/P42Ex0zC7SEyrfK/eb6GpGGIUrCButplp6h4nDNCEJSktc8ITeZrnQLggrnza
 QMHL+vraLos+Yte17OReezWd5W0dctjDb9GcFuVXiKNeYGYM0Y0TiU+SooqStNXAUqxG
 PEkA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8J6HOjayy4lPL/0gyoGahDcaNL2BbUENRlEtbCHjcQkrZuqiongDpstH5XfvPkx8mZnH0KQmotyYU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzp54o6JAfBohzKfTrIkHcSsWfopZq0d8igUxoLXBRdP3QtI+OJ
 2nXWpb6Fwg5u5gpNmzeq+dbvmLS4Psdc98vDq1ctve9EdAM7gA1M+VCn7kt3BjHoptWYmfwoMo5
 UObxhLQc=
X-Gm-Gg: AeBDies22afJai7lAgmSH/kSjjDmF7iA2mLxVgAbnAsdrvW3dxHgsEvrsmc5DEFKRh5
 8fK5/4wnyntm5EWLjWpmS7RZ4V0ZoNtccgQHVvgHw7hNdhQW7Q6L1fIGM/6FC9SIGrsWYGBY7sr
 awEE8lAwaJ0f/BCatv2CvZr02OG0OeQPgY/lZYMX0wvhypDJIDCU8Ch0V7xzJAKFav7Zqj6Hki8
 XoGrNlhZBVMksOLw4TpFYydgn3XIWLtbEHH/B6kPAmJXJBYgy4Fcp7hPBVx6va8/xY7QBialXJe
 blo0eqImAVbu6iTw0HqP4CubJYQcx+wrhjB74ztl0EE6qlY6niHc3AGtfExdCq7lDUGTYiwa7qx
 wahASt92H25VwVG3ITROVFvUnA80iDYOP0YFNgtA11hZTmwCGXtTzA5ThKYbtqhdg8Qk/6YaKUk
 jb+Mxw9vmEqeI9X7NhNQJX8pxDpdOBHDMH55UtuW5EIiR9xovVrLhvHWsx8qKjjCfsHNxXT3zg
X-Received: by 2002:aa7:d1da:0:b0:671:d016:df0f with SMTP id
 4fb4d7f45d1cf-672711b1328mr110654a12.4.1776271273314; 
 Wed, 15 Apr 2026 09:41:13 -0700 (PDT)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com.
 [209.85.208.46]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6723800ecbesm580110a12.29.2026.04.15.09.41.13
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2026 09:41:13 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-66d65646c65so5148387a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:41:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ/ZniU1ErO+NhBdDBZYbGQNePXjyhN4lNewDXWBCQKTxd/Si5BkWM3KrbaKacUYFkw55ZltCiouVSI=@lists.freedesktop.org
X-Received: by 2002:aa7:d88c:0:b0:66f:76c8:f747 with SMTP id
 4fb4d7f45d1cf-672711c49b4mr83740a12.6.1776271272830; Wed, 15 Apr 2026
 09:41:12 -0700 (PDT)
MIME-Version: 1.0
References: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
 <CAHk-=wiAGevirr3=xC=u5_kN+m63JtjqA0C9NJLrd5PGrM0suw@mail.gmail.com>
In-Reply-To: <CAHk-=wiAGevirr3=xC=u5_kN+m63JtjqA0C9NJLrd5PGrM0suw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 15 Apr 2026 09:40:55 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjmTh4ESQE7ntR=ddF5JBToNerf4Dzt2zQQ2-Y3OEre-A@mail.gmail.com>
X-Gm-Features: AQROBzAzrmt1r9Lcsx11hYqA7ZFPDheNDl4Usu75n-ImSxQhTSjJgoByqAuzn5w
Message-ID: <CAHk-=wjmTh4ESQE7ntR=ddF5JBToNerf4Dzt2zQQ2-Y3OEre-A@mail.gmail.com>
Subject: Re: [PULL] topic/pipe-reorder for drm-intel-next and possibly v7.1-rc1
To: Jani Nikula <jani.nikula@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Matthew Brost <matthew.brost@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dim-tools@lists.freedesktop.org, 
 Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,ursulin.net,intel.com,suse.de,kernel.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-foundation.org:dkim,linux-foundation.org:email,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F14344066F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 15 Apr 2026 at 09:28, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> I guess I'll test it just to verify, but if this fixes that known
> issue I'm all for getting this fixed sooner rather than later.

Well, that was easy enough. I assume this was expected, but I can
indeed verify that that branch works for me as a replacement for (two
versions) of the local patch I have been running for the last six
months or so.

And maybe I'm the only person on the planet that runs this setup, but
it gets an ack from me. So I'm ok with a late pull as a fix, but
somebody who can better judge the risks for other setups should
eventually make the judgement call.

                Linus
