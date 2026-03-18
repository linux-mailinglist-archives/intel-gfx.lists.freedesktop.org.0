Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L2mAtZkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 702EB2F78D8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D767610E5B2;
	Mon, 23 Mar 2026 16:05:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SP3day0O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com
 [74.125.82.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B8EE10E825
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 14:03:59 +0000 (UTC)
Received: by mail-dy1-f176.google.com with SMTP id
 5a478bee46e88-2bda3b4318dso480754eec.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 07:03:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773842639; cv=none;
 d=google.com; s=arc-20240605;
 b=SV91dv17AIf4LYZ8zBUOJTS6pD4NgPe1g0X5dfAjjy9gIiJSiuvG34CVqDGPkhCYNh
 MmHOxREaM6pec0+J4N0o5A2+CJYBZ+iwer2QbU40BiTWgQQOmOkQTo1DUyuJfdCnWB+2
 xPPZLVYRX1bh5xVY1VQ5WPxpy0QO3WHARcfvleZSxvO65iw2DMBqA4l2MjJA8qsGVMmy
 Bv9Dc9jTo40Ful2ETrDhrqzt3fizwhTGExyKhtGscrcEaUo8mCe0BTXwkVpyVqYhp63Q
 zFTbyA49bmdGAFTcYaGSLKg5TQm+0BPkZlgikx40jN/rjm6wybMo7vRlbKEEmoV8+ZVy
 6+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=k/U8OvDUcJJhqeuFuNoQEHJ2yWsVYBLtuE+GiuKyXfU=;
 fh=/DkNFjAgGTPxdhojCktGLuxSccXa/K3UELnLVJe/SsI=;
 b=Ffq6YMu762G08i17ZSQQG01OGdsxBlegqrSiim45WJcwKn+J7nKkh+vE0u9k88TTl/
 VDUXzIdmlBYEqbOogkR13dz/1K7B/K6Qp2jt7i7OYe1oeDbAVrmiWcTKBbpJ+dwsbmFJ
 Y0t3BoFp/5BQ/UBRtcNFlxDVoYrGd0Gh0XBY2qkQnaeH/EgV1ActWgmY9zqP8ze038ds
 3u02qjlL/srxce0mhc6fZnTzXo2ixT7dVmR9fa9YWI8+b9rrmgbx7uiX8I4CRLu2rBFe
 WY0TH+zIe3YjzCyFb5/Pr2VvK6ZgrRPUaUahkBhQiYqrBxVMTeKUUthLun9lOInCtnL5
 e+7A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773842639; x=1774447439; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k/U8OvDUcJJhqeuFuNoQEHJ2yWsVYBLtuE+GiuKyXfU=;
 b=SP3day0Oj1/DjmRsdSyPMUjcp7kcdrq1r2LXRBcppvHqjaVbg2DfE3Tt2aO9sP+SCL
 FlumoOqH/KiCk+ke+0A+w6l4K+3rQA929h8DWAlc98BtNpAYgAM5ST6OUNaoZMfq3apA
 trVFMVqhsG6ESM3trF/LoKrJ1/QvbpZqLyM6iG6yLu4oSWMJnwadH7ovP3j6n7oDDf49
 YDFX1qOuZNNu8rCyHXzZ7857+F1qSq6KrjnCp9mHCnXNjnLWMoK7WT2TN1eg9UpToaiK
 iZosSFEBYX/VOD5d0F++HRFKCfCqz8wGlL8opS1K+hQsXqLQ9HvqwlLUV5JfyihExxX5
 IEkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773842639; x=1774447439;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=k/U8OvDUcJJhqeuFuNoQEHJ2yWsVYBLtuE+GiuKyXfU=;
 b=oM0L2BpA0UWFO8Gvj5L0E/GGky/+3yveJTxWJbclS/FZFKEU+2mQ91NhSSFbpR7CHL
 rViqEbr4bBqEhmA/BeEeG0gIl2RKO+gpkZt44BGQG+XsgspIPn6xE3vJFx33vp5eVbbl
 z//Ivz2xCUw6j21jRgwPrvE2bkOExug4IBFw3fnCZCF4R8T/8vmqILnMWXzRDDx4HX1c
 ePqNtWUhC7sAfmUm3BOACTDgTlWCFmVi+Y37blrBjGQqXoWQVkIega9TMbpkiH5ldqXw
 z14v0xXFNE9z300iOhWtj016N3pgYstSjbjYfiz6MVvocWkzC8iR+xb70nbNYWBRm+NP
 kxrA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfABHFNCOT7ox3J0MyWvmutB0oCULbpFU50zVj1CJu+Ercj/REtD1fz2zTPfqrsiobd3G4va72Vhc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywo2kEOqsNwsa05DlamI4yl296dyL78CvLf778ZALNHhJhWgenr
 ZbYVCDyWa3kjHpli28HUUb97hQ08dO9nyuB8YDkWOjGuUjUz5soiWL4nzeL6mTu4hoxZ3s2SIde
 dIBAHLln5E9hT615XEHGTy22rGmyVO+E=
X-Gm-Gg: ATEYQzwcRyc++wCs+hsJPbGt2M/kfjF7wrR+TOp/SfXCDh5qZgUmxkzf4IqS9NujaSj
 hTW/9Web/KeXlKIl5G398LJ3GnsgjPv+w42DuDV36fO2oIAGsKbYgR2wXOVqymuWXWfgKdeNyRe
 egYTfh3J7ms9iTYeyIGA3ijlTw3t9FX7QXtQ8wKTe5chSybJTsw16i1stT3dPsT6Z53Gbi0nLNK
 8JIRhdk+GtTztwNqhJHOVAhTEEiYijcVuKkqIATqoPRvVTtbGrb8snRYcxysv31dsKTlql4i3qv
 uPD3Zymwp9ksLm8WIZkvW4+uGZVO/JrPgeKCZ6JJ9Hi2LhxDMGN277kVnDT15uS0pG8QxsZ3+E2
 /xgFDo8bi3AEFtTpsbgHyMhQ=
X-Received: by 2002:a05:7301:1e92:b0:2bd:d8e6:90a0 with SMTP id
 5a478bee46e88-2c0e5071063mr859030eec.3.1773842638629; Wed, 18 Mar 2026
 07:03:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com> <abqdUBqchnVFo7Qk@google.com>
In-Reply-To: <abqdUBqchnVFo7Qk@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Mar 2026 15:03:46 +0100
X-Gm-Features: AaiRm52jPRFXXf03k9diVYR0ZGnNxGkoAlPwk0mwDAEpyLjxWwYifunzB4OTgFU
Message-ID: <CANiq72koBNCeXFh7uX5GHRJoAu7fyhttDHHN0WZzx9Q74F=mWg@mail.gmail.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Alice Ryhl <aliceryhl@google.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[122];
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
	FORGED_RECIPIENTS(0.00)[m:aliceryhl@google.com,m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:acourbot@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 702EB2F78D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 1:40=E2=80=AFPM Alice Ryhl <aliceryhl@google.com> w=
rote:
>
> My build triggers this warning:

I reported that in the previous version -- Joel, you said you used the
workaround I mentioned, but I don't see it here.

Did you decide otherwise and retested and you couldn't reproduce it?

It is fine either way -- I am asking because if we decide to keep and
use that "fake `unsafe` block" pattern, then I should create the issue
to ask Clippy to support it.

Thanks!

Cheers,
Miguel
