Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD7495988
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 10:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49836E824;
	Tue, 20 Aug 2019 08:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1957B6E824
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:19:14 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id m44so5342252edd.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kABFBkDTbJpVEXzQpdNq3PP8kqHWnvhar8F2JgU77ew=;
 b=PMR7vb7Yup7zvUCUsm7/x8VU+PHTlW+EJYFOyD46Lpb32Jz9pq7Xrkp8tVQcnByu6E
 1ze16s7pDLkxyN8cAqqr6S7Q56DmM1VMV6/5fEioLr51LIHVk9+irrii0RNHdzIPbx5p
 zvXGCtYcqb2/SmpHZKmrbrtGkZbdLk0MYD7pk2jFF3rokh9YemkOHwi6gbwP/JDuIK+K
 f0G6cYB8EvhiNC7AJ3J2fyZ8thmC0wisy4Q5Df14YFaCsX4EP18eSWJ14pOBnJMadJGw
 xH8etGL3kGDY44pFEbhwXXz1tYok28TwWjJ/Zq4szTl7/ojF9iw6b7ypHeLpA9LXGrg4
 oeGw==
X-Gm-Message-State: APjAAAWXKfXB9sdWuF7Nv76QyqyMx8T212V0YZOUj5k0p1+OM9ZIowM3
 m0ETvLmQwr+Tno/3sAuzsiZJ1w==
X-Google-Smtp-Source: APXvYqwxVfdMyfH6Sr7FjkFh00kzLLgvHcBayZz8QBpzQUnopXikBPcilruIA53DE03NvsKBscOJvw==
X-Received: by 2002:a05:6402:789:: with SMTP id
 d9mr28959642edy.25.1566289152351; 
 Tue, 20 Aug 2019 01:19:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id fj15sm2469623ejb.78.2019.08.20.01.19.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 01:19:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 20 Aug 2019 10:19:01 +0200
Message-Id: <20190820081902.24815-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kABFBkDTbJpVEXzQpdNq3PP8kqHWnvhar8F2JgU77ew=;
 b=JaM5/xgbKK+AhR1C9ILOXmNQGXVZ8JqAzbqOYr/Sa1NOIXaPoTdYMIex1wNRTaNR1H
 0lgnk4VUA78HLzrtZV5dKh3c6EzlClYvBxOr7DMSJuv+ORoS+Pjd0tQRpx09SD06vEsJ
 LDkFvzrnWxx7gq7wfm+5tQPki349I1dF4VUSc=
Subject: [Intel-gfx] [PATCH 3/4] kernel.h: Add non_block_start/end()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Feng Tang <feng.tang@intel.com>, Michal Hocko <mhocko@suse.com>,
 Kees Cook <keescook@chromium.org>, Linux MM <linux-mm@kvack.org>,
 Peter Zijlstra <peterz@infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jann Horn <jannh@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, David Rientjes <rientjes@google.com>,
 Wei Wang <wvw@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gc29tZSBzcGVjaWFsIGNhc2VzIHdlIG11c3Qgbm90IGJsb2NrLCBidXQgdGhlcmUncyBub3Qg
YQpzcGlubG9jaywgcHJlZW1wdC1vZmYsIGlycXMtb2ZmIG9yIHNpbWlsYXIgY3JpdGljYWwgc2Vj
dGlvbiBhbHJlYWR5CnRoYXQgYXJtcyB0aGUgbWlnaHRfc2xlZXAoKSBkZWJ1ZyBjaGVja3MuIEFk
ZCBhIG5vbl9ibG9ja19zdGFydC9lbmQoKQpwYWlyIHRvIGFubm90YXRlIHRoZXNlLgoKVGhpcyB3
aWxsIGJlIHVzZWQgaW4gdGhlIG9vbSBwYXRocyBvZiBtbXUtbm90aWZpZXJzLCB3aGVyZSBibG9j
a2luZyBpcwpub3QgYWxsb3dlZCB0byBtYWtlIHN1cmUgdGhlcmUncyBmb3J3YXJkIHByb2dyZXNz
LiBRdW90aW5nIE1pY2hhbDoKCiJUaGUgbm90aWZpZXIgaXMgY2FsbGVkIGZyb20gcXVpdGUgYSBy
ZXN0cmljdGVkIGNvbnRleHQgLSBvb21fcmVhcGVyIC0Kd2hpY2ggc2hvdWxkbid0IGRlcGVuZCBv
biBhbnkgbG9ja3Mgb3Igc2xlZXBhYmxlIGNvbmRpdGlvbmFscy4gVGhlIGNvZGUKc2hvdWxkIGJl
IHN3aWZ0IGFzIHdlbGwgYnV0IHdlIG1vc3RseSBkbyBjYXJlIGFib3V0IGl0IHRvIG1ha2UgYSBm
b3J3YXJkCnByb2dyZXNzLiBDaGVja2luZyBmb3Igc2xlZXBhYmxlIGNvbnRleHQgaXMgdGhlIGJl
c3QgdGhpbmcgd2UgY291bGQgY29tZQp1cCB3aXRoIHRoYXQgd291bGQgZGVzY3JpYmUgdGhlc2Ug
ZGVtYW5kcyBhdCBsZWFzdCBwYXJ0aWFsbHkuIgoKUGV0ZXIgYWxzbyBhc2tlZCB3aGV0aGVyIHdl
IHdhbnQgdG8gY2F0Y2ggc3BpbmxvY2tzIG9uIHRvcCwgYnV0IE1pY2hhbApzYWlkIHRob3NlIGFy
ZSBsZXNzIG9mIGEgcHJvYmxlbSBiZWNhdXNlIHNwaW5sb2NrcyBjYW4ndCBoYXZlIGFuCmluZGly
ZWN0IGRlcGVuZGVuY3kgdXBvbiB0aGUgcGFnZSBhbGxvY2F0b3IgYW5kIGhlbmNlIGNsb3NlIHRo
ZSBsb29wCndpdGggdGhlIG9vbSByZWFwZXIuCgpTdWdnZXN0ZWQgYnkgTWljaGFsIEhvY2tvLgoK
djI6Ci0gSW1wcm92ZSBjb21taXQgbWVzc2FnZSAoTWljaGFsKQotIEFsc28gY2hlY2sgaW4gc2No
ZWR1bGUsIG5vdCBqdXN0IG1pZ2h0X3NsZWVwIChQZXRlcikKCnYzOiBJdCB3b3JrcyBiZXR0ZXIg
d2hlbiBJIGFjdHVhbGx5IHNxdWFzaCBpbiB0aGUgZml4dXAgSSBoYWQgbHlpbmcKYXJvdW5kIDot
LwoKdjQ6IFBpY2sgdGhlIHN1Z2dlc3Rpb24gZnJvbSBBbmRyZXcgTW9ydG9uIHRvIGdpdmUgbm9u
X2Jsb2NrX3N0YXJ0L2VuZApzb21lIGdvb2Qga2VybmVsZG9jIGNvbW1lbnRzLiBJIGFkZGVkIHRo
YXQgb3RoZXIgYmxvY2tpbmcgY2FsbHMgbGlrZQp3YWl0X2V2ZW50IHBvc2Ugc2ltaWxhciBpc3N1
ZXMsIHNpbmNlIHRoYXQncyB0aGUgb3RoZXIgZXhhbXBsZSB3ZQpkaXNjdXNzZWQuCgpDYzogSmFz
b24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+CkNjOiBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGlu
ZnJhZGVhZC5vcmc+CkNjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4KQ2M6IEFuZHJl
dyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+CkNjOiBNaWNoYWwgSG9ja28gPG1o
b2Nrb0BzdXNlLmNvbT4KQ2M6IERhdmlkIFJpZW50amVzIDxyaWVudGplc0Bnb29nbGUuY29tPgpD
YzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogIkrDqXLDtG1lIEdsaXNzZSIg
PGpnbGlzc2VAcmVkaGF0LmNvbT4KQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwpDYzogTWFzYWhpcm8g
WWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KQ2M6IFdlaSBXYW5nIDx3dndA
Z29vZ2xlLmNvbT4KQ2M6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXgu
aW50ZWwuY29tPgpDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+CkNjOiBK
YW5uIEhvcm4gPGphbm5oQGdvb2dsZS5jb20+CkNjOiBGZW5nIFRhbmcgPGZlbmcudGFuZ0BpbnRl
bC5jb20+CkNjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KQ2M6IFJhbmR5IER1
bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVs
Lm9yZwpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PiAodjEpClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgotLS0KIGluY2x1ZGUvbGludXgva2VybmVsLmggfCAyNSArKysrKysrKysrKysrKysrKysr
KysrKystCiBpbmNsdWRlL2xpbnV4L3NjaGVkLmggIHwgIDQgKysrKwoga2VybmVsL3NjaGVkL2Nv
cmUuYyAgICB8IDE5ICsrKysrKysrKysrKysrLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNDIgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2tl
cm5lbC5oIGIvaW5jbHVkZS9saW51eC9rZXJuZWwuaAppbmRleCA0ZmEzNjBhMTNjMWUuLjgyZjg0
Y2ZlMzcyZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9rZXJuZWwuaAorKysgYi9pbmNsdWRl
L2xpbnV4L2tlcm5lbC5oCkBAIC0yMTcsNyArMjE3LDkgQEAgZXh0ZXJuIHZvaWQgX19jYW50X3Ns
ZWVwKGNvbnN0IGNoYXIgKmZpbGUsIGludCBsaW5lLCBpbnQgcHJlZW1wdF9vZmZzZXQpOwogICog
bWlnaHRfc2xlZXAgLSBhbm5vdGF0aW9uIGZvciBmdW5jdGlvbnMgdGhhdCBjYW4gc2xlZXAKICAq
CiAgKiB0aGlzIG1hY3JvIHdpbGwgcHJpbnQgYSBzdGFjayB0cmFjZSBpZiBpdCBpcyBleGVjdXRl
ZCBpbiBhbiBhdG9taWMKLSAqIGNvbnRleHQgKHNwaW5sb2NrLCBpcnEtaGFuZGxlciwgLi4uKS4K
KyAqIGNvbnRleHQgKHNwaW5sb2NrLCBpcnEtaGFuZGxlciwgLi4uKS4gQWRkaXRpb25hbCBzZWN0
aW9ucyB3aGVyZSBibG9ja2luZyBpcworICogbm90IGFsbG93ZWQgY2FuIGJlIGFubm90YXRlZCB3
aXRoIG5vbl9ibG9ja19zdGFydCgpIGFuZCBub25fYmxvY2tfZW5kKCkKKyAqIHBhaXJzLgogICoK
ICAqIFRoaXMgaXMgYSB1c2VmdWwgZGVidWdnaW5nIGhlbHAgdG8gYmUgYWJsZSB0byBjYXRjaCBw
cm9ibGVtcyBlYXJseSBhbmQgbm90CiAgKiBiZSBiaXR0ZW4gbGF0ZXIgd2hlbiB0aGUgY2FsbGlu
ZyBmdW5jdGlvbiBoYXBwZW5zIHRvIHNsZWVwIHdoZW4gaXQgaXMgbm90CkBAIC0yMzMsNiArMjM1
LDI1IEBAIGV4dGVybiB2b2lkIF9fY2FudF9zbGVlcChjb25zdCBjaGFyICpmaWxlLCBpbnQgbGlu
ZSwgaW50IHByZWVtcHRfb2Zmc2V0KTsKICMgZGVmaW5lIGNhbnRfc2xlZXAoKSBcCiAJZG8geyBf
X2NhbnRfc2xlZXAoX19GSUxFX18sIF9fTElORV9fLCAwKTsgfSB3aGlsZSAoMCkKICMgZGVmaW5l
IHNjaGVkX2Fubm90YXRlX3NsZWVwKCkJKGN1cnJlbnQtPnRhc2tfc3RhdGVfY2hhbmdlID0gMCkK
Ky8qKgorICogbm9uX2Jsb2NrX3N0YXJ0IC0gYW5ub3RhdGUgdGhlIHN0YXJ0IG9mIHNlY3Rpb24g
d2hlcmUgc2xlZXBpbmcgaXMgcHJvaGliaXRlZAorICoKKyAqIFRoaXMgaXMgb24gYmVoYWxmIG9m
IHRoZSBvb20gcmVhcGVyLCBzcGVjaWZpY2FsbHkgd2hlbiBpdCBpcyBjYWxsaW5nIHRoZSBtbXUK
KyAqIG5vdGlmaWVycy4gVGhlIHByb2JsZW0gaXMgdGhhdCBpZiB0aGUgbm90aWZpZXIgd2VyZSB0
byBibG9jayBvbiwgZm9yIGV4YW1wbGUsCisgKiBtdXRleF9sb2NrKCkgYW5kIGlmIHRoZSBwcm9j
ZXNzIHdoaWNoIGhvbGRzIHRoYXQgbXV0ZXggd2VyZSB0byBwZXJmb3JtIGEKKyAqIHNsZWVwaW5n
IG1lbW9yeSBhbGxvY2F0aW9uLCB0aGUgb29tIHJlYXBlciBpcyBub3cgYmxvY2tlZCBvbiBjb21w
bGV0aW9uIG9mCisgKiB0aGF0IG1lbW9yeSBhbGxvY2F0aW9uLiBPdGhlciBibG9ja2luZyBjYWxs
cyBsaWtlIHdhaXRfZXZlbnQoKSBwb3NlIHNpbWlsYXIKKyAqIGlzc3Vlcy4KKyAqLworIyBkZWZp
bmUgbm9uX2Jsb2NrX3N0YXJ0KCkgXAorCWRvIHsgY3VycmVudC0+bm9uX2Jsb2NrX2NvdW50Kys7
IH0gd2hpbGUgKDApCisvKioKKyAqIG5vbl9ibG9ja19lbmQgLSBhbm5vdGF0ZSB0aGUgZW5kIG9m
IHNlY3Rpb24gd2hlcmUgc2xlZXBpbmcgaXMgcHJvaGliaXRlZAorICoKKyAqIENsb3NlcyBhIHNl
Y3Rpb24gb3BlbmVkIGJ5IG5vbl9ibG9ja19zdGFydCgpLgorICovCisjIGRlZmluZSBub25fYmxv
Y2tfZW5kKCkgXAorCWRvIHsgV0FSTl9PTihjdXJyZW50LT5ub25fYmxvY2tfY291bnQtLSA9PSAw
KTsgfSB3aGlsZSAoMCkKICNlbHNlCiAgIHN0YXRpYyBpbmxpbmUgdm9pZCBfX19taWdodF9zbGVl
cChjb25zdCBjaGFyICpmaWxlLCBpbnQgbGluZSwKIAkJCQkgICBpbnQgcHJlZW1wdF9vZmZzZXQp
IHsgfQpAQCAtMjQxLDYgKzI2Miw4IEBAIGV4dGVybiB2b2lkIF9fY2FudF9zbGVlcChjb25zdCBj
aGFyICpmaWxlLCBpbnQgbGluZSwgaW50IHByZWVtcHRfb2Zmc2V0KTsKICMgZGVmaW5lIG1pZ2h0
X3NsZWVwKCkgZG8geyBtaWdodF9yZXNjaGVkKCk7IH0gd2hpbGUgKDApCiAjIGRlZmluZSBjYW50
X3NsZWVwKCkgZG8geyB9IHdoaWxlICgwKQogIyBkZWZpbmUgc2NoZWRfYW5ub3RhdGVfc2xlZXAo
KSBkbyB7IH0gd2hpbGUgKDApCisjIGRlZmluZSBub25fYmxvY2tfc3RhcnQoKSBkbyB7IH0gd2hp
bGUgKDApCisjIGRlZmluZSBub25fYmxvY2tfZW5kKCkgZG8geyB9IHdoaWxlICgwKQogI2VuZGlm
CiAKICNkZWZpbmUgbWlnaHRfc2xlZXBfaWYoY29uZCkgZG8geyBpZiAoY29uZCkgbWlnaHRfc2xl
ZXAoKTsgfSB3aGlsZSAoMCkKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvc2NoZWQuaCBiL2lu
Y2x1ZGUvbGludXgvc2NoZWQuaAppbmRleCA5ZjUxOTMyYmQ1NDMuLmM1NjMwZjNkY2ExZiAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9zY2hlZC5oCisrKyBiL2luY2x1ZGUvbGludXgvc2NoZWQu
aApAQCAtOTc0LDYgKzk3NCwxMCBAQCBzdHJ1Y3QgdGFza19zdHJ1Y3QgewogCXN0cnVjdCBtdXRl
eF93YWl0ZXIJCSpibG9ja2VkX29uOwogI2VuZGlmCiAKKyNpZmRlZiBDT05GSUdfREVCVUdfQVRP
TUlDX1NMRUVQCisJaW50CQkJCW5vbl9ibG9ja19jb3VudDsKKyNlbmRpZgorCiAjaWZkZWYgQ09O
RklHX1RSQUNFX0lSUUZMQUdTCiAJdW5zaWduZWQgaW50CQkJaXJxX2V2ZW50czsKIAl1bnNpZ25l
ZCBsb25nCQkJaGFyZGlycV9lbmFibGVfaXA7CmRpZmYgLS1naXQgYS9rZXJuZWwvc2NoZWQvY29y
ZS5jIGIva2VybmVsL3NjaGVkL2NvcmUuYwppbmRleCAyYjAzN2YxOTU0NzMuLjU3MjQ1NzcwZDZj
YyAxMDA2NDQKLS0tIGEva2VybmVsL3NjaGVkL2NvcmUuYworKysgYi9rZXJuZWwvc2NoZWQvY29y
ZS5jCkBAIC0zNzAwLDEzICszNzAwLDIyIEBAIHN0YXRpYyBub2lubGluZSB2b2lkIF9fc2NoZWR1
bGVfYnVnKHN0cnVjdCB0YXNrX3N0cnVjdCAqcHJldikKIC8qCiAgKiBWYXJpb3VzIHNjaGVkdWxl
KCktdGltZSBkZWJ1Z2dpbmcgY2hlY2tzIGFuZCBzdGF0aXN0aWNzOgogICovCi1zdGF0aWMgaW5s
aW5lIHZvaWQgc2NoZWR1bGVfZGVidWcoc3RydWN0IHRhc2tfc3RydWN0ICpwcmV2KQorc3RhdGlj
IGlubGluZSB2b2lkIHNjaGVkdWxlX2RlYnVnKHN0cnVjdCB0YXNrX3N0cnVjdCAqcHJldiwgYm9v
bCBwcmVlbXB0KQogewogI2lmZGVmIENPTkZJR19TQ0hFRF9TVEFDS19FTkRfQ0hFQ0sKIAlpZiAo
dGFza19zdGFja19lbmRfY29ycnVwdGVkKHByZXYpKQogCQlwYW5pYygiY29ycnVwdGVkIHN0YWNr
IGVuZCBkZXRlY3RlZCBpbnNpZGUgc2NoZWR1bGVyXG4iKTsKICNlbmRpZgogCisjaWZkZWYgQ09O
RklHX0RFQlVHX0FUT01JQ19TTEVFUAorCWlmICghcHJlZW1wdCAmJiBwcmV2LT5zdGF0ZSAmJiBw
cmV2LT5ub25fYmxvY2tfY291bnQpIHsKKwkJcHJpbnRrKEtFUk5fRVJSICJCVUc6IHNjaGVkdWxp
bmcgaW4gYSBub24tYmxvY2tpbmcgc2VjdGlvbjogJXMvJWQvJWlcbiIsCisJCQlwcmV2LT5jb21t
LCBwcmV2LT5waWQsIHByZXYtPm5vbl9ibG9ja19jb3VudCk7CisJCWR1bXBfc3RhY2soKTsKKwkJ
YWRkX3RhaW50KFRBSU5UX1dBUk4sIExPQ0tERVBfU1RJTExfT0spOworCX0KKyNlbmRpZgorCiAJ
aWYgKHVubGlrZWx5KGluX2F0b21pY19wcmVlbXB0X29mZigpKSkgewogCQlfX3NjaGVkdWxlX2J1
ZyhwcmV2KTsKIAkJcHJlZW1wdF9jb3VudF9zZXQoUFJFRU1QVF9ESVNBQkxFRCk7CkBAIC0zODEz
LDcgKzM4MjIsNyBAQCBzdGF0aWMgdm9pZCBfX3NjaGVkIG5vdHJhY2UgX19zY2hlZHVsZShib29s
IHByZWVtcHQpCiAJcnEgPSBjcHVfcnEoY3B1KTsKIAlwcmV2ID0gcnEtPmN1cnI7CiAKLQlzY2hl
ZHVsZV9kZWJ1ZyhwcmV2KTsKKwlzY2hlZHVsZV9kZWJ1ZyhwcmV2LCBwcmVlbXB0KTsKIAogCWlm
IChzY2hlZF9mZWF0KEhSVElDSykpCiAJCWhydGlja19jbGVhcihycSk7CkBAIC02NTcwLDcgKzY1
NzksNyBAQCB2b2lkIF9fX21pZ2h0X3NsZWVwKGNvbnN0IGNoYXIgKmZpbGUsIGludCBsaW5lLCBp
bnQgcHJlZW1wdF9vZmZzZXQpCiAJcmN1X3NsZWVwX2NoZWNrKCk7CiAKIAlpZiAoKHByZWVtcHRf
Y291bnRfZXF1YWxzKHByZWVtcHRfb2Zmc2V0KSAmJiAhaXJxc19kaXNhYmxlZCgpICYmCi0JICAg
ICAhaXNfaWRsZV90YXNrKGN1cnJlbnQpKSB8fAorCSAgICAgIWlzX2lkbGVfdGFzayhjdXJyZW50
KSAmJiAhY3VycmVudC0+bm9uX2Jsb2NrX2NvdW50KSB8fAogCSAgICBzeXN0ZW1fc3RhdGUgPT0g
U1lTVEVNX0JPT1RJTkcgfHwgc3lzdGVtX3N0YXRlID4gU1lTVEVNX1JVTk5JTkcgfHwKIAkgICAg
b29wc19pbl9wcm9ncmVzcykKIAkJcmV0dXJuOwpAQCAtNjU4Niw4ICs2NTk1LDggQEAgdm9pZCBf
X19taWdodF9zbGVlcChjb25zdCBjaGFyICpmaWxlLCBpbnQgbGluZSwgaW50IHByZWVtcHRfb2Zm
c2V0KQogCQkiQlVHOiBzbGVlcGluZyBmdW5jdGlvbiBjYWxsZWQgZnJvbSBpbnZhbGlkIGNvbnRl
eHQgYXQgJXM6JWRcbiIsCiAJCQlmaWxlLCBsaW5lKTsKIAlwcmludGsoS0VSTl9FUlIKLQkJImlu
X2F0b21pYygpOiAlZCwgaXJxc19kaXNhYmxlZCgpOiAlZCwgcGlkOiAlZCwgbmFtZTogJXNcbiIs
Ci0JCQlpbl9hdG9taWMoKSwgaXJxc19kaXNhYmxlZCgpLAorCQkiaW5fYXRvbWljKCk6ICVkLCBp
cnFzX2Rpc2FibGVkKCk6ICVkLCBub25fYmxvY2s6ICVkLCBwaWQ6ICVkLCBuYW1lOiAlc1xuIiwK
KwkJCWluX2F0b21pYygpLCBpcnFzX2Rpc2FibGVkKCksIGN1cnJlbnQtPm5vbl9ibG9ja19jb3Vu
dCwKIAkJCWN1cnJlbnQtPnBpZCwgY3VycmVudC0+Y29tbSk7CiAKIAlpZiAodGFza19zdGFja19l
bmRfY29ycnVwdGVkKGN1cnJlbnQpKQotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
