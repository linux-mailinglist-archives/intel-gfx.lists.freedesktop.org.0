Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ItbGQEKtGlvfwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:58:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02D92835AB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:58:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D1810EBE3;
	Fri, 13 Mar 2026 12:58:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eKa/GtPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com
 [74.125.82.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AFA310E255
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2026 19:20:23 +0000 (UTC)
Received: by mail-dy1-f180.google.com with SMTP id
 5a478bee46e88-2bd801b4078so70701eec.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2026 12:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773343222; cv=none;
 d=google.com; s=arc-20240605;
 b=S7p5wRvjCBKnAgYY+AvqHxewNFcT2j/jkMRlulMHl5X8Bj0dUQd3IACrrvpLKtRm2x
 nxeaWulEs8VLS5mViccwxRxHzDjuS7iJgLilWz7s4XzVHB8A7eu+2EtKIfm+sJLuk4yL
 r8NXjsoNP/lwcEzOKYWQ5isCJdjf8rBxi+33AdHzoRS1XVuuyNZkPu+Oo61ZvifnEvQ7
 P585YTR8robl6NUzepPmxXWOvCu+3BhN43zJ2UJp4FUbDVbzSlgwUq1k2IRdTWDM3J+q
 YEx+BUQiO0/ZWVYFIFAbmbLobIB0VdywGL4okywYYVDnJb6zP3OD9ShK2Hm9stiGLUUo
 yqNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=sqyBefgbThwlgKP9KCSuGlJgdIuR2RT0nMZ3gZqSKA8=;
 fh=JYugH2TDCznEixWe/ma7wfE1sK8gVMx3Vd8vC6n7PZw=;
 b=U/bO8FeoRT99XO4QxhWdjyStuRIPUX1xZ+rKEcygb/4V8JjStUMRZ0Oogs/qA4zcsZ
 YdCvl3dolw37pje1AeiSfiJL5XhI2M7JZg7G2t+zvrk8POUDcNtzHgUd7l1vDsIeTIFx
 RAroyGVriHhurrzwX9Ze+wjk6quKDOsFvIMPrzBVgoOCG1+7EXvHpRjNITDE8xznFC3r
 exfNUR0+CW6v5/2k7d4w4heOpn3JGg3ieMPU+9O2apoWQvK3sOmqeuQTV2MKbqrKt+QD
 mqbRtrX/uisz1XgbC22pK8EVK2FisIPBXDI6dc+AKYUNp+55KMpaizhXB5ZtwHI84wY4
 Mf0A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773343222; x=1773948022; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sqyBefgbThwlgKP9KCSuGlJgdIuR2RT0nMZ3gZqSKA8=;
 b=eKa/GtPM6DQyTDU1NXE17k03ynX+A5tbTCcDsNZIKXsmdmIq/2Vu2FvzIyDsBMF2kq
 3LB2Ba4NSm3HX4KTlxWs+XQe7CY4o0RwC07+JyWNzmZN4cgxB5VvH9RFlgMMxvbwKQ44
 e+9z7Rn+mW8nPeGorv2EXGrujJbIU/SrcoLjvuLFZFF9GuK65Qq/Orfm9g4r3xVVuQXm
 HNWJp0KcbVTZyQ06X0lG8/CefLI7VEfGZxw08RN70KxirSfYU8nRdXFRunAnrQz58EH5
 aCHWY0Lz7Tn3GVQ/vQxpnNi24rSzCQnwg7YwDCM6xkkU8ojuVnugo4ZbMgRi6ah2Clup
 /gsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1773343222; x=1773948022;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=sqyBefgbThwlgKP9KCSuGlJgdIuR2RT0nMZ3gZqSKA8=;
 b=DpHJuNqu2ZGCw9KGbyPcsxBcPgYCm6goeT0+aIdJnAstmU0YavIa4/aZOR1t/RXXyK
 jHXwxEFbj4hRWlLivKud1R4ec6Ra80Qr55ad5Uo154aZT4UMhHbV/VG5FMbgfBjiqyoR
 4cA0x/n7nmJLbP729zR6hVGZJ+Dus4jTw0hSRnqTLx+4okL3Hr4/MWKzUD92L453PW+5
 G6f0ycl+tkX6yR0xvB6EnSjNKPNtr7NOVcQYUU9zTKUpl7460XcrmUjpcVkc1gLjEIAt
 RZjqLUBUD2c9QWfEHKuc/E9aE135Qg18PCRxunEJd3Xy1MQRttt2M1dOnCDoIEIfOnVv
 KLZg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVbB+XHXOa9x6MiNouSXDRcrFI4NRydKdyv3TMdQ048NYz3sQbxTIfQ+LVQTKoyCT/ETQo0oGn60uM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YySS8Lv72ZHyeX86y1XJbog4cynU+Gwh03w/VArDdchCF2j/cHg
 zUA2OKDQScsHIfHIfd5C2n+DwM5FN1qRsMrq/AZkV187nrEHw32J8sruSmtQQc0TT5AMFzNGruj
 rNTb4yfJ1k8kQ66TJ4sSZ9e1+pNTuOLE=
X-Gm-Gg: ATEYQzzY/wajQ7HcuVmtD9jD8Pfuc4u6hbMpikh2XMUe0x83SYXLKcUr3ygKvz/9cTx
 Gpeq1YYxvIqmp4qWr6bMmZ8rAxSKBGxnd98dqr1Un01l2D1//VQhWO1KP69J/VrzdoWNMg4F26S
 5oo2n0Lx2LD4neZdjFbVUqIE5JcXlywG8y5P0wtNdSftL+NDvizvpzIUQ8vXZ+4EVZuz4XixFmk
 naNjmJUIk7v5ilCfV4CvHT4jsxwLL00RXU+hCMYBscOckPGOEvyed4Y29PnSV2UOvIbW9SUukHF
 5iy9yhDuMeg4PBNoIXaFBNrmatnJDlopEZsrY3R/ZRN+01AYHtzf3iUaQ8m7pujM4sPthnTVkJq
 yLXq+div6fmPxaeDXp3eERIE=
X-Received: by 2002:a05:693c:3113:b0:2be:ca4:e136 with SMTP id
 5a478bee46e88-2bea539b6c2mr239955eec.2.1773343222351; Thu, 12 Mar 2026
 12:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260306203648.1136554-1-joelagnelf@nvidia.com>
 <20260306203648.1136554-2-joelagnelf@nvidia.com>
In-Reply-To: <20260306203648.1136554-2-joelagnelf@nvidia.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 12 Mar 2026 20:20:10 +0100
X-Gm-Features: AaiRm53FHItUdFEegxUW1-4wt0_otNvbfdbd3Uys6sYfgMCnCSAVDf6Yalvkc30
Message-ID: <CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77dPid89LExw@mail.gmail.com>
Subject: Re: [PATCH v12 1/1] rust: interop: Add list module for C linked list
 interface
To: Joel Fernandes <joelagnelf@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>, 
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, 
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Danilo Krummrich <dakr@kernel.org>, 
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, 
 Nikola Djukic <ndjukic@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>, 
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa <elle@weathered-steel.dev>, 
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>, 
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, 
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, 
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com, 
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org, 
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 13 Mar 2026 12:58:38 +0000
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
X-Spamd-Result: default: False [8.69 / 15.00];
	URIBL_BLACK(7.50)[rust-lang.github.io:url];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:acourbot@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:
 arighi@nvidia.com,m:aritger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_GT_50(0.00)[55];
	NEURAL_HAM(-0.00)[-0.984];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ARC_ALLOW(0.00)[google.com:s=arc-20240605:i=1];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: D02D92835AB
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Fri, Mar 6, 2026 at 9:37=E2=80=AFPM Joel Fernandes <joelagnelf@nvidia.co=
m> wrote:
>
> +//! // Create typed [`CList`] from sentinel head.
> +//! // SAFETY: head is valid and initialized, items are `SampleItemC` wi=
th
> +//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over =
`SampleItemC`.
> +//! let list =3D clist_create!(unsafe { head, Item, SampleItemC, link })=
;

Was the patch tested with Clippy? It has several issues.

The worst news is that it seems the "supposed to be `unsafe` block"
does not count as one for Clippy, i.e.:

    let list =3D clist_create!(unsafe { head, Item, SampleItemC, link });

So we get:

    error: statement has unnecessary safety comment
        --> rust/doctests_kernel_generated.rs:7416:1
         |
    7416 | let list =3D clist_create!(unsafe { head, Item, SampleItemC, lin=
k });
         | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^
         |
    help: consider removing the safety comment
        --> rust/doctests_kernel_generated.rs:7414:4
         |
    7414 | // SAFETY: head is valid and initialized, items are
`SampleItemC` with
         |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^^^^
         =3D help: for further information visit
https://rust-lang.github.io/rust-clippy/rust-1.94.0/index.html#unnecessary_=
safety_comment
         =3D note: `-D clippy::unnecessary-safety-comment` implied by
`-D warnings`
         =3D help: to override `-D warnings` add
`#[allow(clippy::unnecessary_safety_comment)]`

For this, we could write them as a `// SAFETY*: ` comment or similar,
to make progress for now, but it would best to request upstream Clippy
to detect this or to rework the macro to force the `unsafe` block
outside.

In addition:

    error: unsafe block missing a safety comment
       --> rust/kernel/interop/list.rs:357:17
        |
    112 |     let _list =3D clist_create!(unsafe { head, Item,
SampleItemC, link });
        |
--------------------------------------------------------- in this
macro invocation
    ...
    357 |             |p| unsafe { &raw const (*p).$($field).+ };
        |                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        |
        =3D help: consider adding a safety comment on the preceding line
        =3D help: for further information visit
https://rust-lang.github.io/rust-clippy/rust-1.94.0/index.html#undocumented=
_unsafe_blocks
        =3D note: `-D clippy::undocumented-unsafe-blocks` implied by `-D wa=
rnings`
        =3D help: to override `-D warnings` add
`#[allow(clippy::undocumented_unsafe_blocks)]`
        =3D note: this error originates in the macro `clist_create` (in
Nightly builds, run with -Z macro-backtrace for more info)

So this needs a `// SAFETY:` comment on top of the closure.

    error: this macro expands metavariables in an unsafe block
       --> rust/kernel/interop/list.rs:362:9
        |
    362 |         unsafe { $crate::interop::list::CList::<$rust_type,
OFFSET>::from_raw($head) }
        |
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^
        |
        =3D note: this allows the user of the macro to write unsafe code
outside of an unsafe block
        =3D help: consider expanding any metavariables outside of this
block, e.g. by storing them in a variable
        =3D help: ... or also expand referenced metavariables in a safe
context to require an unsafe block at callsite
        =3D help: for further information visit
https://rust-lang.github.io/rust-clippy/rust-1.94.0/index.html#macro_metava=
rs_in_unsafe
        =3D note: `-D clippy::macro-metavars-in-unsafe` implied by `-D warn=
ings`
        =3D help: to override `-D warnings` add
`#[allow(clippy::macro_metavars_in_unsafe)]`

For this one, to begin with, do we expect to have actual expressions
for `$head`, or could we constrain it for now to an identifier for
instance?

With an identifier there is no issue then -- the example currently has
just an identifier anyway.

I hope that helps.

Cheers,
Miguel
