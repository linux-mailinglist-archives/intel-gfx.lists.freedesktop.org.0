Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gF0IJGhkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B872F76B7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E37E10E538;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kEXvo3on";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 533ED10E1B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 00:08:20 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-79a3ba1653fso24020227b3.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2026 17:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774224499; cv=none;
 d=google.com; s=arc-20240605;
 b=RWlJ4MV0pnn4WaKcyTJ2B9Mxz/IoaEgos7arwf/8pJgcmDDwuB1ugUGYOYVmRKfvrL
 k59CFNZemc/E9VP9X8MM8zBBuMW7Fj2sKZZPHDfKj2j9tiauYikfPWasP8Qe3lbqiwTF
 5WWBGBUDEI7IGRGmvg/jwjHMHs3fVgH4zhTbYjVMO72fDsD0XHTzywHe54nDVvAnsvH6
 9bEFp+9IfCzFkyZJqZ8klNB//msbjvik/BSGPfpwRzY052rsOzYxNMzpMsiDR2uZB/J2
 ozCznGTKDtrrBgX+yb4D82BSBion2rAyoICZW8Ys++sJ/W7ix245pB06MsUFQRDh9NDd
 gZ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=+To22M9XrloAsp8zyktj8aS2Z2Pum4SQehyzZWues4c=;
 fh=va/xi5IDGTDr8LZf6KfMdoEYA08YlNKd0+/dpvMMetY=;
 b=Hms0393SJCJpjmx/kI25Jv7NwN4VX7M8J14DNnBTK2iMLGz8Ot829ab4EQUOD587uH
 45ubB22/9wmh86R6OiOsoluvuPIdESsY1eDg55kjDmruj1h9hvT9b4LOenPrXDg/6CPW
 hVf8a0W4UFytAoAp/w5DQnB7+m+Oa6Bb49Dw7NVtB/lzpIKQXPrxpv41Zkjjg1wI8ZZR
 4/nZAMi3X5gDZ0SViHh6wk9ywS21JiWtlQxa0b+i4GTIOAseJal6EWZcCcyDDlwGEMQ3
 QpLOTXVV/Md83ot8kxX3hEY6+P0UNrI1WP9wEP8UiAWYF/sZ5i71X/Dnl3GCONR++Xh4
 vQ+Q==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774224499; x=1774829299; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+To22M9XrloAsp8zyktj8aS2Z2Pum4SQehyzZWues4c=;
 b=kEXvo3onKDbCYpEcl0SNVj2ns8u+u0QKaeCMtHhJEWK4Qs1BcB3Efu+6t10YZH1hkw
 vLYIWXJSw0z9DtUIP8sh+u3A1mjTUmZKLjJba9RljRCB/yMoZiBm2ZPmO7ITJHN6+W/O
 ocQhy67noDzAjBdt5X2trx1eYJpj/P/9iYwBC8fIkaRVIpBfXOGoH+ZIwDSnMCy141aC
 6ZbhPLo32QrFsVvcZt6BYQ7s22TBvcpap2AH2eEVTcApnLnHpwpumm1KRfN5PPiBMH1m
 SkFCQSUloorUvOuyNIXfOh3sXVDSSS+Ijgo/pv8sRC7YK0Wbswfi6x4sZu0C2EOGv4wy
 S/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774224499; x=1774829299;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+To22M9XrloAsp8zyktj8aS2Z2Pum4SQehyzZWues4c=;
 b=SVTdN6uadmH8UXRNTE2kJz1MboiJI0JlmKx5V3wSusQAhAEE2aQGDSxt6UQtW/hkUN
 F3leaUKhTHmnB8FRVczopwDG+sL3fDqvbtraDZqrCebo6ABvwGp2dEmySBCzCWDgOOoG
 kfPlRWG+hHttB6mdU452iJDAiSTfS6xb75Q1tSQQKPF283sh8Zau2g+MLHVlFpRw4eut
 6+skPIx2FZoJGX7L1jnxoNonMnIJhzLc+8E3kRioEbaviSe1NexGFrSmAPED4RoP4QvY
 Yv21rdnPHnXrINHfoTeBxGM3hqW78+y0i+q8aIBPXaQdj4DJtG4xCCDsKpMxRHs9HvWy
 RTeg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVqf3PK0/fn3qorRxEVCwhrUJbSeIXgahM7KpQ9fFNZzDZ84K6ii162tX0IpFhSItHFX7XhDrq39JY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwQkMN6Lj/tsPYyEVxdiD9sCOxynaHw10wcO/ss7xPtuKhl50ZC
 q96giFPbJydM6VISxY1RfqVdyDwk8KVINGbZrf4lNlSQ6K2hxUR0N5mGGK+lA4JmqkSxcOp9sbG
 Y+kBNsIo+oNpaH25W0xq9DwqAaZg9bh0=
X-Gm-Gg: ATEYQzwIeeRPs4W0wjjBNFLZyP6Lr+ervOmCZ+AUtuDv4rSloN3lpjgOHte8Es1zEXy
 tb1W79AZWvEja8ExxZzopMeqFZQ4G0kpURYSLySv+kLh5RJi3XnfnEX+BJ+Gfj7ElFhpBQzYO4A
 5YLxfcOandCTJNUn1w7BADuMWbXgXB2QVpCObYfjQFz7nTNp7HU8mJO+WmqtGCLTGr2Qc6hr/YW
 LHCN41oJUQDO19DiVT0WzHXY70PmTN+A5j7CHwhabHwYKuHe/UwHjIluoliTDE2kjC8hXDOadgC
 4G7O4+3ujQa2eqd2eifonbPlhBzjg3voynLEbRQ9zmVrzlgE
X-Received: by 2002:a05:690c:4424:b0:798:6f13:2419 with SMTP id
 00721157ae682-79a90bce798mr96296727b3.37.1774224499042; Sun, 22 Mar 2026
 17:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com> <abqdUBqchnVFo7Qk@google.com>
 <71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com>
 <CANiq72nZKx7pw_rZK2mHHvR=TaeGvMRvg5GTHOd58X17oyxieg@mail.gmail.com>
In-Reply-To: <CANiq72nZKx7pw_rZK2mHHvR=TaeGvMRvg5GTHOd58X17oyxieg@mail.gmail.com>
From: =?UTF-8?Q?Alejandra_Gonz=C3=A1lez?= <blyxyas@gmail.com>
Date: Mon, 23 Mar 2026 01:07:43 +0100
X-Gm-Features: AQROBzBsI6copsViR8GCb5s4kn_1rinKOMbl-9Inr9UPp4mS88b9cJGUv5vqwNA
Message-ID: <CAGeanHfNwP6Zs3LSfc9eEO7_LG0kK-jO24oUd7BjxrQbndEmNw@mail.gmail.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Joel Fernandes <joelagnelf@nvidia.com>, Alice Ryhl <aliceryhl@google.com>, 
 linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>, 
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, 
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
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[blyxyas@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:miguel.ojeda.sandonis@gmail.com,m:joelagnelf@nvidia.com,m:aliceryhl@google.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:acourbot@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttab
 i@nvidia.com,m:epeer@nvidia.com,m:arighi@nvidia.com,m:aritger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:miguelojedasandonis@gmail.com,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[nvidia.com,google.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[55];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[blyxyas@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 24B872F76B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 7:57=E2=80=AFPM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Wed, Mar 18, 2026 at 7:31=E2=80=AFPM Joel Fernandes <joelagnelf@nvidia=
.com> wrote:
> >
> > Anyway, the fix is simple, just need to do // SAFETY*: as Miguel sugges=
ts
> > here, instead of // SAFETY:
> > https://lore.kernel.org/all/CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77dP=
id89LExw@mail.gmail.com/
>
> So, to clarify, I suggested it as a temporary thing we could do if we
> want to use that "fake `unsafe` block in macro matcher" pattern more
> and more.
>
> i.e. if we plan to use the pattern more, then I am happy to ask
> upstream if it would make sense for Clippy to recognize it (or perhaps
> it is just a false negative instead of a false positive, given
> `impl_device_context_deref`), so that we don't need a hacked safety
> tag (Cc'ing Alejandra).

The team is a bit hesitant on adding comment-specific syntax apart
from the widely used (and already on clippy) `// SAFETY` comments.

I'm pushing for some more comments specific to the Rust4Linux project,
because we already tailor some lints for specific projects (such as the
Safety Critical Rust Consortium), but adding more than new types of
comments is a bit much.

On this specific lint emission, I'll see if I can get it fixed,
because it's a false
positive.

Cheers,
Alejandra.
