Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0B1875B6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF476EDCF;
	Fri,  9 Aug 2019 09:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C416E4A5;
 Mon,  5 Aug 2019 15:46:01 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id p17so84895901wrf.11;
 Mon, 05 Aug 2019 08:46:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XU22kvabM0UAeUTon64K6xj93zNYGy477hyrLlnkqqs=;
 b=bQXLbo7DJjHTfXiezL/KpfUeGVUf6vI0Q74nXO5CF+h8MQsM2OtvmtwDdN+LyZIC7l
 /hpM3EXQn0rMLF9+HgoFfyEs8UFOKD2oPqfrQaoXP/FmVbbG1jDp+AgmZkhQIcXQATG9
 YsgOVt8HRwv+aZNp1+VvEg6kpOU/8cZ3l6P/pBIyBRgoQ/jv5AKwVNKT1HiBol8nTHtf
 V1TMoXxdHKqElVAqkfEBdvTtQv346chXqrz0D2gSx1kP7qumIVXJ+E2ISjDNa1aQq2F5
 F6WfkS3xRM/ASDBEDV2avvbaOFWUiSqPnMbonItgdVYJKaMRh10uS7vf1zmg5C7P3mKl
 RPew==
X-Gm-Message-State: APjAAAWbtDTxfLGvoV26s9E4ZqMyVcrNsw9TqWlhjxms+HOdL6tY9kzq
 vEpvIPtsgym0IH8Prc6ZhkCgxYgu
X-Google-Smtp-Source: APXvYqzHdYFy9XMLdFXHPaQajeeRSYmmHeXb+ImtY7dbzuQuBVRElYCX9hzmLr8fW66jkiqAFEWqKA==
X-Received: by 2002:adf:dfc5:: with SMTP id q5mr18757753wrn.142.1565019959731; 
 Mon, 05 Aug 2019 08:45:59 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:fdbd:6233:4990:5a8d])
 by smtp.gmail.com with ESMTPSA id 91sm171836865wrp.3.2019.08.05.08.45.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 08:45:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk
Date: Mon,  5 Aug 2019 17:45:54 +0200
Message-Id: <20190805154554.3476-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805154554.3476-1-christian.koenig@amd.com>
References: <20190805154554.3476-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XU22kvabM0UAeUTon64K6xj93zNYGy477hyrLlnkqqs=;
 b=tEGanAP7V+39A/ck+Ix+YYs2iIz2rRrLG3XU2C8x50EPhssYveTxIH5YLXv1iO8NLP
 Lz439rOUOqi8fXqe4wfoWU2uGi9eXaUfCcF2bVNF3EATqzeUy6KBWm6gt78IINvpszPt
 qyztvbL0349xAwgCDsqhK8Ixv51qLMO7qDYQBNWVCQAvUxWW2iba0f/Zu/xMMyXl8sRn
 BBrYi5gfunSpGZ8dBDo2QlyRO/sBtG31jV9VvfbYOhAAq0m7eb6a9LzjtQvXwudBmNT+
 voSa/3e+xAeaoMeVdUEotFwLUZnZj+Lgt+n1BoOEt3B44baXnBKBbSlhu/kjU1nK2CMJ
 ktew==
Subject: [Intel-gfx] [PATCH 5/5] dma-buf: nuke reservation_object seq number
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG9ubHkgcmVtYWluaW5nIHVzZSBmb3IgdGhpcyBpcyB0byBwcm90ZWN0IGFnYWluc3Qgc2V0
dGluZyBhIG5ldyBleGNsdXNpdmUKZmVuY2Ugd2hpbGUgd2UgZ3JhYiBib3RoIGV4Y2x1c2l2ZSBh
bmQgc2hhcmVkLiBUaGF0IGNhbiBhbHNvIGJlIGFyY2hpdmVkIGJ5Cmxvb2tpbmcgaWYgdGhlIGV4
Y2x1c2l2ZSBmZW5jZSBoYXMgY2hhbmdlZCBvciBub3QgYWZ0ZXIgY29tcGxldGluZyB0aGUKb3Bl
cmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAg
ICAgICB8IDE0ICsrLS0tCiBkcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYyAgICAgICAgICAg
ICAgICAgfCA1OCArKysrKysrLS0tLS0tLS0tLS0tCiAuLi4vZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9hbWRrZmRfZ3B1dm0uYyAgfCAgOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9idXN5LmMgICAgICB8IDExICsrLS0KIGluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24u
aCAgICAgICAgICAgICAgICAgICB8ICAzIC0KIDUgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9u
cygrKSwgNjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggZjQ1YmZiMjllZjk2Li5jNGVl
NGNjYmZjNDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMTk5LDcgKzE5OSw3IEBAIHN0YXRpYyBfX3BvbGxf
dCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUgKnBvbGwpCiAJc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0ICpmb2JqOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlX2V4Y2w7CiAJX19wb2xsX3QgZXZlbnRzOwotCXVuc2lnbmVkIHNoYXJlZF9jb3VudCwgc2Vx
OworCXVuc2lnbmVkIHNoYXJlZF9jb3VudDsKIAogCWRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVfZGF0
YTsKIAlpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5yZXN2KQpAQCAtMjE0LDE2ICsyMTQsMTYgQEAg
c3RhdGljIF9fcG9sbF90IGRtYV9idWZfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwgcG9sbF90YWJs
ZSAqcG9sbCkKIAkJcmV0dXJuIDA7CiAKIHJldHJ5OgotCXNlcSA9IHJlYWRfc2VxY291bnRfYmVn
aW4oJnJlc3YtPnNlcSk7CiAJcmN1X3JlYWRfbG9jaygpOwogCisJZmVuY2VfZXhjbCA9IHJjdV9k
ZXJlZmVyZW5jZShyZXN2LT5mZW5jZV9leGNsKTsKIAlmb2JqID0gcmN1X2RlcmVmZXJlbmNlKHJl
c3YtPmZlbmNlKTsKIAlpZiAoZm9iaikKIAkJc2hhcmVkX2NvdW50ID0gZm9iai0+c2hhcmVkX2Nv
dW50OwogCWVsc2UKIAkJc2hhcmVkX2NvdW50ID0gMDsKLQlmZW5jZV9leGNsID0gcmN1X2RlcmVm
ZXJlbmNlKHJlc3YtPmZlbmNlX2V4Y2wpOwotCWlmIChyZWFkX3NlcWNvdW50X3JldHJ5KCZyZXN2
LT5zZXEsIHNlcSkpIHsKKworCWlmIChyY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVuY2VfZXhjbCkg
IT0gZmVuY2VfZXhjbCkgewogCQlyY3VfcmVhZF91bmxvY2soKTsKIAkJZ290byByZXRyeTsKIAl9
CkBAIC0xMTU3LDcgKzExNTcsNiBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1
Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKIAlzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0
ICpyb2JqOwogCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqZm9iajsKIAlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZTsKLQl1bnNpZ25lZCBzZXE7CiAJaW50IGNvdW50ID0gMCwgYXR0YWNo
X2NvdW50LCBzaGFyZWRfY291bnQsIGk7CiAJc2l6ZV90IHNpemUgPSAwOwogCkBAIC0xMTg5LDEy
ICsxMTg4LDExIEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmls
ZSAqcywgdm9pZCAqdW51c2VkKQogCiAJCXJvYmogPSBidWZfb2JqLT5yZXN2OwogCQl3aGlsZSAo
dHJ1ZSkgewotCQkJc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmcm9iai0+c2VxKTsKIAkJCXJj
dV9yZWFkX2xvY2soKTsKKwkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKHJvYmotPmZlbmNlX2V4
Y2wpOwogCQkJZm9iaiA9IHJjdV9kZXJlZmVyZW5jZShyb2JqLT5mZW5jZSk7CiAJCQlzaGFyZWRf
Y291bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50IDogMDsKLQkJCWZlbmNlID0gcmN1X2Rl
cmVmZXJlbmNlKHJvYmotPmZlbmNlX2V4Y2wpOwotCQkJaWYgKCFyZWFkX3NlcWNvdW50X3JldHJ5
KCZyb2JqLT5zZXEsIHNlcSkpCisJCQlpZiAocmN1X2RlcmVmZXJlbmNlKHJvYmotPmZlbmNlX2V4
Y2wpICE9IGZlbmNlKQogCQkJCWJyZWFrOwogCQkJcmN1X3JlYWRfdW5sb2NrKCk7CiAJCX0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jIGIvZHJpdmVycy9kbWEtYnVm
L3Jlc2VydmF0aW9uLmMKaW5kZXggNjljODI2NTUzYzcyLi5kOGVkNjIzNWEzZWIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9y
ZXNlcnZhdGlvbi5jCkBAIC00OSwxMiArNDksNiBAQAogREVGSU5FX1dEX0NMQVNTKHJlc2VydmF0
aW9uX3d3X2NsYXNzKTsKIEVYUE9SVF9TWU1CT0wocmVzZXJ2YXRpb25fd3dfY2xhc3MpOwogCi1z
dHJ1Y3QgbG9ja19jbGFzc19rZXkgcmVzZXJ2YXRpb25fc2VxY291bnRfY2xhc3M7Ci1FWFBPUlRf
U1lNQk9MKHJlc2VydmF0aW9uX3NlcWNvdW50X2NsYXNzKTsKLQotY29uc3QgY2hhciByZXNlcnZh
dGlvbl9zZXFjb3VudF9zdHJpbmdbXSA9ICJyZXNlcnZhdGlvbl9zZXFjb3VudCI7Ci1FWFBPUlRf
U1lNQk9MKHJlc2VydmF0aW9uX3NlcWNvdW50X3N0cmluZyk7Ci0KIC8qKgogICogcmVzZXJ2YXRp
b25fb2JqZWN0X2luaXQgLSBpbml0aWFsaXplIGEgcmVzZXJ2YXRpb24gb2JqZWN0CiAgKiBAb2Jq
OiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0CkBAIC02Miw5ICs1Niw2IEBAIEVYUE9SVF9TWU1CT0wo
cmVzZXJ2YXRpb25fc2VxY291bnRfc3RyaW5nKTsKIHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2lu
aXQoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqKQogewogCXd3X211dGV4X2luaXQoJm9i
ai0+bG9jaywgJnJlc2VydmF0aW9uX3d3X2NsYXNzKTsKLQotCV9fc2VxY291bnRfaW5pdCgmb2Jq
LT5zZXEsIHJlc2VydmF0aW9uX3NlcWNvdW50X3N0cmluZywKLQkJCSZyZXNlcnZhdGlvbl9zZXFj
b3VudF9jbGFzcyk7CiAJUkNVX0lOSVRfUE9JTlRFUihvYmotPmZlbmNlLCBOVUxMKTsKIAlSQ1Vf
SU5JVF9QT0lOVEVSKG9iai0+ZmVuY2VfZXhjbCwgTlVMTCk7CiB9CkBAIC0yNTEsMTIgKzI0Miwx
MCBAQCB2b2lkIHJlc2VydmF0aW9uX29iamVjdF9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgcmVzZXJ2
YXRpb25fb2JqZWN0ICpvYmosCiAJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwogCiAJcHJlZW1wdF9k
aXNhYmxlKCk7Ci0Jd3JpdGVfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKLQkvKiB3cml0ZV9z
ZXFjb3VudF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNzYXJ5IG1lbW9yeSBiYXJyaWVyICovCiAJ
UkNVX0lOSVRfUE9JTlRFUihvYmotPmZlbmNlX2V4Y2wsIGZlbmNlKTsKKwkvKiBwb2ludGVyIHVw
ZGF0ZSBtdXN0IGJlIHZpc2libGUgYmVmb3JlIHdlIG1vZGlmeSB0aGUgc2hhcmVkX2NvdW50ICov
CiAJaWYgKG9sZCkKLQkJb2xkLT5zaGFyZWRfY291bnQgPSAwOwotCXdyaXRlX3NlcWNvdW50X2Vu
ZCgmb2JqLT5zZXEpOworCQlzbXBfc3RvcmVfbWIob2xkLT5zaGFyZWRfY291bnQsIDApOwogCXBy
ZWVtcHRfZW5hYmxlKCk7CiAKIAkvKiBpbnBsYWNlIHVwZGF0ZSwgbm8gc2hhcmVkIGZlbmNlcyAq
LwpAQCAtMzQwLDExICszMjksOCBAQCBpbnQgcmVzZXJ2YXRpb25fb2JqZWN0X2NvcHlfZmVuY2Vz
KHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKmRzdCwKIAlvbGQgPSByZXNlcnZhdGlvbl9vYmpl
Y3RfZ2V0X2V4Y2woZHN0KTsKIAogCXByZWVtcHRfZGlzYWJsZSgpOwotCXdyaXRlX3NlcWNvdW50
X2JlZ2luKCZkc3QtPnNlcSk7Ci0JLyogd3JpdGVfc2VxY291bnRfYmVnaW4gcHJvdmlkZXMgdGhl
IG5lY2Vzc2FyeSBtZW1vcnkgYmFycmllciAqLwogCVJDVV9JTklUX1BPSU5URVIoZHN0LT5mZW5j
ZV9leGNsLCBuZXcpOwotCVJDVV9JTklUX1BPSU5URVIoZHN0LT5mZW5jZSwgZHN0X2xpc3QpOwot
CXdyaXRlX3NlcWNvdW50X2VuZCgmZHN0LT5zZXEpOworCXJjdV9hc3NpZ25fcG9pbnRlcihkc3Qt
PmZlbmNlLCBkc3RfbGlzdCk7CiAJcHJlZW1wdF9lbmFibGUoKTsKIAogCWlmIChzcmNfbGlzdCkK
QEAgLTM4MCwxOCArMzY2LDE0IEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19y
Y3Uoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCiAJZG8gewogCQlzdHJ1Y3QgcmVz
ZXJ2YXRpb25fb2JqZWN0X2xpc3QgKmZvYmo7Ci0JCXVuc2lnbmVkIGludCBpLCBzZXE7CisJCXVu
c2lnbmVkIGludCBpOwogCQlzaXplX3Qgc3ogPSAwOwogCiAJCXNoYXJlZF9jb3VudCA9IGkgPSAw
OwogCiAJCXJjdV9yZWFkX2xvY2soKTsKLQkJc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2Jq
LT5zZXEpOwotCi0JCWZlbmNlX2V4Y2wgPSByY3VfZGVyZWZlcmVuY2Uob2JqLT5mZW5jZV9leGNs
KTsKLQkJaWYgKGZlbmNlX2V4Y2wgJiYgIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlX2V4Y2wpKQot
CQkJZ290byB1bmxvY2s7CiAKKwkJZmVuY2VfZXhjbCA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUo
Jm9iai0+ZmVuY2VfZXhjbCk7CiAJCWZvYmogPSByY3VfZGVyZWZlcmVuY2Uob2JqLT5mZW5jZSk7
CiAJCWlmIChmb2JqKQogCQkJc3ogKz0gc2l6ZW9mKCpzaGFyZWQpICogZm9iai0+c2hhcmVkX21h
eDsKQEAgLTQyOCw3ICs0MTAsOCBAQCBpbnQgcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNf
cmN1KHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaiwKIAkJCX0KIAkJfQogCi0JCWlmIChp
ICE9IHNoYXJlZF9jb3VudCB8fCByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSkg
eworCQlpZiAoaSAhPSBzaGFyZWRfY291bnQgfHwKKwkJICAgIHJjdV9kZXJlZmVyZW5jZShvYmot
PmZlbmNlX2V4Y2wpICE9IGZlbmNlX2V4Y2wpIHsKIAkJCXdoaWxlIChpLS0pCiAJCQkJZG1hX2Zl
bmNlX3B1dChzaGFyZWRbaV0pOwogCQkJZG1hX2ZlbmNlX3B1dChmZW5jZV9leGNsKTsKQEAgLTQ3
MiwxOCArNDU1LDE3IEBAIGxvbmcgcmVzZXJ2YXRpb25fb2JqZWN0X3dhaXRfdGltZW91dF9yY3Uo
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCQkJCQkgYm9vbCB3YWl0X2FsbCwgYm9v
bCBpbnRyLAogCQkJCQkgdW5zaWduZWQgbG9uZyB0aW1lb3V0KQogewotCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOwotCXVuc2lnbmVkIHNlcSwgc2hhcmVkX2NvdW50OworCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLCAqZmVuY2VfZXhjbDsKIAlsb25nIHJldCA9IHRpbWVvdXQgPyB0aW1lb3V0IDog
MTsKKwl1bnNpZ25lZCBzaGFyZWRfY291bnQ7CiAJaW50IGk7CiAKIHJldHJ5OgogCXNoYXJlZF9j
b3VudCA9IDA7Ci0Jc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwogCXJjdV9y
ZWFkX2xvY2soKTsKIAlpID0gLTE7CiAKLQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmZl
bmNlX2V4Y2wpOworCWZlbmNlID0gZmVuY2VfZXhjbCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmZl
bmNlX2V4Y2wpOwogCWlmIChmZW5jZSAmJiAhdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFM
RURfQklULCAmZmVuY2UtPmZsYWdzKSkgewogCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNl
KSkKIAkJCWdvdG8gdW5sb2NrX3JldHJ5OwpAQCAtNTI0LDEzICs1MDYsMTMgQEAgbG9uZyByZXNl
cnZhdGlvbl9vYmplY3Rfd2FpdF90aW1lb3V0X3JjdShzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0
ICpvYmosCiAJCX0KIAl9CiAKKwlpZiAocmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2VfZXhjbCkg
IT0gZmVuY2VfZXhjbCkgeworCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJZ290byB1bmxvY2tf
cmV0cnk7CisJfQorCiAJcmN1X3JlYWRfdW5sb2NrKCk7CiAJaWYgKGZlbmNlKSB7Ci0JCWlmIChy
ZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSkgewotCQkJZG1hX2ZlbmNlX3B1dChm
ZW5jZSk7Ci0JCQlnb3RvIHJldHJ5OwotCQl9Ci0KIAkJcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGlt
ZW91dChmZW5jZSwgaW50ciwgcmV0KTsKIAkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CiAJCWlmIChy
ZXQgPiAwICYmIHdhaXRfYWxsICYmIChpICsgMSA8IHNoYXJlZF9jb3VudCkpCkBAIC01NzUsMTQg
KzU1NywxNSBAQCByZXNlcnZhdGlvbl9vYmplY3RfdGVzdF9zaWduYWxlZF9zaW5nbGUoc3RydWN0
IGRtYV9mZW5jZSAqcGFzc2VkX2ZlbmNlKQogYm9vbCByZXNlcnZhdGlvbl9vYmplY3RfdGVzdF9z
aWduYWxlZF9yY3Uoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCQkJCQkgIGJvb2wg
dGVzdF9hbGwpCiB7Ci0JdW5zaWduZWQgc2VxLCBzaGFyZWRfY291bnQ7CisJc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2VfZXhjbDsKKwl1bnNpZ25lZCBzaGFyZWRfY291bnQ7CiAJaW50IHJldDsKIAog
CXJjdV9yZWFkX2xvY2soKTsKIHJldHJ5OgorCWZlbmNlX2V4Y2wgPSByY3VfZGVyZWZlcmVuY2Uo
b2JqLT5mZW5jZV9leGNsKTsKIAlyZXQgPSB0cnVlOwogCXNoYXJlZF9jb3VudCA9IDA7Ci0Jc2Vx
ID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwogCiAJaWYgKHRlc3RfYWxsKSB7CiAJ
CXVuc2lnbmVkIGk7CkBAIC02MDMsMTIgKzU4NiwxMSBAQCBib29sIHJlc2VydmF0aW9uX29iamVj
dF90ZXN0X3NpZ25hbGVkX3JjdShzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpvYmosCiAJCQkJ
YnJlYWs7CiAJCX0KIAotCQlpZiAocmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5zZXEsIHNlcSkp
CisJCWlmIChyY3VfZGVyZWZlcmVuY2Uob2JqLT5mZW5jZV9leGNsKSAhPSBmZW5jZV9leGNsKQog
CQkJZ290byByZXRyeTsKIAl9CiAKIAlpZiAoIXNoYXJlZF9jb3VudCkgewotCQlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZV9leGNsID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2VfZXhjbCk7CiAK
IAkJaWYgKGZlbmNlX2V4Y2wpIHsKIAkJCXJldCA9IHJlc2VydmF0aW9uX29iamVjdF90ZXN0X3Np
Z25hbGVkX3NpbmdsZSgKQEAgLTYxNiw3ICs1OTgsNyBAQCBib29sIHJlc2VydmF0aW9uX29iamVj
dF90ZXN0X3NpZ25hbGVkX3JjdShzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpvYmosCiAJCQlp
ZiAocmV0IDwgMCkKIAkJCQlnb3RvIHJldHJ5OwogCi0JCQlpZiAocmVhZF9zZXFjb3VudF9yZXRy
eSgmb2JqLT5zZXEsIHNlcSkpCisJCQlpZiAocmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2VfZXhj
bCkgIT0gZmVuY2VfZXhjbCkKIAkJCQlnb3RvIHJldHJ5OwogCQl9CiAJfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9ncHV2bS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9ncHV2bS5jCmluZGV4IDFkM2VlOWM0
MmY3ZS4uYTJhMmFlNTkyZjIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfYW1ka2ZkX2dwdXZtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2FtZGtmZF9ncHV2bS5jCkBAIC0yNTEsMTIgKzI1MSw4IEBAIHN0YXRpYyBpbnQgYW1k
Z3B1X2FtZGtmZF9yZW1vdmVfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGFtZGdwdV9ibyAqYm8sCiAJ
bmV3LT5zaGFyZWRfbWF4ID0gb2xkLT5zaGFyZWRfbWF4OwogCW5ldy0+c2hhcmVkX2NvdW50ID0g
azsKIAotCS8qIEluc3RhbGwgdGhlIG5ldyBmZW5jZSBsaXN0LCBzZXFjb3VudCBwcm92aWRlcyB0
aGUgYmFycmllcnMgKi8KLQlwcmVlbXB0X2Rpc2FibGUoKTsKLQl3cml0ZV9zZXFjb3VudF9iZWdp
bigmcmVzdi0+c2VxKTsKLQlSQ1VfSU5JVF9QT0lOVEVSKHJlc3YtPmZlbmNlLCBuZXcpOwotCXdy
aXRlX3NlcWNvdW50X2VuZCgmcmVzdi0+c2VxKTsKLQlwcmVlbXB0X2VuYWJsZSgpOworCS8qIElu
c3RhbGwgdGhlIG5ldyBmZW5jZSBsaXN0ICovCisJcmN1X2Fzc2lnbl9wb2ludGVyKHJlc3YtPmZl
bmNlLCBuZXcpOwogCiAJLyogRHJvcCB0aGUgcmVmZXJlbmNlcyB0byB0aGUgcmVtb3ZlZCBmZW5j
ZXMgb3IgbW92ZSB0aGVtIHRvIGVmX2xpc3QgKi8KIAlmb3IgKGkgPSBqLCBrID0gMDsgaSA8IG9s
ZC0+c2hhcmVkX2NvdW50OyArK2kpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9idXN5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
YnVzeS5jCmluZGV4IDZhZDkzYTA5OTY4Yy4uNmU4YTZlNGYzOWZmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKQEAgLTgzLDcgKzgzLDcgQEAgaTkxNV9nZW1fYnVz
eV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCXN0cnVjdCBkcm1f
aTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iajsKIAlzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgKmxpc3Q7Ci0JdW5zaWduZWQg
aW50IHNlcTsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZV9leGNsOwogCWludCBlcnI7CiAKIAll
cnIgPSAtRU5PRU5UOwpAQCAtMTEwLDExICsxMTAsOSBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJICoKIAkgKi8KIHJldHJ5OgotCXNl
cSA9IHJhd19yZWFkX3NlcWNvdW50KCZvYmotPmJhc2UucmVzdi0+c2VxKTsKLQogCS8qIFRyYW5z
bGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAq
LwotCWFyZ3MtPmJ1c3kgPQotCQlidXN5X2NoZWNrX3dyaXRlcihyY3VfZGVyZWZlcmVuY2Uob2Jq
LT5iYXNlLnJlc3YtPmZlbmNlX2V4Y2wpKTsKKwlmZW5jZV9leGNsID0gcmN1X2RlcmVmZXJlbmNl
KG9iai0+YmFzZS5yZXN2LT5mZW5jZV9leGNsKTsKKwlhcmdzLT5idXN5ID0gYnVzeV9jaGVja193
cml0ZXIoZmVuY2VfZXhjbCk7CiAKIAkvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFE
IHNldCBvZiBlbmdpbmVzICovCiAJbGlzdCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmJhc2UucmVz
di0+ZmVuY2UpOwpAQCAtMTI5LDcgKzEyNyw4IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJfQogCX0KIAotCWlmIChhcmdzLT5idXN5
ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCisJaWYg
KGFyZ3MtPmJ1c3kgJiYKKwkgICAgcmN1X2RlcmVmZXJlbmNlKG9iai0+YmFzZS5yZXN2LT5mZW5j
ZV9leGNsKSAhPSBmZW5jZV9leGNsKQogCQlnb3RvIHJldHJ5OwogCiAJZXJyID0gMDsKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaCBiL2luY2x1ZGUvbGludXgvcmVzZXJ2
YXRpb24uaAppbmRleCA1NmI3ODJmZWM0OWIuLjJiMGIyYTFhZWFlMiAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9saW51eC9yZXNlcnZhdGlvbi5oCisrKyBiL2luY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24u
aApAQCAtNDYsOCArNDYsNiBAQAogI2luY2x1ZGUgPGxpbnV4L3JjdXBkYXRlLmg+CiAKIGV4dGVy
biBzdHJ1Y3Qgd3dfY2xhc3MgcmVzZXJ2YXRpb25fd3dfY2xhc3M7Ci1leHRlcm4gc3RydWN0IGxv
Y2tfY2xhc3Nfa2V5IHJlc2VydmF0aW9uX3NlcWNvdW50X2NsYXNzOwotZXh0ZXJuIGNvbnN0IGNo
YXIgcmVzZXJ2YXRpb25fc2VxY291bnRfc3RyaW5nW107CiAKIC8qKgogICogc3RydWN0IHJlc2Vy
dmF0aW9uX29iamVjdF9saXN0IC0gYSBsaXN0IG9mIHNoYXJlZCBmZW5jZXMKQEAgLTcxLDcgKzY5
LDYgQEAgc3RydWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0IHsKICAqLwogc3RydWN0IHJlc2Vy
dmF0aW9uX29iamVjdCB7CiAJc3RydWN0IHd3X211dGV4IGxvY2s7Ci0Jc2VxY291bnRfdCBzZXE7
CiAKIAlzdHJ1Y3QgZG1hX2ZlbmNlIF9fcmN1ICpmZW5jZV9leGNsOwogCXN0cnVjdCByZXNlcnZh
dGlvbl9vYmplY3RfbGlzdCBfX3JjdSAqZmVuY2U7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
