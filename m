Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBDA1CF02A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 11:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC146E8CD;
	Tue, 12 May 2020 09:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86646E8A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 09:00:14 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id l18so14330384wrn.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 02:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VL9TtbPRMRPCTQiRlmMi8z5JITNnf6io7xX7MRKl+Ko=;
 b=kRhMNR3hP3pKPVHZhZ9cT25ln+EAm07SNjcy31Y4dhe3XkzIe07JM4Ya995O4xRy86
 +saK6s4RC0NG7qbyo1lVxn1eZUImoXrpCgVi47HZi5titk7nGYe9UjbrS8UkF6O3hPRR
 ovYttYkktjgExaN6BUOrX19W0nVFlKxDNLAKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VL9TtbPRMRPCTQiRlmMi8z5JITNnf6io7xX7MRKl+Ko=;
 b=RmULCj3BJiAL9W7337EK9r7D4lB82bLhA9D2ZYv2DHz8XZXvD6Zohk7gAOvrMIAqUT
 AyA/hTLJxLB+2sfFGcGCKhtCGyt42RuJh/Swhbf3gvG+hvNBOoU7i+PKU4ImJ/fxynkP
 mWAoJhI0wSA3X5M4ny4nbxjhhJNpgXqwkOpUl5CopuXAUgNod4AoebPeWHWAsX3PKtQq
 lGfkxytYlKH2wx32j/sJvLznPF9Z+4kc/DcZEjx0GHjZjDv+BFnrKWhAobklljW5Y0T1
 0uh8OG090gtgFrfCgA2hRgsNsan2wAZIZ30dz4nkuKRJu9zxMxHwai/EI54uV5UHzl2y
 bqvw==
X-Gm-Message-State: AGi0PuYUrDWVj/nMVOoMNM2VYbAmznVVq5Np7KMRZtbDk1rhCS24l0RZ
 4kpxwOimJwi4C5lRwJoD1WPPyA==
X-Google-Smtp-Source: APiQypISnc9hbO9Grrz8ir5cKtb2Z6Km73KFVxCF0gD5VBDJDeUiMEfX/2s/6rU4lnpOUPSzhy7kNw==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr23345391wrt.215.1589274013291; 
 Tue, 12 May 2020 02:00:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:42 +0200
Message-Id: <20200512085944.222637-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 15/17] Revert "drm/amdgpu: add fbdev
 suspend/resume on gpu reset"
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBvbmUgZnJvbSB0aGUgZGVwYXJ0bWVudCBvZiAibWF5YmUgcGxheSBsb3R0ZXJ5IGlm
IHlvdSBoaXQKdGhpcywga2FybWEgY29tcGVuc2F0aW9uIG1pZ2h0IHdvcmsiLiBPciBhdCBsZWFz
dCBsb2NrZGVwIGZ0dyEKClRoaXMgcmV2ZXJ0cyBjb21taXQgNTY1ZDE5NDE1NTc3NTZhNTg0YWMz
NTdkOTQ1YmMzNzRkNWZjZDFkMC4KCkl0J3Mgbm90IHF1aXRlIGFzIGxvdy1yaXNrIGFzIHRoZSBj
b21taXQgbWVzc2FnZSBjbGFpbXMsIGJlY2F1c2UgdGhpcwpncmFicyBjb25zb2xlX2xvY2ssIHdo
aWNoIG1pZ2h0IGJlIGhlbGQgd2hlbiB3ZSBhbGxvY2F0ZSBtZW1vcnksIHdoaWNoCm1pZ2h0IG5l
dmVyIGhhcHBlbiBiZWNhdXNlIHRoZSBkbWFfZmVuY2Vfd2FpdCgpIGlzIHN0dWNrIHdhaXRpbmcg
b24Kb3VyIGdwdSByZXNldDoKClsgIDEzNi43NjM3MTRdID09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpbICAxMzYuNzYzNzE0XSBXQVJOSU5HOiBw
b3NzaWJsZSBjaXJjdWxhciBsb2NraW5nIGRlcGVuZGVuY3kgZGV0ZWN0ZWQKWyAgMTM2Ljc2Mzcx
NV0gNS43LjAtcmMzKyAjMzQ2IFRhaW50ZWQ6IEcgICAgICAgIFcKWyAgMTM2Ljc2MzcxNl0gLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClsgIDEz
Ni43NjM3MTZdIGt3b3JrZXIvMjozLzY4MiBpcyB0cnlpbmcgdG8gYWNxdWlyZSBsb2NrOgpbICAx
MzYuNzYzNzE2XSBmZmZmZmZmZjgyMjZmMTQwIChjb25zb2xlX2xvY2speysuKy59LXswOjB9LCBh
dDogZHJtX2ZiX2hlbHBlcl9zZXRfc3VzcGVuZF91bmxvY2tlZCsweDdiLzB4YTAgW2RybV9rbXNf
aGVscGVyXQpbICAxMzYuNzYzNzIzXQogICAgICAgICAgICAgICBidXQgdGFzayBpcyBhbHJlYWR5
IGhvbGRpbmcgbG9jazoKWyAgMTM2Ljc2MzcyNF0gZmZmZmZmZmY4MjMxOGM4MCAoZG1hX2ZlbmNl
X21hcCl7KysrK30tezA6MH0sIGF0OiBkcm1fc2NoZWRfam9iX3RpbWVkb3V0KzB4MjUvMHhmMCBb
Z3B1X3NjaGVkXQpbICAxMzYuNzYzNzI2XQogICAgICAgICAgICAgICB3aGljaCBsb2NrIGFscmVh
ZHkgZGVwZW5kcyBvbiB0aGUgbmV3IGxvY2suCgpbICAxMzYuNzYzNzI2XQogICAgICAgICAgICAg
ICB0aGUgZXhpc3RpbmcgZGVwZW5kZW5jeSBjaGFpbiAoaW4gcmV2ZXJzZSBvcmRlcikgaXM6Clsg
IDEzNi43NjM3MjddCiAgICAgICAgICAgICAgIC0+ICMyIChkbWFfZmVuY2VfbWFwKXsrKysrfS17
MDowfToKWyAgMTM2Ljc2MzczMF0gICAgICAgIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQrMHg0MS8w
eGIwClsgIDEzNi43NjM3MzJdICAgICAgICBkbWFfcmVzdl9sb2NrZGVwKzB4MTcxLzB4MjAyClsg
IDEzNi43NjM3MzRdICAgICAgICBkb19vbmVfaW5pdGNhbGwrMHg1ZC8weDJmMApbICAxMzYuNzYz
NzM2XSAgICAgICAga2VybmVsX2luaXRfZnJlZWFibGUrMHgyMGQvMHgyNmQKWyAgMTM2Ljc2Mzcz
OF0gICAgICAgIGtlcm5lbF9pbml0KzB4YS8weGZiClsgIDEzNi43NjM3NDBdICAgICAgICByZXRf
ZnJvbV9mb3JrKzB4MjcvMHg1MApbICAxMzYuNzYzNzQwXQogICAgICAgICAgICAgICAtPiAjMSAo
ZnNfcmVjbGFpbSl7Ky4rLn0tezA6MH06ClsgIDEzNi43NjM3NDNdICAgICAgICBmc19yZWNsYWlt
X2FjcXVpcmUucGFydC4wKzB4MjUvMHgzMApbICAxMzYuNzYzNzQ1XSAgICAgICAga21lbV9jYWNo
ZV9hbGxvY190cmFjZSsweDJlLzB4NmUwClsgIDEzNi43NjM3NDddICAgICAgICBkZXZpY2VfY3Jl
YXRlX2dyb3Vwc192YXJncysweDUyLzB4ZjAKWyAgMTM2Ljc2Mzc0N10gICAgICAgIGRldmljZV9j
cmVhdGUrMHg0OS8weDYwClsgIDEzNi43NjM3NDldICAgICAgICBmYl9jb25zb2xlX2luaXQrMHgy
NS8weDE0NQpbICAxMzYuNzYzNzUwXSAgICAgICAgZmJtZW1faW5pdCsweGNjLzB4ZTIKWyAgMTM2
Ljc2Mzc1MF0gICAgICAgIGRvX29uZV9pbml0Y2FsbCsweDVkLzB4MmYwClsgIDEzNi43NjM3NTFd
ICAgICAgICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDIwZC8weDI2ZApbICAxMzYuNzYzNzUyXSAg
ICAgICAga2VybmVsX2luaXQrMHhhLzB4ZmIKWyAgMTM2Ljc2Mzc1M10gICAgICAgIHJldF9mcm9t
X2ZvcmsrMHgyNy8weDUwClsgIDEzNi43NjM3NTNdCiAgICAgICAgICAgICAgIC0+ICMwIChjb25z
b2xlX2xvY2speysuKy59LXswOjB9OgpbICAxMzYuNzYzNzU1XSAgICAgICAgX19sb2NrX2FjcXVp
cmUrMHgxMjQxLzB4MjNmMApbICAxMzYuNzYzNzU2XSAgICAgICAgbG9ja19hY3F1aXJlKzB4YWQv
MHgzNzAKWyAgMTM2Ljc2Mzc1N10gICAgICAgIGNvbnNvbGVfbG9jaysweDQ3LzB4NzAKWyAgMTM2
Ljc2Mzc2MV0gICAgICAgIGRybV9mYl9oZWxwZXJfc2V0X3N1c3BlbmRfdW5sb2NrZWQrMHg3Yi8w
eGEwIFtkcm1fa21zX2hlbHBlcl0KWyAgMTM2Ljc2MzgwOV0gICAgICAgIGFtZGdwdV9kZXZpY2Vf
Z3B1X3JlY292ZXIuY29sZCsweDIxZS8weGU3YiBbYW1kZ3B1XQpbICAxMzYuNzYzODUwXSAgICAg
ICAgYW1kZ3B1X2pvYl90aW1lZG91dCsweGZiLzB4MTUwIFthbWRncHVdClsgIDEzNi43NjM4NTFd
ICAgICAgICBkcm1fc2NoZWRfam9iX3RpbWVkb3V0KzB4OGEvMHhmMCBbZ3B1X3NjaGVkXQpbICAx
MzYuNzYzODUyXSAgICAgICAgcHJvY2Vzc19vbmVfd29yaysweDIzYy8weDU4MApbICAxMzYuNzYz
ODUzXSAgICAgICAgd29ya2VyX3RocmVhZCsweDUwLzB4M2IwClsgIDEzNi43NjM4NTRdICAgICAg
ICBrdGhyZWFkKzB4MTJlLzB4MTUwClsgIDEzNi43NjM4NTVdICAgICAgICByZXRfZnJvbV9mb3Jr
KzB4MjcvMHg1MApbICAxMzYuNzYzODU1XQogICAgICAgICAgICAgICBvdGhlciBpbmZvIHRoYXQg
bWlnaHQgaGVscCB1cyBkZWJ1ZyB0aGlzOgoKWyAgMTM2Ljc2Mzg1Nl0gQ2hhaW4gZXhpc3RzIG9m
OgogICAgICAgICAgICAgICAgIGNvbnNvbGVfbG9jayAtLT4gZnNfcmVjbGFpbSAtLT4gZG1hX2Zl
bmNlX21hcAoKWyAgMTM2Ljc2Mzg1N10gIFBvc3NpYmxlIHVuc2FmZSBsb2NraW5nIHNjZW5hcmlv
OgoKWyAgMTM2Ljc2Mzg1N10gICAgICAgIENQVTAgICAgICAgICAgICAgICAgICAgIENQVTEKWyAg
MTM2Ljc2Mzg1N10gICAgICAgIC0tLS0gICAgICAgICAgICAgICAgICAgIC0tLS0KWyAgMTM2Ljc2
Mzg1N10gICBsb2NrKGRtYV9mZW5jZV9tYXApOwpbICAxMzYuNzYzODU4XSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbG9jayhmc19yZWNsYWltKTsKWyAgMTM2Ljc2Mzg1OF0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2soZG1hX2ZlbmNlX21hcCk7ClsgIDEzNi43NjM4
NThdICAgbG9jayhjb25zb2xlX2xvY2spOwpbICAxMzYuNzYzODU5XQogICAgICAgICAgICAgICAg
KioqIERFQURMT0NLICoqKgoKWyAgMTM2Ljc2Mzg2MF0gNCBsb2NrcyBoZWxkIGJ5IGt3b3JrZXIv
MjozLzY4MjoKWyAgMTM2Ljc2Mzg2MF0gICMwOiBmZmZmODg4N2ZiODFjOTM4ICgod3FfY29tcGxl
dGlvbilldmVudHMpeysuKy59LXswOjB9LCBhdDogcHJvY2Vzc19vbmVfd29yaysweDFiYy8weDU4
MApbICAxMzYuNzYzODYyXSAgIzE6IGZmZmZjOTAwMDBjYWZlNTggKCh3b3JrX2NvbXBsZXRpb24p
KCYoJnNjaGVkLT53b3JrX3RkciktPndvcmspKXsrLisufS17MDowfSwgYXQ6IHByb2Nlc3Nfb25l
X3dvcmsrMHgxYmMvMHg1ODAKWyAgMTM2Ljc2Mzg2M10gICMyOiBmZmZmZmZmZjgyMzE4YzgwIChk
bWFfZmVuY2VfbWFwKXsrKysrfS17MDowfSwgYXQ6IGRybV9zY2hlZF9qb2JfdGltZWRvdXQrMHgy
NS8weGYwIFtncHVfc2NoZWRdClsgIDEzNi43NjM4NjVdICAjMzogZmZmZjg4ODdhYjYyMTc0OCAo
JmFkZXYtPmxvY2tfcmVzZXQpeysuKy59LXszOjN9LCBhdDogYW1kZ3B1X2RldmljZV9ncHVfcmVj
b3Zlci5jb2xkKzB4NWFiLzB4ZTdiIFthbWRncHVdClsgIDEzNi43NjM5MTRdCiAgICAgICAgICAg
ICAgIHN0YWNrIGJhY2t0cmFjZToKWyAgMTM2Ljc2MzkxNV0gQ1BVOiAyIFBJRDogNjgyIENvbW06
IGt3b3JrZXIvMjozIFRhaW50ZWQ6IEcgICAgICAgIFcgICAgICAgICA1LjcuMC1yYzMrICMzNDYK
WyAgMTM2Ljc2MzkxNl0gSGFyZHdhcmUgbmFtZTogU3lzdGVtIG1hbnVmYWN0dXJlciBTeXN0ZW0g
UHJvZHVjdCBOYW1lL1BSSU1FIFgzNzAtUFJPLCBCSU9TIDQwMTEgMDQvMTkvMjAxOApbICAxMzYu
NzYzOTE4XSBXb3JrcXVldWU6IGV2ZW50cyBkcm1fc2NoZWRfam9iX3RpbWVkb3V0IFtncHVfc2No
ZWRdClsgIDEzNi43NjM5MTldIENhbGwgVHJhY2U6ClsgIDEzNi43NjM5MjJdICBkdW1wX3N0YWNr
KzB4OGYvMHhkMApbICAxMzYuNzYzOTI0XSAgY2hlY2tfbm9uY2lyY3VsYXIrMHgxNjIvMHgxODAK
WyAgMTM2Ljc2MzkyNl0gIF9fbG9ja19hY3F1aXJlKzB4MTI0MS8weDIzZjAKWyAgMTM2Ljc2Mzky
N10gIGxvY2tfYWNxdWlyZSsweGFkLzB4MzcwClsgIDEzNi43NjM5MzJdICA/IGRybV9mYl9oZWxw
ZXJfc2V0X3N1c3BlbmRfdW5sb2NrZWQrMHg3Yi8weGEwIFtkcm1fa21zX2hlbHBlcl0KWyAgMTM2
Ljc2MzkzM10gID8gbWFya19oZWxkX2xvY2tzKzB4MmQvMHg4MApbICAxMzYuNzYzOTM0XSAgPyBf
cmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUrMHg0Ni8weDYwClsgIDEzNi43NjM5MzZdICBjb25z
b2xlX2xvY2srMHg0Ny8weDcwClsgIDEzNi43NjM5NDBdICA/IGRybV9mYl9oZWxwZXJfc2V0X3N1
c3BlbmRfdW5sb2NrZWQrMHg3Yi8weGEwIFtkcm1fa21zX2hlbHBlcl0KWyAgMTM2Ljc2Mzk0NF0g
IGRybV9mYl9oZWxwZXJfc2V0X3N1c3BlbmRfdW5sb2NrZWQrMHg3Yi8weGEwIFtkcm1fa21zX2hl
bHBlcl0KWyAgMTM2Ljc2Mzk5M10gIGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIuY29sZCsweDIx
ZS8weGU3YiBbYW1kZ3B1XQpbICAxMzYuNzY0MDM2XSAgYW1kZ3B1X2pvYl90aW1lZG91dCsweGZi
LzB4MTUwIFthbWRncHVdClsgIDEzNi43NjQwMzhdICBkcm1fc2NoZWRfam9iX3RpbWVkb3V0KzB4
OGEvMHhmMCBbZ3B1X3NjaGVkXQpbICAxMzYuNzY0MDQwXSAgcHJvY2Vzc19vbmVfd29yaysweDIz
Yy8weDU4MApbICAxMzYuNzY0MDQxXSAgd29ya2VyX3RocmVhZCsweDUwLzB4M2IwClsgIDEzNi43
NjQwNDJdICA/IHByb2Nlc3Nfb25lX3dvcmsrMHg1ODAvMHg1ODAKWyAgMTM2Ljc2NDA0NF0gIGt0
aHJlYWQrMHgxMmUvMHgxNTAKWyAgMTM2Ljc2NDA0NV0gID8ga3RocmVhZF9jcmVhdGVfd29ya2Vy
X29uX2NwdSsweDcwLzB4NzAKWyAgMTM2Ljc2NDA0Nl0gIHJldF9mcm9tX2ZvcmsrMHgyNy8weDUw
CgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgfCA0IC0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
ZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwppbmRl
eCA1NTYwZDA0NWIyZTAuLjM1ODRlMjkzMjNjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYwpAQCAtNDA0Nyw4ICs0MDQ3LDYgQEAgc3RhdGljIGludCBhbWRn
cHVfZG9fYXNpY19yZXNldChzdHJ1Y3QgYW1kZ3B1X2hpdmVfaW5mbyAqaGl2ZSwKIAkJCQlpZiAo
cikKIAkJCQkJZ290byBvdXQ7CiAKLQkJCQlhbWRncHVfZmJkZXZfc2V0X3N1c3BlbmQodG1wX2Fk
ZXYsIDApOwotCiAJCQkJLyogbXVzdCBzdWNjZWVkLiAqLwogCQkJCWFtZGdwdV9yYXNfcmVzdW1l
KHRtcF9hZGV2KTsKIApAQCAtNDIxNyw4ICs0MjE1LDYgQEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1
X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJCSAqLwogCQlhbWRncHVfdW5y
ZWdpc3Rlcl9ncHVfaW5zdGFuY2UodG1wX2FkZXYpOwogCi0JCWFtZGdwdV9mYmRldl9zZXRfc3Vz
cGVuZCh0bXBfYWRldiwgMSk7Ci0KIAkJLyogZGlzYWJsZSByYXMgb24gQUxMIElQcyAqLwogCQlp
ZiAoIShpbl9yYXNfaW50ciAmJiAhdXNlX2JhY28pICYmCiAJCSAgICAgIGFtZGdwdV9kZXZpY2Vf
aXBfbmVlZF9mdWxsX3Jlc2V0KHRtcF9hZGV2KSkKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
