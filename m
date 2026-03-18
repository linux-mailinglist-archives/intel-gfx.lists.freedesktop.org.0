Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBU8FFVkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B387C2F754A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E979910E4EE;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VRtVHlls";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com
 [74.125.82.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE2310E274
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 14:42:00 +0000 (UTC)
Received: by mail-dy1-f174.google.com with SMTP id
 5a478bee46e88-2c0c9994199so147923eec.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 07:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773844920; cv=none;
 d=google.com; s=arc-20240605;
 b=RtyxLtPgEwz4XoD80JOno3+FoQmyk9RRsJftBpZtIJSkHzkEgq93mpr62iXupfO03d
 Ghk9yiaAufPhNW1OGePmmLUfgt0WCb1tC/YumVwgoaFBep6PnPNO8dWV70KbggMgDf2i
 89hEAbSO6ekD+0mO1M5mmPDpYttYJjLtPIQeU8JyX6iQNcjsu7rNk8QXslOXUqPhjK5X
 XC9+cmmTpFRvjtbtJau1vV3NP4ANcLXlxjj4gocwSXuqpQXEp57aC4V1qUSSQLwx2258
 /pvL0aczGsZ8ZmXwZmit/LgIKkXDJcz6W6WdIrPjEk2ykWl9PSDfW95S+hMNRZFnyZzF
 GLKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=RTOE29KKEh2RCMQf09/Yf7/7d6oQT0Su+sy1NG6/ao4=;
 fh=51Lu5vqzoDkJeXGBT7Cy8D/XSOBYE58gfQoMW0LGB9w=;
 b=eCzr8p4nUxjJUI2JyMTc7DBpjLbp3feT+7hbnnGaYA//W5b4D6npN8T/LFHpMh0iV2
 U+gdGpMolqgnNMyO/QgkTfn8F0mzxiS+ySo5yeMqddEWbgKoK9tuQicuUafq+wet6Jwb
 HhKFXehkL6r2BsyLmmYvy/LCGNyabvWgz2MqdVf1+obCAdBJykReSwbg28kzfS6IGw+c
 3Yo5QSn+qhlJ1bTMHIKejXlS3M0vy4H6ViwdJb06b5f/6QcZTf6sxEX7P8Vzy/CseICc
 mYKoa46jAKDlqmlp7iBvZrHzDf10vKz+heUai/j0gcLnikEpBBrbaE7WIbVp4v66MjKs
 qvng==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773844920; x=1774449720; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RTOE29KKEh2RCMQf09/Yf7/7d6oQT0Su+sy1NG6/ao4=;
 b=VRtVHllsYbUfS99x8ZJ5g4p32kEK+wtGik6SRcit90VBBH3EYlfQvrWNK/tzalFF1H
 8wZkA7EkU80PjeueroLcaAIw9QUWh0vkexlBYUyjfR8smumbcQbUg50DdmaGxRhpf1CN
 qmSE+vyb4lIRosAVGh/7tpW5LldPt5aSoI6zTzlzK2nMsVqoIj+/IbT8MbdxkaXcQTgk
 3qNAT1/I1MJyie16WYZrzWbXNgWmd2ksC636kT67MAXZpBaJaYMVQeXoyvqAcdzV+jBo
 emYB/hHO63xnRO7ZqfTZbwbhWeRgeIPbJQ157/IUZqB5lz/o/3g50Ou2B4IvpBx7vlfM
 50SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773844920; x=1774449720;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RTOE29KKEh2RCMQf09/Yf7/7d6oQT0Su+sy1NG6/ao4=;
 b=CqFU0wf4iAW229v6LW5zG95EE9fE3hrLpvrd/i4B8DR4/fZlUNtSjgzdwgrQnu/qBg
 9kJ+TxRCMjSFb259bIeHzFYJH8QbSNomU0Im4rL9WwUcmsNsURFnE2UhDHV47Varg+Jp
 is5lc33vyqurgk5ce3ryalOM7Oqir/OyY4sQ+3BFgo0OjCVMlRGRyoa7xGmgXlv+qDCW
 G0KJy+6to/9wMO/rTXuCAorBE6PTzkdnby313CqSUYEa7RCAAeU7mYCuRfVfXcosS3Ty
 8qhfoJdvVoonFUWtB1HOqZIrO3DLXnN7blJ6aE/XjPwmumf3ORkuJrNAIX0QJlwXSJTh
 aChA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAks5W85b3DgwDDiyvt8D7hnIHxrpaVu6bSk9zBLWCdMX4Va5pgyVjoenBeeedmCDWhE2YNi96+lw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqNpCtProZNqIvTC0m4P5COVBReR+MOQEyB+tpfNQkopsCeJWP
 508h4OnQLdoPGDeMb20zM3F8iwituu0eXoSzyw3E+c5Z2+NpESVERyrZpbZ521mODwyy7SIHnz4
 fpg8ouzNDMqzKr5Bk/vLRfpCC+7YIQP4=
X-Gm-Gg: ATEYQzxgsy55mNkBcfwRpnOpz8bbYlslhMw9T1Ra/qNdWolYlzOMq03SrBIuHWbm5dX
 ehl9emZ7BcQxNgqspnCR4PhHBt/ZNjjpdVIS1o91i2DY7uUh8xW5lo/dwW+CooxNAqKUmVA17/C
 Bj8uytzbsrNp+WdeUcX2j3jLNFpt9dermSqljGJz+k4nsLL5vn/o9hFRVRV2awRIwBWKC2NWPRR
 3JPZ58XervY354JkEi6ADfKlPjuwAncm+KB2wkNe0qifKHEYS90jv23B9IbhbCgDx7QTCR0Q+xM
 z8kbYYP3nmSNkiF9GgvvUzVITW2K5pGB9EGLdGHkfNVNli0guuMBzWzjTj+ZhW6QiuBZ4W3pMRr
 J1HkcHGBaQQSL5VT8F3wx05M=
X-Received: by 2002:a05:7300:3724:b0:2be:1f56:ed32 with SMTP id
 5a478bee46e88-2c0e4f79e7amr877942eec.1.1773844919477; Wed, 18 Mar 2026
 07:41:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
 <CANiq72=bmJ_GWKowAgv+DWQ8FcWK_HePwjaVgeDmRH+gVD-z5g@mail.gmail.com>
 <CAH5fLgg-kgeBw3Py-EZmAEJhm357u5NJP6na4qJe8v3aeFW5Cg@mail.gmail.com>
In-Reply-To: <CAH5fLgg-kgeBw3Py-EZmAEJhm357u5NJP6na4qJe8v3aeFW5Cg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Mar 2026 15:41:44 +0100
X-Gm-Features: AaiRm52glbQ5k03i38HLvFJrknMe1XNNnKvvWBogM8moiNwsNZDgYGGN20TDKPc
Message-ID: <CANiq72nad-60tOJeAfkvHTFrWXQS_wbG4JUGQNnkjm_NvhhaYw@mail.gmail.com>
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
X-Rspamd-Queue-Id: B387C2F754A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 3:31=E2=80=AFPM Alice Ryhl <aliceryhl@google.com> w=
rote:
>
> In principle this is possible using
>
> #[path =3D "pci/pci.rs"]
> pub mod pci;

No, I meant supported natively, i.e. without having to write an extra
file everywhere (which could perhaps be simpler as just a symlink
instead).

We could also generate the `mod.rs` on the fly, but that means a clean
tree isn't great for tooling etc.

Cheers,
Miguel
