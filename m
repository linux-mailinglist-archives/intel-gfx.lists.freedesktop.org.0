Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3661EDF3C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF946E2DA;
	Thu,  4 Jun 2020 08:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA9E6E2CF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 08:12:38 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f5so4624175wmh.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 01:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iX8yvgIySAam94sgW57RQXUmTB7Ou3XcFF4UUEubWkk=;
 b=ZCDuFtoO+JO6z1AsWRdVcfb4gkFPZIWpzbyZoQgItzGv+2X9uOvWQIfJl2CXVLRyS7
 jmrwsv7OJneJtVtuGdLOTI+9nAN12c7tfvxEoB5QUeVSsKzLICOoE2KZwOuoG0NrxtB0
 Y5WBOXg98M8mm1tRfoWbjuaEkFXGTwncTzP4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iX8yvgIySAam94sgW57RQXUmTB7Ou3XcFF4UUEubWkk=;
 b=V2cmWmFu7jaQGLkK7ns+r6xva2LfLlJTrlN3snb3lTcRMJqUyoNTSc++1M/XYiCdWS
 c9mNCmWHl0bhHxCC4WjhmjV3mDNDWyrhD5z8P/8rZsWcLFU3Vv1PveUyoJ8cxQfHVai3
 67wthI7XVjnAk+oKLIaRSWNLMNN8YLmpFngH3AL2WN40XTmNFccpQ8KEDtqb1tsUPYGH
 0nSi+39hSz08MfyKbGOGRHny8nDqRLoq/Ggm5dt811plfPhDwMKlOIndXOxXXQgLpFBD
 QFyN+zWlYqduvFqnCSQbABjL/fVdRUyGwhjCPh6Mh0sp6rHFe6ay4zLVLXL7HdfRItU9
 Ghtg==
X-Gm-Message-State: AOAM530/Ntycv0jQC0fdoqR00QXINZREoQbvvJbThbhJR4L+PfTZz5Y1
 VsT874YczWHwc7DQgzyRbhmiOw==
X-Google-Smtp-Source: ABdhPJxE++sNFKLfONHraOPjYXQYwoR5UNfEopf+/1eDf4bACkMBIaDiWDCJt9Y4c08FHgIuU/EGmg==
X-Received: by 2002:a7b:c145:: with SMTP id z5mr3006166wmi.6.1591258357250;
 Thu, 04 Jun 2020 01:12:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:36 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:10 +0200
Message-Id: <20200604081224.863494-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/18] dma-fence: prime lockdep annotations
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHdvIGluIG9uZSBnbzoKLSBpdCBpcyBhbGxvd2VkIHRvIGNhbGwgZG1hX2ZlbmNlX3dhaXQoKSB3
aGlsZSBob2xkaW5nIGEKICBkbWFfcmVzdl9sb2NrKCkuIFRoaXMgaXMgZnVuZGFtZW50YWwgdG8g
aG93IGV2aWN0aW9uIHdvcmtzIHdpdGggdHRtLAogIHNvIHJlcXVpcmVkLgoKLSBpdCBpcyBhbGxv
d2VkIHRvIGNhbGwgZG1hX2ZlbmNlX3dhaXQoKSBmcm9tIG1lbW9yeSByZWNsYWltIGNvbnRleHRz
LAogIHNwZWNpZmljYWxseSBmcm9tIHNocmlua2VyIGNhbGxiYWNrcyAod2hpY2ggaTkxNSBkb2Vz
KSwgYW5kIGZyb20gbW11CiAgbm90aWZpZXIgY2FsbGJhY2tzICh3aGljaCBhbWRncHUgZG9lcywg
YW5kIHdoaWNoIGk5MTUgc29tZXRpbWVzIGFsc28KICBkb2VzLCBhbmQgcHJvYmFibHkgYWx3YXlz
IHNob3VsZCwgYnV0IHRoYXQncyBraW5kYSBhIGRlYmF0ZSkuIEFsc28KICBmb3Igc3R1ZmYgbGlr
ZSBITU0gd2UgcmVhbGx5IG5lZWQgdG8gYmUgYWJsZSB0byBkbyB0aGlzLCBvciB0aGluZ3MKICBn
ZXQgcmVhbCBkaWNleS4KCkNvbnNlcXVlbmNlIGlzIHRoYXQgYW55IGNyaXRpY2FsIHBhdGggbmVj
ZXNzYXJ5IHRvIGdldCB0byBhCmRtYV9mZW5jZV9zaWduYWwgZm9yIGEgZmVuY2UgbXVzdCBuZXZl
ciBhKSBjYWxsIGRtYV9yZXN2X2xvY2sgbm9yIGIpCmFsbG9jYXRlIG1lbW9yeSB3aXRoIEdGUF9L
RVJORUwuIEFsc28gYnkgaW1wbGljYXRpb24gb2YKZG1hX3Jlc3ZfbG9jaygpLCBubyB1c2Vyc3Bh
Y2UgZmF1bHRpbmcgYWxsb3dlZC4gVGhhdCdzIHNvbWUgc3VwcmVtZWx5Cm9ibm94aW91cyBsaW1p
dGF0aW9ucywgd2hpY2ggaXMgd2h5IHdlIG5lZWQgdG8gc3ByaW5rbGUgdGhlIHJpZ2h0CmFubm90
YXRpb25zIHRvIGFsbCByZWxldmFudCBwYXRocy4KClRoZSBvbmUgYmlnIGxvY2tpbmcgY29udGV4
dCB3ZSdyZSBsZWF2aW5nIG91dCBoZXJlIGlzIG1tdSBub3RpZmllcnMsCmFkZGVkIGluCgpjb21t
aXQgMjNiNjgzOTVjN2M3OGE3NjRlODk2M2ZjMTVhN2NmZDMxOGJmMTg3ZgpBdXRob3I6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkRhdGU6ICAgTW9uIEF1ZyAyNiAyMjox
NDoyMSAyMDE5ICswMjAwCgogICAgbW0vbW11X25vdGlmaWVyczogYWRkIGEgbG9ja2RlcCBtYXAg
Zm9yIGludmFsaWRhdGVfcmFuZ2Vfc3RhcnQvZW5kCgp0aGF0IG9uZSBjb3ZlcnMgYSBsb3Qgb2Yg
b3RoZXIgY2FsbHNpdGVzLCBhbmQgaXQncyBhbHNvIGFsbG93ZWQgdG8Kd2FpdCBvbiBkbWEtZmVu
Y2VzIGZyb20gbW11IG5vdGlmaWVycy4gQnV0IHRoZXJlJ3Mgbm8gcmVhZHktbWFkZQpmdW5jdGlv
bnMgZXhwb3NlZCB0byBwcmltZSB0aGlzLCBzbyBJJ3ZlIGxlZnQgaXQgb3V0IGZvciBub3cuCgp2
MjogQWxzbyB0cmFjayBhZ2FpbnN0IG1tdSBub3RpZmllciBjb250ZXh0LgoKdjM6IGtlcm5lbGRv
YyB0byBzcGVjIHRoZSBjcm9zcy1kcml2ZXIgY29udHJhY3QuIE5vdGUgdGhhdCBjdXJyZW50bHkK
aTkxNSB0aHJvd3MgaW4gYSBoYXJkLWNvZGVkIDEwcyB0aW1lb3V0IG9uIGZvcmVpZ24gZmVuY2Vz
IChub3Qgc3VyZQp3aHkgdGhhdCB3YXMgZG9uZSwgYnV0IGl0J3MgdGhlcmUpLCB3aGljaCBpcyB3
aHkgdGhhdCBydWxlIGlzIHdvcmRlZAp3aXRoIFNIT1VMRCBpbnN0ZWFkIG9mIE1VU1QuCgpBbHNv
IHNvbWUgb2YgdGhlIG1tdV9ub3RpZmllci9zaHJpbmtlciBydWxlcyBtaWdodCBzdXJwcmlzZSBT
b0MKZHJpdmVycywgSSBoYXZlbid0IGZ1bGx5IGF1ZGl0ZWQgdGhlbSBhbGwuIFdoaWNoIGlzIGlu
ZmVhc2libGUgYW55d2F5LAp3ZSdsbCBuZWVkIHRvIHJ1biB0aGVtIHdpdGggbG9ja2RlcCBhbmQg
ZG1hLWZlbmNlIGFubm90YXRpb25zIGFuZCBzZWUKd2hhdCBnb2VzIGJvb20uCgp2NDogQSBzcGVs
bGluZyBmaXggZnJvbSBNaWthCgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBpbnRl
bC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0cm9tIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4K
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCkNjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwpDYzogYW1kLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9kcml2ZXIt
YXBpL2RtYS1idWYucnN0IHwgIDYgKysrKwogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAg
ICAgICAgIHwgNDEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgICAgICAgICAgIHwgIDQgKysrCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5o
ICAgICAgICAgICAgfCAgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QgYi9Eb2N1bWVu
dGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKaW5kZXggMDVkODU2MTMxMTQwLi5mOGY2ZGVj
ZGUzNTkgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAor
KysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKQEAgLTEzMyw2ICsxMzMs
MTIgQEAgRE1BIEZlbmNlcwogLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYwogICAgOmRvYzogRE1BIGZlbmNlcyBvdmVydmlldwogCitETUEgRmVuY2UgQ3Jvc3MtRHJp
dmVyIENvbnRyYWN0Cit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CisKKy4uIGtlcm5l
bC1kb2M6OiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKKyAgIDpkb2M6IGZlbmNlIGNyb3Nz
LWRyaXZlciBjb250cmFjdAorCiBETUEgRmVuY2UgU2lnbmFsbGluZyBBbm5vdGF0aW9ucwogfn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCmluZGV4IDAwMDVi
YzAwMjUyOS4uNzU0ZTZmYjg0ZmI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCkBAIC02NCw2ICs2NCw0NyBA
QCBzdGF0aWMgYXRvbWljNjRfdCBkbWFfZmVuY2VfY29udGV4dF9jb3VudGVyID0gQVRPTUlDNjRf
SU5JVCgxKTsKICAqICAgJmRtYV9idWYucmVzdiBwb2ludGVyLgogICovCiAKKy8qKgorICogRE9D
OiBmZW5jZSBjcm9zcy1kcml2ZXIgY29udHJhY3QKKyAqCisgKiBTaW5jZSAmZG1hX2ZlbmNlIHBy
b3ZpZGUgYSBjcm9zcyBkcml2ZXIgY29udHJhY3QsIGFsbCBkcml2ZXJzIG11c3QgZm9sbG93IHRo
ZQorICogc2FtZSBydWxlczoKKyAqCisgKiAqIEZlbmNlcyBtdXN0IGNvbXBsZXRlIGluIGEgcmVh
c29uYWJsZSB0aW1lLiBGZW5jZXMgd2hpY2ggcmVwcmVzZW50IGtlcm5lbHMKKyAqICAgYW5kIHNo
YWRlcnMgc3VibWl0dGVkIGJ5IHVzZXJzcGFjZSwgd2hpY2ggY291bGQgcnVuIGZvcmV2ZXIsIG11
c3QgYmUgYmFja2VkCisgKiAgIHVwIGJ5IHRpbWVvdXQgYW5kIGdwdSBoYW5nIHJlY292ZXJ5IGNv
ZGUuIE1pbmltYWxseSB0aGF0IGNvZGUgbXVzdCBwcmV2ZW50CisgKiAgIGZ1cnRoZXIgY29tbWFu
ZCBzdWJtaXNzaW9uIGFuZCBmb3JjZSBjb21wbGV0ZSBhbGwgaW4tZmxpZ2h0IGZlbmNlcywgZS5n
LgorICogICB3aGVuIHRoZSBkcml2ZXIgb3IgaGFyZHdhcmUgZG8gbm90IHN1cHBvcnQgZ3B1IHJl
c2V0LCBvciBpZiB0aGUgZ3B1IHJlc2V0CisgKiAgIGZhaWxlZCBmb3Igc29tZSByZWFzb24uIElk
ZWFsbHkgdGhlIGRyaXZlciBzdXBwb3J0cyBncHUgcmVjb3Zlcnkgd2hpY2ggb25seQorICogICBh
ZmZlY3RzIHRoZSBvZmZlbmRpbmcgdXNlcnNwYWNlIGNvbnRleHQsIGFuZCBubyBvdGhlciB1c2Vy
c3BhY2UKKyAqICAgc3VibWlzc2lvbnMuCisgKgorICogKiBEcml2ZXJzIG1heSBoYXZlIGRpZmZl
cmVudCBpZGVhcyBvZiB3aGF0IGNvbXBsZXRpb24gd2l0aGluIGEgcmVhc29uYWJsZQorICogICB0
aW1lIG1lYW5zLiBTb21lIGhhbmcgcmVjb3ZlcnkgY29kZSB1c2VzIGEgZml4ZWQgdGltZW91dCwg
b3RoZXJzIGEgbWl4CisgKiAgIGJldHdlZW4gb2JzZXJ2aW5nIGZvcndhcmQgcHJvZ3Jlc3MgYW5k
IGluY3JlYXNpbmdseSBzdHJpY3QgdGltZW91dHMuCisgKiAgIERyaXZlcnMgc2hvdWxkIG5vdCB0
cnkgdG8gc2Vjb25kIGd1ZXNzIHRpbWVvdXQgaGFuZGxpbmcgb2YgZmVuY2VzIGZyb20KKyAqICAg
b3RoZXIgZHJpdmVycy4KKyAqCisgKiAqIFRvIGVuc3VyZSB0aGVyZSdzIG5vIGRlYWRsb2NrcyBv
ZiBkbWFfZmVuY2Vfd2FpdCgpIGFnYWluc3Qgb3RoZXIgbG9ja3MKKyAqICAgZHJpdmVycyBzaG91
bGQgYW5ub3RhdGUgYWxsIGNvZGUgcmVxdWlyZWQgdG8gcmVhY2ggZG1hX2ZlbmNlX3NpZ25hbCgp
LAorICogICB3aGljaCBjb21wbGV0ZXMgdGhlIGZlbmNlcywgd2l0aCBkbWFfZmVuY2VfYmVnaW5f
c2lnbmFsbGluZygpIGFuZAorICogICBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoKS4KKyAqCisg
KiAqIERyaXZlcnMgYXJlIGFsbG93ZWQgdG8gY2FsbCBkbWFfZmVuY2Vfd2FpdCgpIHdoaWxlIGhv
bGRpbmcgZG1hX3Jlc3ZfbG9jaygpLgorICogICBUaGlzIG1lYW5zIGFueSBjb2RlIHJlcXVpcmVk
IGZvciBmZW5jZSBjb21wbGV0aW9uIGNhbm5vdCBhY3F1aXJlIGEKKyAqICAgJmRtYV9yZXN2IGxv
Y2suIE5vdGUgdGhhdCB0aGlzIGFsc28gcHVsbHMgaW4gdGhlIGVudGlyZSBlc3RhYmxpc2hlZAor
ICogICBsb2NraW5nIGhpZXJhcmNoeSBhcm91bmQgZG1hX3Jlc3ZfbG9jaygpIGFuZCBkbWFfcmVz
dl91bmxvY2soKS4KKyAqCisgKiAqIERyaXZlcnMgYXJlIGFsbG93ZWQgdG8gY2FsbCBkbWFfZmVu
Y2Vfd2FpdCgpIGZyb20gdGhlaXIgJnNocmlua2VyCisgKiAgIGNhbGxiYWNrcy4gVGhpcyBtZWFu
cyBhbnkgY29kZSByZXF1aXJlZCBmb3IgZmVuY2UgY29tcGxldGlvbiBjYW5ub3QKKyAqICAgYWxs
b2NhdGUgbWVtb3J5IHdpdGggR0ZQX0tFUk5FTC4KKyAqCisgKiAqIERyaXZlcnMgYXJlIGFsbG93
ZWQgdG8gY2FsbCBkbWFfZmVuY2Vfd2FpdCgpIGZyb20gdGhlaXIgJm1tdV9ub3RpZmllcgorICog
ICByZXNwZWN0aXZlbHkgJm1tdV9pbnRlcnZhbF9ub3RpZmllciBjYWxsYmFja3MuIFRoaXMgbWVh
bnMgYW55IGNvZGUgcmVxdWlyZWQKKyAqICAgZm9yIGZlbmNlIGNvbXBsZXRlaW9uIGNhbm5vdCBh
bGxvY2F0ZSBtZW1vcnkgd2l0aCBHRlBfTk9GUyBvciBHRlBfTk9JTy4KKyAqICAgT25seSBHRlBf
QVRPTUlDIGlzIHBlcm1pc3NpYmxlLCB3aGljaCBtaWdodCBmYWlsLgorICovCisKIHN0YXRpYyBj
b25zdCBjaGFyICpkbWFfZmVuY2Vfc3R1Yl9nZXRfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkKIHsKICAgICAgICAgcmV0dXJuICJzdHViIjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggOTljMGEzM2M5
MThkLi5jMjIzZjMyNDI1YzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
CisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC0zNSw2ICszNSw3IEBACiAjaW5j
bHVkZSA8bGludXgvZG1hLXJlc3YuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNs
dWRlIDxsaW51eC9zY2hlZC9tbS5oPgorI2luY2x1ZGUgPGxpbnV4L21tdV9ub3RpZmllci5oPgog
CiAvKioKICAqIERPQzogUmVzZXJ2YXRpb24gT2JqZWN0IE92ZXJ2aWV3CkBAIC0xMTUsNiArMTE2
LDkgQEAgc3RhdGljIGludCBfX2luaXQgZG1hX3Jlc3ZfbG9ja2RlcCh2b2lkKQogCWlmIChyZXQg
PT0gLUVERUFETEspCiAJCWRtYV9yZXN2X2xvY2tfc2xvdygmb2JqLCAmY3R4KTsKIAlmc19yZWNs
YWltX2FjcXVpcmUoR0ZQX0tFUk5FTCk7CisJbG9ja19tYXBfYWNxdWlyZSgmX19tbXVfbm90aWZp
ZXJfaW52YWxpZGF0ZV9yYW5nZV9zdGFydF9tYXApOworCV9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQo
KTsKKwlsb2NrX21hcF9yZWxlYXNlKCZfX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX3N0
YXJ0X21hcCk7CiAJZnNfcmVjbGFpbV9yZWxlYXNlKEdGUF9LRVJORUwpOwogCXd3X211dGV4X3Vu
bG9jaygmb2JqLmxvY2spOwogCXd3X2FjcXVpcmVfZmluaSgmY3R4KTsKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCmluZGV4
IDNmMjg4ZjdkYjJlZi4uMDllMjNhZGIzNTFkIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKQEAgLTM2MCw2ICszNjAs
NyBAQCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKipmZW5j
ZXApCiAjaWZkZWYgQ09ORklHX0xPQ0tERVAKIGJvb2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxp
bmcodm9pZCk7CiB2b2lkIGRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhib29sIGNvb2tpZSk7Cit2
b2lkIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQodm9pZCk7CiAjZWxzZQogc3RhdGljIGlubGluZSBi
b29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKHZvaWQpCiB7Ci0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
