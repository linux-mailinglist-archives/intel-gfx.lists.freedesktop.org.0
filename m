Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1720C278679
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 13:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67866ECAA;
	Fri, 25 Sep 2020 11:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7306EC9D;
 Fri, 25 Sep 2020 11:56:08 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 9EFF8AF4D;
 Fri, 25 Sep 2020 11:56:06 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, afd@ti.com,
 corbet@lwn.net, benjamin.gaignard@linaro.org, lmark@codeaurora.org,
 labbott@redhat.com, Brian.Starkey@arm.com, john.stultz@linaro.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, l.stach@pengutronix.de, linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 mchehab@kernel.org, matthew.auld@intel.com, robin.murphy@arm.com,
 thomas.hellstrom@intel.com, sam@ravnborg.org, kraxel@redhat.com,
 arnd@arndb.de, gregkh@linuxfoundation.org
Date: Fri, 25 Sep 2020 13:56:01 +0200
Message-Id: <20200925115601.23955-5-tzimmermann@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925115601.23955-1-tzimmermann@suse.de>
References: <20200925115601.23955-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/4] dma-buf: Document struct dma_buf_map
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
Cc: linux-doc@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-tegra@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIHN0cnVjdCBkbWFfYnVmX21hcCBhbmQgaXRzIGhlbHBlcnMgdG8gdGhl
IGRvY3VtZW50YXRpb24uIEEKc2hvcnQgdHV0b3JpYWwgaXMgaW5jbHVkZWQuCgp2MzoKCSogdXBk
YXRlIGRvY3VtZW50YXRpb24gaW4gYSBzZXBhcmF0ZSBwYXRjaAoJKiBleHBhbmQgZG9jcyAoRGFu
aWVsKQoJKiBjYXJyeS1vdmVyIGFja3MgZnJvbSBwYXRjaCAxCgpTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkFja2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgotLS0KIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEt
YnVmLnJzdCB8ICA5ICsrKysKIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaCAgICAgICAgICB8
IDcyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgODEgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVm
LnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAppbmRleCAxM2VhMGNj
MGEzZmEuLjZkYmNjNDcxNGIwYiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBp
L2RtYS1idWYucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdApA
QCAtMTE1LDYgKzExNSwxNSBAQCBLZXJuZWwgRnVuY3Rpb25zIGFuZCBTdHJ1Y3R1cmVzIFJlZmVy
ZW5jZQogLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCiAgICA6aW50ZXJu
YWw6CiAKK0J1ZmZlciBNYXBwaW5nIEhlbHBlcnMKK35+fn5+fn5+fn5+fn5+fn5+fn5+fn4KKwor
Li4ga2VybmVsLWRvYzo6IGluY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaAorICAgOmRvYzogb3Zl
cnZpZXcKKworLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaAorICAg
OmludGVybmFsOgorCiBSZXNlcnZhdGlvbiBPYmplY3RzCiAtLS0tLS0tLS0tLS0tLS0tLS0tCiAK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi1tYXAuaAppbmRleCBjMTczYTRhYmY0YmEuLmZkMWFiYTU0NWZkZiAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi1tYXAuaApAQCAtOCw2ICs4LDc4IEBACiAKICNpbmNsdWRlIDxsaW51eC9pby5oPgogCisvKioK
KyAqIERPQzogb3ZlcnZpZXcKKyAqCisgKiBDYWxsaW5nIGRtYS1idWYncyB2bWFwIG9wZXJhdGlv
biByZXR1cm5zIGEgcG9pbnRlciB0byB0aGUgYnVmZmVyJ3MgbWVtb3J5LgorICogRGVwZW5kaW5n
IG9uIHRoZSBsb2NhdGlvbiBvZiB0aGUgYnVmZmVyLCB1c2VycyBtYXkgaGF2ZSB0byBhY2Nlc3Mg
aXQgd2l0aAorICogSS9PIG9wZXJhdGlvbnMgb3IgbWVtb3J5IGxvYWQvc3RvcmUgb3BlcmF0aW9u
cy4gRm9yIGV4YW1wbGUsIGNvcHlpbmcgdG8KKyAqIHN5c3RlbSBtZW1vcnkgY291bGQgYmUgZG9u
ZSB3aXRoIG1lbWNweSgpLCBjb3B5aW5nIHRvIEkvTyBtZW1vcnkgd291bGQgYmUKKyAqIGRvbmUg
d2l0aCBtZW1jcHlfdG9pbygpLgorICoKKyAqIC4uIGNvZGUtYmxvY2s6OiBjCisgKgorICoJdm9p
ZCAqdmFkZHIgPSAuLi47IC8vIHBvaW50ZXIgdG8gc3lzdGVtIG1lbW9yeQorICoJbWVtY3B5KHZh
ZGRyLCBzcmMsIGxlbik7CisgKgorICoJdm9pZCAqdmFkZHJfaW9tZW0gPSAuLi47IC8vIHBvaW50
ZXIgdG8gSS9PIG1lbW9yeQorICoJbWVtY3B5X3RvaW8odmFkZHIsIF9pb21lbSwgc3JjLCBsZW4p
OworICoKKyAqIFdoZW4gdXNpbmcgZG1hLWJ1ZidzIHZtYXAgb3BlcmF0aW9uLCB0aGUgcmV0dXJu
ZWQgcG9pbnRlciBpcyBlbmNvZGVkIGFzCisgKiA6Yzp0eXBlOmBzdHJ1Y3QgZG1hX2J1Zl9tYXAg
PGRtYV9idWZfbWFwPmAuCisgKiA6Yzp0eXBlOmBzdHJ1Y3QgZG1hX2J1Zl9tYXAgPGRtYV9idWZf
bWFwPmAgc3RvcmVzIHRoZSBidWZmZXIncyBhZGRyZXNzIGluCisgKiBzeXN0ZW0gb3IgSS9PIG1l
bW9yeSBhbmQgYSBmbGFnIHRoYXQgc2lnbmFscyB0aGUgcmVxdWlyZWQgbWV0aG9kIG9mCisgKiBh
Y2Nlc3NpbmcgdGhlIGJ1ZmZlci4gVXNlIHRoZSByZXR1cm5lZCBpbnN0YW5jZSBhbmQgdGhlIGhl
bHBlciBmdW5jdGlvbnMKKyAqIHRvIGFjY2VzcyB0aGUgYnVmZmVyJ3MgbWVtb3J5IGluIHRoZSBj
b3JyZWN0IHdheS4KKyAqCisgKiBPcGVuLWNvZGluZyBhY2Nlc3MgdG8gOmM6dHlwZTpgc3RydWN0
IGRtYV9idWZfbWFwIDxkbWFfYnVmX21hcD5gIGlzCisgKiBjb25zaWRlcmVkIGJhZCBzdHlsZS4g
UmF0aGVyIHRoZW4gYWNjZXNzaW5nIGl0cyBmaWVsZHMgZGlyZWN0bHksIHVzZSBvbmUKKyAqIG9m
IHRoZSBwcm92aWRlZCBoZWxwZXIgZnVuY3Rpb25zLCBvciBpbXBsZW1lbnQgeW91ciBvd24uIEZv
ciBleGFtcGxlLAorICogaW5zdGFuY2VzIG9mIDpjOnR5cGU6YHN0cnVjdCBkbWFfYnVmX21hcCA8
ZG1hX2J1Zl9tYXA+YCBjYW4gYmUgaW5pdGlhbGl6ZWQKKyAqIHN0YXRpY2FsbHkgd2l0aCBETUFf
QlVGX01BUF9JTklUX1ZBRERSKCksIG9yIGF0IHJ1bnRpbWUgd2l0aAorICogZG1hX2J1Zl9tYXBf
c2V0X3ZhZGRyKCkuIFRoZXNlIGhlbHBlcnMgd2lsbCBzZXQgYW4gYWRkcmVzcyBpbiBzeXN0ZW0g
bWVtb3J5LgorICoKKyAqIC4uIGNvZGUtYmxvY2s6OiBjCisgKgorICoJc3RydWN0IGRtYV9idWZf
bWFwIG1hcCA9IERNQV9CVUZfTUFQX0lOSVRfVkFERFIoMHhkZWFkYmVhZik7CisgKgorICoJZG1h
X2J1Zl9tYXBfc2V0X3ZhZGRyKCZtYXAuIDB4ZGVhZGJlYWYpOworICoKKyAqIFRlc3QgaWYgYSBt
YXBwaW5nIGlzIHZhbGlkIHdpdGggZWl0aGVyIGRtYV9idWZfbWFwX2lzX3NldCgpIG9yCisgKiBk
bWFfYnVmX21hcF9pc19udWxsKCkuCisgKgorICogLi4gY29kZS1ibG9jazo6IGMKKyAqCisgKglp
ZiAoZG1hX2J1Zl9tYXBfaXNfc2V0KCZtYXApICE9IGRtYV9idWZfbWFwX2lzX251bGwoJm1hcCkp
CisgKgkJLy8gYWx3YXlzIHRydWUKKyAqCisgKiBJbnN0YW5jZXMgb2YgOmM6dHlwZTpgc3RydWN0
IGRtYV9idWZfbWFwIDxkbWFfYnVmX21hcD5gIGNhbiBiZSBjb21wYXJlZAorICogZm9yIGVxdWFs
aXR5IHdpdGggZG1hX2J1Zl9tYXBfaXNfZXF1YWwoKS4gTWFwcGluZ3MgdGhlIHBvaW50IHRvIGRp
ZmZlcmVudAorICogbWVtb3J5IHNwYWNlcywgc3lzdGVtIG9yIEkvTywgYXJlIG5ldmVyIGVxdWFs
LiBUaGF0J3MgZXZlbiB0cnVlIGlmIGJvdGgKKyAqIHNwYWNlcyBhcmUgbG9jYXRlZCBpbiB0aGUg
c2FtZSBhZGRyZXNzIHNwYWNlLCBib3RoIG1hcHBpbmdzIGNvbnRhaW4gdGhlCisgKiBzYW1lIGFk
ZHJlc3MgdmFsdWUsIG9yIGJvdGggbWFwcGluZ3MgcmVmZXIgdG8gTlVMTC4KKyAqCisgKiAuLiBj
b2RlLWJsb2NrOjogYworICoKKyAqCXN0cnVjdCBkbWFfYnVmX21hcCBzeXNfbWFwOyAvLyByZWZl
cnMgdG8gc3lzdGVtIG1lbW9yeQorICoJc3RydWN0IGRtYV9idWZfbWFwIGlvX21hcDsgLy8gcmVm
ZXJzIHRvIEkvTyBtZW1vcnkKKyAqCisgKglpZiAoZG1hX2J1Zl9tYXBfaXNfZXF1YWwoJnN5c19t
YXAsICZpb19tYXApKQorICoJCS8vIGFsd2F5cyBmYWxzZQorICoKKyAqIEluc3RhbmNlcyBvZiBz
dHJ1Y3QgZG1hX2J1Zl9tYXAgZG8gbm90IGhhdmUgdG8gYmUgY2xlYW5lZCB1cCwgYnV0CisgKiBj
YW4gYmUgY2xlYXJlZCB0byBOVUxMIHdpdGggZG1hX2J1Zl9tYXBfY2xlYXIoKS4gQ2xlYXJlZCBt
YXBwaW5ncworICogYWx3YXlzIHJlZmVyIHRvIHN5c3RlbSBtZW1vcnkuCisgKgorICogVGhlIHR5
cGUgOmM6dHlwZTpgc3RydWN0IGRtYV9idWZfbWFwIDxkbWFfYnVmX21hcD5gIGFuZCBpdHMgaGVs
cGVycyBhcmUKKyAqIGFjdHVhbGx5IGluZGVwZW5kZW50IGZyb20gdGhlIGRtYS1idWYgaW5mcmFz
dHJ1Y3R1cmUuIFdoZW4gc2hhcmluZyBidWZmZXJzCisgKiBhbW9uZyBkZXZpY2VzLCBkcml2ZXJz
IGhhdmUgdG8ga25vdyB0aGUgbG9jYXRpb24gb2YgdGhlIG1lbW9yeSB0byBhY2Nlc3MKKyAqIHRo
ZSBidWZmZXJzIGluIGEgc2FmZSB3YXkuIDpjOnR5cGU6YHN0cnVjdCBkbWFfYnVmX21hcCA8ZG1h
X2J1Zl9tYXA+YAorICogc29sdmVzIHRoaXMgcHJvYmxlbSBmb3IgZG1hLWJ1ZiBhbmQgaXRzIHVz
ZXJzLiBJZiBvdGhlciBkcml2ZXJzIG9yCisgKiBzdWItc3lzdGVtcyByZXF1aXJlIHNpbWlsYXIg
ZnVuY3Rpb25hbGl0eSwgdGhlIHR5cGUgY291bGQgYmUgZ2VuZXJhbGl6ZWQKKyAqIGFuZCBtb3Zl
ZCB0byBhIG1vcmUgcHJvbWluZW50IGhlYWRlciBmaWxlLgorICovCisKIC8qKgogICogc3RydWN0
IGRtYV9idWZfbWFwIC0gUG9pbnRlciB0byB2bWFwJ2VkIGRtYS1idWYgbWVtb3J5LgogICogQHZh
ZGRyX2lvbWVtOglUaGUgYnVmZmVyJ3MgYWRkcmVzcyBpZiBpbiBJL08gbWVtb3J5Ci0tIAoyLjI4
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
