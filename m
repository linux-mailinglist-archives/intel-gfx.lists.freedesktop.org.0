Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHCCLLi832mOYQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 18:28:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8DE4065FD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 18:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371F310E19F;
	Wed, 15 Apr 2026 16:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="gXW0X+XQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3B510E24C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 16:28:36 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-b9c3e2cf3c0so1090903766b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1776270515; x=1776875315;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SVtPfhgGSMK7VhUt7eWOmIDqvBPOmQt89lyJEcl6ojk=;
 b=gXW0X+XQZj8Q2J8T/lAyJRzsi5tZ8Z4xIbOpaDoMoYK1sMBlR5pNlkfafj7uQkzuOu
 yMFVGmO+8ctOaJHzCtuPpiIpHpm+IIRV+t65PzmO77YHvnUyZLoI81gYvgf4fWGxN9Q1
 6PIMbkvKwnuvNGJU2vrOz4TBio6gUKg31nL+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776270515; x=1776875315;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SVtPfhgGSMK7VhUt7eWOmIDqvBPOmQt89lyJEcl6ojk=;
 b=fIhzE17MSYIleGNXx5bXKNbuU0yTyPzRdXDMSHik6ZJb6ynM5ck8DfZzbwPItaYRx/
 imVTS3CpvBMLHQGJcRP2XdhtYpbfsxPc2K/vkt9mmApG1uhF9ltFpgH8s/PyqFsfCME0
 VoA0C47PmUB5iyDadynUsZGdM1l+E974nf+yir6LUL4MKBB8XwdeRPpuMb6/ZHya51B/
 hg1PfbAZYSqeUk2iGCK9rIAF8enjdbziywrs8e7GUzu/s01dm5sO+6gqJmHK0clBJ2Bq
 S0XdJJXlFe3NsLs/d7FSBYpnBzfyB97ORmYuA2nC9TBWEfTOOfC2yaIE3NvRCZ2qFc+f
 TGVQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+SYYq3eNSSnWJEFIVdEpqDVnRk0J5SIUb52P98lLHGOQ85ECpfH1cPCdB/6ToMoXMuovFV6xCR4Jw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqJ1vOcw1AVZP3m8xu/118dwcseEzVAF7U6Bxn84VhCk8XPzGP
 BQ1Gvmja59sQTalavBj33fsoBjFxWdKMW52BFXgccb3f7rJlCayGy0S+1j92SgNaho7jgrNanvJ
 hg01eaOo=
X-Gm-Gg: AeBDiesyep8WVuU2+rFDGozl8ytn1giWHEQ7BgA0O8ucQKRxki3jbxyQUggTbpqU2vf
 1sW4QX/yg3j+81dsB/GFAXzb5kVrg4viQaOwEEdEgfIxwc7yY1y8zS/FHbJyMMKYZ/qR1oMMUOJ
 dImq1kk2SfyedK16Xf4PXtf5Tr08G0JqSB/iliiqqEqnciePilqI+M5rdYtTsNNEM2uu2pVQMsf
 zIeGuV9yEsTtoPEkGZZk9jZkWwuKLeKBz7GzQfggZGA6RIHBXBNpK5x7XhWb12ncvbv3FM+oQgQ
 +XUBaa8h++8nmo3SjMTd0Km/nlM1IKuQTbTZTD81IDwhk6lBZeqfgpZ0DWFgDlGGpXgd0urTB9Q
 ht5Wret394XlXUSgbBn5LFv5mEXIegJ4jgXyncosYUN/e69p1gUtz2ueqDMARS8Z4qZCJmpyWiR
 OzGoP+pcz2+7BKOdq4zBVFWrs0jiRC5uzX1p7NXmq2wWI02bdVpfPgJ3mybpv4fZIJ/QM/MfB3
X-Received: by 2002:a17:906:fd86:b0:b9b:e935:147f with SMTP id
 a640c23a62f3a-b9d7260dccbmr1416605566b.14.1776270514753; 
 Wed, 15 Apr 2026 09:28:34 -0700 (PDT)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com.
 [209.85.218.50]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6723800e3b0sm563648a12.27.2026.04.15.09.28.32
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2026 09:28:33 -0700 (PDT)
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-b97f9587e6eso979362866b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:28:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ9Ec22b6cfsfxWW5nRgfUroBeB4u+Dgw7oXcKGlKzRQ0qqmt0PWKS99bC96SfA2oyl17JXxMpUvZok=@lists.freedesktop.org
X-Received: by 2002:a17:907:9801:b0:b9d:31c2:37f9 with SMTP id
 a640c23a62f3a-b9d724f01a5mr1184257666b.2.1776270512082; Wed, 15 Apr 2026
 09:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
In-Reply-To: <d69501d53c233386d70ed10290af24aafebf434f@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 15 Apr 2026 09:28:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiAGevirr3=xC=u5_kN+m63JtjqA0C9NJLrd5PGrM0suw@mail.gmail.com>
X-Gm-Features: AQROBzAwO_jXF6Cc0zC7gGmeVDHe5c1N_2hgiklfnxVR1DaUU6j-D3KNwiqGohU
Message-ID: <CAHk-=wiAGevirr3=xC=u5_kN+m63JtjqA0C9NJLrd5PGrM0suw@mail.gmail.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DD8DE4065FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 15 Apr 2026 at 09:09, Jani Nikula <jani.nikula@intel.com> wrote:
>
> We're fully aware this is beyond feature deadlines for v7.1 and it
> hasn't seen linux-next. But in the off-chance you might consider also
> pulling this as a fix for v7.1 (and really, distros might want this to
> be backported to stable) I'm sending this as a separate topic pull
> request.

Does this basically obviate the hack that I've been running for
several months now for my dual 6k setup?

I guess I'll test it just to verify, but if this fixes that known
issue I'm all for getting this fixed sooner rather than later.

                 Linus
