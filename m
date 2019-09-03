Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A732A77A1
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 01:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79740899AB;
	Tue,  3 Sep 2019 23:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 457F188ED6
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 06:54:49 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id w10so8583691pgj.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Sep 2019 23:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dZueRWZd1uZbZNG0riAle5evD2RPXFUMBIbKb1n2stM=;
 b=WgTR+w+31KEB72jgBonLQugHlk7B1CyuoQ5tEq7n9u/TgiPoB4TzDaIIPtnXsJrIKG
 /llb7VcqS8bCneHzIRuAuQ13iIcQfHTlB8P1Da747VjvCWicWwB95ZgoOQeTkDrWn3oc
 feVjPHMIX6lKRnYlQ+viaS7xNhiWTm91AsGl8idr4SDDmTkMe1W+087Gb6siPPTTCoHU
 jYzhJC5L3dodqxQs7brbcaax/McIurFdQ44A/of4NTDjAmjzTnoWtn88wbVKlpQYB2RN
 SCqXVARkA31rFCUnMzVTsz5UM2cswHEamVmx5Tpk3BoIStJb6FtA1t7FWs13+zCpj4ps
 3qXQ==
X-Gm-Message-State: APjAAAVo7tKhQNYkDuqWRA1JvBPm0gztGWMoc232l4XLZuTSBYNdsLPd
 0cJwM4ZRc0NnZKpXhvf4VfrprQ==
X-Google-Smtp-Source: APXvYqxkoDM0uGwkQpRgclz5RRJ0gAHteeMYv8Fxj1KTi5HwH2NFSQ2AQjYuF7bCDIFRGM9OMwEfJg==
X-Received: by 2002:a63:7887:: with SMTP id
 t129mr28954591pgc.309.1567493688797; 
 Mon, 02 Sep 2019 23:54:48 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id s7sm5872032pjn.8.2019.09.02.23.54.39
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Sep 2019 23:54:48 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: stable@vger.kernel.org, chris@chris-wilson.co.uk, airlied@linux.ie,
 davem@davemloft.net, kuznet@ms2.inr.ac.ru, yoshfuji@linux-ipv6.org,
 edumazet@google.com, peterz@infradead.org, mingo@redhat.com,
 vyasevich@gmail.com, nhorman@tuxdriver.com, linus.walleij@linaro.org,
 natechancellor@gmail.com, sre@kernel.org, paulus@samba.org,
 gregkh@linuxfoundation.org
Date: Tue,  3 Sep 2019 14:53:46 +0800
Message-Id: <cover.1567492316.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-Mailman-Approved-At: Tue, 03 Sep 2019 23:38:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dZueRWZd1uZbZNG0riAle5evD2RPXFUMBIbKb1n2stM=;
 b=FGEtBmTw+UijXa25Ipc7xQ4tq+qIvfBqVg1NmnanWKkTe7yno7WjcxKffa1nMJRAxD
 AOYney+tqn0eT+NmaNjlkHQOanv2QIDA74pDFkjN2+P7BgoLwUFLkf7WRlMExbShWPkY
 li/3kKiY2mP6zBN27Xf9uW7QmC1Xh1uz3qOhy4WUq3vxN6fp1IjTUXp0jvN9sbegwtGr
 jBZD8enNnF01X7NkZsKZipwUc+J5nvDpaxa6aPgYmHKkqoD/xsVarFNXkIr2mGdpaGkC
 eWL7t0M4ytePKm2cj76neBQtC3gx6gqV2FTcsx3B5KgRrVZLgUaYfZ51ZUJWctoicY7C
 TIoA==
Subject: [Intel-gfx] [BACKPORT 4.14.y 0/8] Candidates from Spreadtrum 4.14
 product kernel
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
Cc: hariprasad.kelam@gmail.com, david@lechnology.com, arnd@arndb.de,
 linux-pm@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, ebiggers@google.com, orsonzhai@gmail.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sctp@vger.kernel.org, baolin.wang@linaro.org,
 lanqing.liu@unisoc.com, linux-ppp@vger.kernel.org, longman@redhat.com,
 linux-serial@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCBBcm5kJ3Mgc2NyaXB0IFsxXSBoZWxwLCBJIGZvdW5kIHNvbWUgYnVnZml4ZXMgaW4gU3By
ZWFkdHJ1bSA0LjE0IHByb2R1Y3QKa2VybmVsLCBidXQgbWlzc2luZyBpbiB2NC4xNC4xNDE6Cgo4
NmZkYTkwYWI1ODggbmV0OiBzY3RwOiBmaXggd2FybmluZyAiTlVMTCBjaGVjayBiZWZvcmUgc29t
ZSBmcmVlaW5nIGZ1bmN0aW9ucyBpcyBub3QgbmVlZGVkIgoyNWEwOWNlNzk2MzkgcHBwOiBtcHBl
OiBSZXZlcnQgInBwcDogbXBwZTogQWRkIHNvZnRkZXAgdG8gYXJjNCIKZDliMzA4YjFmOGExIGRy
bS9pOTE1L2ZiZGV2OiBBY3R1YWxseSBjb25maWd1cmUgdW50aWxlZCBkaXNwbGF5cwo0N2QzZDdm
ZGIxMGEgaXA2OiBmaXggc2tiIGxlYWsgaW4gaXA2ZnJhZ19leHBpcmVfZnJhZ19xdWV1ZSgpCjVi
OWNlYTE1YTNkZSBzZXJpYWw6IHNwcmQ6IE1vZGlmeSB0aGUgYmF1ZCByYXRlIGNhbGN1bGF0aW9u
IGZvcm11bGEKNTEzZTEwNzNkNTJlIGxvY2tpbmcvbG9ja2RlcDogQWRkIGRlYnVnX2xvY2tzIGNo
ZWNrIGluIF9fbG9ja19kb3duZ3JhZGUoKQo5NTcwNjNjOTI0NzMgcGluY3RybDogc3ByZDogVXNl
IGRlZmluZSBkaXJlY3RpdmUgZm9yIHNwcmRfcGluY29uZl9wYXJhbXMgdmFsdWVzCjg3YTJiNjVm
Yzg1NSBwb3dlcjogc3VwcGx5OiBzeXNmczogcmF0ZWxpbWl0IHByb3BlcnR5IHJlYWQgZXJyb3Ig
bWVzc2FnZQoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTAzMjIxNTQ0MjUu
Mzg1MjUxNy0xOS1hcm5kQGFybmRiLmRlL1QvCgpDaHJpcyBXaWxzb24gKDEpOgogIGRybS9pOTE1
L2ZiZGV2OiBBY3R1YWxseSBjb25maWd1cmUgdW50aWxlZCBkaXNwbGF5cwoKRGF2aWQgTGVjaG5l
ciAoMSk6CiAgcG93ZXI6IHN1cHBseTogc3lzZnM6IHJhdGVsaW1pdCBwcm9wZXJ0eSByZWFkIGVy
cm9yIG1lc3NhZ2UKCkVyaWMgQmlnZ2VycyAoMSk6CiAgcHBwOiBtcHBlOiBSZXZlcnQgInBwcDog
bXBwZTogQWRkIHNvZnRkZXAgdG8gYXJjNCIKCkVyaWMgRHVtYXpldCAoMSk6CiAgaXA2OiBmaXgg
c2tiIGxlYWsgaW4gaXA2ZnJhZ19leHBpcmVfZnJhZ19xdWV1ZSgpCgpIYXJpcHJhc2FkIEtlbGFt
ICgxKToKICBuZXQ6IHNjdHA6IGZpeCB3YXJuaW5nICJOVUxMIGNoZWNrIGJlZm9yZSBzb21lIGZy
ZWVpbmcgZnVuY3Rpb25zIGlzCiAgICBub3QgbmVlZGVkIgoKTGFucWluZyBMaXUgKDEpOgogIHNl
cmlhbDogc3ByZDogTW9kaWZ5IHRoZSBiYXVkIHJhdGUgY2FsY3VsYXRpb24gZm9ybXVsYQoKTmF0
aGFuIENoYW5jZWxsb3IgKDEpOgogIHBpbmN0cmw6IHNwcmQ6IFVzZSBkZWZpbmUgZGlyZWN0aXZl
IGZvciBzcHJkX3BpbmNvbmZfcGFyYW1zIHZhbHVlcwoKV2FpbWFuIExvbmcgKDEpOgogIGxvY2tp
bmcvbG9ja2RlcDogQWRkIGRlYnVnX2xvY2tzIGNoZWNrIGluIF9fbG9ja19kb3duZ3JhZGUoKQoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiZGV2LmMgICAgICAgIHwgICAxMiArKysrKysr
LS0tLS0KIGRyaXZlcnMvbmV0L3BwcC9wcHBfbXBwZS5jICAgICAgICAgICAgICAgIHwgICAgMSAt
CiBkcml2ZXJzL3BpbmN0cmwvc3ByZC9waW5jdHJsLXNwcmQuYyAgICAgICB8ICAgIDYgKystLS0t
CiBkcml2ZXJzL3Bvd2VyL3N1cHBseS9wb3dlcl9zdXBwbHlfc3lzZnMuYyB8ICAgIDMgKystCiBk
cml2ZXJzL3R0eS9zZXJpYWwvc3ByZF9zZXJpYWwuYyAgICAgICAgICB8ICAgIDIgKy0KIGluY2x1
ZGUvbmV0L2lwdjZfZnJhZy5oICAgICAgICAgICAgICAgICAgIHwgICAgMSAtCiBrZXJuZWwvbG9j
a2luZy9sb2NrZGVwLmMgICAgICAgICAgICAgICAgICB8ICAgIDMgKysrCiBuZXQvc2N0cC9zbV9t
YWtlX2NodW5rLmMgICAgICAgICAgICAgICAgICB8ICAgMTIgKysrKy0tLS0tLS0tCiA4IGZpbGVz
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKLS0gCjEuNy45LjUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
