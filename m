Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1496E7F1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5076E850;
	Fri, 19 Jul 2019 15:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E756E84D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:23:23 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id e3so34849611edr.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 08:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xFHOTLwp+b/dZE4sngfYD0eMlUdDzWSkwvsokg6afgA=;
 b=X4+x/Xrwpk4/bhAhpRlO79QdQYsptQck4Mz/a9CewfLy8KwxjYmzBQFxEnFmi5pr2E
 oUT/YT858wrx7gcsTu3nVDYVvJWdVEYszXgGLjRU569UeUnaKJK0eOtKKj7E94OboTOF
 UdkAhNzSYZJ45IjH8hE/uHJTSlwt5ZcKtxDl2SUE9eG4jArVSQCMpNn54QgcJ3x0YEm1
 aUYGf/NMRKgRyj0m5gO2PzIl9ZU9BvcxFWmrKDRGG2Rb7rtQ9PUGtpFPQj2PYq/iNrgF
 D1nMntlPHTYgTVH/YQfM9WK6yG8PgMMm3scGsEFYnTPAUMXcDl7/rkmMKaFIPfo8sVnv
 ++SA==
X-Gm-Message-State: APjAAAUL+ZDlsbJkUXzSdh6Tiyon8g6WP42E3cQdxzOsJC9cZQFLv9bQ
 RH42LXeFIEhGOMXGWw70+S3sp7E7
X-Google-Smtp-Source: APXvYqyNOC9FzBSgRhiu0c1Eppme2UT4kllyHI4EpR3J46DXhp//MuZX5G03DisxbZklt3UtnbLi/A==
X-Received: by 2002:a17:906:cce9:: with SMTP id
 ot41mr12688698ejb.196.1563549802546; 
 Fri, 19 Jul 2019 08:23:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t2sm8882538eda.95.2019.07.19.08.23.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 08:23:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 19 Jul 2019 17:23:14 +0200
Message-Id: <20190719152314.7706-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
References: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xFHOTLwp+b/dZE4sngfYD0eMlUdDzWSkwvsokg6afgA=;
 b=WsyOLyahh9jkWf8mBub4V5UlJN5P4orW8IeSpSX+i5yGPUzTnoZ0XEdRm/ONV1D6s1
 GFrl1sz67IK/S/hq2UWLZbWxNLauZ4E26Ekt6A2k3fFDLRJWwtcaDAFC6dwPdxTeo7Hb
 JVwS3xntMOzTYCgBbDW/8b+bU2iVydZagiglg=
Subject: [Intel-gfx] [PATCH 3/3] drm/vkms: Reduce critical section in
 vblank_simulate
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
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2FuIHJlZHVjZSB0aGUgY3JpdGljYWwgc2VjdGlvbiBpbiB2a21zX3ZibGFua19zaW11bGF0
ZSB1bmRlcgpvdXRwdXQtPmxvY2sgcXVpdGUgYSBsb3Q6CgotIGhydGltZXJfZm9yd2FyZF9ub3cg
anVzdCBuZWVkcyB0byBiZSBvcmRlcmVkIGNvcnJlY3RseSB3cnQKICBkcm1fY3J0Y19oYW5kbGVf
dmJsYW5rLiBXZSBhbHJlYWR5IGFjY2VzcyB0aGUgaHJ0aW1lciB0aW1lc3RhbXAKICB3aXRob3V0
IGxvY2tzLiBXaGlsZSBhdWRpdGluZyB0aGF0IEkgbm90aWNlZCB0aGF0IHdlIGRvbid0IGNvcnJl
Y3RseQogIGFubm90YXRlIHRoZSByZWFkIHRoZXJlLCBzbyBzcHJpbmtsZSBhIFJFQURfT05DRSB0
byBtYWtlIHN1cmUgdGhlCiAgY29tcGlsZXIgZG9lc24ndCBkbyBhbnl0aGluZyBmb29saXNoLgoK
LSBkcm1fY3J0Y19oYW5kbGVfdmJsYW5rIG11c3Qgc3RheSB1bmRlciB0aGUgbG9jayB0byBhdm9p
ZCByYWNlcyB3aXRoCiAgZHJtX2NydGNfYXJtX3ZibGFua19ldmVudC4KCi0gVGhlIGFjY2VzcyB0
byB2a21zX291cHR1dC0+Y3JjX3N0YXRlIGFsc28gbXVzdCBzdGF5IHVuZGVyIHRoZSBsb2NrLgoK
LSBuZXh0IHByb2JsZW0gaXMgbWFraW5nIHN1cmUgdGhlIG91dHB1dC0+c3RhdGUgc3RydWN0dXJl
IGRvZXNuJ3QgZ2V0CiAgZnJlZWQgdG9vIGVhcmx5LiBGaXJzdCB3ZSByZWx5IG9uIGEgZ2l2ZW4g
aHJ0aW1lciBiZWluZyBzZXJpYWxpemVkOgogIElmIHdlIGNhbGwgZHJtX2NydGNfaGFuZGxlX3Zi
bGFuaywgdGhlbiB3ZSBhcmUgZ3VhcmFudGVlZCB0aGF0IHRoZQogIHByZXZpb3VzIGNhbGwgdG8g
dmttc192Ymxhbmtfc2ltdWxhdGUgaGFzIGNvbXBsZXRlZC4gVGhlIG90aGVyIHNpZGUKICBvZiB0
aGUgY29pbiBpcyB0aGF0IHRoZSBhdG9taWMgdXBkYXRlcyB3YWl0cyBmb3IgdGhlIHZibGFuayB0
bwogIGhhcHBlbiBiZWZvcmUgaXQgcmVsZWFzZXMgdGhlIG9sZCBzdGF0ZS4gQm90aCB0YWtlbiB0
b2dldGhlciBtZWFucwogIHRoYXQgYnkgdGhlIHRpbWUgdGhlIGF0b21pYyB1cGRhdGUgcmVsZWFz
ZXMgdGhlIG9sZCBzdGF0ZSwgdGhlCiAgaHJ0aW1lciB3b24ndCBhY2Nlc3MgaXQgYW55bW9yZSAo
aXQgbWlnaHQgYmUgYWNjZXNzaW5nIHRoZSBuZXcgc3RhdGUKICBhdCB0aGUgc2FtZSB0aW1lLCBi
dXQgdGhhdCdzIG9rKS4KCi0gc3RhdGUgaXMgaW52YXJpYW50LCBleGNlcHQgdGhlIGZldyBmaWVs
ZHMgc2VwYXJhdGUgcHJvdGVjdGVkIGJ5CiAgc3RhdGUtPmNyY19sb2NrLiBTbyBubyBuZWVkIHRv
IGhvbGQgdGhlIGxvY2sgZm9yIHRoYXQuCgotIGZpbmFsbHkgdGhlIHF1ZXVlX3dvcmsuIFdlIG5l
ZWQgdG8gbWFrZSBzdXJlIHRoZXJlJ3Mgbm8gcmFjZXMgd2l0aAogIHRoZSBmbHVzaF93b3JrLCBp
LmUuIHdoZW4gd2UgY2FsbCBmbHVzaF93b3JrIHdlIG5lZWQgdG8gZ3VhcmFudGVlCiAgdGhhdCB0
aGUgaHJ0aW1lciBjYW4ndCByZXF1ZXVlIHRoZSB3b3JrIGFnYWluLiBUaGlzIGlzIGd1YXJhbnRl
ZWQgYnkKICB0aGUgc2FtZSB2YmxhbmsvaHJ0aW1lciBvcmRlcmluZyBndWFyYW50ZWVzIGxpa2Ug
dGhlIHJlYXNvbmluZyBhYm92ZQogIHdoeSBzdGF0ZSB3b24ndCBiZSBmcmVlZCB0b28gZWFybHk6
IGZsdXNoX3dvcmsgb24gdGhlIG9sZCBzdGF0ZSBpcwogIGNhbGxlZCBhZnRlciB3YWl0X2Zvcl9m
bGlwX2RvbmUgaW4gdGhlIGF0b21pYyBjb21taXQgY29kZS4KClRoZXJlZm9yZSB3ZSBjYW4gYWxz
byBtb3ZlIGV2ZXJ5dGhpbmcgYWZ0ZXIgdGhlIG91dHB1dC0+Y3JjX3N0YXRlIG91dApvZiB0aGUg
Y3JpdGljYWwgc2VjdGlvbi4KCk1vdGl2YXRlZCBieSBzdWdnZXN0aW9ucyBmcm9tIFJvZHJpZ28u
CgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
Q2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgpDYzog
SGFuZWVuIE1vaGFtbWVkIDxoYW1vaGFtbWVkLnNhQGdtYWlsLmNvbT4KQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbEBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMu
YyB8IDkgKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMKaW5kZXggOTI3ZGFmYWViYzc2Li43NGY3
MDNiOGQyMmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCkBAIC0xNiwxNyArMTYsMTggQEAg
c3RhdGljIGVudW0gaHJ0aW1lcl9yZXN0YXJ0IHZrbXNfdmJsYW5rX3NpbXVsYXRlKHN0cnVjdCBo
cnRpbWVyICp0aW1lcikKIAl1NjQgcmV0X292ZXJydW47CiAJYm9vbCByZXQ7CiAKLQlzcGluX2xv
Y2soJm91dHB1dC0+bG9jayk7Ci0KIAlyZXRfb3ZlcnJ1biA9IGhydGltZXJfZm9yd2FyZF9ub3co
Jm91dHB1dC0+dmJsYW5rX2hydGltZXIsCiAJCQkJCSAgb3V0cHV0LT5wZXJpb2RfbnMpOwogCVdB
Uk5fT04ocmV0X292ZXJydW4gIT0gMSk7CiAKKwlzcGluX2xvY2soJm91dHB1dC0+bG9jayk7CiAJ
cmV0ID0gZHJtX2NydGNfaGFuZGxlX3ZibGFuayhjcnRjKTsKIAlpZiAoIXJldCkKIAkJRFJNX0VS
Uk9SKCJ2a21zIGZhaWx1cmUgb24gaGFuZGxpbmcgdmJsYW5rIik7CiAKIAlzdGF0ZSA9IG91dHB1
dC0+Y29tcG9zZXJfc3RhdGU7CisJc3Bpbl91bmxvY2soJm91dHB1dC0+bG9jayk7CisKIAlpZiAo
c3RhdGUgJiYgb3V0cHV0LT5jb21wb3Nlcl9lbmFibGVkKSB7CiAJCXU2NCBmcmFtZSA9IGRybV9j
cnRjX2FjY3VyYXRlX3ZibGFua19jb3VudChjcnRjKTsKIApAQCAtNDgsOCArNDksNiBAQCBzdGF0
aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQgdmttc192Ymxhbmtfc2ltdWxhdGUoc3RydWN0IGhydGlt
ZXIgKnRpbWVyKQogCQkJRFJNX0RFQlVHX0RSSVZFUigiQ29tcG9zZXIgd29ya2VyIGFscmVhZHkg
cXVldWVkXG4iKTsKIAl9CiAKLQlzcGluX3VubG9jaygmb3V0cHV0LT5sb2NrKTsKLQogCXJldHVy
biBIUlRJTUVSX1JFU1RBUlQ7CiB9CiAKQEAgLTg1LDcgKzg0LDcgQEAgYm9vbCB2a21zX2dldF92
YmxhbmtfdGltZXN0YW1wKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBl
LAogCXN0cnVjdCB2a21zX291dHB1dCAqb3V0cHV0ID0gJnZrbXNkZXYtPm91dHB1dDsKIAlzdHJ1
Y3QgZHJtX3ZibGFua19jcnRjICp2YmxhbmsgPSAmZGV2LT52YmxhbmtbcGlwZV07CiAKLQkqdmJs
YW5rX3RpbWUgPSBvdXRwdXQtPnZibGFua19ocnRpbWVyLm5vZGUuZXhwaXJlczsKKwkqdmJsYW5r
X3RpbWUgPSBSRUFEX09OQ0Uob3V0cHV0LT52YmxhbmtfaHJ0aW1lci5ub2RlLmV4cGlyZXMpOwog
CiAJaWYgKFdBUk5fT04oKnZibGFua190aW1lID09IHZibGFuay0+dGltZSkpCiAJCXJldHVybiB0
cnVlOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
