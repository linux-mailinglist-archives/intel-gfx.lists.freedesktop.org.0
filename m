Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F3238C2B2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2036F5E5;
	Fri, 21 May 2021 09:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 147746E9BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:07 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id i17so20273355wrq.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yfwysPIci4j/kDOZ+vjP3in2bEVdB4yeYLALc8zJ9Gg=;
 b=JKi9vE5/TTQs1MtLn3sGKzpY9K/8JeeWLXWft+ImHlc/ybhbGn2lGtGQkut7RN9n5u
 9q/fL7euoM+BhaLV/AJlKNsiK0EHPDhey7DfR1SN+RTsHllEBa4mteWFCFKHzPVO6O13
 oqFyvu8gkEcA2abKgPq5Gntpr/zMyJAnn78NA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yfwysPIci4j/kDOZ+vjP3in2bEVdB4yeYLALc8zJ9Gg=;
 b=AwR0H+aebV60bDR6sikj+olLPGRBuKaBar5SAKj783IrHsxC/WaQOYKrF3ix41PGUu
 U02P4X9vGwOxjtn1Wq8qrHOvmJ2k7XIZfdC8ihIkCaR2r7PeEzAxWVWBAC28pX1yEFxn
 Jc/ScdSspitt0rffnarWeb05GN4A8WiQTuB3yGeeIa5JnHJuSsU7kN+/oXurmDJd7pRk
 4jWf661nypNDaJnLUNj/+zQE+Fywb1rTHGxvTr6L1trgE1Qjfc4wsewnG09+2Ei2D+3P
 bRH2MFDbYkklcfB9pjZkRFi8kOKxJvgksdaL5BCmxA5B3WXXYXbl82idOTcPvCURXwKZ
 /5vA==
X-Gm-Message-State: AOAM530S8bAntvfTsqktdjQZE/HldsER053x1R5f9P8kRexAFUPN3iCO
 vRUL8l9fB13Uqk3+JozVxXisoQ==
X-Google-Smtp-Source: ABdhPJzaZF/0VysI0xnoiHupXbE1l8dIs4eK2H2IVguWy7a7P5Syc7R8naTtudBJPZZlNbdl2KaFuA==
X-Received: by 2002:a5d:64e4:: with SMTP id g4mr8433871wri.366.1621588205543; 
 Fri, 21 May 2021 02:10:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:49 +0200
Message-Id: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/11] drm/amdgpu: Comply with implicit fencing
 rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linaro-mm-sig@lists.linaro.org, Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Alex Deucher <alexander.deucher@amd.com>, mesa-dev@lists.freedesktop.org,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG9jcyBmb3Igc3RydWN0IGRtYV9yZXN2IGFyZSBmYWlybHkgY2xlYXI6CgoiQSByZXNlcnZhdGlv
biBvYmplY3QgY2FuIGhhdmUgYXR0YWNoZWQgb25lIGV4Y2x1c2l2ZSBmZW5jZSAobm9ybWFsbHkK
YXNzb2NpYXRlZCB3aXRoIHdyaXRlIG9wZXJhdGlvbnMpIG9yIE4gc2hhcmVkIGZlbmNlcyAocmVh
ZApvcGVyYXRpb25zKS4iCgpodHRwczovL2RyaS5mcmVlZGVza3RvcC5vcmcvZG9jcy9kcm0vZHJp
dmVyLWFwaS9kbWEtYnVmLmh0bWwjcmVzZXJ2YXRpb24tb2JqZWN0cwoKRnVydGhlcm1vcmUgYSBy
ZXZpZXcgYWNyb3NzIGFsbCBvZiB1cHN0cmVhbS4KCkZpcnN0IG9mIHJlbmRlciBkcml2ZXJzIGFu
ZCBob3cgdGhleSBzZXQgaW1wbGljaXQgZmVuY2VzOgoKLSBub3V2ZWF1IGZvbGxvd3MgdGhpcyBj
b250cmFjdCwgc2VlIGluIHZhbGlkYXRlX2Zpbmlfbm9fdGlja2V0KCkKCgkJCW5vdXZlYXVfYm9f
ZmVuY2UobnZibywgZmVuY2UsICEhYi0+d3JpdGVfZG9tYWlucyk7CgogIGFuZCB0aGF0IGxhc3Qg
Ym9vbGVhbiBjb250cm9scyB3aGV0aGVyIHRoZSBleGNsdXNpdmUgb3Igc2hhcmVkIGZlbmNlCiAg
c2xvdCBpcyB1c2VkLgoKLSByYWRlb24gZm9sbG93cyB0aGlzIGNvbnRyYWN0IGJ5IHNldHRpbmcK
CgkJcC0+cmVsb2NzW2ldLnR2Lm51bV9zaGFyZWQgPSAhci0+d3JpdGVfZG9tYWluOwoKICBpbiBy
YWRlb25fY3NfcGFyc2VyX3JlbG9jcygpLCB3aGljaCBlbnN1cmVzIHRoYXQgdGhlIGNhbGwgdG8K
ICB0dG1fZXVfZmVuY2VfYnVmZmVyX29iamVjdHMoKSBpbiByYWRlb25fY3NfcGFyc2VyX2Zpbmko
KSB3aWxsIGRvIHRoZQogIHJpZ2h0IHRoaW5nLgoKLSB2bXdnZnggc2VlbXMgdG8gZm9sbG93IHRo
aXMgY29udHJhY3Qgd2l0aCB0aGUgc2hvdGd1biBhcHByb2FjaCBvZgogIGFsd2F5cyBzZXR0aW5n
IHR0bV92YWxfYnVmLT5udW1fc2hhcmVkID0gMCwgd2hpY2ggbWVhbnMKICB0dG1fZXVfZmVuY2Vf
YnVmZmVyX29iamVjdHMoKSB3aWxsIG9ubHkgdXNlIHRoZSBleGNsdXNpdmUgc2xvdC4KCi0gZXRu
YXZpdiBmb2xsb3dzIHRoaXMgY29udHJhY3QsIGFzIGNhbiBiZSB0cml2aWFsbHkgc2VlbiBieSBs
b29raW5nCiAgYXQgc3VibWl0X2F0dGFjaF9vYmplY3RfZmVuY2VzKCkKCi0gaTkxNSBpcyBhIGJp
dCBhIGNvbnZvbHV0ZWQgbWF6ZSB3aXRoIG11bHRpcGxlIHBhdGhzIGxlYWRpbmcgdG8KICBpOTE1
X3ZtYV9tb3ZlX3RvX2FjdGl2ZSgpLiBXaGljaCBzZXRzIHRoZSBleGNsdXNpdmUgZmxhZyBpZgog
IEVYRUNfT0JKRUNUX1dSSVRFIGlzIHNldC4gVGhpcyBjYW4gZWl0aGVyIGNvbWUgYXMgYSBidWZm
ZXIgZmxhZyBmb3IKICBzb2Z0cGluIG1vZGUsIG9yIHRocm91Z2ggdGhlIHdyaXRlX2RvbWFpbiB3
aGVuIHVzaW5nIHJlbG9jYXRpb25zLiBJdAogIGZvbGxvd3MgdGhpcyBjb250cmFjdC4KCi0gbGlt
YSBmb2xsb3dzIHRoaXMgY29udHJhY3QsIHNlZSBsaW1hX2dlbV9zdWJtaXQoKSB3aGljaCBzZXRz
IHRoZQogIGV4Y2x1c2l2ZSBmZW5jZSB3aGVuIHRoZSBMSU1BX1NVQk1JVF9CT19XUklURSBmbGFn
IGlzIHNldCBmb3IgdGhhdAogIGJvCgotIG1zbSBmb2xsb3dzIHRoaXMgY29udHJhY3QsIHNlZSBt
c21fZ3B1X3N1Ym1pdCgpIHdoaWNoIHNldHMgdGhlCiAgZXhjbHVzaXZlIGZsYWcgd2hlbiB0aGUg
TVNNX1NVQk1JVF9CT19XUklURSBpcyBzZXQgZm9yIHRoYXQgYnVmZmVyCgotIHBhbmZyb3N0IGZv
bGxvd3MgdGhpcyBjb250cmFjdCB3aXRoIHRoZSBzaG90Z3VuIGFwcHJvYWNoIG9mIGp1c3QKICBh
bHdheXMgc2V0dGluZyB0aGUgZXhjbHVzaXZlIGZlbmNlLCBzZWUKICBwYW5mcm9zdF9hdHRhY2hf
b2JqZWN0X2ZlbmNlcygpLiBCZW5lZml0cyBvZiBhIHNpbmdsZSBlbmdpbmUgSSBndWVzcwoKLSB2
M2QgZm9sbG93cyB0aGlzIGNvbnRyYWN0IHdpdGggdGhlIHNhbWUgc2hvdGd1biBhcHByb2FjaCBp
bgogIHYzZF9hdHRhY2hfZmVuY2VzX2FuZF91bmxvY2tfcmVzZXJ2YXRpb24oKSwgYnV0IGl0IGhh
cyBhdCBsZWFzdCBhbgogIFhYWCBjb21tZW50IHRoYXQgbWF5YmUgdGhpcyBzaG91bGQgYmUgaW1w
cm92ZWQKCi0gdjRjIHVzZXMgdGhlIHNhbWUgc2hvdGd1biBhcHByb2FjaCBvZiBhbHdheXMgc2V0
dGluZyBhbiBleGNsdXNpdmUKICBmZW5jZSwgc2VlIHZjNF91cGRhdGVfYm9fc2Vxbm9zKCkKCi0g
dmdlbSBhbHNvIGZvbGxvd3MgdGhpcyBjb250cmFjdCwgc2VlIHZnZW1fZmVuY2VfYXR0YWNoX2lv
Y3RsKCkgYW5kCiAgdGhlIFZHRU1fRkVOQ0VfV1JJVEUuIFRoaXMgaXMgdXNlZCBpbiBzb21lIGln
dHMgdG8gdmFsaWRhdGUgcHJpbWUKICBzaGFyaW5nIHdpdGggaTkxNS5rbyB3aXRob3V0IHRoZSBu
ZWVkIG9mIGEgMm5kIGdwdQoKLSB2cml0aW8gZm9sbG93cyB0aGlzIGNvbnRyYWN0IGFnYWluIHdp
dGggdGhlIHNob3RndW4gYXBwcm9hY2ggb2YKICBhbHdheXMgc2V0dGluZyBhbiBleGNsdXNpdmUg
ZmVuY2UsIHNlZSB2aXJ0aW9fZ3B1X2FycmF5X2FkZF9mZW5jZSgpCgpUaGlzIGNvdmVycyB0aGUg
c2V0dGluZyBvZiB0aGUgZXhjbHVzaXZlIGZlbmNlcyB3aGVuIHdyaXRpbmcuCgpTeW5jaHJvbml6
aW5nIGFnYWluc3QgdGhlIGV4Y2x1c2l2ZSBmZW5jZSBpcyBhIGxvdCBtb3JlIHRyaWNreSwgYW5k
IEkKb25seSBzcG90IGNoZWNrZWQgYSBmZXc6CgotIGk5MTUgZG9lcyBpdCwgd2l0aCB0aGUgb3B0
aW9uYWwgRVhFQ19PQkpFQ1RfQVNZTkMgdG8gc2tpcCBhbGwKICBpbXBsaWNpdCBkZXBlbmRlbmNp
ZXMgKHdoaWNoIGlzIHVzZWQgYnkgdnVsa2FuKQoKLSBldG5hdml2IGRvZXMgdGhpcy4gSW1wbGlj
aXQgZGVwZW5kZW5jaWVzIGFyZSBjb2xsZWN0ZWQgaW4KICBzdWJtaXRfZmVuY2Vfc3luYygpLCBh
Z2FpbiB3aXRoIGFuIG9wdC1vdXQgZmxhZwogIEVUTkFfU1VCTUlUX05PX0lNUExJQ0lULiBUaGVz
ZSBhcmUgdGhlbiBwaWNrZWQgdXAgaW4KICBldG5hdml2X3NjaGVkX2RlcGVuZGVuY3kgd2hpY2gg
aXMgdGhlCiAgZHJtX3NjaGVkX2JhY2tlbmRfb3BzLT5kZXBlbmRlbmN5IGNhbGxiYWNrLgoKLSB2
NGMgc2VlbXMgdG8gbm90IGRvIG11Y2ggaGVyZSwgbWF5YmUgZ2V0cyBhd2F5IHdpdGggaXQgYnkg
bm90IGhhdmluZwogIGEgc2NoZWR1bGVyIGFuZCBvbmx5IGEgc2luZ2xlIGVuZ2luZS4gU2luY2Ug
YWxsIG5ld2VyIGJyb2FkY29tIGNoaXBzIHRoYW4KICB0aGUgT0cgdmM0IHVzZSB2M2QgZm9yIHJl
bmRlcmluZywgd2hpY2ggZm9sbG93cyB0aGlzIGNvbnRyYWN0LCB0aGUKICBpbXBhY3Qgb2YgdGhp
cyBpc3N1ZSBpcyBmYWlybHkgc21hbGwuCgotIHYzZCBkb2VzIHRoaXMgdXNpbmcgdGhlIGRybV9n
ZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KCkgaGVscGVyLAogIHdoaWNoIHRoZW4gaXQncyBk
cm1fc2NoZWRfYmFja2VuZF9vcHMtPmRlcGVuZGVuY3kgY2FsbGJhY2sKICB2M2Rfam9iX2RlcGVu
ZGVuY3koKSBwaWNrcyB1cC4KCi0gcGFuZnJvc3QgaXMgbmljZSBoZXJlIGFuZCB0cmFja3MgdGhl
IGltcGxpY2l0IGZlbmNlcyBpbgogIHBhbmZyb3N0X2pvYi0+aW1wbGljaXRfZmVuY2VzLCB3aGlj
aCBhZ2FpbiB0aGUKICBkcm1fc2NoZWRfYmFja2VuZF9vcHMtPmRlcGVuZGVuY3kgY2FsbGJhY2sg
cGFuZnJvc3Rfam9iX2RlcGVuZGVuY3koKQogIHBpY2tzIHVwLiBJdCBpcyBtaWxkbHkgcXVlc3Rp
b25hYmxlIHRob3VnaCBzaW5jZSBpdCBvbmx5IHBpY2tzIHVwCiAgZXhjbHVzaXZlIGZlbmNlcyBp
biBwYW5mcm9zdF9hY3F1aXJlX29iamVjdF9mZW5jZXMoKSwgYnV0IG5vdCBidWdneQogIGluIHBy
YWN0aWNlIGJlY2F1c2UgaXQgYWxzbyBhbHdheXMgc2V0cyB0aGUgZXhjbHVzaXZlIGZlbmNlLiBJ
dAogIHNob3VsZCBwaWNrIHVwIGJvdGggc2V0cyBvZiBmZW5jZXMsIGp1c3QgaW4gY2FzZSB0aGVy
ZSdzIGV2ZXIgZ29pbmcKICB0byBiZSBhIDJuZCBncHUgaW4gYSBTb0Mgd2l0aCBhIG1hbGkgZ3B1
LiBPciBtYXliZSBhIG1hbGkgU29DIHdpdGggYQogIHBjaWUgcG9ydCBhbmQgYSByZWFsIGdwdSwg
d2hpY2ggbWlnaHQgYWN0dWFsbHkgaGFwcGVuIGV2ZW50dWFsbHkuIEEKICBidWcsIGJ1dCBlYXN5
IHRvIGZpeC4gU2hvdWxkIHByb2JhYmx5IHVzZSB0aGUKICBkcm1fZ2VtX2ZlbmNlX2FycmF5X2Fk
ZF9pbXBsaWNpdCgpIGhlbHBlci4KCi0gbGltYSBpcyBuaWNlIGFuIGVhc3ksIHVzZXMgZHJtX2dl
bV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQoKSBhbmQKICB0aGUgc2FtZSBzY2hlbWEgYXMgdjNk
LgoKLSBtc20gaXMgbWlsZGx5IGVudGVydGFpbmluZy4gSXQgYWxzbyBzdXBwb3J0cyBNU01fU1VC
TUlUX05PX0lNUExJQ0lULAogIGJ1dCBiZWNhdXNlIGl0IGRvZXNuJ3QgdXNlIHRoZSBkcm0vc2No
ZWR1bGVyIGl0IGhhbmRsZXMgZmVuY2VzIGZyb20KICB0aGUgd3JvbmcgY29udGV4dCB3aXRoIGEg
c3luY2hyb25vdXMgZG1hX2ZlbmNlX3dhaXQuIFNlZQogIHN1Ym1pdF9mZW5jZV9zeW5jKCkgbGVh
ZGluZyB0byBtc21fZ2VtX3N5bmNfb2JqZWN0KCkuIEludmVzdGluZyBpbnRvCiAgYSBzY2hlZHVs
ZXIgbWlnaHQgYmUgYSBnb29kIGlkZWEuCgotIGFsbCB0aGUgcmVtYWluaW5nIGRyaXZlcnMgYXJl
IHR0bSBiYXNlZCwgd2hlcmUgSSBob3BlIHRoZXkgZG8KICBhcHByb3ByaWF0ZWx5IG9iZXkgaW1w
bGljaXQgZmVuY2VzIGFscmVhZHkuIEkgZGlkbid0IGRvIHRoZSBmdWxsCiAgYXVkaXQgdGhlcmUg
YmVjYXVzZSBhKSBub3QgZm9sbG93IHRoZSBjb250cmFjdCB3b3VsZCBjb25mdXNlIHR0bQogIHF1
aXRlIHdlbGwgYW5kIGIpIHJlYWRpbmcgbm9uLXN0YW5kYXJkIHNjaGVkdWxlciBhbmQgc3VibWl0
IGNvZGUKICB3aGljaCBpc24ndCBiYXNlZCBvbiBkcm0vc2NoZWR1bGVyIGlzIGEgcGFpbi4KCk9u
d2FyZHMgdG8gdGhlIGRpc3BsYXkgc2lkZS4KCi0gQW55IGRyaXZlciB1c2luZyB0aGUgZHJtX2dl
bV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYigpIGhlbHBlciB3aWxsCiAgY29ycmVjdGx5LiBPdmVy
d2hlbG1pbmdseSBtb3N0IGRyaXZlcnMgZ2V0IHRoaXMgcmlnaHQsIGV4Y2VwdCBhIGZldwogIHRv
dGFsbHkgZG9udC4gSSdsbCBmb2xsb3cgdXAgd2l0aCBhIHBhdGNoIHRvIG1ha2UgdGhpcyB0aGUg
ZGVmYXVsdAogIGFuZCBhdm9pZCBhIGJ1bmNoIG9mIGJ1Z3MuCgotIEkgZGlkbid0IGF1ZGl0IHRo
ZSB0dG0gZHJpdmVycywgYnV0IGdpdmVuIHRoYXQgZG1hX3Jlc3Ygc3RhcnRlZAogIHRoZXJlIEkg
aG9wZSB0aGV5IGdldCB0aGlzIHJpZ2h0LgoKSW4gY29uY2x1c2lvbiB0aGlzIElTIHRoZSBjb250
cmFjdCwgYm90aCBhcyBkb2N1bWVudGVkIGFuZApvdmVyd2hlbG1pbmdseSBpbXBsZW1lbnRlZCwg
c3BlY2ljYWxseSBhcyBpbXBsZW1lbnRlZCBieSBhbGwgcmVuZGVyCmRyaXZlcnMgZXhjZXB0IGFt
ZGdwdS4KCkFtZGdwdSB0cmllZCB0byBmaXggdGhpcyBhbHJlYWR5IGluCgpjb21taXQgMDQ5YWNh
NDM2M2Q4YWY4N2NhYjhkNTNkZTU0MDE2MDJkYjNiOTk5OQpBdXRob3I6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KRGF0ZTogICBXZWQgU2VwIDE5IDE2OjU0OjM1
IDIwMTggKzAyMDAKCiAgICBkcm0vYW1kZ3B1OiBmaXggdXNpbmcgc2hhcmVkIGZlbmNlIGZvciBl
eHBvcnRlZCBCT3MgdjIKCmJ1dCB0aGlzIGZpeCBmYWxscyBzaG9ydCBvbiBhIG51bWJlciBvZiBh
cmVhczoKCi0gSXQncyByYWN5LCBieSB0aGUgdGltZSB0aGUgYnVmZmVyIGlzIHNoYXJlZCBpdCBt
aWdodCBiZSB0b28gbGF0ZS4gVG8KICBtYWtlIHN1cmUgdGhlcmUncyBkZWZpbml0ZWx5IG5ldmVy
IGEgcHJvYmxlbSB3ZSBuZWVkIHRvIHNldCB0aGUKICBmZW5jZXMgY29ycmVjdGx5IGZvciBhbnkg
YnVmZmVyIHRoYXQncyBwb3RlbnRpYWxseSBleHBvcnRhYmxlLgoKLSBJdCdzIGJyZWFraW5nIHVh
cGksIGRtYS1idWYgZmRzIHN1cHBvcnQgcG9sbCgpIGFuZCBkaWZmZXJlbnRpdGlhdGUKICBiZXR3
ZWVuLCB3aGljaCB3YXMgaW50cm9kdWNlZCBpbgoKCWNvbW1pdCA5YjQ5NWE1ODg3OTk0YTZkNzRk
NWMyNjFkMDEyMDgzYTkyYjk0NzM4CglBdXRob3I6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBjYW5vbmljYWwuY29tPgoJRGF0ZTogICBUdWUgSnVsIDEgMTI6NTc6NDMgMjAx
NCArMDIwMAoKCSAgICBkbWEtYnVmOiBhZGQgcG9sbCBzdXBwb3J0LCB2MwoKLSBDaHJpc3RpYW4g
S8O2bmlnIHdhbnRzIHRvIG5hY2sgbmV3IHVhcGkgYnVpbGRpbmcgZnVydGhlciBvbiB0aGlzCiAg
ZG1hX3Jlc3YgY29udHJhY3QgYmVjYXVzZSBpdCBicmVha3MgYW1kZ3B1LCBxdW90aW5nCgogICJZ
ZWFoLCBhbmQgdGhhdCBpcyBleGFjdGx5IHRoZSByZWFzb24gd2h5IEkgd2lsbCBOQUsgdGhpcyB1
QVBJIGNoYW5nZS4KCiAgIlRoaXMgZG9lc24ndCB3b3JrcyBmb3IgYW1kZ3B1IGF0IGFsbCBmb3Ig
dGhlIHJlYXNvbnMgb3V0bGluZWQgYWJvdmUuIgoKICBodHRwczovL2xvcmUua2VybmVsLm9yZy9k
cmktZGV2ZWwvZjJlYjY3NTEtMmY4Mi05YjIzLWY1N2UtNTQ4ZGU1YjcyOWRlQGdtYWlsLmNvbS8K
CiAgUmVqZWN0aW5nIG5ldyBkZXZlbG9wbWVudCBiZWNhdXNlIHlvdXIgb3duIGRyaXZlciBpcyBi
cm9rZW4gYW5kCiAgdmlvbGF0ZXMgZXN0YWJsaXNoZWQgY3Jvc3MgZHJpdmVyIGNvbnRyYWN0cyBh
bmQgdWFwaSBpcyByZWFsbHkgbm90CiAgaG93IHVwc3RyZWFtIHdvcmtzLgoKTm93IHRoaXMgcGF0
Y2ggd2lsbCBoYXZlIGEgc2V2ZXJlIHBlcmZvcm1hbmNlIGltcGFjdCBvbiBhbnl0aGluZyB0aGF0
CnJ1bnMgb24gbXVsdGlwbGUgZW5naW5lcy4gU28gd2UgY2FuJ3QganVzdCBtZXJnZSBpdCBvdXRy
aWdodCwgYnV0IG5lZWQKYSBiaXQgYSBwbGFuOgoKLSBhbWRncHUgbmVlZHMgYSBwcm9wZXIgdWFw
aSBmb3IgaGFuZGxpbmcgaW1wbGljaXQgZmVuY2luZy4gVGhlIGZ1bm55CiAgdGhpbmcgaXMgdGhh
dCB0byBkbyBpdCBjb3JyZWN0bHksIGltcGxpY2l0IGZlbmNpbmcgbXVzdCBiZSB0cmVhdGVkCiAg
YXMgYSB2ZXJ5IHN0cmFuZ2UgSVBDIG1lY2hhbmlzbSBmb3IgdHJhbnNwb3J0aW5nIGZlbmNlcywg
d2hlcmUgYm90aAogIHNldHRpbmcgdGhlIGZlbmNlIGFuZCBkZXBlbmRlbmN5IGludGVyY2VwdHMg
bXVzdCBiZSBoYW5kbGVkCiAgZXhwbGljaXRseS4gQ3VycmVudCBiZXN0IHByYWN0aWNlcyBpcyBh
IHBlci1ibyBmbGFnIHRvIGluZGljYXRlCiAgd3JpdGVzLCBhbmQgYSBwZXItYm8gZmxhZyB0byB0
byBza2lwIGltcGxpY2l0IGZlbmNpbmcgaW4gdGhlIENTCiAgaW9jdGwgYXMgYSBuZXcgY2h1bmsu
CgotIFNpbmNlIGFtZGdwdSBoYXMgYmVlbiBzaGlwcGluZyB3aXRoIGJyb2tlbiBiZWhhdmlvdXIg
d2UgbmVlZCBhbgogIG9wdC1vdXQgZmxhZyBmcm9tIHRoZSBidXRjaGVyZWQgaW1wbGljaXQgZmVu
Y2luZyBtb2RlbCB0byBlbmFibGUgdGhlCiAgcHJvcGVyIGV4cGxpY2l0IGltcGxpY2l0IGZlbmNp
bmcgbW9kZWwuCgotIGZvciBrZXJuZWwgbWVtb3J5IGZlbmNlcyBkdWUgdG8gYm8gbW92ZXMgYXQg
bGVhc3QgdGhlIGk5MTUgaWRlYSBpcwogIHRvIHVzZSB0dG1fYm8tPm1vdmluZy4gYW1kZ3B1IHBy
b2JhYmx5IG5lZWRzIHRoZSBzYW1lLgoKLSBzaW5jZSB0aGUgY3VycmVudCBwMnAgZG1hLWJ1ZiBp
bnRlcmZhY2UgYXNzdW1lcyB0aGUga2VybmVsIG1lbW9yeQogIGZlbmNlIGlzIGluIHRoZSBleGNs
dXNpdmUgZG1hX3Jlc3YgZmVuY2Ugc2xvdCB3ZSBuZWVkIHRvIGFkZCBhIG5ldwogIGZlbmNlIHNs
b3QgZm9yIGtlcm5lbCBmZW5jZXMsIHdoaWNoIG11c3QgbmV2ZXIgYmUgaWdub3JlZC4gU2luY2UK
ICBjdXJyZW50bHkgb25seSBhbWRncHUgc3VwcG9ydHMgdGhpcyB0aGVyZSdzIG5vIHJlYWwgcHJv
YmxlbSBoZXJlCiAgeWV0LCB1bnRpbCBhbWRncHUgZ2FpbnMgYSBOT19JTVBMSUNJVCBDUyBmbGFn
LgoKLSBOZXcgdXNlcnNwYWNlIG5lZWRzIHRvIHNoaXAgaW4gZW5vdWdoIGRlc2t0b3AgZGlzdHJv
cyBzbyB0aGF0IHVzZXJzCiAgd29udCBub3RpY2UgdGhlIHBlcmYgaW1wYWN0LiBJIHRoaW5rIHdl
IGNhbiBpZ25vcmUgTFRTIGRpc3Ryb3Mgd2hvCiAgdXBncmFkZSB0aGVpciBrZXJuZWxzIGJ1dCBu
b3QgdGhlaXIgbWVzYTNkIHNuYXBzaG90LgoKLSBUaGVuIHdoZW4gdGhpcyBpcyBhbGwgaW4gcGxh
Y2Ugd2UgY2FuIG1lcmdlIHRoaXMgcGF0Y2ggaGVyZS4KCldoYXQgaXMgbm90IGEgc29sdXRpb24g
dG8gdGhpcyBwcm9ibGVtIGhlcmUgaXMgdHJ5aW5nIHRvIG1ha2UgdGhlCmRtYV9yZXN2IHJ1bGVz
IGluIHRoZSBrZXJuZWwgbW9yZSBjbGV2ZXIuIFRoZSBmdW5kYW1lbnRhbCBpc3N1ZSBoZXJlCmlz
IHRoYXQgdGhlIGFtZGdwdSBDUyB1YXBpIGlzIHRoZSBsZWFzdCBleHByZXNzaXZlIG9uZSBhY3Jv
c3MgYWxsCmRyaXZlcnMgKG9ubHkgZXF1YWxsZWQgYnkgcGFuZnJvc3QsIHdoaWNoIGhhcyBhbiBh
Y3R1YWwgZXhjdXNlKSBieSBub3QKYWxsb3dpbmcgYW55IHVzZXJzcGFjZSBjb250cm9sIG92ZXIg
aG93IGltcGxpY2l0IHN5bmMgaXMgY29uZHVjdGVkLgoKVW50aWwgdGhpcyBpcyBmaXhlZCBpdCdz
IGNvbXBsZXRlbHkgcG9pbnRsZXNzIHRvIG1ha2UgdGhlIGtlcm5lbCBtb3JlCmNsZXZlciB0byBp
bXByb3ZlIGFtZGdwdSwgYmVjYXVzZSBhbGwgd2UncmUgZG9pbmcgaXMgcGFwZXJpbmcgb3Zlcgp0
aGlzIHVhcGkgZGVzaWduIGlzc3VlLiBhbWRncHUgbmVlZHMgdG8gYXR0YWluIHRoZSBzdGF0dXMg
cXVvCmVzdGFibGlzaGVkIGJ5IG90aGVyIGRyaXZlcnMgZmlyc3QsIG9uY2UgdGhhdCdzIGFjaGll
dmVkIHdlIGNhbiB0YWNrbGUKdGhlIHJlbWFpbmluZyBpc3N1ZXMgaW4gYSBjb25zaXN0ZW50IHdh
eSBhY3Jvc3MgZHJpdmVycy4KCkNjOiBtZXNhLWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6
IEJhcyBOaWV1d2VuaHVpemVuIDxiYXNAYmFzbmlldXdlbmh1aXplbi5ubD4KQ2M6IERhdmUgQWly
bGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVt
Lm9yZz4KQ2M6IEtyaXN0aWFuIEguIEtyaXN0ZW5zZW4gPGhvZWdzYmVyZ0Bnb29nbGUuY29tPgpD
YzogTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4KQ2M6IERhbmllbCBTdG9uZSA8
ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IERlZXBhayBSIFZhcm1hIDxtaDEy
Z3gyODI1QGdtYWlsLmNvbT4KQ2M6IENoZW4gTGkgPGNoZW5saUB1bmlvbnRlY2guY29tPgpDYzog
S2V2aW4gV2FuZyA8a2V2aW4xLndhbmdAYW1kLmNvbT4KQ2M6IERlbm5pcyBMaSA8RGVubmlzLkxp
QGFtZC5jb20+CkNjOiBMdWJlbiBUdWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQuY29tPgpDYzogbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9jcy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKaW5kZXgg
ODhhMjRhMGI1NjkxLi5jYzg0MjZlMWU4YTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9jcy5jCkBAIC02MTcsOCArNjE3LDggQEAgc3RhdGljIGludCBhbWRncHVfY3NfcGFyc2Vy
X2JvcyhzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKIAlhbWRncHVfYm9fbGlzdF9mb3JfZWFj
aF9lbnRyeShlLCBwLT5ib19saXN0KSB7CiAJCXN0cnVjdCBhbWRncHVfYm8gKmJvID0gdHRtX3Rv
X2FtZGdwdV9ibyhlLT50di5ibyk7CiAKLQkJLyogTWFrZSBzdXJlIHdlIHVzZSB0aGUgZXhjbHVz
aXZlIHNsb3QgZm9yIHNoYXJlZCBCT3MgKi8KLQkJaWYgKGJvLT5wcmltZV9zaGFyZWRfY291bnQp
CisJCS8qIE1ha2Ugc3VyZSB3ZSB1c2UgdGhlIGV4Y2x1c2l2ZSBzbG90IGZvciBhbGwgcG90ZW50
aWFsbHkgc2hhcmVkIEJPcyAqLworCQlpZiAoIShiby0+ZmxhZ3MgJiBBTURHUFVfR0VNX0NSRUFU
RV9WTV9BTFdBWVNfVkFMSUQpKQogCQkJZS0+dHYubnVtX3NoYXJlZCA9IDA7CiAJCWUtPmJvX3Zh
ID0gYW1kZ3B1X3ZtX2JvX2ZpbmQodm0sIGJvKTsKIAl9Ci0tIAoyLjMxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
