Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB651E4549
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 16:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4073E6E0A8;
	Wed, 27 May 2020 14:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555946E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 14:11:00 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MLiXQ-1jMHJG1tIG-00HfcC; Wed, 27 May 2020 16:05:34 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Date: Wed, 27 May 2020 16:05:09 +0200
Message-Id: <20200527140526.1458215-2-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527140526.1458215-1-arnd@arndb.de>
References: <20200527140526.1458215-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:XhGV89xHEat1ahk9vDcOini1cTFmNy3hR/+IomNkF0dDIF4zpZG
 mVIweZpVkM1y3GUbDfSqkcJna53e8KALJOgJZmp7Twzav4yEeJLd9a6aGl9MuGJqv39Lm+1
 UtuYJ1CEH/1ruBsaqZOgZiXbw7k0vnL6MV+C46oN8FSuiZglkpaYnFEdXhsjxXy83Lxm7fj
 j/oHTDzvKdfuKAtc5lVow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:u+QLjeALaVQ=:jmG4Z52iAPC4eAXZNdAQxH
 /KWYJ+K1SKnBO2jV5Gt0E0BWMq2e285pUR4EVQWWYNn6XA1m3e/pPOGxJNlIrQAxiwkQuQwlH
 edxGYT3+DSKPkUkrMxKzk3CUjiFhXQbLU+zDdetqfCPQORnx64+JaKzfsGdZKAt/jUlyhHawZ
 vqs7mxfC/V8JEoBBaMqz+erqRkc1Y2z9n6CDpVtZbwjpmL1OmvJSWwMVgcX4O4MS0sEDLRuZQ
 PG0hjewIGad3zPeLkqr3ODMMoxa28ZkNfli0iEIb6nx17N5kD5zkRTGSWFWgYv9B+NViRNraQ
 2L5w0+1ASg3Agp0sZbEoYpPAY/9TsX4ZoWykV/5XwwulAdphRXrtQ8sh6vL669RXHBT7mcCqO
 GKpHTyuLOGi/xSERhPYKF6k8frHFnHYai7hXltH7AZehQpPWyHXk0aAgcriRnnKJZijfrZw4J
 GP5jplwYqEfbAAbi/eczNT6MpoXmrCGcPjiPGLybwsLbJ7tzlzDiTT5d8pj5k6NoVP8G7+O5c
 Tb+dPoCc4Fem5aAw0v+aOI/Yf7mmYprmPPXoX7bLo+xB3jRmkkcldr5Wp8nkL/LI8n1UqNv2b
 1NOQmfSBxNbxGJr4ejJ+9sAJvzd3twulCkUCnZ+aZYC7nD116HDZvthsDzvy3JKcFCzO4Ns49
 f0H1j7YIXQdSqpbudI3UxO+HWRAfiQ2BFdHkQ8+QLsbPXp0tNEPm65N4sbZTBUglJjsVvPk1H
 3QF8pLnoUIGb48MZwdOyG/JsFFNQZZ6noD4nyL+nffQotoEzDCv6sP6CwoL1vGh4otPdGYL2J
 HyOf4S90MNAE9x9Anzs9HS+C6YsGK4xUPC3+VAZJPuXMT+oa6M=
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: work around false-positive
 maybe-uninitialized warning
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
Cc: dri-devel@lists.freedesktop.org, Arnd Bergmann <arnd@arndb.de>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

gcc-9 gets confused by the code flow in check_dirty_whitelist:

drivers/gpu/drm/i915/gt/selftest_workarounds.c: In function 'check_dirty_whitelist':
drivers/gpu/drm/i915/gt/selftest_workarounds.c:492:17: error: 'rsvd' may be used uninitialized in this function [-Werror=maybe-uninitialized]

I could not figure out a good way to do this in a way that gcc
understands better, so initialize the variable to zero, as last
resort.

Fixes: aee20aaed887 ("drm/i915: Implement read-only support in whitelist selftest")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/gt/selftest_workarounds.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 5ed323254ee1..32785463ec9e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -623,6 +623,8 @@ static int check_dirty_whitelist(struct intel_context *ce)
 				err = -EINVAL;
 				goto out_unpin;
 			}
+		} else {
+			rsvd = 0;
 		}
 
 		expect = results[0];
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
