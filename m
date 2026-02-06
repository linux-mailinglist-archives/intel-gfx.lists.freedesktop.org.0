Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MES7OdA+hWm1+gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 02:07:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80829F8D77
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 02:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008E510E21F;
	Fri,  6 Feb 2026 01:07:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="axMNipv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0D210E225
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Feb 2026 01:07:25 +0000 (UTC)
Received: by mail-qv1-f53.google.com with SMTP id
 6a1803df08f44-88a2e3bd3cdso21544746d6.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Feb 2026 17:07:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770340044; cv=none;
 d=google.com; s=arc-20240605;
 b=M8moMo39zmxewEum/TTfm3obwke4qJ6cEmuB9c5H1+ufXGWXDwLl0hNaSYxwkysa/I
 tk45CyPRU4YpB7K6ni/cuoRpfeag67PNiSd70Qm/3VQidcd/1z1PMdvxRcGubquFvZNU
 KY4QffnFuElM+REIPfukvPPN0Z6euoAEFY1L9zvLxkrG1DpZAXiYEeJZhpr10u8/qinm
 GnmzouOVuQfg+z/VN/qfLAI8Jw8vU8hwq7bEpihAuVAWhwHhI2g4iQ7UbeJElpDeoAga
 604Kn4/Gtx1ZZr0+zi6EFw3uO1kaBK86UokLDUQbdhLIfXUpiIAEk11EprlU7x4gvaMz
 BhKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=wDWVWFCQyt41m36By+1mg9Tz8HGxZTNBLIvQ/XOM2S4=;
 fh=/ldHqwCac8xcdE5JGUGjke8W2UoB44yUdB/IlE1BGg8=;
 b=A849hTEvHfCSbua2Ka0nZBS9SI5HQhjAMbumMUMLJgFHlYeOs6aJNL40FRKg1Y9D02
 UdbI36a108S72q+5ClIS0I5NUkSpOQYK78jD4YzDXo/IR7sXUN9AoFz9qxKjqv06TAUy
 ZnpYvwNY5kjR+mRwz71Hca1WFbpc5dzslss0O7JbpMqPA1fA20lYR6lIRqMRVaqasBVi
 W7DIGtTC+3c2dEi4mTw6eVe9bpttjN+wwWvoNWrO8xGHqzV+AbLWjZvMuY5rJVCQBKRf
 YhllnUcWX6XJjM78+M+VbgGPU/fQNV8t6JlU5KTYisZfQTRYW30ljkAfdKKpRKhg8b7B
 dGkw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770340044; x=1770944844; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wDWVWFCQyt41m36By+1mg9Tz8HGxZTNBLIvQ/XOM2S4=;
 b=axMNipv9rCDoUnNKM22DGe0DqtfDa83qsjEcdokLVq5/zC/acXS2L1e8iL6zs2QsUr
 OwtvKrLTjw1nPqsIVRh+01IwLqcB0crmhg2X8hj3erorBR4JTraNWSP9kPG9rb38HNsS
 bmhqt0dOmQ7aIpLzXey0UuPwxy6PRlGBwTEZMZp8wsrLgFPE97LxOnbXrHRMhQfkIT01
 pmJ48CFbKrxH3bWw1KihhKMlKJkctJgJ1BqJGTmBcA48E7O9cbmCtRsaQRKzVwPEdI03
 mQRMqe4HDSDgGXtINaXq+fL44ITjOEuT5BoL7jJm9jWRCTGXvqS5HjUYBLlay7quYIRT
 hNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770340044; x=1770944844;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wDWVWFCQyt41m36By+1mg9Tz8HGxZTNBLIvQ/XOM2S4=;
 b=DF+N2QjK/IdDGirw58OQRbivXHwjnjsih6h49dhHOggZNqRyMtUpitJylnDdTadbX5
 fALxNNUuwTq7tTkT+idXTe2zmAe5d9gmaMHrXsy2fYGzu4fpztKMGSVAwDKZl+NrkcPz
 iEtOSbBH11ozVZOaIEHRHlOFX+/FbYypWvuahyJw3zvgU9cT4ADVswzvdOdCOZeRCUJx
 BoX6PJvJ9w1NTTsD02pKwLTZxK0x2zUz1yOaR6eSe5XxZM2DaiJTb5m+0q9jAQ0nfuv4
 8ATInLVCkgpLPo5489wqQscELK80n47RBvmBb25UVTE8h2XG+sTYDodpZtC/L5sk1+xB
 3BlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCIQfHeQLdsD5OyH9k6GQPQ8wE3Vgltgw8S7R2IgyNxgahRrpuVHrHz6UUP4ztauUEy//RXKZEg3Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyfyl5HOIck3UqaXaM1SZcigljECMDAWuVc7EgbbpuPpZy2Ldan
 KuwYDZQByynR+okyZu9VcMN5uFXJYF+qdVa9USgbMs4SKCZyOJt07c4lY4HPA8fOmHUBGeHpI3/
 olQ0gbRbRsWRNJmvqFgsr8g25RrPQTU4=
X-Gm-Gg: AZuq6aJ2dMY0X8AuqcBK+FIF+Nrv5GOI3FL+0uiKItBVQVOFm6nBTIeuK0fpbwhi2Bo
 FO/VHrJpp4b7GyYutMr5luns8t23oN8joh2STzsBac98AXcpZcZR7KkydH/+oSOr1AzVY2LQPNF
 AoCpvGdovLUy0JuekVy/udbnmKUciV3VJnve6/iiFokxMmmd30eZ+iPAiMOiYuM7CKPgU/+lWmQ
 zdD5+6XmWm370pFW9rklCyDUArmA03+0lm2dnZjBslN80eR14meu5DnKsouOMB9tHEuw6P+hxfc
 7iB9ZMkobdRbO7ufJ1UM75abvQZ96kxesQaQusRzPS387tX7mga0iP0=
X-Received: by 2002:a05:6214:c29:b0:88a:44c8:fe30 with SMTP id
 6a1803df08f44-8953000350fmr75404466d6.10.1770340043910; Thu, 05 Feb 2026
 17:07:23 -0800 (PST)
MIME-Version: 1.0
References: <20260120204303.3229303-1-joelagnelf@nvidia.com>
 <20260120204303.3229303-3-joelagnelf@nvidia.com>
 <CAPM=9tz5iXoFQ3+4hPFW+tZCL2zWe0WJ07-oFkP8TNVL_J_SSg@mail.gmail.com>
 <44542f0b-be3d-4e82-aacf-0bf19ab69954@nvidia.com>
In-Reply-To: <44542f0b-be3d-4e82-aacf-0bf19ab69954@nvidia.com>
From: Dave Airlie <airlied@gmail.com>
Date: Fri, 6 Feb 2026 11:07:12 +1000
X-Gm-Features: AZwV_QjEIAozPEFJ7NdCW81HEOLtXZUhxCZzFmSJOZbp-SMcdPX-QLYah3tkGzE
Message-ID: <CAPM=9tzafj_-L+ia8q=tL5DBWZU9PdSq9vaCAD7ituoMR+CaQg@mail.gmail.com>
Subject: Re: [PATCH RFC v6 02/26] gpu: Move DRM buddy allocator one level up
To: Joel Fernandes <joelagnelf@nvidia.com>
Cc: linux-kernel@vger.kernel.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, 
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Helge Deller <deller@gmx.de>, Danilo Krummrich <dakr@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
 Trevor Gross <tmgross@umich.edu>, John Hubbard <jhubbard@nvidia.com>, 
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, 
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>, 
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Alexey Ivanov <alexeyi@nvidia.com>, 
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>, 
 Elle Rhumsaa <elle@weathered-steel.dev>,
 Daniel Almeida <daniel.almeida@collabora.com>, 
 joel@joelfernandes.org, nouveau@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, 
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-fbdev@vger.kernel.org
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
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:dakr@kernel.org,m:aliceryhl@google.com,m:ojeda@kernel.org,m:alex.gaynor@gmail.com,m:boqun.feng@gmail.com,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:acourbot@nvidia.com,m:arighi@nvidia.com,m:aritger@nvidia.com,m:zhiw@nvidia.com,m:alexeyi@nvidia.com,m:balbirs@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:daniel.almeida@col
 labora.com,m:joel@joelfernandes.org,m:nouveau@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,m:boqunfeng@gmail.com,s:lists@lfdr.de];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[131.252.210.177:from];
	FORGED_SENDER(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,google.com,gmail.com,garyguo.net,protonmail.com,umich.edu,nvidia.com,weathered-steel.dev,collabora.com,joelfernandes.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[51];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.219.53:received];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 80829F8D77
X-Rspamd-Action: no action

On Fri, 6 Feb 2026 at 11:04, Joel Fernandes <joelagnelf@nvidia.com> wrote:
>
>
>
> On 2/5/2026 3:55 PM, Dave Airlie wrote:
> > On Wed, 21 Jan 2026 at 06:44, Joel Fernandes <joelagnelf@nvidia.com> wrote:
> >>
> >> Move the DRM buddy allocator one level up so that it can be used by GPU
> >> drivers (example, nova-core) that have usecases other than DRM (such as
> >> VFIO vGPU support). Modify the API, structures and Kconfigs to use
> >> "gpu_buddy" terminology. Adapt the drivers and tests to use the new API.
> >>
> >> The commit cannot be split due to bisectability, however no functional
> >> change is intended. Verified by running K-UNIT tests and build tested
> >> various configurations.
> >>
> >> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> >
> > I suggested this and think it's a good idea.
> >
> > Reviewed-by: Dave Airlie <airlied@redhat.com>
> Thanks, Dave!

I'm going to apply this to drm-misc-next today but I'll move some of it around.

Dave.
