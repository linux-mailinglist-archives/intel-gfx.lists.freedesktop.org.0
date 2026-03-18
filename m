Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMEGHVCfumkkZwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 13:49:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB982BBD0A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 13:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6500010E075;
	Wed, 18 Mar 2026 12:40:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="tJeTZuwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com
 [209.85.128.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D4F10E075
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 12:40:52 +0000 (UTC)
Received: by mail-wm1-f74.google.com with SMTP id
 5b1f17b1804b1-485375aa56eso50142145e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 05:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773837651; x=1774442451;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=nWiNwiZcBmYWVTTl9iPT0XLfb7VjL0dMPy7l1+Lqx3k=;
 b=tJeTZuwbe2+HIRO9+QmL5bVXp9uJgM0QjZqw5d6K1FpgIzxtWTxChAUA7VvI2IB//1
 FGDg6/c10X/Fpoc7cuhdAQRrkt6Al6mg74aK269/iPYsG02ECp3NYXYI7liYpIjyYMVL
 YNs2vrB+NP4kTXAedCfuWuCq22CshTV/msnEUggaPjU2DYE1il4toTf5Lwp8LGfHb9IC
 r4oMOkIo9ZJIslQ0dS4bK5hi4ghwV5wxU1M/dTMtrg1sHgKmazBvG/5H2I+0NbruSWdp
 wIcseVm0PRjo5M9S3fDUPr1jnfxtMAclDbLdVbA9pdYt4M2oNuMBaDx72H42Vwixe5jb
 RQug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773837651; x=1774442451;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nWiNwiZcBmYWVTTl9iPT0XLfb7VjL0dMPy7l1+Lqx3k=;
 b=R2mbTFVVneEDJe+2owMVet8zBVTVnbyn86/vJNSybPDGRqyLlpkWuxzbfS2HKAxJeY
 vOmUfKLevs6dYfd3m0K+4o0Gm8idIM4BK3UmGVp60dmsPux219E69FDtj1CbSA0997kY
 73NUtsOgg6lTcKkUYZ2xMi3LrH+FWVeDiV7/j2/kcksG9Rav2oROPGAGL7lGHUOyMGhz
 2UPGmA9PsVrz4+iRSd8oYf/o0hGdWuuhFtAADATKosfrOyaDug/tfWuD4pR4rCM41e57
 Wr+bVKjZkyOJ0F4d+yBSOxQNvO2PiJVSNd8zwofNWh6CzEdhx6SyB0AF5ZhVbmokYYvU
 QISw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXeNmwUAj1awLsPdku5AHOTq8XVFf3rqgTbtJGNN/yUYQ57kVuE9Abvr1ZdEy/j6xS40dpa9ZoYpVo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywe3B07k49Dnd/8PTIwfpbEwOwY2DID5TUevkJLtuQ1y10emA4s
 eMgtjhUXmgix7BQK0yH5qjFWgWuRUvS2MvUTNWncvu9vMZRHrhQlfFl9Y0Rr7t17Jc57lkhzh8I
 y/biO2q+bucY5dppMZA==
X-Received: from wmnp7.prod.google.com ([2002:a05:600c:2e87:b0:485:6c28:2360])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:5491:b0:485:3983:aba2 with SMTP id
 5b1f17b1804b1-486f4451354mr52065225e9.23.1773837650627; 
 Wed, 18 Mar 2026 05:40:50 -0700 (PDT)
Date: Wed, 18 Mar 2026 12:40:48 +0000
In-Reply-To: <20260317201710.934932-2-joelagnelf@nvidia.com>
Mime-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
Message-ID: <abqdUBqchnVFo7Qk@google.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
From: Alice Ryhl <aliceryhl@google.com>
To: Joel Fernandes <joelagnelf@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>, 
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, 
 "=?utf-8?B?QmrDtnJu?= Roy Baron" <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, 
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
 "Christian =?utf-8?B?S8O2bmln?=" <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 "Thomas =?utf-8?Q?Hellstr=C3=B6m?=" <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, 
 John Hubbard <jhubbard@nvidia.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, 
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, 
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 alexeyi@nvidia.com, 
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org, 
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [9.19 / 15.00];
	URIBL_BLACK(7.50)[rust-lang.github.io:url];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[google.com:s=20251104];
	FORGED_RECIPIENTS(0.00)[m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:acourbot@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:arighi@nvidia.com,m:ari
 tger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[53];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[google.com,reject];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,garyguo.net:email,rust-lang.github.io:url]
X-Rspamd-Queue-Id: CCB982BBD0A
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Tue, Mar 17, 2026 at 04:17:10PM -0400, Joel Fernandes wrote:
> Add a new module `kernel::interop::list` for working with C's doubly
> circular linked lists. Provide low-level iteration over list nodes.
> 
> Typed iteration over actual items is provided with a `clist_create`
> macro to assist in creation of the `CList` type.
> 
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
> Acked-by: Gary Guo <gary@garyguo.net>
> Acked-by: Miguel Ojeda <ojeda@kernel.org>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  MAINTAINERS                 |   8 +
>  rust/helpers/helpers.c      |   1 +
>  rust/helpers/list.c         |  17 ++
>  rust/kernel/interop.rs      |   9 +
>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>  rust/kernel/lib.rs          |   2 +
>  6 files changed, 379 insertions(+)
>  create mode 100644 rust/helpers/list.c
>  create mode 100644 rust/kernel/interop.rs
>  create mode 100644 rust/kernel/interop/list.rs
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4bd6b538a51f..e847099efcc2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
>  F:	rust/kernel/alloc.rs
>  F:	rust/kernel/alloc/
>  
> +RUST [INTEROP]
> +M:	Joel Fernandes <joelagnelf@nvidia.com>
> +M:	Alexandre Courbot <acourbot@nvidia.com>
> +L:	rust-for-linux@vger.kernel.org
> +S:	Maintained
> +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
> +F:	rust/kernel/interop/
> +
>  RUST [NUM]
>  M:	Alexandre Courbot <acourbot@nvidia.com>
>  R:	Yury Norov <yury.norov@gmail.com>
> diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
> index a3c42e51f00a..724fcb8240ac 100644
> --- a/rust/helpers/helpers.c
> +++ b/rust/helpers/helpers.c
> @@ -35,6 +35,7 @@
>  #include "io.c"
>  #include "jump_label.c"
>  #include "kunit.c"
> +#include "list.c"
>  #include "maple_tree.c"
>  #include "mm.c"
>  #include "mutex.c"
> diff --git a/rust/helpers/list.c b/rust/helpers/list.c
> new file mode 100644
> index 000000000000..18095a5593c5
> --- /dev/null
> +++ b/rust/helpers/list.c
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/*
> + * Helpers for C circular doubly linked list implementation.
> + */
> +
> +#include <linux/list.h>
> +
> +__rust_helper void rust_helper_INIT_LIST_HEAD(struct list_head *list)
> +{
> +	INIT_LIST_HEAD(list);
> +}
> +
> +__rust_helper void rust_helper_list_add_tail(struct list_head *new, struct list_head *head)
> +{
> +	list_add_tail(new, head);
> +}
> diff --git a/rust/kernel/interop.rs b/rust/kernel/interop.rs
> new file mode 100644
> index 000000000000..b88140cf76dc
> --- /dev/null
> +++ b/rust/kernel/interop.rs
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! Infrastructure for interfacing Rust code with C kernel subsystems.
> +//!
> +//! This module is intended for low-level, unsafe Rust infrastructure code
> +//! that interoperates between Rust and C. It is NOT for use directly in
> +//! Rust drivers.
> +
> +pub mod list;
> diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
> new file mode 100644
> index 000000000000..328f6b0de2ce
> --- /dev/null
> +++ b/rust/kernel/interop/list.rs
> @@ -0,0 +1,342 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! Rust interface for C doubly circular intrusive linked lists.
> +//!
> +//! This module provides Rust abstractions for iterating over C `list_head`-based
> +//! linked lists. It should only be used for cases where C and Rust code share
> +//! direct access to the same linked list through a C interop interface.
> +//!
> +//! Note: This *must not* be used by Rust components that just need a linked list
> +//! primitive. Use [`kernel::list::List`] instead.
> +//!
> +//! # Examples
> +//!
> +//! ```
> +//! use kernel::{
> +//!     bindings,
> +//!     clist_create,
> +//!     types::Opaque,
> +//! };
> +//! # // Create test list with values (0, 10, 20) - normally done by C code but it is
> +//! # // emulated here for doctests using the C bindings.
> +//! # use core::mem::MaybeUninit;
> +//! #
> +//! # /// C struct with embedded `list_head` (typically will be allocated by C code).
> +//! # #[repr(C)]
> +//! # pub struct SampleItemC {
> +//! #     pub value: i32,
> +//! #     pub link: bindings::list_head,
> +//! # }
> +//! #
> +//! # let mut head = MaybeUninit::<bindings::list_head>::uninit();
> +//! #
> +//! # let head = head.as_mut_ptr();
> +//! # // SAFETY: `head` and all the items are test objects allocated in this scope.
> +//! # unsafe { bindings::INIT_LIST_HEAD(head) };
> +//! #
> +//! # let mut items = [
> +//! #     MaybeUninit::<SampleItemC>::uninit(),
> +//! #     MaybeUninit::<SampleItemC>::uninit(),
> +//! #     MaybeUninit::<SampleItemC>::uninit(),
> +//! # ];
> +//! #
> +//! # for (i, item) in items.iter_mut().enumerate() {
> +//! #     let ptr = item.as_mut_ptr();
> +//! #     // SAFETY: `ptr` points to a valid `MaybeUninit<SampleItemC>`.
> +//! #     unsafe { (*ptr).value = i as i32 * 10 };
> +//! #     // SAFETY: `&raw mut` creates a pointer valid for `INIT_LIST_HEAD`.
> +//! #     unsafe { bindings::INIT_LIST_HEAD(&raw mut (*ptr).link) };
> +//! #     // SAFETY: `link` was just initialized and `head` is a valid list head.
> +//! #     unsafe { bindings::list_add_tail(&mut (*ptr).link, head) };
> +//! # }
> +//!
> +//! //
> +//! /// Rust wrapper for the C struct.
> +//! ///
> +//! /// The list item struct in this example is defined in C code as:
> +//! ///
> +//! /// ```c
> +//! /// struct SampleItemC {
> +//! ///     int value;
> +//! ///     struct list_head link;
> +//! /// };
> +//! /// ```
> +//! #[repr(transparent)]
> +//! pub struct Item(Opaque<SampleItemC>);
> +//!
> +//! impl Item {
> +//!     pub fn value(&self) -> i32 {
> +//!         // SAFETY: `Item` has same layout as `SampleItemC`.
> +//!         unsafe { (*self.0.get()).value }
> +//!     }
> +//! }
> +//!
> +//!
> +//! // Create typed [`CList`] from sentinel head.
> +//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
> +//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
> +//! let list = clist_create!(unsafe { head, Item, SampleItemC, link });

Bad news.

My build triggers this warning:

error: statement has unnecessary safety comment
    --> rust/doctests_kernel_generated.rs:7103:1
     |
7103 | let list = clist_create!(unsafe { head, Item, SampleItemC, link });
     | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
     |
help: consider removing the safety comment
    --> rust/doctests_kernel_generated.rs:7101:4
     |
7101 | // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
     |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
     = help: for further information visit https://rust-lang.github.io/rust-clippy/rust-1.94.0/index.html#unnecessary_safety_comment
     = note: `-D clippy::unnecessary-safety-comment` implied by `-D warnings`
     = help: to override `-D warnings` add `#[allow(clippy::unnecessary_safety_comment)]`

This probably needs to be:

	unsafe { clist_create!(head, Item, SampleItemC, link) }

Alice
