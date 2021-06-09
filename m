Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E063A1F07
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04FA6EB5A;
	Wed,  9 Jun 2021 21:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF3C6EB5A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:30:05 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id y11so12670906pgp.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 14:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1g+3MSiw30ZUG53SUR1grNvQmYDXcp5mEMux+W2ItNw=;
 b=vXCl+inyLEoIZNXOX1L9adRQZG+kNIbgvotkaGq9RGmigo5n7saL4IVd9ZOxN89hYH
 TBOGbYjj+I5eq9jdvSxzZ9cwRjO8vhv5Wwy3VfKp8OHK3Gd98eFKbKn3Dtm51h3QVdAq
 mtMlZVlm2vAdXRu7VQrKU+3e+iTq20aQhmy03hJxbJB+jsFgbym/ntGHmMDWZVGkNST/
 ykj0g8MzL9efrGa+7KzP5gcZcWwUrMPwx63EhOBx4/3cH0vpw2a0F/1A2+Li1O8mGEjH
 QTXGgweeEOOQTvMkqdWUhjiEzt4iPva7LKghMCjFcB+J+dFvbizQSphC2hSljbQ/A8Br
 gdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1g+3MSiw30ZUG53SUR1grNvQmYDXcp5mEMux+W2ItNw=;
 b=e8r+0vTwdRpuqEDfubCcNI0MhAV3GBS+t1K96Volb8+Gz/l/h+U0/ig4S9HGicMPLG
 K0srk//zORcsGU49gW8D/bpubjQqVr5PSz/FCIxO8vzB5VVSK7Hp9oMXCXFYy+OxA7nT
 Q4+oV63aAoKyLjScGB42T7aBUZP9nY181oCsiNgqsZCKd01GAnnOdtjtQGmj6KNpcm4j
 HiPNmK9+uTMeqGZuhtlTSXvfmrEERFuTjzaRXMw0hsWWC1X4vXyj0/05O/Afcz547vC8
 8Ae9lSi6gXBuIsjI9VgK0j/x1Zz/QawizU2nr+Te893M+nCfTIYbJE4MQ4H97TwXEm91
 +WZg==
X-Gm-Message-State: AOAM532uR/GETLF/7l8H8GrLZCz5z3+oKbY8BbDATGbuTPYWSpOApKvn
 yXtVjtgxT/eqpmCqAl/numLBTQ==
X-Google-Smtp-Source: ABdhPJyps0ZwxR2Raylp8ysOBVlLh4mI6IW82Q3LeixwleDYNNBLXjc30BQrEBjRRr78uyRQavcMrg==
X-Received: by 2002:a05:6a00:2353:b029:2f2:987a:5da2 with SMTP id
 j19-20020a056a002353b02902f2987a5da2mr1742587pfj.58.1623274205229; 
 Wed, 09 Jun 2021 14:30:05 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id u14sm519133pjx.14.2021.06.09.14.30.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 14:30:04 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 16:29:54 -0500
Message-Id: <20210609212959.471209-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] dma-fence,
 i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, Dave Airlie <airlied@redhat.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXZlciBzaW5jZSAwZWFmZWM2ZDMyNDQgKCJkcm0vaTkxNTogRW5hYmxlIGxvY2tsZXNzIGxvb2t1
cCBvZiByZXF1ZXN0CnRyYWNraW5nIHZpYSBSQ1UiKSwgdGhlIGk5MTUgZHJpdmVyIGhhcyB1c2Vk
IFNMQUJfVFlQRVNBRkVfQllfUkNVIChpdAp3YXMgY2FsbGVkIFNMQUJfREVTVFJPWV9CWV9SQ1Ug
YXQgdGhlIHRpbWUpIGluIG9yZGVyIHRvIGFsbG93IFJDVSBvbgppOTE1X3JlcXVlc3QuICBBcyBu
aWZ0eSBhcyBTTEFCX1RZUEVTQUZFX0JZX1JDVSBtYXkgYmUsIGl0IGNvbWVzIHdpdGgKc29tZSBz
ZXJpb3VzIGRpc2NsYWltZXJzLiAgSW4gcGFydGljdWxhciwgb2JqZWN0cyBjYW4gZ2V0IHJlY3lj
bGVkIHdoaWxlClJDVSByZWFkZXJzIGFyZSBzdGlsbCBpbi1mbGlnaHQuICBUaGlzIGNhbiBiZSBv
ayBpZiBldmVyeW9uZSB3aG8gdG91Y2hlcwp0aGVzZSBvYmplY3RzIGtub3dzIGFib3V0IHRoZSBk
aXNjbGFpbWVycyBhbmQgaXMgY2FyZWZ1bC4gIEhvd2V2ZXIsCmJlY2F1c2Ugd2UndmUgY2hvc2Vu
IHRvIHVzZSBTTEFCX1RZUEVTQUZFX0JZX1JDVSBmb3IgaTkxNV9yZXF1ZXN0IGFuZApiZWNhdXNl
IGk5MTVfcmVxdWVzdCBjb250YWlucyBhIGRtYV9mZW5jZSwgd2UndmUgbGVha2VkClNMQUJfVFlQ
RVNBRkVfQllfUkNVIGFuZCBpdHMgd2hvbGUgcGlsZSBvZiBkaXNjbGFpbWVycyB0byBldmVyeSBk
cml2ZXIKaW4gdGhlIGtlcm5lbCB3aGljaCBtYXkgY29uc3VtZSBhIGRtYV9mZW5jZS4KCldlJ3Zl
IHRyaWVkIHRvIGtlZXAgaXQgc29tZXdoYXQgY29udGFpbmVkIGJ5IGRvaW5nIG1vc3Qgb2YgdGhl
IGhhcmQgd29yawp0byBwcmV2ZW50IGFjY2VzcyBvZiByZWN5Y2xlZCBvYmplY3RzIHZpYSBkbWFf
ZmVuY2VfZ2V0X3JjdV9zYWZlKCkuCkhvd2V2ZXIsIGEgcXVpY2sgZ3JlcCBvZiBrZXJuZWwgc291
cmNlcyBzYXlzIHRoYXQsIG9mIHRoZSAzMCBpbnN0YW5jZXMKb2YgZG1hX2ZlbmNlX2dldF9yY3Uq
LCBvbmx5IDExIG9mIHRoZW0gdXNlIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoKS4KSXQncyBsaWtl
bHkgdGhlcmUgYmVhciB0cmFwcyBpbiBEUk0gYW5kIHJlbGF0ZWQgc3Vic3lzdGVtcyBqdXN0IHdh
aXRpbmcKZm9yIHNvbWVvbmUgdG8gYWNjaWRlbnRhbGx5IHN0ZXAgaW4gdGhlbS4KClRoaXMgcGF0
Y2ggc2VyaWVzIHN0b3BzIHVzIHVzaW5nIFNMQUJfVFlQRVNBRkVfQllfUkNVIGZvciBpOTE1X3Jl
cXVlc3QKYW5kLCBpbnN0ZWFkLCBkb2VzIGFuIFJDVS1zYWZlIHNsYWIgZnJlZSB2aWEgcmN1X2Nh
bGwoKS4gIFRoaXMgc2hvdWxkCmxldCB1cyBrZWVwIG1vc3Qgb2YgdGhlIHBlcmYgYmVuZWZpdHMg
b2Ygc2xhYiBhbGxvY2F0aW9uIHdoaWxlIGF2b2lkaW5nCnRoZSBiZWFyIHRyYXBzIGluaGVyZW50
IGluIFNMQUJfVFlQRVNBRkVfQllfUkNVLiAgSXQgdGhlbiByZW1vdmVzIHN1cHBvcnQKZm9yIFNM
QUJfVFlQRVNBRkVfQllfUkNVIGZyb20gZG1hX2ZlbmNlIGVudGlyZWx5LgoKTm90ZTogVGhlIGxh
c3QgcGF0Y2ggaXMgbGFibGVkIERPTk9UTUVSR0UuICBUaGlzIHdhcyBhdCBEYW5pZWwgVmV0dGVy
J3MKcmVxdWVzdCBhcyB3ZSBtYXkgd2FudCB0byBsZXQgdGhpcyBiYWtlIGZvciBhIGNvdXBsZSBy
ZWxlYXNlcyBiZWZvcmUgd2UKcmlwIG91dCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIGVudGlyZWx5
LgoKU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgpD
YzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29t
PgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCkphc29uIEVrc3Ry
YW5kICg1KToKICBkcm0vaTkxNTogTW92ZSBpbnRlbF9lbmdpbmVfZnJlZV9yZXF1ZXN0X3Bvb2wg
dG8gaTkxNV9yZXF1ZXN0LmMKICBkcm0vaTkxNTogVXNlIGEgc2ltcGxlciBzY2hlbWUgZm9yIGNh
Y2hpbmcgaTkxNV9yZXF1ZXN0CiAgZHJtL2k5MTU6IFN0b3AgdXNpbmcgU0xBQl9UWVBFU0FGRV9C
WV9SQ1UgZm9yIGk5MTVfcmVxdWVzdAogIGRtYS1idWY6IFN0b3AgdXNpbmcgU0xBQl9UWVBFU0FG
RV9CWV9SQ1UgaW4gc2VsZnRlc3RzCiAgRE9OT1RNRVJHRTogZG1hLWJ1ZjogR2V0IHJpZCBvZiBk
bWFfZmVuY2VfZ2V0X3JjdV9zYWZlCgogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5j
ICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jICAgICAgICAgICAg
ICAgIHwgICA0ICstCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMgICAgICB8
ICAyNCArLS0tCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgICAgICAgICAgICB8ICAy
NyArLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyB8ICAgNCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAgIDggLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggICAgICAgIHwgICA0ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICB8IDE0NyArKysrKysrKysrKystLS0t
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAgICAgICB8ICAgMiAt
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICB8ICAgNCArLQogaW5j
bHVkZS9kcm0vZHJtX3N5bmNvYmouaCAgICAgICAgICAgICAgICAgfCAgIDQgKy0KIGluY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmggICAgICAgICAgICAgICAgIHwgIDUwIC0tLS0tLS0tCiBpbmNsdWRl
L2xpbnV4L2RtYS1yZXN2LmggICAgICAgICAgICAgICAgICB8ICAgNCArLQogMTMgZmlsZXMgY2hh
bmdlZCwgMTEwIGluc2VydGlvbnMoKyksIDE4MCBkZWxldGlvbnMoLSkKCi0tIAoyLjMxLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
