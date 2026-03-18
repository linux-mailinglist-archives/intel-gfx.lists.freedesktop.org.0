Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJ07OF5pumnnWAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 09:59:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483462B895C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 09:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A620410E772;
	Wed, 18 Mar 2026 08:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="AdFXKhWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64BF10E777
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 08:59:06 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id
 ffacd0b85a97d-439ae2cba40so6244832f8f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 01:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773824345; x=1774429145;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=MXY9EHBXCnPWVfnYnREpBujBITTjaoQ0F5qTzNSzUus=;
 b=AdFXKhWbzkC/P817pKAHLvAFJFesMoJvZ6h/nH+QUkSIxbKYNe61F/ZctegLuzcC3s
 G9kENx49LoQ8X7AJnMlIN/HkepXTElQDuybO69SK4QlStqtJ/Z7fK/eD++u9/4USNR1Q
 KzHRdBmKmr6aOlD1HdiZGsW4+DkrPcd76+Rk+jn25js/y5pxkE9I5BLYjdNnfNHf5kqJ
 wVGwcWtc8vUXLYnxQTG7DeEZa7MVwHSpfRAQwovjjHfRfZNOusOliqfICJtt2fvD5aJE
 J1TjfeGrEPXDPZPqLJCzJbj4ckHZ8AcMQMlxMr2bKdxhKUjc8Iziuw9LOnkK0TFTw6rS
 XLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773824345; x=1774429145;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MXY9EHBXCnPWVfnYnREpBujBITTjaoQ0F5qTzNSzUus=;
 b=dzuqryG6VJsAI4fllzslcQXrEJoezeMiAEVfcyQbO6PUN+Vr+XmCmOSpqwgnj+Pxsh
 3zWE5UkHe6xn8RNYZuM3sygo/Xk9VlrwV6v3aivY/f7h/vv99Hs3od6GM69l5ZZ5hyVl
 EXWwUKnX9GRdTTpzRVI2zvIQ3b0AUycunaSptM2xDXb9+aEcP8J+49uNZWIcZCoUCYcm
 FomBlyb6Wb5L5/3Yq7plxg6BmTMCPVRqlp90CCexVHIQqS3xyQEGV7FC8rFfQZ95icjA
 zzmwH/37evLV+7CHevoH2MUl0sjjrtU/Bud4tU+Xq1Cgqz1uQvwhVp3YFTVc6wzZQ5Ql
 AAhw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVslMzeiCKGHUDopyEJKVy5FdDacqg+9qqWl+n9iOyUk203jvdsM2a2dD1wr2HO72HMk8/klTcFyhs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz/NDEUycjdvQh3naUX7MiiuauH3uj4lpRvksS17HV3TqPOpelZ
 QI7CSyWtvp5PmQGMOypr6SDjEixCrm5R0OYKo0hwkhqaf7fQpBCwoCvsb/KYaJAsVNKmmiuOTih
 sf7yAo1oSiJ3X/aSWRQ==
X-Received: from wmqe14.prod.google.com ([2002:a05:600c:4e4e:b0:485:3539:bc05])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:a20b:b0:485:3bb5:92cf with SMTP id
 5b1f17b1804b1-486f4422300mr29381305e9.12.1773824344660; 
 Wed, 18 Mar 2026 01:59:04 -0700 (PDT)
Date: Wed, 18 Mar 2026 08:59:03 +0000
In-Reply-To: <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
Mime-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
Message-ID: <abppV3e91iVzplcv@google.com>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:acourbot@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:arighi@nvidia.com,m:ari
 tger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[53];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 483462B895C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 04:18:46PM -0400, Joel Fernandes wrote:
> 
> 
> On 3/17/2026 4:17 PM, Joel Fernandes wrote:
> > Add a new module `kernel::interop::list` for working with C's doubly
> > circular linked lists. Provide low-level iteration over list nodes.
> > 
> > Typed iteration over actual items is provided with a `clist_create`
> > macro to assist in creation of the `CList` type.
> > 
> > Cc: Nikola Djukic <ndjukic@nvidia.com>
> > Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
> > Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
> > Acked-by: Alexandre Courbot <acourbot@nvidia.com>
> > Acked-by: Gary Guo <gary@garyguo.net>
> > Acked-by: Miguel Ojeda <ojeda@kernel.org>
> > Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> > ---
> >  MAINTAINERS                 |   8 +
> >  rust/helpers/helpers.c      |   1 +
> >  rust/helpers/list.c         |  17 ++
> >  rust/kernel/interop.rs      |   9 +
> >  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
> >  rust/kernel/lib.rs          |   2 +
> >  6 files changed, 379 insertions(+)
> >  create mode 100644 rust/helpers/list.c
> >  create mode 100644 rust/kernel/interop.rs
> >  create mode 100644 rust/kernel/interop/list.rs
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 4bd6b538a51f..e847099efcc2 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
> >  F:	rust/kernel/alloc.rs
> >  F:	rust/kernel/alloc/
> >  
> > +RUST [INTEROP]
> > +M:	Joel Fernandes <joelagnelf@nvidia.com>
> > +M:	Alexandre Courbot <acourbot@nvidia.com>
> > +L:	rust-for-linux@vger.kernel.org
> > +S:	Maintained
> > +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
> > +F:	rust/kernel/interop/
> 
> Sorry, I forgot to add an additional F: for the rust/kernel/interop.rs file.
> Danilo/Miguel, do you mind adding this when applying?

I think you should consider a mod.rs file to avoid this. It's tiny, and
just re-exports submodules, so I don't think the "mod.rs name in file
view" concern is that big, and IMO having files related to interop/
inside the directory is much better than having them outside.

Alice
