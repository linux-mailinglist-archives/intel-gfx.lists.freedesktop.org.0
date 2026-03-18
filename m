Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GIjIGVkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319112F766A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5C110E51D;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="APFO8JnJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4224E10E120
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 14:30:46 +0000 (UTC)
Received: by mail-dl1-f48.google.com with SMTP id
 a92af1059eb24-12711867ca1so444946c88.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 07:30:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773844245; cv=none;
 d=google.com; s=arc-20240605;
 b=K0ySIc57Vdw0AIXVJc9PhbiPyR0z9JZs+d7jBfW3WcKovULpjT+OXE+OGXB67dRk1q
 LQpvm58xBWa8AdoPaJaxcHjdagXfMuBsLtOpqEVXpkrb9wtvQDQxc0NXOdF0vV1aCaQ+
 RHerD7NCD/l3Cj1X8YthoEZAJ+fUVrdfwP8vzkcYhJUgb2RBESPwLaRlsTNZg/GNNLGS
 mcdATBWMb27xjLANL+1EzDxO35PeugFFs5v7d0RuKrGFTdTbS6b5iHSds26nU3Tdlxld
 YW5YeugQDrJ9tqM2zqzg2Qy0NY0wKmCmSB8Hu87KIlhoOCJEa3gANkPNdvxeOH/v/9R9
 09kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=Lz2XCxRPQhc2ZncmeIQiQRFj2Y2HhTtKvhZaZiMtVkM=;
 fh=e7fg+1nZqp63TC7OVHHGQh2y0BXc0UHYyMyy4MsmACw=;
 b=RN5dvoq8D7jF+X62/h5eXSJ7rRHwzuKnNNLQb5DMJwRBCqChbXunvCXa3YNYs100eH
 IVLzZtfZ9ClYhOmSGCiQ6hBvIiG2LOxWHYDiFq4MC959xtq5EUqkUl5ZW0YW8lUfHtWf
 WuqJZw6OqDiEitRGhcAHMLlUlbS8ZR2nzwMBhvXRfm/IMvrKY2ouDJlZE5pfv58pmwWz
 H4IbgWIqg+nizP4Etrij0sAv4hbWHHgtffCMm+DdyVOesh8+522hqC0RQ0wUF89mQZY6
 tETuFgwzVXCj3Ys2y7YPY33m41PYH5E+HVwsKRgN9rg0vdUHZIV5lTBV/3zFzMVQMVYJ
 iuKA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773844245; x=1774449045; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Lz2XCxRPQhc2ZncmeIQiQRFj2Y2HhTtKvhZaZiMtVkM=;
 b=APFO8JnJ1yOoESUujcgaa6jVuaKJ+IvM89d3gFOWGcbiaYfaF8HgHZ5zc6lRral7r3
 ux2M8j6RSBU0vZ24PNLPK15xLa+ASU6gnt5Op8mDHwASbjJEuDEvQylNbQz8yO/G7yw9
 DdKbVOiN8J3DWqQADX4jPbr/V25XaW/0jzMyeHfCLkPViNXj3thVDqhw0/WzU7R3m55R
 SHZ/rziRd90fvETjLOvH3outj3i1jSnekOBcz+ZjlwuwgEZ+x1CTXb9dVZ4rikrJDYPo
 EpOAWkx+JhMC61oj78qloUcNQ+bL+a4xRuEgJ9QTSFKz3nt2QlvH3RysOtepAOYQhDm7
 S4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773844245; x=1774449045;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Lz2XCxRPQhc2ZncmeIQiQRFj2Y2HhTtKvhZaZiMtVkM=;
 b=DIPDFdWs3q2rbODCjI4uzjBr4mDfgI5WLlxPN3sDeKvZmk8g5cRR0ggXvlyVY81hBe
 RAQFmrOaY/NRqAooKMOSl9xuqpkffn8C8YUNW6Tz9xwSATRfKfYd6EHaEj9rxCaeUT4Y
 qncLqguVGwn8lhrXL6seDnj2wRyiyEI3+bIqU7NmI5eioFCsLusKNj7MgRkDy3bp1uDc
 b8sQM7BdNe0uhk34+01B0s100y/sJlDLUsv3PnNSBYd1VDjxZPQodLd6B9CL9F/b8SZF
 vaHjgSqzL3AoJuA1BlV01vovPxx6KH9UBy6KZiXrKI6iwkqCg1H420aKuEvtadf/73OI
 rNxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJNxD4NK2Ql0NnbaGA2JV03Z1nMzyj8QDxLE6A6Sd6PWSLHyVkgXZRRvNgB8DkBsfMJ49LFCiUL3Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxgpafdDP7fztoChn7BXj0sj2qHLPjiKi6Oqx1cNWX+DT/FSRmz
 JkDWq5afkM/dvRaypThSaTWm1XxfslfD7BUO+eTELGAMKly/nPlUVleH/cx65Pd9+6W/01EB5Fg
 5PdUajL662fJ08T2BdUwzzL596kwAej4=
X-Gm-Gg: ATEYQzzDSWYFcQETuq3352opDn0v6XiQLZm4D/ABRxKI87x4SXkWEohEu7BYOIMlRdS
 c+hPlU5VKXBfpxtJ3si3jb9UsXcB5an/NCa95eLViMVpTqOj4Twgrbei1xMzoGA++J3tvZa6mLb
 r8bnel+YQF86Z3eBMGG4Wj+g2Wz9Xy74ORoX5F8sgv4WjFpyIKVBJ6pg6WJkollAbJ4ueIxT2mZ
 YseHKP8zohTQspXt7yyMGFtdgQM1qmz5Vs9t2jYDTEnMYMhVp3CNA8pO+VdNw1an+zJairHrXN4
 u2AiDLg1J5+sV1V2EArsKtENLK6vQPhKiZUxtfAo4COIRf/u7/ro1asfC8sZ5b2jKGIiDODSfr6
 GSvXUWSym
X-Received: by 2002:a05:7301:1e96:b0:2bd:fa8f:77f4 with SMTP id
 5a478bee46e88-2c0e518610dmr846274eec.4.1773844245396; Wed, 18 Mar 2026
 07:30:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
 <CAH5fLgjUMaC5v3SERZLosdD1ajU-fvKSgNq6OgbBBcoTS21-Sg@mail.gmail.com>
In-Reply-To: <CAH5fLgjUMaC5v3SERZLosdD1ajU-fvKSgNq6OgbBBcoTS21-Sg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Mar 2026 15:30:32 +0100
X-Gm-Features: AaiRm50bVmwgAQrBl1Sd2LWxaRmG-ZY7uRxgxq5LrbNAlb0we3rijRktUCTLM4o
Message-ID: <CANiq72=GGicUCODkY3C8U53wQfsuRYeu9GiwrM5eFhkP99kiHw@mail.gmail.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Alice Ryhl <aliceryhl@google.com>
Cc: Alexandre Courbot <acourbot@nvidia.com>,
 Joel Fernandes <joelagnelf@nvidia.com>, 
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
	DATE_IN_PAST(1.00)[121];
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
	FORGED_RECIPIENTS(0.00)[m:aliceryhl@google.com,m:acourbot@nvidia.com,m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:
 arighi@nvidia.com,m:aritger@nvidia.com,m:zhiw@nvidia.com,m:balbirs@nvidia.com,m:alexeyi@nvidia.com,m:ecourtney@nvidia.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[54];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 319112F766A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:59=E2=80=AFAM Alice Ryhl <aliceryhl@google.com> =
wrote:
>
> I'm not sure we have discussed it in detail yet. Both are used in-tree.

Yeah, we have discussed this several times in the list and in meetings
-- please see by other reply.

The handful existing ones I think were all created by Lina (so perhaps
some were kept as-is to avoid extra modifications of the patch -- not
sure) or by you (so those don't count ;)

Cheers,
Miguel
