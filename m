Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHNlNJmFumnrXQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 11:59:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD352BA5E1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 11:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA0B10E090;
	Wed, 18 Mar 2026 10:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="M2DQgzVr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E0F10E7C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 10:59:34 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-439c56e822eso6961586f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 03:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773831573; cv=none;
 d=google.com; s=arc-20240605;
 b=kHCNd1WAFjaPr6aye/8sdPFGMOn+JmP8q3p2OjHfTTbZIICuWHbkWS2LlRMm1NrJYO
 HhddHYFhw/QdQFgV4mpGfR61AljUVPZ/jbZ8klfdZU34SzukJqsu/9SmVx4bD28BQub8
 4MmYZgUWZC+V9T7syYArzSrnu9mB3oiGq1rYqfW5HiY2oS3QL//3CEUKdHWLwDyAhmOv
 U0Ii7bjzVh77KvRiKZeM2/lY+SNaESXHVV5oFnp4UEzgf5fui6+G0Fd0Nk5IvXeHsjqy
 qMzMiHqnTUdPUEtN4sSR+F8tZ1UtJ3uSW9Ugh2yTQTOZFVdZmqAivxjpPGJ097m1Fra5
 j3sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=S/1Satukh6eOX2Q2yp9irpav0rskLC7MIDb5UTQcoh4=;
 fh=cGN5X9xtSc7BjlS8gom3i0i1mve9G95ZfdwVor95gxk=;
 b=MZi6JauJ+feuVhNosMiDnJ8TrXQ9FsOJXDQAfRk2LLddT6CjVIMFeOtUdRJwZYs9Z1
 UvuX9k2MQhfdvTtZTBJFh6UMZ+pK1/1FZFLNLo84ptyCKEFQ2D/u+Zg9uHwEgroFupAC
 dT5pNNAE4XZ2o9D2gZuSGl9NDBc0P0nIQv1EL7xNBm8+P3xdhkHAvxs4nRX2CaJ0oc7V
 yFK/inkc+xSb9W3R+yNUKklPUYotU7Fw/9Q65VXYeGWfo5qA0RjDrM2jIDJtq/XCUmOY
 jtFEnqEu4CIXhDCcQ4DZhuT6qc6oayHYJmgykHSKcFjMMTAdojKc/lruHaMeOLy6aLfK
 bPvQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773831573; x=1774436373;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S/1Satukh6eOX2Q2yp9irpav0rskLC7MIDb5UTQcoh4=;
 b=M2DQgzVr84yXEVMqD7m1rOy1PmrZSyfCJ6pUcIW1kXgVziu748Qx017IGOnlWeDiVj
 6zwtaSX9bHnbLh0cK39Vaza0wwoO0Ybxpcky0D7mqK4A1/QjxUVeEnURpP/HPnRDgd4h
 q1ow0Nkf+2DTbD9FvwzS/lOMk98M0o+P2O3/UZ/Qzjg1DQIHD6ea1xrZsbRE6IVg0vMV
 c11uH4eYuyqQIN6bei/j/4D2NoKWBpy/WlmDK5Yj89SX5u8HoObVIE8KbYvs2+dIU31a
 bZRes96np7tOlq+UhKk4jSQmkY48DeJvZIcvzFpv2idx/S7c0C9GK2iY/be7+Ht1dvUp
 YxZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773831573; x=1774436373;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=S/1Satukh6eOX2Q2yp9irpav0rskLC7MIDb5UTQcoh4=;
 b=n+/vNinUs8K74KdDac9pi3kISCQF/gw06W1qiNyZgit/F4+CS1im3fGIyhRrAQHjK4
 KBZjxlqyqIs7PcDq5jLROd3bf8zYY43s3v4N07ij2UdqUBw1ldS1fsYp8xwf580DiY9G
 gpcepnI5E41jP5J7yXZsVb1vpnf2aND8nRKoaU8P5FvzA/KJK2t4mIyYi/2KMnaq0979
 fM5pmi9C8OncuSmDBqD23hZk67/vwaUUrWsPPAoNTy/0sDkyOXuRc6STsxwPdWsUoUmY
 EgPrhVOMTpf9ZinwPdG5Tk0XWVvnngtwiLBD7f0f78AF1snG/CuP9EtRHSR9F8LZ/E+3
 BxIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUoDI9Yzg4FxPco2rCsArSJJOmto/LnjHY7MSQRnNYKd4aXFJPCTVnZuc/rHcy0ouXu7q2nzgPVDoI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFHpM4f+kD7oMoUT0c48ZBDLImNLm2yNxH4h+VpH2x85RzpR/+
 GqLUZlzZj9czQpGAdWZ1ffBH5JGE/lSTk/MW1aHkvSZwXAbhR1lYNYqtp+6c6sQs1KKEHy//pjC
 LWphc8tvGos6+UnSiNnGFrAEzB4OG4GlEG713Kt8P
X-Gm-Gg: ATEYQzwqn6p/fSLY4LLaJ4+0pEsYgwuU6i4Bh7V3MDUV74VmYm9bgY4NuoSjFTHDHEc
 mvb9B1HKv33zC5L+pFhcQXUg/sAxI+ZQWqo2SxevtOwfcYjV/wtnVFO0PnDtX+rm0kGCZQZhSDa
 Xlnu4/ED3bcdX8ZcyW8D9cI9ic90oxzgHGE+67SOul5qMMX8aRbLqwSFtcggL8Cfa8yF5iySgB2
 nRATQ44Reim1DHMYJRejOdDNBAMeBSiPlwkIUEFm8cGwxoHHPw4PfiByAAmOe1w3523sKE42eE7
 HIvIuutSF+XgheKLDNMvrVqM/XrpxiIIe2aZ1uQD4RIO/efrHMMBmBgdgCpqMtNoIMTXJw==
X-Received: by 2002:a05:6000:2dc6:b0:439:c62a:6dc2 with SMTP id
 ffacd0b85a97d-43b527c8385mr4835579f8f.41.1773831572498; Wed, 18 Mar 2026
 03:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
In-Reply-To: <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 18 Mar 2026 11:59:20 +0100
X-Gm-Features: AaiRm53Ixe1xgNfLSphN46y2ra7z4xTRu79njkh2iKHrEPi4sPbqBJ9Zi7PRuxY
Message-ID: <CAH5fLgjUMaC5v3SERZLosdD1ajU-fvKSgNq6OgbBBcoTS21-Sg@mail.gmail.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Alexandre Courbot <acourbot@nvidia.com>
Cc: Joel Fernandes <joelagnelf@nvidia.com>, linux-kernel@vger.kernel.org, 
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, 
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, 
 Nikola Djukic <ndjukic@nvidia.com>, Philipp Stanner <phasta@kernel.org>, 
 Elle Rhumsaa <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>, 
 Alex Deucher <alexander.deucher@amd.com>,
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
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:acourbot@nvidia.com,m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:arighi@nvidia.com,m:ari
 tger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[53];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.960];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mod.rs:url,mail.gmail.com:mid,garyguo.net:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,nvidia.com:email]
X-Rspamd-Queue-Id: 4FD352BA5E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:53=E2=80=AFAM Alexandre Courbot <acourbot@nvidia=
.com> wrote:
>
> On Wed Mar 18, 2026 at 5:59 PM JST, Alice Ryhl wrote:
> > On Tue, Mar 17, 2026 at 04:18:46PM -0400, Joel Fernandes wrote:
> >>
> >>
> >> On 3/17/2026 4:17 PM, Joel Fernandes wrote:
> >> > Add a new module `kernel::interop::list` for working with C's doubly
> >> > circular linked lists. Provide low-level iteration over list nodes.
> >> >
> >> > Typed iteration over actual items is provided with a `clist_create`
> >> > macro to assist in creation of the `CList` type.
> >> >
> >> > Cc: Nikola Djukic <ndjukic@nvidia.com>
> >> > Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
> >> > Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
> >> > Acked-by: Alexandre Courbot <acourbot@nvidia.com>
> >> > Acked-by: Gary Guo <gary@garyguo.net>
> >> > Acked-by: Miguel Ojeda <ojeda@kernel.org>
> >> > Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> >> > ---
> >> >  MAINTAINERS                 |   8 +
> >> >  rust/helpers/helpers.c      |   1 +
> >> >  rust/helpers/list.c         |  17 ++
> >> >  rust/kernel/interop.rs      |   9 +
> >> >  rust/kernel/interop/list.rs | 342 +++++++++++++++++++++++++++++++++=
+++
> >> >  rust/kernel/lib.rs          |   2 +
> >> >  6 files changed, 379 insertions(+)
> >> >  create mode 100644 rust/helpers/list.c
> >> >  create mode 100644 rust/kernel/interop.rs
> >> >  create mode 100644 rust/kernel/interop/list.rs
> >> >
> >> > diff --git a/MAINTAINERS b/MAINTAINERS
> >> > index 4bd6b538a51f..e847099efcc2 100644
> >> > --- a/MAINTAINERS
> >> > +++ b/MAINTAINERS
> >> > @@ -23251,6 +23251,14 @@ T:        git https://github.com/Rust-for-L=
inux/linux.git alloc-next
> >> >  F:        rust/kernel/alloc.rs
> >> >  F:        rust/kernel/alloc/
> >> >
> >> > +RUST [INTEROP]
> >> > +M:        Joel Fernandes <joelagnelf@nvidia.com>
> >> > +M:        Alexandre Courbot <acourbot@nvidia.com>
> >> > +L:        rust-for-linux@vger.kernel.org
> >> > +S:        Maintained
> >> > +T:        git https://github.com/Rust-for-Linux/linux.git interop-n=
ext
> >> > +F:        rust/kernel/interop/
> >>
> >> Sorry, I forgot to add an additional F: for the rust/kernel/interop.rs=
 file.
> >> Danilo/Miguel, do you mind adding this when applying?
> >
> > I think you should consider a mod.rs file to avoid this. It's tiny, and
> > just re-exports submodules, so I don't think the "mod.rs name in file
> > view" concern is that big, and IMO having files related to interop/
> > inside the directory is much better than having them outside.
>
> Ah, so there is a rationale for using a `mod.rs` file after all. What
> are the project-wide guidelines re: `foo.rs` vs `foo/mod.rs`?

I'm not sure we have discussed it in detail yet. Both are used in-tree.

Alice
