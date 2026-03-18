Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJoyFnFkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D941C2F777B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF9810E582;
	Mon, 23 Mar 2026 16:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L0DTtRSj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824BF10E72E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 18:57:23 +0000 (UTC)
Received: by mail-dl1-f53.google.com with SMTP id
 a92af1059eb24-12714f01940so25268c88.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 11:57:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773860243; cv=none;
 d=google.com; s=arc-20240605;
 b=Nz3nxcuyufndoNqfAXexoldqPdDroBtOlOKj3SYm+5imORYv6yWctNVL3BmEW6Ebna
 33MHwYkYTmTZPMFqVc8g6QLSiSiQdIpqOngI0BZSWxm3tlY3CttT6h2L7RRwxDAAfeAI
 8Sto64kwdZrOihAG4Cj6VVGmByIIBJ4Alp0gq8Nmfkne+n+lH6yO7ey5csVBAm0pdZq3
 4XYLDOk1GF7VH2MhVlNICZgmAd8Qv7aWcAaV3IO32QtjJQIh9CW57yTfsMidp6Nt7r7N
 AIzSEJ/sCpneMth+jRwDWuHo69N5+MSHrPlGeWdqZuJpZh4nGqVJAgFKeJlg7lPaICTI
 CWEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=VupaCI1OwER3l7ohvi40E+Y56v6gbAu+x5/VVVtmeFc=;
 fh=xXWb7ubYaWflvIPK/eHcR76x6FTK2WxR9jlHGhwY63I=;
 b=JygHRRcPD1m0EIT7Bjvyf9dOV2kIgUzkVJTbDTkj04+1N4Sc3fFJddd/ELbKAJnHHJ
 pnh7a1NbqtPb729buzDQ9vMFBkhUaFdpz33lVc1AqOEZHzysZRbzIf7+bE3t/BDadGEU
 KB0PrFPPVaykjwv8v+017+usgFRA7v+OqTJJW2jeiRGDe+z7FYxpnbo+Ux9GrODZlj2N
 dRenDoK5JTt8sCDQIs4VSIe7nToEbz/O3USYhC0wnN5IqVnsQYfVmHr0zB4E2B087ISC
 upg7uryxesMHTs6N3hGywDnXc9bFsngH/M5ED6r/v4UqUQ2783vZ4nRPaLF5xXq4wCxj
 /CBw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773860243; x=1774465043; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VupaCI1OwER3l7ohvi40E+Y56v6gbAu+x5/VVVtmeFc=;
 b=L0DTtRSjD3P3foLZzcumBUqXBNdSjOrQZwtECp9tPcgS0q9LqHnvJaH7dj94Sxq/sr
 PUtC+N5h1uLnGRTOxod6NNqMaqXGx48v8gHJ2IQVnb8CjT9EBQ+KRLYMnqvtqn34seen
 V3g9URV6HjGebB3Tenn4M5DkDPl8vZDMYL4/1urXKbasaSZFknDwmg17N8CaIrosgceb
 +ZST64CeDqVD1cHP3sXqLhyS3XTCHF7iM7ihUMzKaostxn2QgSAQymx72ePvSrRaH77p
 UpGQrWPmWVLBKoGU2Zl5A8Bj9RwsUcOlWNLcrjVzHIrs/lKK/3JIh6PuVUmnX9SCaiEX
 sduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773860243; x=1774465043;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=VupaCI1OwER3l7ohvi40E+Y56v6gbAu+x5/VVVtmeFc=;
 b=H+OHXpA9hnb0A1xna+QuLx9RBpnnvu4PywmTChbXlQLAsxrxn1xOFJkeiJ6qTnF0f1
 eJwUzlI9flWv1oaF1iDAufQOl/klOlTNAuK+pc2C0LfTxH0qrbx3lR5aWDNJIHLwyaaW
 mQ261OtBqLqGJnutnM5JGkbPQ7jEvLoEf/j3s3uILLVjLJ9Y7fVEXh+YsbCJ9c7+lEj2
 2NpIvk2qEMGbkWGnNjEPSnEA51+xqU4LtaDBh7Z3bKDQXp6WaZto7GDtGE6tCX+5eY4e
 2TmZEHrDtVkhayx9haK72n2q5XhSHcAiAenaV4l7X5U8v4bFs/9c8u8BJyS4IbC+kLsg
 lokA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQV6fRFoDQ0k/T/8BiPLjBsBIvmNkUqhSwrGj/toMgEOWWaYkl5sjouU2W0HR01HGtfMh84wSKoro=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw0OWUFocQN5CeA+tlc8VASK26fiwICrxsUOQi/gatS97V1zgz+
 m7MkGx2AMd32znFCQPAWAYTfrQuTFL0W51+j9QjGK/q0ocuijvwvaCdIlgHhKeUoU77Cy64fcGS
 iaCi0eISqb3Xr5ry11khoiRyof1auvg8=
X-Gm-Gg: ATEYQzyQQOGbfA2Kir1Oe8KwHN5r82d51VzylhmAHefdgQ5Xipkd9UGjdZDpHpxvCoZ
 NAshAa/X7bRpj5RMFrA80sEy4PEReZP3S8IFHUhnWXO9JCx4IN6ku3LMVnIwqMS1WWiOjv7Jvkj
 DqQTGjnZ7ILsNN/x5+t4gNEOJjDmtQV6GeTe86rWh0gXWz+Rt72hay1vCGaap6qOFhr2cARavmO
 dWr49ewPPHjfmZkYGgGAc8USSlgnrKfgMtCH9QYlh93USbUzbm81GUQ7wbgbOZKcdgo5EuteO7+
 d4a9ZvvbU2y5h243Y7odILkS1z4lGz2s3xmkr0BNvxZCE7y1n+3+o0+5ErHuBECRR3d745NQySG
 /u2XhfA54it2Jr4O/6+k/9cPXXK8U/w7E/w==
X-Received: by 2002:a05:7301:658a:b0:2bd:a3fa:9bdc with SMTP id
 5a478bee46e88-2c0e51afa4fmr1076751eec.5.1773860242532; Wed, 18 Mar 2026
 11:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
 <CANiq72=bmJ_GWKowAgv+DWQ8FcWK_HePwjaVgeDmRH+gVD-z5g@mail.gmail.com>
 <CAH5fLgg-kgeBw3Py-EZmAEJhm357u5NJP6na4qJe8v3aeFW5Cg@mail.gmail.com>
 <CANiq72nad-60tOJeAfkvHTFrWXQS_wbG4JUGQNnkjm_NvhhaYw@mail.gmail.com>
 <DH5ZP3IUEWMD.TOOZSEUTLV85@kernel.org>
In-Reply-To: <DH5ZP3IUEWMD.TOOZSEUTLV85@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Mar 2026 19:57:08 +0100
X-Gm-Features: AaiRm53Z-cAG5mIpOPhPdv8BAXPHEZ1FbMlHxMtUEupEIZpM9NVL3ZvZ5w4-nno
Message-ID: <CANiq72ndoX123PKYr4DbJpvQaM=1YjYoYhoTq7wMoY51X7PuNw@mail.gmail.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Danilo Krummrich <dakr@kernel.org>
Cc: Alice Ryhl <aliceryhl@google.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Joel Fernandes <joelagnelf@nvidia.com>, linux-kernel@vger.kernel.org, 
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, 
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>, 
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[117];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dakr@kernel.org,m:aliceryhl@google.com,m:acourbot@nvidia.com,m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:
 arighi@nvidia.com,m:aritger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[54];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[google.com,nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D941C2F777B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 3:49=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> What do you mean with extra file?

Right, sorry -- I was probably overfocused on the `mod.rs` symlink for
some reason. We may have talked about generating them on the fly in
the past too, I don't recall anymore.

Let's assume "s/an extra file/extra lines" on my message... If folks
are OK writing manually them, or that we generate them on the fly,
then I am happy I can get the option I always liked! :P

We can chat about it in one of the calls.

Cheers,
Miguel
