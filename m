Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH+nMlJkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6742B2F7525
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F4E10E4A5;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fn/6vfKJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com
 [74.125.82.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2CF10E11C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 14:21:46 +0000 (UTC)
Received: by mail-dy1-f172.google.com with SMTP id
 5a478bee46e88-2bd5658b901so379420eec.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 07:21:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773843706; cv=none;
 d=google.com; s=arc-20240605;
 b=hcbxBE9CPw1M++qGsaHsqa2ALsPq8WLHuAMr/WYt3J7QC//L/OMLZfTmtOJkoddfAI
 cr988hyhuIXSXzkdLkgKI1VNFeQRNGPPSrD/VS/OCikoGHP9avisYKvImZrR68Lb4elh
 KC0Tx5ibwgq+Z/JFttsKNuH0awXv+hdHyQgNQrmjyyDQo/tz42AlbxqYx8tEY5R4pEdH
 YjwMAGWHyB9w0Lg2QvS/OFrUBcg8doc8Tj/ntoJQMAlYQ5DnmtX7cKiBH94npD9qAc2/
 cfOP364xOxwlSC/AAXBTXbojxks27WQKzXI/dTVIVP93IbYZMU8YJV9oZzMcqvgATgP3
 PAow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=N50RuEjVo0iFefZqItqTOtUCCVZJT3+xKOol5E25ZQw=;
 fh=joE4A1wiaZbgI2qpB93qpFDzmqxqzIHiAJnyFP60xqE=;
 b=GfW6U9Dox8JOB7S/83fSVeQp5Mx+lJlGvLCK0/Wu2YqxN/pRgxLjJlpycvb91yOktF
 IVLqoYZHZ+HQSU24qAlAn8sTGttQVLXb8pPwfekFfh3s88HkMiwfKhP1O0KJNBrdQcgp
 ooYaA1hPFG0e8KruVbei3+hSgIzgenfObemxV/deMQq815fuGF/UBgE9nbeiBW2hkqOg
 z5o3vokof58HPJDNFXmDHnyEiuU2Dlw+j/JpdQ0+fPmdOSULOcNQIN//DRwWzja/6Ggp
 0mhDjW+P9qjs/GrcmOM5UFJcXKZilueQ3xcdR7uzNw6gPqaF7V6C4x36PNZn/0eLn2Q0
 0s0g==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773843706; x=1774448506; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=N50RuEjVo0iFefZqItqTOtUCCVZJT3+xKOol5E25ZQw=;
 b=Fn/6vfKJAm1PXIA+PjVSinbVk50X9xttHklztIQGz3nIKnd9QCJmU4Y3KXdS3HR9P6
 Yf/n9ZvcGlAmtezUQW4HDqvYlZEodElBA9jNszqClTI+1hT1rdvBYi0/ZZ8VxXz61hSm
 2PoqXjdBsBVPOAJb8IzHPcMgXRRnskoTgIf8yHvh634XbgT2yQSk7in4PV8LXLLJ+yH3
 LpYYM3A7Nn+aes5Qx84UrOsqTQ/SGjlWyZKJ96nOnCXk/ZOE8zBYpV28V4CqSvZft/5F
 J3oT0LVWwyobrkp2B1ArTRqFpxliEEq2PpivGxli/1m7PKbJnPXPQQEWfCoR7QVrWD1U
 4ofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773843706; x=1774448506;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=N50RuEjVo0iFefZqItqTOtUCCVZJT3+xKOol5E25ZQw=;
 b=LECHm/oddD7tdZPqa7M+iVcMPrLQUMFHYOGaBvFWXnqGYImXCk2+mH0oYLc9HbQN9V
 pJY9fFdki1aeEQtRZ1Bzp/3trKcr6qGvFzKPfjM3QgX69eUEYlpF2znqPKH+hd9JB+Rh
 LPSLkug2X/gDg1vg7Zqx4ZXvPUuIl12nl8e22+ufbZ35P2dtkORYYLEcsecOqeSjGN27
 8f0eFNZb5f+6xZr76zl9fpYlaI8b+HEbzhU/gtk1AAxLujp33kzOWIiLOoTUeaCSp7nk
 aUoVu9TonHR4YTdLLpnuQaFQbJ6ec7WM+J3hY8/PhzPW9/5XmdoUbNr09/BWiu2h2Y2/
 Goiw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXz6e1oGpHBrL46WLXEDmenLdyAHpiMsjcwVpJrFLiNgdrpqsdRBoSt63nXhZOB2S/ZGw6ceyuf79I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxZhfI+FjUtANA/ugNbTg9OrkjoCfs4ZWxXORrkq/RQddg5v+CZ
 Sg8VzDp4OHJM4H+7jiVsCS/qpKhWdfmVS1X31zW4Vb5Jq1jb4MVVtr+n+hwbrNL/Flzl4/dT0PX
 gX1700CTgLyyKJQ38lxqbPiS4c339ZBo=
X-Gm-Gg: ATEYQzyezkUPitQefeH8BHrpSsmtPYSUmOllyN8GnGXhIuJPs3J57ZP3A6Id5kjhGlh
 u519wOIeOsy1acvN+OeoFbOQmXpHpqg6WQIVOG4bWCU76ag0Qd50GhPHQEa8xnS2KmpIVGw9I73
 ++1DRyLkC3WR5lIaZmthYumPyfyYYe8toQzPaTozt18rGdQlGe8o4nXnCJnKgX22RgHpuambLeq
 moFuYqYrHRvxrJhY4orOsdZb/mPc8zA9nMTGiRbYByV6JhT1Fo41JnT10XcGlZLpp/od9zcPI5Y
 y0axYyVu46OiYtLyT+k0MwoX8R0nkkBY2rnVvV/NYcoETU4OZuihHwZiCyj75545izg4dNp1E6l
 IJ8MTAMEdJcktysNfAEu/QTc=
X-Received: by 2002:a05:7300:3724:b0:2be:1f56:ed32 with SMTP id
 5a478bee46e88-2c0e4f79e7amr862302eec.1.1773843705849; Wed, 18 Mar 2026
 07:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
In-Reply-To: <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Mar 2026 15:21:33 +0100
X-Gm-Features: AaiRm52hYvm4SlfuaD_e2Ur_BKHJMunoPzi20wYq7repEoz5nN2Go3Dpr2oWwgo
Message-ID: <CANiq72=bmJ_GWKowAgv+DWQ8FcWK_HePwjaVgeDmRH+gVD-z5g@mail.gmail.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Alexandre Courbot <acourbot@nvidia.com>
Cc: Alice Ryhl <aliceryhl@google.com>, Joel Fernandes <joelagnelf@nvidia.com>, 
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
	FORGED_RECIPIENTS(0.00)[m:acourbot@nvidia.com,m:aliceryhl@google.com,m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:alex.gaynor@gmail.com,m:dakr@kernel.org,m:airlied@redhat.com,m:airlied@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:daniel.almeida@collabora.com,m:koen.koning@linux.intel.com,m:ndjukic@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6742B2F7525
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:54=E2=80=AFAM Alexandre Courbot <acourbot@nvidia=
.com> wrote:
>
> Ah, so there is a rationale for using a `mod.rs` file after all. What
> are the project-wide guidelines re: `foo.rs` vs `foo/mod.rs`?

Quoting myself from a few years ago:

  I don't have a strong opinion either way -- this was originally done
  to improve fuzzy searching, see commit 829c2df153d7 ("rust: move `net`
  and `sync` modules to uniquely-named files") upstream:

    This is so that each file in the module has a unique name instead of th=
e
    generic `mod.rs` name. It makes it easier to open files when using fuzz=
y
    finders like `fzf` once names are unique.

Another reason was that it is what upstream Rust recommends:

  "Prior to rustc 1.30, using `mod.rs` files was the way to load a
module with nested children. It is encouraged to use the new naming
convention as it is more consistent, and avoids having many files
named mod.rs within a project."

  https://doc.rust-lang.org/reference/items/modules.html#r-items.mod.outlin=
ed.search-mod
  https://doc.rust-lang.org/edition-guide/rust-2018/path-changes.html#no-mo=
re-modrs

Now, several other people have argued for the other way over the years.

For instance, one reason is that tab completion can be smoother with
`mod.rs`, e.g. every time you complete something like
`rust/kernel/sync`, you have to decide whether you want `sync.rs` or
`sync/`, and then if you wanted the folder, you have to tab-complete
again.

So I guess it depends if you use more the shell TAB (like Linus really
values on the C folders) or the fuzzy finder (like Wedson argued for
in the commit referenced above).

I personally don't want to bias it one way or the other [*], but
please let's avoid having both mixed if possible (unless there is a
reason not to). I can put the result in the new guidelines rules list
file.

I hope that gives some context!

[*] I would have preferred a middle ground like  modules being inside
but repeating the folder name, e.g. `.../pci/pci.rs`, but I doubt that
will ever be supported upstream since one probably wants to support
the other ways at the same time.

Cheers,
Miguel
