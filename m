Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9E317ED1C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1F26E5C5;
	Tue, 10 Mar 2020 00:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com
 [IPv6:2607:f8b0:4864:20::a49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525456E5CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 00:06:33 +0000 (UTC)
Received: by mail-vk1-xa49.google.com with SMTP id y5so5264927vkg.19
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Mar 2020 17:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc:content-transfer-encoding;
 bh=As2MgrbSLjrL3zAjIuYMRljole1TlaR/KGnmofKr/OU=;
 b=scj7XEzyodUmhnen3jYdeDE02J4jdpUCh+cbccA2g06kB8N1JFUfFrIz4kzRA8kltX
 VdFwDlFdsCCgnfdK/h1MvGBL/dtABPOqkBo2futvhMjQBw0Gp/2+IYYaHQz5WgDQF9Av
 E97/e1+eo0L0k9RR6/UitUT46urA4+nb6MHkm1FqDqIz7VCAl6lqWzM9GI0SHr8qpSVd
 tB8Xi7OJJ98Ukw0lLwjK2W60HknFt5VQH/J0LD03wfkt12RM2rvF4Q6blzHkwdL34M0k
 zCkB6MDdgif8mqTMgo8hFhcYdNbTWRP0Xq5wgJ3Xj4K/xr75ZZHBzN0PsKQfJOGlFYjb
 XCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc:content-transfer-encoding;
 bh=As2MgrbSLjrL3zAjIuYMRljole1TlaR/KGnmofKr/OU=;
 b=haVOn2UvK++vggaqcscjJ+VJhVtbX2K57EKFQpDUF678Op+NRQAKNaGj6eL/71nJbA
 QUc1azvbTphYB7Vi1KdxQYfWxEdM0TsdRAM2L5ThA7M/XPpnTUEyszROHCkWng3JCbDn
 FHd34QfIy0jKJXPyElOVt4zIZGu2Q1UqjLKP8ITDkcIq5M4wTZCQi5YTRqM4K29QryB6
 jCmyFY15oqrs5dynfPfg1BiAurX76O+/3Y8gISvRte0VkKgv08PySekqLzp8A7XQkn9w
 Y5LwdxP42yUuBcNGwy1H5jdDtz7b7+Lt7WY3JLr5GK116euk/xCi0HgsSi9W4qymlDO2
 0wmQ==
X-Gm-Message-State: ANhLgQ22VWbjs1X5HxTjgNzE+IpX53Bsmr7spcFCvzPuvsK8QyOEzSGH
 S2XHbitlPgJnSjT7aIeKbB9pelFLncYu
X-Google-Smtp-Source: ADFU+vtQE3vV+61Yrn6asBi8R07klDCVixINgWY7stZ7HDgH1/RzQnWF9XKV9S0Xt0vURx/q33zhDwPH+NMI
X-Received: by 2002:a1f:45cd:: with SMTP id s196mr6612219vka.102.1583798792197; 
 Mon, 09 Mar 2020 17:06:32 -0700 (PDT)
Date: Mon,  9 Mar 2020 17:06:17 -0700
In-Reply-To: <20200310000617.20662-1-rajatja@google.com>
Message-Id: <20200310000617.20662-5-rajatja@google.com>
Mime-Version: 1.0
References: <20200310000617.20662-1-rajatja@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
From: Rajat Jain <rajatja@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 "=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=" <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 "=?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?=" <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 gregkh@linuxfoundation.org, mathewk@google.com, 
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, seanpaul@google.com,
 Duncan Laurie <dlaurie@google.com>, 
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>,
 mpearson@lenovo.com, Nitin Joshi1 <njoshi1@lenovo.com>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>, 
 Tomoki Maruichi <maruichit@lenovo.com>
Subject: [Intel-gfx] [PATCH v7 4/4] drm/i915: Add support for integrated
 privacy screen
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHN1cHBvcnQgZm9yIGFuIEFDUEkgYmFzZWQgaW50ZWdyYXRlZCBwcml2YWN5IHNjcmVlbiB0
aGF0IGlzCmF2YWlsYWJsZSBvbiBzb21lIHN5c3RlbXMuCgpTaWduZWQtb2ZmLWJ5OiBSYWphdCBK
YWluIDxyYWphdGphQGdvb2dsZS5jb20+Ci0tLQp2NzogKiBNb3ZlIHRoZSBwcml2YWN5LXNjcmVl
biBwcm9wZXJ0eSBiYWNrIGludG8gZHJtIGNvcmUuCiAgICAqIERvIHRoZSBhY3R1YWwgSFcgRVBT
IHRvZ2dsaW5nIGF0IGNvbW1pdCB0aW1lLgogICAgKiBQcm92aWRlIGEgc2FtcGxlIEFDUEkgbm9k
ZSBmb3IgcmVmZXJlbmNlIGluIGNvbW1lbnRzLiAKdjY6IEFsd2F5cyBpbml0aWFsaXplIHByb3Ag
aW4gaW50ZWxfYXR0YWNoX3ByaXZhY3lfc2NyZWVuX3Byb3BlcnR5KCkKdjU6IGZpeCBhIGNvc21l
dGljIGNoZWNrcGF0Y2ggd2FybmluZwp2NDogRml4IGEgdHlwbyBpbiBpbnRlbF9wcml2YWN5X3Nj
cmVlbi5oCnYzOiAqIENoYW5nZSBsaWNlbnNlIHRvIEdQTC0yLjAgT1IgTUlUCiAgICAqIE1vdmUg
cHJpdmFjeSBzY3JlZW4gZW51bSBmcm9tIFVBUEkgdG8gaW50ZWxfZGlzcGxheV90eXBlcy5oCiAg
ICAqIFJlbmFtZSBwYXJhbWV0ZXIgbmFtZSBhbmQgc29tZSBvdGhlciBtaW5vciBjaGFuZ2VzLgp2
MjogRm9ybWVkIGJ5IHNwbGl0dGluZyB0aGUgb3JpZ2luYWwgcGF0Y2ggaW50byBtdWx0aXBsZSBw
YXRjaGVzLgogICAgLSBBbGwgY29kZSBoYXMgYmVlbiBtb3ZlZCBpbnRvIGk5MTUgbm93LgogICAg
LSBQcml2YWN5IHNjcmVlbiBpcyBhIGk5MTUgcHJvcGVydHkKICAgIC0gSGF2ZSBhIGxvY2FsIHN0
YXRlIHZhcmlhYmxlIHRvIHN0b3JlIHRoZSBwcnZhY3kgc2NyZWVuLiBEb24ndCByZWFkCiAgICAg
IGl0IGZyb20gaGFyZHdhcmUuCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAg
ICAgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pYy5jICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
ICAgICAgIHwgIDMwICsrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3Jl
ZW4uYyAgIHwgMTc1ICsrKysrKysrKysrKysrKysrKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHJpdmFjeV9zY3JlZW4uaCAgIHwgIDI3ICsrKwogNSBmaWxlcyBjaGFuZ2VkLCAyMzQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmgK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDlmODg3YTg2ZTU1NWQuLmRhNDIzODkxMDdmOWMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlCkBAIC0yMDksNyArMjA5LDggQEAgaTkxNS15ICs9IFwKIAlkaXNw
bGF5L2ludGVsX3ZnYS5vCiBpOTE1LSQoQ09ORklHX0FDUEkpICs9IFwKIAlkaXNwbGF5L2ludGVs
X2FjcGkubyBcCi0JZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5vCisJZGlzcGxheS9pbnRlbF9vcHJl
Z2lvbi5vIFwKKwlkaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLm8KIGk5MTUtJChDT05GSUdf
RFJNX0ZCREVWX0VNVUxBVElPTikgKz0gXAogCWRpc3BsYXkvaW50ZWxfZmJkZXYubwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwppbmRleCBkMDQzMDU3ZDJm
YTAzLi5mYzYyNjRiNGE3ZjczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmMKQEAgLTE1MCw2ICsxNTAsNyBAQCBpbnQgaW50ZWxfZGlnaXRhbF9jb25uZWN0
b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uLAogCSAgICBuZXdfY29u
bl9zdGF0ZS0+YmFzZS5waWN0dXJlX2FzcGVjdF9yYXRpbyAhPSBvbGRfY29ubl9zdGF0ZS0+YmFz
ZS5waWN0dXJlX2FzcGVjdF9yYXRpbyB8fAogCSAgICBuZXdfY29ubl9zdGF0ZS0+YmFzZS5jb250
ZW50X3R5cGUgIT0gb2xkX2Nvbm5fc3RhdGUtPmJhc2UuY29udGVudF90eXBlIHx8CiAJICAgIG5l
d19jb25uX3N0YXRlLT5iYXNlLnNjYWxpbmdfbW9kZSAhPSBvbGRfY29ubl9zdGF0ZS0+YmFzZS5z
Y2FsaW5nX21vZGUgfHwKKwkgICAgbmV3X2Nvbm5fc3RhdGUtPmJhc2UucHJpdmFjeV9zY3JlZW5f
c3RhdHVzICE9IG9sZF9jb25uX3N0YXRlLT5iYXNlLnByaXZhY3lfc2NyZWVuX3N0YXR1cyB8fAog
CSAgICAhYmxvYl9lcXVhbChuZXdfY29ubl9zdGF0ZS0+YmFzZS5oZHJfb3V0cHV0X21ldGFkYXRh
LAogCQkJb2xkX2Nvbm5fc3RhdGUtPmJhc2UuaGRyX291dHB1dF9tZXRhZGF0YSkpCiAJCWNydGNf
c3RhdGUtPm1vZGVfY2hhbmdlZCA9IHRydWU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKaW5kZXggNDFjNjIzYjAyOTQ2NC4uYTM5YjBjNDIwYjUwYSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNjIsNiArNjIsNyBAQAogI2luY2x1ZGUg
ImludGVsX2xzcGNvbi5oIgogI2luY2x1ZGUgImludGVsX2x2ZHMuaCIKICNpbmNsdWRlICJpbnRl
bF9wYW5lbC5oIgorI2luY2x1ZGUgImludGVsX3ByaXZhY3lfc2NyZWVuLmgiCiAjaW5jbHVkZSAi
aW50ZWxfcHNyLmgiCiAjaW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKICNpbmNsdWRlICJpbnRl
bF90Yy5oIgpAQCAtNTg4Niw2ICs1ODg3LDEyIEBAIGludGVsX2RwX2Nvbm5lY3Rvcl9yZWdpc3Rl
cihzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCQlkZXZfcHJpdi0+YWNwaV9zY2Fu
X2RvbmUgPSB0cnVlOwogCX0KIAorCS8qIENoZWNrIGZvciBpbnRlZ3JhdGVkIFByaXZhY3kgc2Ny
ZWVuIHN1cHBvcnQgKi8KKwlpZiAoaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudCh0b19pbnRl
bF9jb25uZWN0b3IoY29ubmVjdG9yKSkpCisJCWRybV9jb25uZWN0b3JfYXR0YWNoX3ByaXZhY3lf
c2NyZWVuX3Byb3BlcnR5KGNvbm5lY3Rvcik7CisJZWxzZQorCQlkcm1fY29ubmVjdG9yX2Rlc3Ry
b3lfcHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoY29ubmVjdG9yKTsKKwogCURSTV9ERUJVR19LTVMo
InJlZ2lzdGVyaW5nICVzIGJ1cyBmb3IgJXNcbiIsCiAJCSAgICAgIGludGVsX2RwLT5hdXgubmFt
ZSwgY29ubmVjdG9yLT5rZGV2LT5rb2JqLm5hbWUpOwogCkBAIC02ODgxLDkgKzY4ODgsMzAgQEAg
aW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKIAkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfc2NhbGluZ19t
b2RlX3Byb3BlcnR5KGNvbm5lY3RvciwgYWxsb3dlZF9zY2FsZXJzKTsKIAogCQljb25uZWN0b3It
PnN0YXRlLT5zY2FsaW5nX21vZGUgPSBEUk1fTU9ERV9TQ0FMRV9BU1BFQ1Q7CisKKwkJZHJtX2Nv
bm5lY3Rvcl9jcmVhdGVfcHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoY29ubmVjdG9yKTsKIAl9CiB9
CiAKK3N0YXRpYyB2b2lkIGludGVsX2RwX3VwZGF0ZV9wcml2YWN5X3NjcmVlbihzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKKwkJCQljb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9z
dGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gY29ubl9zdGF0ZS0+
Y29ubmVjdG9yOworCisJaWYgKGNvbm5lY3Rvci0+cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkpCisJ
CWludGVsX3ByaXZhY3lfc2NyZWVuX3NldF92YWwodG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rv
ciksCisJCQkJCSAgICAgY29ubl9zdGF0ZS0+cHJpdmFjeV9zY3JlZW5fc3RhdHVzKTsKK30KKwor
c3RhdGljIHZvaWQgaW50ZWxfZHBfdXBkYXRlX3BpcGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCisJCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAor
CQkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKK3sKKwlp
bnRlbF9kcF91cGRhdGVfcHJpdmFjeV9zY3JlZW4oZW5jb2RlciwgY3J0Y19zdGF0ZSwgY29ubl9z
dGF0ZSk7CisJaW50ZWxfcGFuZWxfdXBkYXRlX2JhY2tsaWdodChlbmNvZGVyLCBjcnRjX3N0YXRl
LCBjb25uX3N0YXRlKTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfZHBfaW5pdF9wYW5lbF9wb3dl
cl90aW1lc3RhbXBzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CiAJaW50ZWxfZHAtPnBh
bmVsX3Bvd2VyX29mZl90aW1lID0ga3RpbWVfZ2V0X2Jvb3R0aW1lKCk7CkBAIC03ODI1LDcgKzc4
NTMsNyBAQCBib29sIGludGVsX2RwX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogCWludGVsX2VuY29kZXItPmNvbXB1dGVfY29uZmlnID0gaW50ZWxfZHBfY29tcHV0ZV9j
b25maWc7CiAJaW50ZWxfZW5jb2Rlci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxfZHBfZ2V0X2h3X3N0
YXRlOwogCWludGVsX2VuY29kZXItPmdldF9jb25maWcgPSBpbnRlbF9kcF9nZXRfY29uZmlnOwot
CWludGVsX2VuY29kZXItPnVwZGF0ZV9waXBlID0gaW50ZWxfcGFuZWxfdXBkYXRlX2JhY2tsaWdo
dDsKKwlpbnRlbF9lbmNvZGVyLT51cGRhdGVfcGlwZSA9IGludGVsX2RwX3VwZGF0ZV9waXBlOwog
CWludGVsX2VuY29kZXItPnN1c3BlbmQgPSBpbnRlbF9kcF9lbmNvZGVyX3N1c3BlbmQ7CiAJaWYg
KElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSB7CiAJCWludGVsX2VuY29kZXItPnByZV9wbGxfZW5h
YmxlID0gY2h2X2RwX3ByZV9wbGxfZW5hYmxlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMDAuLjZmZjYxZGRmNGMwYTQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmMKQEAgLTAsMCAr
MSwxNzUgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIE9SIE1JVAorLyoK
KyAqIEludGVsIEFDUEkgcHJpdmFjeSBzY3JlZW4gY29kZQorICoKKyAqIENvcHlyaWdodCDCqSAy
MDIwIEdvb2dsZSBJbmMuCisgKgorICogVGhpcyBjb2RlIGNhbiBoZWxwIGRldGVjdCBhbmQgY29u
dHJvbCBhbiBpbnRlZ3JhdGVkIEVQUyAoZWxlY3Ryb25pYworICogcHJpdmFjeSBzY3JlZW4pIHZp
YSBBQ1BJIGZ1bmN0aW9ucy4gSXQgZXhwZWN0cyBhbiBBQ1BJIG5vZGUgZm9yIHRoZQorICogZHJt
IGNvbm5lY3RvciBkZXZpY2Ugd2l0aCB0aGUgZm9sbG93aW5nIGVsZW1lbnRzOgorICoKKyAqIFVV
SUQgc2hvdWxkIGJlICJjNzAzMzExMy04NzIwLTRjZWItOTA5MC05ZDUyYjNlNTJkNzMiCisgKgor
ICogX0FEUiA9IEFDUEkgYWRkcmVzcyBwZXIgU3BlYyAoYWxzbyBzZWUgaW50ZWxfYWNwaV9kZXZp
Y2VfaWRfdXBkYXRlKCkpCisgKiBodHRwczovL3VlZmkub3JnL3NpdGVzL2RlZmF1bHQvZmlsZXMv
cmVzb3VyY2VzL0FDUElfNl8zX2ZpbmFsX0phbjMwLnBkZgorICogUGFnZXMgMTExOSAtIDExMjMu
CisgKgorICogX0RTTSBtZXRob2QgdGhhdCB3aWxsIHBlcmZvcm0gdGhlIGZvbGxvd2luZyBmdW5j
dGlvbnMgYWNjb3JkaW5nIHRvCisgKiBMb2NhbDEgYXJndW1lbnQgcGFzc2VkIHRvIGl0OgorICog
IC0gTG9jYWwxID0gMCAoRVBTIGNhcGFiaWxpdGllcyk6IFJlcG9ydCBFUFMgcHJlc2VuY2UgYW5k
IGNhcGFiaWxpdGllcy4KKyAqICAtIExvY2FsMSA9IDEgKEVQUyBTdGF0ZSkgIDogIF9EU00gcmV0
dXJucyAxIGlmIEVQUyBpcyBlbmFibGVkLCAwIG90aGVyd2lzZS4KKyAqICAtIExvY2FsMSA9IDIg
KEVQUyBFbmFibGUpIDogIF9EU00gZW5hYmxlcyBFUFMKKyAqICAtIExvY2FsMSA9IDMgKEVQUyBE
aXNhYmxlKTogIF9EU00gZGlzYWJsZXMgRVBTCisgKgorICogSGVyZSBpcyBhIHNhbXBsZSBBQ1BJ
IG5vZGU6CisgKgorICogIFNjb3BlIChcX1NCLlBDSTAuR0ZYMCkgLy8gSW50ZWwgZ3JhcGhpY3Mg
ZGV2aWNlIChQQ0kgZGV2aWNlKQorICogIHsKKyAqICAgICAgTWV0aG9kIChfRE9ELCAwLCBOb3RT
ZXJpYWxpemVkKSAgLy8gX0RPRDogRGlzcGxheSBPdXRwdXQgRGV2aWNlcworICogICAgICB7Cisg
KiAgICAgICAgICBSZXR1cm4gKFBhY2thZ2UgKDB4MDEpCisgKiAgICAgICAgICB7CisgKiAgICAg
ICAgICAgICAgMHg4MDAxMDQwMAorICogICAgICAgICAgfSkKKyAqICAgICAgfQorICoKKyAqICAg
ICAgRGV2aWNlIChMQ0QpCisgKiAgICAgIHsKKyAqICAgICAgICAgIE5hbWUgKF9BRFIsIDB4ODAw
MTA0MDApICAvLyBfQURSOiBBZGRyZXNzCisgKiAgICAgICAgICBOYW1lIChfU1RBLCAweDBGKSAg
Ly8gX1NUQTogU3RhdHVzCisgKgorICogICAgICAgICAgTWV0aG9kIChFUFNQLCAwLCBOb3RTZXJp
YWxpemVkKSAvLyBFUFMgUHJlc2VudAorICogICAgICAgICAgeworICogICAgICAgICAgICAgIFJl
dHVybiAoMHgwMSkKKyAqICAgICAgICAgIH0KKyAqCisgKiAgICAgICAgICBNZXRob2QgKEVQU1Ms
IDAsIE5vdFNlcmlhbGl6ZWQpIC8vIEVQUyBTdGF0ZQorICogICAgICAgICAgeworICogICAgICAg
ICAgICAgIExvY2FsMCA9IFxfU0IuUENJMC5HUlhTICgweENEKQorICogICAgICAgICAgICAgIFJl
dHVybiAoTG9jYWwwKQorICogICAgICAgICAgfQorICoKKyAqICAgICAgICAgIE1ldGhvZCAoRVBT
RSwgMCwgTm90U2VyaWFsaXplZCkgLy8gRVBTIEVuYWJsZQorICogICAgICAgICAgeworICogICAg
ICAgICAgICAgIFxfU0IuUENJMC5TVFhTICgweENEKQorICogICAgICAgICAgfQorICoKKyAqICAg
ICAgICAgIE1ldGhvZCAoRVBTRCwgMCwgTm90U2VyaWFsaXplZCkgLy8gRVBTIERpc2FibGUKKyAq
ICAgICAgICAgIHsKKyAqICAgICAgICAgICAgICBcX1NCLlBDSTAuQ1RYUyAoMHhDRCkKKyAqICAg
ICAgICAgIH0KKyAqCisgKiAgICAgICAgICBNZXRob2QgKF9EU00sIDQsIFNlcmlhbGl6ZWQpICAv
LyBfRFNNOiBEZXZpY2UtU3BlY2lmaWMgTWV0aG9kCisgKiAgICAgICAgICB7CisgKiAgICAgICAg
ICAgICAgVG9CdWZmZXIgKEFyZzAsIExvY2FsMCkKKyAqICAgICAgICAgICAgICBJZiAoKExvY2Fs
MCA9PSBUb1VVSUQgKCJjNzAzMzExMy04NzIwLTRjZWItOTA5MC05ZDUyYjNlNTJkNzMiKSkpCisg
KiAgICAgICAgICAgICAgeworICogICAgICAgICAgICAgICAgICBUb0ludGVnZXIgKEFyZzIsIExv
Y2FsMSkKKyAqICAgICAgICAgICAgICAgICAgSWYgKChMb2NhbDEgPT0gWmVybykpCisgKiAgICAg
ICAgICAgICAgICAgIHsKKyAqICAgICAgICAgICAgICAgICAgICAgIExvY2FsMiA9IEVQU1AgKCkK
KyAqICAgICAgICAgICAgICAgICAgICAgIElmICgoTG9jYWwyID09IE9uZSkpCisgKiAgICAgICAg
ICAgICAgICAgICAgICB7CisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgUmV0dXJuIChCdWZm
ZXIgKE9uZSkKKyAqICAgICAgICAgICAgICAgICAgICAgICAgICB7CisgKiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAweDBGCisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgfSkKKyAq
ICAgICAgICAgICAgICAgICAgICAgIH0KKyAqICAgICAgICAgICAgICAgICAgfQorICoKKyAqICAg
ICAgICAgICAgICAgICAgSWYgKChMb2NhbDEgPT0gT25lKSkKKyAqICAgICAgICAgICAgICAgICAg
eworICogICAgICAgICAgICAgICAgICAgICAgUmV0dXJuIChFUFNTICgpKQorICogICAgICAgICAg
ICAgICAgICB9CisgKgorICogICAgICAgICAgICAgICAgICBJZiAoKExvY2FsMSA9PSAweDAyKSkK
KyAqICAgICAgICAgICAgICAgICAgeworICogICAgICAgICAgICAgICAgICAgICAgRVBTRSAoKQor
ICogICAgICAgICAgICAgICAgICB9CisgKgorICogICAgICAgICAgICAgICAgICBJZiAoKExvY2Fs
MSA9PSAweDAzKSkKKyAqICAgICAgICAgICAgICAgICAgeworICogICAgICAgICAgICAgICAgICAg
ICAgRVBTRCAoKQorICogICAgICAgICAgICAgICAgICB9CisgKgorICogICAgICAgICAgICAgICAg
ICBSZXR1cm4gKEJ1ZmZlciAoT25lKQorICogICAgICAgICAgICAgICAgICB7CisgKiAgICAgICAg
ICAgICAgICAgICAgICAgMHgwMAorICogICAgICAgICAgICAgICAgICB9KQorICogICAgICAgICAg
ICAgIH0KKyAqCisgKiAgICAgICAgICAgICAgUmV0dXJuIChCdWZmZXIgKE9uZSkKKyAqICAgICAg
ICAgICAgICB7CisgKiAgICAgICAgICAgICAgICAgICAweDAwCisgKiAgICAgICAgICAgICAgfSkK
KyAqICAgICAgICAgIH0KKyAqICAgICAgfQorICogIH0KKyAqLworCisjaW5jbHVkZSA8bGludXgv
YWNwaS5oPgorCisjaW5jbHVkZSAiaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCIKKworI2RlZmluZSBD
T05ORUNUT1JfRFNNX1JFVklEIDEKKworI2RlZmluZSBDT05ORUNUT1JfRFNNX0ZOX1BSSVZBQ1lf
RU5BQkxFCQkyCisjZGVmaW5lIENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9ESVNBQkxFCTMKKwor
c3RhdGljIGNvbnN0IGd1aWRfdCBkcm1fY29ubl9kc21fZ3VpZCA9CisJR1VJRF9JTklUKDB4Qzcw
MzMxMTMsIDB4ODcyMCwgMHg0Q0VCLAorCQkgIDB4OTAsIDB4OTAsIDB4OUQsIDB4NTIsIDB4QjMs
IDB4RTUsIDB4MkQsIDB4NzMpOworCisvKiBNYWtlcyBfRFNNIGNhbGwgdG8gc2V0IHByaXZhY3kg
c2NyZWVuIHN0YXR1cyAqLworc3RhdGljIHZvaWQgYWNwaV9wcml2YWN5X3NjcmVlbl9jYWxsX2Rz
bShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkJCSB1NjQgZnVuYykKK3sK
Kwl1bmlvbiBhY3BpX29iamVjdCAqb2JqOworCWFjcGlfaGFuZGxlIGFjcGlfaGFuZGxlID0gY29u
bmVjdG9yLT5hY3BpX2hhbmRsZTsKKworCWlmICghYWNwaV9oYW5kbGUpCisJCXJldHVybjsKKwor
CW9iaiA9IGFjcGlfZXZhbHVhdGVfZHNtKGFjcGlfaGFuZGxlLCAmZHJtX2Nvbm5fZHNtX2d1aWQs
CisJCQkJQ09OTkVDVE9SX0RTTV9SRVZJRCwgZnVuYywgTlVMTCk7CisJaWYgKCFvYmopIHsKKwkJ
ZHJtX2Vycihjb25uZWN0b3ItPmJhc2UuZGV2LAorCQkJImZhaWxlZCB0byBldmFsdWF0ZSBfRFNN
IGZvciBmbiAlbGx4XG4iLCBmdW5jKTsKKwkJcmV0dXJuOworCX0KKworCUFDUElfRlJFRShvYmop
OworfQorCit2b2lkIGludGVsX3ByaXZhY3lfc2NyZWVuX3NldF92YWwoc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yLAorCQkJCSAgZW51bSBkcm1fcHJpdmFjeV9zY3JlZW5fc3RhdHVz
IHZhbCkKK3sKKwlpZiAodmFsID09IFBSSVZBQ1lfU0NSRUVOX0RJU0FCTEVEKQorCQlhY3BpX3By
aXZhY3lfc2NyZWVuX2NhbGxfZHNtKGNvbm5lY3RvciwKKwkJCQkJICAgICBDT05ORUNUT1JfRFNN
X0ZOX1BSSVZBQ1lfRElTQUJMRSk7CisJZWxzZSBpZiAodmFsID09IFBSSVZBQ1lfU0NSRUVOX0VO
QUJMRUQpCisJCWFjcGlfcHJpdmFjeV9zY3JlZW5fY2FsbF9kc20oY29ubmVjdG9yLAorCQkJCQkg
ICAgIENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9FTkFCTEUpOworCWVsc2UKKwkJZHJtX2Vycihj
b25uZWN0b3ItPmJhc2UuZGV2LAorCQkJIkNhbm5vdCBzZXQgcHJpdmFjeSBzY3JlZW4gdG8gaW52
YWxpZCB2YWwgJXVcbiIsIHZhbCk7Cit9CisKK2Jvb2wgaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJl
c2VudChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCit7CisJYWNwaV9oYW5kbGUg
aGFuZGxlID0gY29ubmVjdG9yLT5hY3BpX2hhbmRsZTsKKworCWlmICghaGFuZGxlKQorCQlyZXR1
cm4gZmFsc2U7CisKKwlpZiAoIWFjcGlfY2hlY2tfZHNtKGhhbmRsZSwgJmRybV9jb25uX2RzbV9n
dWlkLAorCQkJICAgIENPTk5FQ1RPUl9EU01fUkVWSUQsCisJCQkgICAgMSA8PCBDT05ORUNUT1Jf
RFNNX0ZOX1BSSVZBQ1lfRU5BQkxFIHwKKwkJCSAgICAxIDw8IENPTk5FQ1RPUl9EU01fRk5fUFJJ
VkFDWV9ESVNBQkxFKSkgeworCQlkcm1fZGJnX2ttcyhjb25uZWN0b3ItPmJhc2UuZGV2LAorCQkJ
ICAgICJBQ1BJIG5vZGUgYnV0IG5vIHByaXZhY3kgc2NyblxuIik7CisJCXJldHVybiBmYWxzZTsK
Kwl9CisJZHJtX2luZm8oY29ubmVjdG9yLT5iYXNlLmRldiwgInN1cHBvcnRzIHByaXZhY3kgc2Ny
ZWVuXG4iKTsKKwlyZXR1cm4gdHJ1ZTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAwLi5mOGQyZTI0NmVhMGJkCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5oCkBAIC0wLDAgKzEs
MjcgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIE9SIE1JVCAqLworLyoK
KyAqIENvcHlyaWdodCDCqSAyMDE5IEdvb2dsZSBJbmMuCisgKi8KKworI2lmbmRlZiBfX0RSTV9Q
UklWQUNZX1NDUkVFTl9IX18KKyNkZWZpbmUgX19EUk1fUFJJVkFDWV9TQ1JFRU5fSF9fCisKKyNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCisKKyNpZmRlZiBDT05GSUdfQUNQSQorYm9v
bCBpbnRlbF9wcml2YWN5X3NjcmVlbl9wcmVzZW50KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3Rvcik7Cit2b2lkIGludGVsX3ByaXZhY3lfc2NyZWVuX3NldF92YWwoc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAorCQkJCSAgZW51bSBkcm1fcHJpdmFjeV9zY3JlZW5fc3Rh
dHVzIHZhbCk7CisjZWxzZQorc3RhdGljIGJvb2wgaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2Vu
dChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCit7CisJcmV0dXJuIGZhbHNlOwor
fQorCitzdGF0aWMgdm9pZAoraW50ZWxfcHJpdmFjeV9zY3JlZW5fc2V0X3ZhbChzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkgICAgIGVudW0gZHJtX3ByaXZhY3lfc2NyZWVu
X3N0YXR1cyB2YWwpCit7IH0KKyNlbmRpZiAvKiBDT05GSUdfQUNQSSAqLworCisjZW5kaWYgLyog
X19EUk1fUFJJVkFDWV9TQ1JFRU5fSF9fICovCi0tIAoyLjI1LjEuNDgxLmdmYmNlMGViODAxLWdv
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
