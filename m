Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93382420A56
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A276E9D4;
	Mon,  4 Oct 2021 11:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA07B6E086
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 Oct 2021 10:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1633258123;
 bh=zopy7JiduOhiOraL+CIOE8r8McNSECiWHJbGvJY+/wk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=JJvf3iFwxdBim4/Xf9Mhpy6+o8rOsPG0p2ZfExhQ+pJPF/GnQCth9ja5oWt/0ldGY
 0q/EYzq1ybLY/VtWALmvCDXRvawUwXTmky1UYwy0MY9aiKbod8v6mOeSjuVOtor9kZ
 cYEadTXIY5SgL0DFw9sB6vb3y2vsPna4BpCCPkwk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([79.150.72.99]) by mail.gmx.net
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1N9dwd-1mtnBT2n9J-015c9e; Sun, 03 Oct 2021 12:43:18 +0200
From: Len Baker <len.baker@gmx.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Len Baker <len.baker@gmx.com>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sun,  3 Oct 2021 12:42:58 +0200
Message-Id: <20211003104258.18550-1-len.baker@gmx.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:uxCZL6xJRu3oEOGIGxrkEkeAYobt3kt5RUND+CwOV7gb29aFtlt
 XYBMW8PY3+dXrVVEyjK13+fJll8DyzLN5hKiyTJwBj7xorhQJWIRIJlhc7qgnpoRH1yJWkf
 2hAQv7FbJdd4kVls/vfCWapbxyQ/CmhjQU/diQasrAEpcfjfCgHmpKHWhCb4I10bOqQkLUT
 Pl1tYhlOrbJQJf1gpBtaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fnZtf6b/H3o=:Hg/tySpGBzUFA0V161g4wr
 At3/pQvocIBYsK0HgdvQpo28Yx/ZM5VGEdazP6umh3E/LGobS+awQRX+ipvBCin+kDRhghHv+
 NDJOnl/TKdDuX+aoHsnafoMtvaOz7BytIu/wurGRGyepxTAqVzleTcd/nqsPdfg+zEeuIJinQ
 1rAUrADR6hz7ixML1GM1wvCRb2MaVk8lhfw7EIsU0Hof1uSgiFGstm863tMDhWLFYCuWB5ecV
 E/63qRe6ULwo5TkEDUquhXBRsaMqd57Mq02t04SHFn/xwf/frpOrBMswp6sR/gIalpgXNw07l
 2HTBMo5XlWqg+R0YXb3Sr9HQuAyg9Wpbo4KtcSexOFuuROJ5TErvHoJonbxHlklEPbWzi+rFS
 oRdw4divGfeUzpniqODwPVkKVAnaTGmwEjRG+XGkqR4G4dunN5zNh21DqZt0J+5cEmU0Q+T8l
 WqD+u164dllsxCKzTHwtzxy4F7/u0cHdBPTeu2KfbzZDShRD6ZZqvVw850iiXxoU6IdLMg65A
 itzcBbRt6KYRAP/F3MZrkUYvawtW12iq6hEyD0Nj/+n5c7GTyA36g5JfwfcpumjWXjx28zCVz
 /M/Hu5NqZe8L6wYtQJkKrCLfw7E6djaq+7k8YecS1bDMkkI24pevb9Zv2QR4rs1JAwZSPcnYd
 ScO0kLICXfRZYD4F32gVOVlTz5qdLwl4iz68SmB/I311nS0iJSQv1NIc0SwzsWnfgHCQrtTAn
 S67wLVt/ej5PvyF+VO3fJ5Dog+QkmwOgdJ0vguyHcdCo2U8JoUxuHA3t0cqpBg/aHOcvSt8YR
 xlBoXbNE8a37+Jkh89XM1QpfhCN6f35fghDJw1aERgMk+0idYLZKmavY1IkM1XdbusGNK9nZX
 yQ/3pmrs02rtiBghm3JKVV5CGfWCJkTXdQlT3Nk5CPW12nE/dNBfGfkLXl+DmQUxMAozbkVGF
 5iPy0avqs6LB8c+0FN5lkvw2LcbgBd2gU5aCe/boPa5mTUgUzz1EYdJZ3zf3M51NYfnC2oOKU
 41GnMqC+aEwxQZtc1OE92krqNC5gS/+OBh5nWMXFlcOK5HLVoF0dncJW/wwPvwMigIW/0jOdL
 r2rD1YO6QtEGUg=
X-Mailman-Approved-At: Mon, 04 Oct 2021 11:46:31 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Prefer struct_size over open coded
 arithmetic
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

As noted in the "Deprecated Interfaces, Language Features, Attributes,
and Conventions" documentation [1], size calculations (especially
multiplication) should not be performed in memory allocator (or similar)
function arguments due to the risk of them overflowing. This could lead
to values wrapping around and a smaller allocation being made than the
caller was expecting. Using those allocations could lead to linear
overflows of heap memory and other misbehaviors.

In this case these are not actually dynamic sizes: all the operands
involved in the calculation are constant values. However it is better to
refactor them anyway, just to keep the open-coded math idiom out of
code.

So, add at the end of the struct i915_syncmap a union with two flexible
array members (these arrays share the same memory layout). This is
possible using the new DECLARE_FLEX_ARRAY macro. And then, use the
struct_size() helper to do the arithmetic instead of the argument
"size + count * size" in the kmalloc and kzalloc() functions.

Also, take the opportunity to refactor the __sync_seqno and __sync_child
making them more readable.

This code was detected with the help of Coccinelle and audited and fixed
manually.

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-co=
ded-arithmetic-in-allocator-arguments

Signed-off-by: Len Baker <len.baker@gmx.com>
=2D--
 drivers/gpu/drm/i915/i915_syncmap.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_syncmap.c b/drivers/gpu/drm/i915/i9=
15_syncmap.c
index 60404dbb2e9f..a8d35491d05a 100644
=2D-- a/drivers/gpu/drm/i915/i915_syncmap.c
+++ b/drivers/gpu/drm/i915/i915_syncmap.c
@@ -82,6 +82,10 @@ struct i915_syncmap {
 	 *	struct i915_syncmap *child[KSYNCMAP];
 	 * };
 	 */
+	union {
+		DECLARE_FLEX_ARRAY(u32, seqno);
+		DECLARE_FLEX_ARRAY(struct i915_syncmap *, child);
+	};
 };

 /**
@@ -99,13 +103,13 @@ void i915_syncmap_init(struct i915_syncmap **root)
 static inline u32 *__sync_seqno(struct i915_syncmap *p)
 {
 	GEM_BUG_ON(p->height);
-	return (u32 *)(p + 1);
+	return p->seqno;
 }

 static inline struct i915_syncmap **__sync_child(struct i915_syncmap *p)
 {
 	GEM_BUG_ON(!p->height);
-	return (struct i915_syncmap **)(p + 1);
+	return p->child;
 }

 static inline unsigned int
@@ -200,7 +204,7 @@ __sync_alloc_leaf(struct i915_syncmap *parent, u64 id)
 {
 	struct i915_syncmap *p;

-	p =3D kmalloc(sizeof(*p) + KSYNCMAP * sizeof(u32), GFP_KERNEL);
+	p =3D kmalloc(struct_size(p, seqno, KSYNCMAP), GFP_KERNEL);
 	if (unlikely(!p))
 		return NULL;

@@ -282,7 +286,7 @@ static noinline int __sync_set(struct i915_syncmap **r=
oot, u64 id, u32 seqno)
 			unsigned int above;

 			/* Insert a join above the current layer */
-			next =3D kzalloc(sizeof(*next) + KSYNCMAP * sizeof(next),
+			next =3D kzalloc(struct_size(next, child, KSYNCMAP),
 				       GFP_KERNEL);
 			if (unlikely(!next))
 				return -ENOMEM;
=2D-
2.25.1

