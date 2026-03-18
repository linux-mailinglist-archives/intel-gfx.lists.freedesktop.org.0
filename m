Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDFBEAu9ummqbQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 15:56:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AAA2BDA36
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 15:56:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B916410E135;
	Wed, 18 Mar 2026 14:56:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="I6pcsti3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8EE010E135;
 Wed, 18 Mar 2026 14:56:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 81B3A60054;
 Wed, 18 Mar 2026 14:49:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59F4BC19421;
 Wed, 18 Mar 2026 14:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1773845360;
 bh=aW5bvrmFz8ackGklJ4CM2BaQvUtm6FdrgZ0HSt1ERN8=;
 h=Date:From:Subject:Cc:To:References:In-Reply-To:From;
 b=I6pcsti3DOkZesWqbbB3khzQEteyRi+wVmUNphXAjJHu1ODx62i2Q+YR2c5pAayQ8
 8XNWCGplmSzR0A0APJdcVKApXnN5wGWr1q6AI8dUxKzQbiAh0dnkxSD75eLFdyJkMn
 +62QBlD5kbQToTYE6D41hF39MCPPMeQeBhHRk0FUNqtE86B9Mkkzl7PgMvxbY+qkIM
 5O3pVDfY0R/jQZrY6UcCvRjDC7Qd0kyhHQ7P/fr0LZg1ojoowq3nr/HKraQNQrdYoc
 ykFINyhjEDAQ+BbYscs2vs/zFeO2NEsvuaUr3AYed2kDBowOcRl2Y20Hz6jfpGZNwe
 KtHvQE3OBIzUQ==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Mar 2026 15:49:08 +0100
Message-Id: <DH5ZP3IUEWMD.TOOZSEUTLV85@kernel.org>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked
 list interface
Cc: "Alice Ryhl" <aliceryhl@google.com>, "Alexandre Courbot"
 <acourbot@nvidia.com>, "Joel Fernandes" <joelagnelf@nvidia.com>,
 <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>, "Boqun
 Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Trevor
 Gross" <tmgross@umich.edu>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Dave
 Airlie" <airlied@redhat.com>, "David Airlie" <airlied@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "Simona
 Vetter" <simona@ffwll.ch>, "Daniel Almeida" <daniel.almeida@collabora.com>,
 "Koen Koning" <koen.koning@linux.intel.com>, "Nikola Djukic"
 <ndjukic@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, "Jonathan Corbet" <corbet@lwn.net>, "Alex
 Deucher" <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Jani Nikula" <jani.nikula@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi"
 <rodrigo.vivi@intel.com>, "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang
 Rui" <ray.huang@amd.com>, "Matthew Auld" <matthew.auld@intel.com>, "Matthew
 Brost" <matthew.brost@intel.com>, "Lucas De Marchi"
 <lucas.demarchi@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Helge Deller" <deller@gmx.de>, "John
 Hubbard" <jhubbard@nvidia.com>, "Alistair Popple" <apopple@nvidia.com>,
 "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer" <epeer@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <dri-devel@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
To: "Miguel Ojeda" <miguel.ojeda.sandonis@gmail.com>
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5UOS96171T.Z8XSRX583Q60@nvidia.com>
 <CANiq72=bmJ_GWKowAgv+DWQ8FcWK_HePwjaVgeDmRH+gVD-z5g@mail.gmail.com>
 <CAH5fLgg-kgeBw3Py-EZmAEJhm357u5NJP6na4qJe8v3aeFW5Cg@mail.gmail.com>
 <CANiq72nad-60tOJeAfkvHTFrWXQS_wbG4JUGQNnkjm_NvhhaYw@mail.gmail.com>
In-Reply-To: <CANiq72nad-60tOJeAfkvHTFrWXQS_wbG4JUGQNnkjm_NvhhaYw@mail.gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.964];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 91AAA2BDA36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 18, 2026 at 3:41 PM CET, Miguel Ojeda wrote:
> On Wed, Mar 18, 2026 at 3:31=E2=80=AFPM Alice Ryhl <aliceryhl@google.com>=
 wrote:
>>
>> In principle this is possible using
>>
>> #[path =3D "pci/pci.rs"]
>> pub mod pci;
>
> No, I meant supported natively, i.e. without having to write an extra
> file everywhere (which could perhaps be simpler as just a symlink
> instead).

What do you mean with extra file?

renamed:    rust/kernel/pci.rs -> rust/kernel/pci/pci.rs

diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index 34b924819288..4b6396aec030 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -131,6 +131,7 @@
 pub mod opp;
 pub mod page;
 #[cfg(CONFIG_PCI)]
+#[path =3D "pci/pci.rs"]
 pub mod pci;
 pub mod pid_namespace;
 pub mod platform;
