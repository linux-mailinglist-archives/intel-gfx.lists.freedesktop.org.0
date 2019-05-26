Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF2A2AB86
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 20:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205B3897C5;
	Sun, 26 May 2019 18:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEACA897BB;
 Sun, 26 May 2019 18:05:41 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id q62so12727153ljq.7;
 Sun, 26 May 2019 11:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=/+JM09dJjWefyg39AOOFobn4Bz+Yez4U56j6r6AGNYo=;
 b=i11ze2WafTtjHHBIHpXN6b/eq1o0zRVFeJVd12Ut/pzHQzJCHDGWxraLHyWjAL/sSv
 IGIUsYABslFq0fpD+FB2KKqhi2Nf8myM7ec/tqALT513EXojZI6+9+vHSQYmQ80C87va
 E3nCBUjLuYMII31znrnURAJSsxXx/oUUM8+1mr1OYQCZpKT/sgdUzO3heMNVzvwR8XFZ
 xdpcyBAl1dxokxPae7GYs/H0ILP853Ryu91byFRyGK0zc67EVpeucmjXq4iABxjznpVv
 +apq6eXx1BESSpX5b3k8aDyr7Q0TQuvxN3wzwKbVmSI1TuO5gf7LFE+Y1HHyPB8bmduf
 5eMg==
X-Gm-Message-State: APjAAAUKqgnD7QjRLoZJqNSfsU898GStWsUSSP8OTErnhx+pb+6qTnK5
 qqRe0SnQmAF1/0VQ7iWX/+w=
X-Google-Smtp-Source: APXvYqyQ3yb/CJgH/qsOqSmhv9Y/nNlUmn4IODkXtiphtpj7DFfhXFaIptEEbWlQiIMNolGXoqO3ng==
X-Received: by 2002:a2e:8709:: with SMTP id m9mr32272560lji.25.1558893940241; 
 Sun, 26 May 2019 11:05:40 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 q6sm1779753lff.26.2019.05.26.11.05.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 11:05:39 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org
Date: Sun, 26 May 2019 20:05:31 +0200
Message-Id: <20190526180532.1641-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526180532.1641-1-sam@ravnborg.org>
References: <20190526180532.1641-1-sam@ravnborg.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+JM09dJjWefyg39AOOFobn4Bz+Yez4U56j6r6AGNYo=;
 b=KsMpVB5m+E5iGyqWVRd3TWObkX+uVjnMKM3UT9d6k60Axx7yIpevlKHS7Ho+ukQPld
 GLJwYrS7S39a94JQbY//wGBkrAW7Oh/oB/1Ivmo3Qg0ymJq91bY+F5f+/SoCVu88f78n
 LM13QmrtJWIZarKyENwhpDVCymi21LeX6qzb9GjTgrdF32OUm1qdIY4varmQqtFaRc4q
 Z7wa6TVukyCts1ULaLZUra5FMZ0KdyrAHuhAvH6Vj613dbhQ062FePxN20htA5ecUII2
 OLzgo1yBIvS1CjwlYftJ3aUsUvIx2V7AUcunJ8XWsTgVqjxUzWR82G/OealBYy4YXEb7
 t1PA==
Subject: [Intel-gfx] [PATCH v2 1/2] drm/panel: panel-innolux: drop unused
 variable
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG51bV9zdXBwbGllcyB2YXJpYWJsZSBpcyBub3QgdXNlZCwgZGVsZXRlIGl0LgpCdWlsZCB0
ZXN0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNj
OiBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdAZ21haWwuY29tPgpDYzogRGF2aWQgQWly
bGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1pbm5vbHV4LXAwNzl6Y2EuYyB8IDEg
LQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcGFuZWwvcGFuZWwtaW5ub2x1eC1wMDc5emNhLmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFu
ZWwvcGFuZWwtaW5ub2x1eC1wMDc5emNhLmMKaW5kZXggOGU1NzI0YjYzZjFmLi45NTlkNTdkYjAx
NTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1pbm5vbHV4LXAwNzl6
Y2EuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtaW5ub2x1eC1wMDc5emNhLmMK
QEAgLTU1LDcgKzU1LDYgQEAgc3RydWN0IGlubm9sdXhfcGFuZWwgewogCiAJc3RydWN0IGJhY2ts
aWdodF9kZXZpY2UgKmJhY2tsaWdodDsKIAlzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSAqc3Vw
cGxpZXM7Ci0JdW5zaWduZWQgaW50IG51bV9zdXBwbGllczsKIAlzdHJ1Y3QgZ3Bpb19kZXNjICpl
bmFibGVfZ3BpbzsKIAogCWJvb2wgcHJlcGFyZWQ7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
