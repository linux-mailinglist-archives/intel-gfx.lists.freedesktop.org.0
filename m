Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F27471EF90A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 15:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB22A6E8E5;
	Fri,  5 Jun 2020 13:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACBB6E8E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 13:30:01 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id l26so8441459wme.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jun 2020 06:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AAW0JxMOjimnxtn8mgtf2DnA/rdVogDvc5W7UlvXjmA=;
 b=VJHszaTbskDniRewcmBR0T6myXCDbVw762sgB4Bgud1xoQxJeavwAjTu8LBn39VLuf
 UHB39yhd4g0dW35J+F0fne7ZV4QQsvvtmwKgBGQHb6Xi83VZ0ksbLn9uyVARQ4SfekEf
 6dTRpV2Ce4ncp0ACUHJCq3JaB6haMLzuYRK9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AAW0JxMOjimnxtn8mgtf2DnA/rdVogDvc5W7UlvXjmA=;
 b=XPYwsSQoMpsiAnQk3srXGlssPQGKre1GMQii7Op//jOM81nWZezmuVcyAip1lMMOaB
 sWOy5Y6SsyE3TJzNHnONEwuSo1o9njAhUJCp7vE05niLB7SFrs3I0CdIVwWI4N6j2LwD
 JVP/yMvHPQiad4wWnQWzeNik8X6ten9sTLfwyol98bhEBH5sZqXfcaLcnH6EX6TNPZUY
 sCU44sQ7E5dbSXo8sYWhqIXewAN95h7VhqgPF7wjH3MA23h8m2m+Hkk98LcuU8UptqBw
 2fGz0jg1kPBLLxAlmO9d+xHSO41uBFUXAgzGs/+Z5XM1Ds88OzUHEYZpzgF+fjNMT+lG
 iAzQ==
X-Gm-Message-State: AOAM533qEfTSj0M9Q46jXR1GxwsHnCK9vbWcxP+iMzONQrfszGlpEuwR
 huRRJYhvafcnlPSEOIvqvSNzeg==
X-Google-Smtp-Source: ABdhPJzOuJ8Y/xZ3pbI/MRN/vFzTlvVjXwxCfrLqL9GIYh4qxyyEgVjfE504+KnSc/TRh0XYmGTQ4g==
X-Received: by 2002:a1c:2c45:: with SMTP id s66mr2877077wms.40.1591363799778; 
 Fri, 05 Jun 2020 06:29:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k21sm12606410wrd.24.2020.06.05.06.29.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 06:29:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  5 Jun 2020 15:29:53 +0200
Message-Id: <20200605132953.899664-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-4-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-fence: basic lockdep annotations
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

RGVzaWduIGlzIHNpbWlsYXIgdG8gdGhlIGxvY2tkZXAgYW5ub3RhdGlvbnMgZm9yIHdvcmtlcnMs
IGJ1dCB3aXRoCnNvbWUgdHdpc3RzOgoKLSBXZSB1c2UgYSByZWFkLWxvY2sgZm9yIHRoZSBleGVj
dXRpb24vd29ya2VyL2NvbXBsZXRpb24gc2lkZSwgc28gdGhhdAogIHRoaXMgZXhwbGljaXQgYW5u
b3RhdGlvbiBjYW4gYmUgbW9yZSBsaWJlcmFsbHkgc3ByaW5rbGVkIGFyb3VuZC4KICBXaXRoIHJl
YWQgbG9ja3MgbG9ja2RlcCBpc24ndCBnb2luZyB0byBjb21wbGFpbiBpZiB0aGUgcmVhZC1zaWRl
CiAgaXNuJ3QgbmVzdGVkIHRoZSBzYW1lIHdheSB1bmRlciBhbGwgY2lyY3Vtc3RhbmNlcywgc28g
QUJCQSBkZWFkbG9ja3MKICBhcmUgb2suIFdoaWNoIHRoZXkgYXJlLCBzaW5jZSB0aGlzIGlzIGFu
IGFubm90YXRpb24gb25seS4KCi0gV2UncmUgdXNpbmcgbm9uLXJlY3Vyc2l2ZSBsb2NrZGVwIHJl
YWQgbG9jayBtb2RlLCBzaW5jZSBpbiByZWN1cnNpdmUKICByZWFkIGxvY2sgbW9kZSBsb2NrZGVw
IGRvZXMgbm90IGNhdGNoIHJlYWQgc2lkZSBoYXphcmRzLiBBbmQgd2UKICBfdmVyeV8gbXVjaCB3
YW50IHJlYWQgc2lkZSBoYXphcmRzIHRvIGJlIGNhdWdodC4gRm9yIGZ1bGwgZGV0YWlscyBvZgog
IHRoaXMgbGltaXRhdGlvbiBzZWUKCiAgY29tbWl0IGU5MTQ5ODU4OTc0NjA2NWUzYWU5NWQ5YTAw
YjA2OGU1MjVlZWMzNGYKICBBdXRob3I6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFk
Lm9yZz4KICBEYXRlOiAgIFdlZCBBdWcgMjMgMTM6MTM6MTEgMjAxNyArMDIwMAoKICAgICAgbG9j
a2luZy9sb2NrZGVwL3NlbGZ0ZXN0czogQWRkIG1peGVkIHJlYWQtd3JpdGUgQUJCQSB0ZXN0cwoK
LSBUbyBhbGxvdyBuZXN0aW5nIG9mIHRoZSByZWFkLXNpZGUgZXhwbGljaXQgYW5ub3RhdGlvbnMg
d2UgZXhwbGljaXRseQogIGtlZXAgdHJhY2sgb2YgdGhlIG5lc3RpbmcuIGxvY2tfaXNfaGVsZCgp
IGFsbG93cyB1cyB0byBkbyB0aGF0LgoKLSBUaGUgd2FpdC1zaWRlIGFubm90YXRpb24gaXMgYSB3
cml0ZSBsb2NrLCBhbmQgZW50aXJlbHkgZG9uZSB3aXRoaW4KICBkbWFfZmVuY2Vfd2FpdCgpIGZv
ciBldmVyeW9uZSBieSBkZWZhdWx0LgoKLSBUbyBiZSBhYmxlIHRvIGZyZWVseSBhbm5vdGF0ZSBo
ZWxwZXIgZnVuY3Rpb25zIEkgd2FudCB0byBtYWtlIGl0IG9rCiAgdG8gY2FsbCBkbWFfZmVuY2Vf
YmVnaW4vZW5kX3NpZ25hbGxpbmcgZnJvbSBzb2Z0L2hhcmRpcnEgY29udGV4dC4KICBGaXJzdCBh
dHRlbXB0IHdhcyB1c2luZyB0aGUgaGFyZGlycSBsb2NraW5nIGNvbnRleHQgZm9yIHRoZSB3cml0
ZQogIHNpZGUgaW4gbG9ja2RlcCwgYnV0IHRoaXMgZm9yY2VzIGFsbCBub3JtYWwgc3BpbmxvY2tz
IG5lc3RlZCB3aXRoaW4KICBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgdG8gYmUgc3Bp
bmxvY2tzLiBUaGF0IGJvbGxvY2tzLgoKICBUaGUgYXBwcm9hY2ggbm93IGlzIHRvIHNpbXBsZSBj
aGVjayBpbl9hdG9taWMoKSwgYW5kIGZvciB0aGVzZSBjYXNlcwogIGVudGlyZWx5IHJlbHkgb24g
dGhlIG1pZ2h0X3NsZWVwKCkgY2hlY2sgaW4gZG1hX2ZlbmNlX3dhaXQoKS4gVGhhdAogIHdpbGwg
Y2F0Y2ggYW55IHdyb25nIG5lc3RpbmcgYWdhaW5zdCBzcGlubG9ja3MgZnJvbSBzb2Z0L2hhcmRp
cnEKICBjb250ZXh0cy4KClRoZSBpZGVhIGhlcmUgaXMgdGhhdCBldmVyeSBjb2RlIHBhdGggdGhh
dCdzIGNyaXRpY2FsIGZvciBldmVudHVhbGx5CnNpZ25hbGxpbmcgYSBkbWFfZmVuY2Ugc2hvdWxk
IGJlIGFubm90YXRlZCB3aXRoCmRtYV9mZW5jZV9iZWdpbi9lbmRfc2lnbmFsbGluZy4gVGhlIGFu
bm90YXRpb24gaWRlYWxseSBzdGFydHMgcmlnaHQKYWZ0ZXIgYSBkbWFfZmVuY2UgaXMgcHVibGlz
aGVkIChhZGRlZCB0byBhIGRtYV9yZXN2LCBleHBvc2VkIGFzIGEKc3luY19maWxlIGZkLCBhdHRh
Y2hlZCB0byBhIGRybV9zeW5jb2JqIGZkLCBvciBhbnl0aGluZyBlbHNlIHRoYXQKbWFrZXMgdGhl
IGRtYV9mZW5jZSB2aXNpYmxlIHRvIG90aGVyIGtlcm5lbCB0aHJlYWRzKSwgdXAgdG8gYW5kCmlu
Y2x1ZGluZyB0aGUgZG1hX2ZlbmNlX3dhaXQoKS4gRXhhbXBsZXMgYXJlIGlycSBoYW5kbGVycywg
dGhlCnNjaGVkdWxlciBydCB0aHJlYWRzLCB0aGUgdGFpbCBvZiBleGVjYnVmIChhZnRlciB0aGUg
Y29ycmVzcG9uZGluZwpmZW5jZXMgYXJlIHZpc2libGUpLCBhbnkgd29ya2VycyB0aGF0IGVuZCB1
cCBzaWduYWxsaW5nIGRtYV9mZW5jZXMgYW5kCnJlYWxseSBhbnl0aGluZyBlbHNlLiBOb3QgYW5u
b3RhdGVkIHNob3VsZCBiZSBjb2RlIHBhdGhzIHRoYXQgb25seQpjb21wbGV0ZSBmZW5jZXMgb3Bw
b3J0dW5pc3RpY2FsbHkgYXMgdGhlIGdwdSBwcm9ncmVzc2VzLCBsaWtlIGUuZy4Kc2hyaW5rZXIv
ZXZpY3Rpb24gY29kZS4KClRoZSBtYWluIGNsYXNzIG9mIGRlYWRsb2NrcyB0aGlzIGlzIHN1cHBv
c2VkIHRvIGNhdGNoIGFyZToKClRocmVhZCBBOgoKCW11dGV4X2xvY2soQSk7CgltdXRleF91bmxv
Y2soQSk7CgoJZG1hX2ZlbmNlX3NpZ25hbCgpOwoKVGhyZWFkIEI6CgoJbXV0ZXhfbG9jayhBKTsK
CWRtYV9mZW5jZV93YWl0KCk7CgltdXRleF91bmxvY2soQSk7CgpUaHJlYWQgQiBpcyBibG9ja2Vk
IG9uIEEgc2lnbmFsbGluZyB0aGUgZmVuY2UsIGJ1dCBBIG5ldmVyIGdldHMgYXJvdW5kCnRvIHRo
YXQgYmVjYXVzZSBpdCBjYW5ub3QgYWNxdWlyZSB0aGUgbG9jayBBLgoKTm90ZSB0aGF0IGRtYV9m
ZW5jZV93YWl0KCkgaXMgYWxsb3dlZCB0byBiZSBuZXN0ZWQgd2l0aGluCmRtYV9mZW5jZV9iZWdp
bi9lbmRfc2lnbmFsbGluZyBzZWN0aW9ucy4gVG8gYWxsb3cgdGhpcyB0byBoYXBwZW4gdGhlCnJl
YWQgbG9jayBuZWVkcyB0byBiZSB1cGdyYWRlZCB0byBhIHdyaXRlIGxvY2ssIHdoaWNoIG1lYW5z
IHRoYXQgYW55Cm90aGVyIGxvY2sgaXMgYWNxdWlyZWQgYmV0d2VlbiB0aGUgZG1hX2ZlbmNlX2Jl
Z2luX3NpZ25hbGxpbmcoKSBjYWxsIGFuZAp0aGUgY2FsbCB0byBkbWFfZmVuY2Vfd2FpdCgpLCBh
bmQgc3RpbGwgaGVsZCwgdGhpcyB3aWxsIHJlc3VsdCBpbiBhbgppbW1lZGlhdGUgbG9ja2RlcCBj
b21wbGFpbnQuIFRoZSBvbmx5IG90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byBub3QKYW5ub3RhdGUg
c3VjaCBjYWxscywgZGVmZWF0aW5nIHRoZSBwb2ludC4gVGhlcmVmb3JlIHRoZXNlIGFubm90YXRp
b25zCmNhbm5vdCBiZSBzcHJpbmtsZWQgb3ZlciB0aGUgY29kZSBlbnRpcmVseSBtaW5kbGVzcyB0
byBhdm9pZCBmYWxzZQpwb3NpdGl2ZXMuCgpPcmlnaW5hbGx5IEkgaG9wZSB0aGF0IHRoZSBjcm9z
cy1yZWxlYXNlIGxvY2tkZXAgZXh0ZW5zaW9ucyB3b3VsZAphbGxldmlhdGUgdGhlIG5lZWQgZm9y
IGV4cGxpY2l0IGFubm90YXRpb25zOgoKaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzcwOTg0OS8K
CkJ1dCB0aGVyZSdzIGEgZmV3IHJlYXNvbnMgd2h5IHRoYXQncyBub3QgYW4gb3B0aW9uOgoKLSBJ
dCdzIG5vdCBoYXBwZW5pbmcgaW4gdXBzdHJlYW0sIHNpbmNlIGl0IGdvdCByZXZlcnRlZCBkdWUg
dG8gdG9vCiAgbWFueSBmYWxzZSBwb3NpdGl2ZXM6CgoJY29tbWl0IGU5NjZlYWVlYjYyM2YwOTk3
NWVmMzYyYzI4NjZmYWU2Zjg2ODQ0ZjkKCUF1dGhvcjogSW5nbyBNb2xuYXIgPG1pbmdvQGtlcm5l
bC5vcmc+CglEYXRlOiAgIFR1ZSBEZWMgMTIgMTI6MzE6MTYgMjAxNyArMDEwMAoKCSAgICBsb2Nr
aW5nL2xvY2tkZXA6IFJlbW92ZSB0aGUgY3Jvc3MtcmVsZWFzZSBsb2NraW5nIGNoZWNrcwoKCSAg
ICBUaGlzIGNvZGUgKENPTkZJR19MT0NLREVQX0NST1NTUkVMRUFTRT15IGFuZCBDT05GSUdfTE9D
S0RFUF9DT01QTEVUSU9OUz15KSwKCSAgICB3aGlsZSBpdCBmb3VuZCBhIG51bWJlciBvZiBvbGQg
YnVncyBpbml0aWFsbHksIHdhcyBhbHNvIGNhdXNpbmcgdG9vIG1hbnkKCSAgICBmYWxzZSBwb3Np
dGl2ZXMgdGhhdCBjYXVzZWQgcGVvcGxlIHRvIGRpc2FibGUgbG9ja2RlcCAtIHdoaWNoIGlzIGFy
Z3VhYmx5CgkgICAgYSB3b3JzZSBvdmVyYWxsIG91dGNvbWUuCgotIGNyb3NzLXJlbGVhc2UgdXNl
cyB0aGUgY29tcGxldGUoKSBjYWxsIHRvIGFubm90YXRlIHRoZSBlbmQgb2YKICBjcml0aWNhbCBz
ZWN0aW9ucywgZm9yIGRtYV9mZW5jZSB0aGF0IHdvdWxkIGJlIGRtYV9mZW5jZV9zaWduYWwoKS4K
ICBCdXQgd2UgZG8gbm90IHdhbnQgYWxsIGRtYV9mZW5jZV9zaWduYWwoKSBjYWxscyB0byBiZSB0
cmVhdGVkIGFzCiAgY3JpdGljYWwsIHNpbmNlIG1hbnkgYXJlIG9wcG9ydHVuaXN0aWMgY2xlYW51
cCBvZiBncHUgcmVxdWVzdHMuIElmCiAgdGhlc2UgZ2V0IHN0dWNrIHRoZXJlJ3Mgc3RpbGwgdGhl
IG1haW4gY29tcGxldGlvbiBpbnRlcnJ1cHQgYW5kCiAgd29ya2VycyB3aG8gY2FuIHVuYmxvY2sg
ZXZlcnlvbmUuIEF1dG9tYXRpY2FsbHkgYW5ub3RhdGluZyBhbGwKICBkbWFfZmVuY2Vfc2lnbmFs
KCkgY2FsbHMgd291bGQgaGVuY2UgY2F1c2UgZmFsc2UgcG9zaXRpdmVzLgoKLSBjcm9zcy1yZWxl
YXNlIGhhZCBzb21lIGVkdWNhdGVkIGd1ZXNzZXMgZm9yIHdoZW4gYSBjcml0aWNhbCBzZWN0aW9u
CiAgc3RhcnRzLCBsaWtlIGZyZXNoIHN5c2NhbGwgb3IgZnJlc2ggd29yayBjYWxsYmFjay4gVGhp
cyB3b3VsZCBhZ2FpbgogIGNhdXNlIGZhbHNlIHBvc2l0aXZlcyB3aXRob3V0IGV4cGxpY2l0IGFu
bm90YXRpb25zLCBzaW5jZSBmb3IKICBkbWFfZmVuY2UgdGhlIGNyaXRpY2FsIHNlY3Rpb25zIG9u
bHkgc3RhcnRzIHdoZW4gd2UgcHVibGlzaCBhIGZlbmNlLgoKLSBGdXJ0aGVybW9yZSB0aGVyZSBj
YW4gYmUgY2FzZXMgd2hlcmUgYSB0aHJlYWQgbmV2ZXIgZG9lcyBhCiAgZG1hX2ZlbmNlX3NpZ25h
bCwgYnV0IGlzIHN0aWxsIGNyaXRpY2FsIGZvciByZWFjaGluZyBjb21wbGV0aW9uIG9mCiAgZmVu
Y2VzLiBPbmUgZXhhbXBsZSB3b3VsZCBiZSBhIHNjaGVkdWxlciBrdGhyZWFkIHdoaWNoIHBpY2tz
IHVwIGpvYnMKICBhbmQgcHVzaGVzIHRoZW0gaW50byBoYXJkd2FyZSwgd2hlcmUgdGhlIGludGVy
cnVwdCBoYW5kbGVyIG9yCiAgYW5vdGhlciBjb21wbGV0aW9uIHRocmVhZCBjYWxscyBkbWFfZmVu
Y2Vfc2lnbmFsKCkuIEJ1dCBpZiB0aGUKICBzY2hlZHVsZXIgdGhyZWFkIGhhbmdzLCB0aGVuIGFs
bCB0aGUgZmVuY2VzIGhhbmcsIGhlbmNlIHdlIG5lZWQgdG8KICBtYW51YWxseSBhbm5vdGF0ZSBp
dC4gY3Jvc3MtcmVsZWFzZSBhaW1lZCB0byBzb2x2ZSB0aGlzIGJ5IGNoYWluaW5nCiAgY3Jvc3Mt
cmVsZWFzZSBkZXBlbmRlbmNpZXMsIGJ1dCB0aGUgZGVwZW5kZW5jeSBmcm9tIHNjaGVkdWxlciB0
aHJlYWQKICB0byB0aGUgY29tcGxldGlvbiBpbnRlcnJ1cHQgaGFuZGxlciBnb2VzIHRocm91Z2gg
aHcgd2hlcmUKICBjcm9zcy1yZWxlYXNlIGNvZGUgY2FuJ3Qgb2JzZXJ2ZSBpdC4KCkluIHNob3J0
LCB3aXRob3V0IG1hbnVhbCBhbm5vdGF0aW9ucyBhbmQgY2FyZWZ1bCByZXZpZXcgb2YgdGhlIHN0
YXJ0CmFuZCBlbmQgb2YgY3JpdGljYWwgc2VjdGlvbnMsIGNyb3NzLXJlbGVzZSBkZXBlbmRlbmN5
IHRyYWNraW5nIGRvZXNuJ3QKd29yay4gV2UgbmVlZCBleHBsaWNpdCBhbm5vdGF0aW9ucy4KCnYy
OiBoYW5kbGUgc29mdC9oYXJkaXJxIGN0eCBiZXR0ZXIgYWdhaW5zdCB3cml0ZSBzaWRlIGFuZCBk
b250IGZvcmdldApFWFBPUlRfU1lNQk9MLCBkcml2ZXJzIGNhbid0IHVzZSB0aGlzIG90aGVyd2lz
ZS4KCnYzOiBLZXJuZWxkb2MuCgp2NDogU29tZSBzcGVsbGluZyBmaXhlcyBmcm9tIE1pa2EKCnY1
OiBBbWVuZCBjb21taXQgbWVzc2FnZSB0byBleHBsYWluIGluIGRldGFpbCB3aHkgY3Jvc3MtcmVs
ZWFzZSBpc24ndAp0aGUgc29sdXRpb24uCgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBpbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0cm9tIDx0aG9tYXMuaGVsbHN0cm9tQGludGVs
LmNvbT4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCkNjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwpDYzogYW1kLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9k
cml2ZXItYXBpL2RtYS1idWYucnN0IHwgIDEyICstCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMgICAgICAgICAgfCAxNjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgfCAgMTIgKysKIDMgZmlsZXMgY2hhbmdlZCwgMTgy
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kcml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1i
dWYucnN0CmluZGV4IDYzZGVjNzZkMWQ4ZC4uMDVkODU2MTMxMTQwIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2
ZXItYXBpL2RtYS1idWYucnN0CkBAIC0xMDAsMTEgKzEwMCwxMSBAQCBDUFUgQWNjZXNzIHRvIERN
QSBCdWZmZXIgT2JqZWN0cwogLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMKICAgIDpkb2M6IGNwdSBhY2Nlc3MKIAotRmVuY2UgUG9sbCBTdXBwb3J0Ci1+fn5+fn5+fn5+
fn5+fn5+fn4KK0ltcGxpY2l0IEZlbmNlIFBvbGwgU3VwcG9ydAorfn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+CiAKIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCi0g
ICA6ZG9jOiBmZW5jZSBwb2xsaW5nCisgICA6ZG9jOiBpbXBsaWNpdCBmZW5jZSBwb2xsaW5nCiAK
IEtlcm5lbCBGdW5jdGlvbnMgYW5kIFN0cnVjdHVyZXMgUmVmZXJlbmNlCiB+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpAQCAtMTMzLDYgKzEzMywxMiBAQCBETUEgRmVu
Y2VzCiAuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCiAgICA6ZG9j
OiBETUEgZmVuY2VzIG92ZXJ2aWV3CiAKK0RNQSBGZW5jZSBTaWduYWxsaW5nIEFubm90YXRpb25z
Cit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgorCisuLiBrZXJuZWwtZG9jOjogZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCisgICA6ZG9jOiBmZW5jZSBzaWduYWxsaW5nIGFubm90
YXRpb24KKwogRE1BIEZlbmNlcyBGdW5jdGlvbnMgUmVmZXJlbmNlCiB+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn4KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCmluZGV4IDY1NmU5YWMyZDAyOC4uMDAwNWJj
MDAyNTI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCkBAIC0xMTAsNiArMTEwLDE2MCBAQCB1NjQgZG1hX2Zl
bmNlX2NvbnRleHRfYWxsb2ModW5zaWduZWQgbnVtKQogfQogRVhQT1JUX1NZTUJPTChkbWFfZmVu
Y2VfY29udGV4dF9hbGxvYyk7CiAKKy8qKgorICogRE9DOiBmZW5jZSBzaWduYWxsaW5nIGFubm90
YXRpb24KKyAqCisgKiBQcm92aW5nIGNvcnJlY3RuZXNzIG9mIGFsbCB0aGUga2VybmVsIGNvZGUg
YXJvdW5kICZkbWFfZmVuY2UgdGhyb3VnaCBjb2RlCisgKiByZXZpZXcgYW5kIHRlc3RpbmcgaXMg
dHJpY2t5IGZvciBhIGZldyByZWFzb25zOgorICoKKyAqICogSXQgaXMgYSBjcm9zcy1kcml2ZXIg
Y29udHJhY3QsIGFuZCB0aGVyZWZvcmUgYWxsIGRyaXZlcnMgbXVzdCBmb2xsb3cgdGhlCisgKiAg
IHNhbWUgcnVsZXMgZm9yIGxvY2sgbmVzdGluZyBvcmRlciwgY2FsbGluZyBjb250ZXh0cyBmb3Ig
dmFyaW91cyBmdW5jdGlvbnMKKyAqICAgYW5kIGFueXRoaW5nIGVsc2Ugc2lnbmlmaWNhbnQgZm9y
IGluLWtlcm5lbCBpbnRlcmZhY2VzLiBCdXQgaXQgaXMgYWxzbworICogICBpbXBvc3NpYmxlIHRv
IHRlc3QgYWxsIGRyaXZlcnMgaW4gYSBzaW5nbGUgbWFjaGluZSwgaGVuY2UgYnJ1dGUtZm9yY2Ug
TiB2cy4KKyAqICAgTiB0ZXN0aW5nIG9mIGFsbCBjb21iaW5hdGlvbnMgaXMgaW1wb3NzaWJsZS4g
RXZlbiBqdXN0IGxpbWl0aW5nIHRvIHRoZQorICogICBwb3NzaWJsZSBjb21iaW5hdGlvbnMgaXMg
aW5mZWFzaWJsZS4KKyAqCisgKiAqIFRoZXJlIGlzIGFuIGVub3Jtb3VzIGFtb3VudCBvZiBkcml2
ZXIgY29kZSBpbnZvbHZlZC4gRm9yIHJlbmRlciBkcml2ZXJzCisgKiAgIHRoZXJlJ3MgdGhlIHRh
aWwgb2YgY29tbWFuZCBzdWJtaXNzaW9uLCBhZnRlciBmZW5jZXMgYXJlIHB1Ymxpc2hlZCwKKyAq
ICAgc2NoZWR1bGVyIGNvZGUsIGludGVycnVwdCBhbmQgd29ya2VycyB0byBwcm9jZXNzIGpvYiBj
b21wbGV0aW9uLAorICogICBhbmQgdGltZW91dCwgZ3B1IHJlc2V0IGFuZCBncHUgaGFuZyByZWNv
dmVyeSBjb2RlLiBQbHVzIGZvciBpbnRlZ3JhdGlvbgorICogICB3aXRoIGNvcmUgbW0gd2l0aCBo
YXZlICZtbXVfbm90aWZpZXIsIHJlc3BlY3RpdmVseSAmbW11X2ludGVydmFsX25vdGlmaWVyLAor
ICogICBhbmQgJnNocmlua2VyLiBGb3IgbW9kZXNldHRpbmcgZHJpdmVycyB0aGVyZSdzIHRoZSBj
b21taXQgdGFpbCBmdW5jdGlvbnMKKyAqICAgYmV0d2VlbiB3aGVuIGZlbmNlcyBmb3IgYW4gYXRv
bWljIG1vZGVzZXQgYXJlIHB1Ymxpc2hlZCwgYW5kIHdoZW4gdGhlCisgKiAgIGNvcnJlc3BvbmRp
bmcgdmJsYW5rIGNvbXBsZXRlcywgaW5jbHVkaW5nIGFueSBpbnRlcnJ1cHQgcHJvY2Vzc2luZyBh
bmQKKyAqICAgcmVsYXRlZCB3b3JrZXJzLiBBdWRpdGluZyBhbGwgdGhhdCBjb2RlLCBhY3Jvc3Mg
YWxsIGRyaXZlcnMsIGlzIG5vdAorICogICBmZWFzaWJsZS4KKyAqCisgKiAqIER1ZSB0byBob3cg
bWFueSBvdGhlciBzdWJzeXN0ZW1zIGFyZSBpbnZvbHZlZCBhbmQgdGhlIGxvY2tpbmcgaGllcmFy
Y2hpZXMKKyAqICAgdGhpcyBwdWxscyBpbiB0aGVyZSBpcyBleHRyZW1lbHkgdGhpbiB3aWdnbGUt
cm9vbSBmb3IgZHJpdmVyLXNwZWNpZmljCisgKiAgIGRpZmZlcmVuY2VzLiAmZG1hX2ZlbmNlIGlu
dGVyYWN0cyB3aXRoIGFsbW9zdCBhbGwgb2YgdGhlIGNvcmUgbWVtb3J5CisgKiAgIGhhbmRsaW5n
IHRocm91Z2ggcGFnZSBmYXVsdCBoYW5kbGVycyB2aWEgJmRtYV9yZXN2LCBkbWFfcmVzdl9sb2Nr
KCkgYW5kCisgKiAgIGRtYV9yZXN2X3VubG9jaygpLiBPbiB0aGUgb3RoZXIgc2lkZSBpdCBhbHNv
IGludGVyYWN0cyB0aHJvdWdoIGFsbAorICogICBhbGxvY2F0aW9uIHNpdGVzIHRocm91Z2ggJm1t
dV9ub3RpZmllciBhbmQgJnNocmlua2VyLgorICoKKyAqIEZ1cnRoZXJtb3JlIGxvY2tkZXAgZG9l
cyBub3QgaGFuZGxlIGNyb3NzLXJlbGVhc2UgZGVwZW5kZW5jaWVzLCB3aGljaCBtZWFucworICog
YW55IGRlYWRsb2NrcyBiZXR3ZWVuIGRtYV9mZW5jZV93YWl0KCkgYW5kIGRtYV9mZW5jZV9zaWdu
YWwoKSBjYW4ndCBiZSBjYXVnaHQKKyAqIGF0IHJ1bnRpbWUgd2l0aCBzb21lIHF1aWNrIHRlc3Rp
bmcuIFRoZSBzaW1wbGVzdCBleGFtcGxlIGlzIG9uZSB0aHJlYWQKKyAqIHdhaXRpbmcgb24gYSAm
ZG1hX2ZlbmNlIHdoaWxlIGhvbGRpbmcgYSBsb2NrOjoKKyAqCisgKiAgICAgbG9jayhBKTsKKyAq
ICAgICBkbWFfZmVuY2Vfd2FpdChCKTsKKyAqICAgICB1bmxvY2soQSk7CisgKgorICogd2hpbGUg
dGhlIG90aGVyIHRocmVhZCBpcyBzdHVjayB0cnlpbmcgdG8gYWNxdWlyZSB0aGUgc2FtZSBsb2Nr
LCB3aGljaAorICogcHJldmVudHMgaXQgZnJvbSBzaWduYWxsaW5nIHRoZSBmZW5jZSB0aGUgcHJl
dmlvdXMgdGhyZWFkIGlzIHN0dWNrIHdhaXRpbmcKKyAqIG9uOjoKKyAqCisgKiAgICAgbG9jayhB
KTsKKyAqICAgICB1bmxvY2soQSk7CisgKiAgICAgZG1hX2ZlbmNlX3NpZ25hbChCKTsKKyAqCisg
KiBCeSBtYW51YWxseSBhbm5vdGF0aW5nIGFsbCBjb2RlIHJlbGV2YW50IHRvIHNpZ25hbGxpbmcg
YSAmZG1hX2ZlbmNlIHdlIGNhbgorICogdGVhY2ggbG9ja2RlcCBhYm91dCB0aGVzZSBkZXBlbmRl
bmNpZXMsIHdoaWNoIGFsc28gaGVscHMgd2l0aCB0aGUgdmFsaWRhdGlvbgorICogaGVhZGFjaGUg
c2luY2Ugbm93IGxvY2tkZXAgY2FuIGNoZWNrIGFsbCB0aGUgcnVsZXMgZm9yIHVzOjoKKyAqCisg
KiAgICBjb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworICogICAgbG9jayhB
KTsKKyAqICAgIHVubG9jayhBKTsKKyAqICAgIGRtYV9mZW5jZV9zaWduYWwoQik7CisgKiAgICBk
bWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoY29va2llKTsKKyAqCisgKiBGb3IgdXNpbmcgZG1hX2Zl
bmNlX2JlZ2luX3NpZ25hbGxpbmcoKSBhbmQgZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKCkgdG8K
KyAqIGFubm90YXRlIGNyaXRpY2FsIHNlY3Rpb25zIHRoZSBmb2xsb3dpbmcgcnVsZXMgbmVlZCB0
byBiZSBvYnNlcnZlZDoKKyAqCisgKiAqIEFsbCBjb2RlIG5lY2Vzc2FyeSB0byBjb21wbGV0ZSBh
ICZkbWFfZmVuY2UgbXVzdCBiZSBhbm5vdGF0ZWQsIGZyb20gdGhlCisgKiAgIHBvaW50IHdoZXJl
IGEgZmVuY2UgaXMgYWNjZXNzaWJsZSB0byBvdGhlciB0aHJlYWRzLCB0byB0aGUgcG9pbnQgd2hl
cmUKKyAqICAgZG1hX2ZlbmNlX3NpZ25hbCgpIGlzIGNhbGxlZC4gVW4tYW5ub3RhdGVkIGNvZGUg
Y2FuIGNvbnRhaW4gZGVhZGxvY2sgaXNzdWVzLAorICogICBhbmQgZHVlIHRvIHRoZSB2ZXJ5IHN0
cmljdCBydWxlcyBhbmQgbWFueSBjb3JuZXIgY2FzZXMgaXQgaXMgaW5mZWFzaWJsZSB0bworICog
ICBjYXRjaCB0aGVzZSBqdXN0IHdpdGggcmV2aWV3IG9yIG5vcm1hbCBzdHJlc3MgdGVzdGluZy4K
KyAqCisgKiAqICZzdHJ1Y3QgZG1hX3Jlc3YgZGVzZXJ2ZXMgYSBzcGVjaWFsIG5vdGUsIHNpbmNl
IHRoZSByZWFkZXJzIGFyZSBvbmx5CisgKiAgIHByb3RlY3RlZCBieSByY3UuIFRoaXMgbWVhbnMg
dGhlIHNpZ25hbGxpbmcgY3JpdGljYWwgc2VjdGlvbiBzdGFydHMgYXMgc29vbgorICogICBhcyB0
aGUgbmV3IGZlbmNlcyBhcmUgaW5zdGFsbGVkLCBldmVuIGJlZm9yZSBkbWFfcmVzdl91bmxvY2so
KSBpcyBjYWxsZWQuCisgKgorICogKiBUaGUgb25seSBleGNlcHRpb24gYXJlIGZhc3QgcGF0aHMg
YW5kIG9wcG9ydHVuaXN0aWMgc2lnbmFsbGluZyBjb2RlLCB3aGljaAorICogICBjYWxscyBkbWFf
ZmVuY2Vfc2lnbmFsKCkgcHVyZWx5IGFzIGFuIG9wdGltaXphdGlvbiwgYnV0IGlzIG5vdCByZXF1
aXJlZCB0bworICogICBndWFyYW50ZWUgY29tcGxldGlvbiBvZiBhICZkbWFfZmVuY2UuIFRoZSB1
c3VhbCBleGFtcGxlIGlzIGEgd2FpdCBJT0NUTAorICogICB3aGljaCBjYWxscyBkbWFfZmVuY2Vf
c2lnbmFsKCksIHdoaWxlIHRoZSBtYW5kYXRvcnkgY29tcGxldGlvbiBwYXRoIGdvZXMKKyAqICAg
dGhyb3VnaCBhIGhhcmR3YXJlIGludGVycnVwdCBhbmQgcG9zc2libGUgam9iIGNvbXBsZXRpb24g
d29ya2VyLgorICoKKyAqICogVG8gYWlkIGNvbXBvc2FiaWxpdHkgb2YgY29kZSwgdGhlIGFubm90
YXRpb25zIGNhbiBiZSBmcmVlbHkgbmVzdGVkLCBhcyBsb25nCisgKiAgIGFzIHRoZSBvdmVyYWxs
IGxvY2tpbmcgaGllcmFyY2h5IGlzIGNvbnNpc3RlbnQuIFRoZSBhbm5vdGF0aW9ucyBhbHNvIHdv
cmsKKyAqICAgYm90aCBpbiBpbnRlcnJ1cHQgYW5kIHByb2Nlc3MgY29udGV4dC4gRHVlIHRvIGlt
cGxlbWVudGF0aW9uIGRldGFpbHMgdGhpcworICogICByZXF1aXJlcyB0aGF0IGNhbGxlcnMgcGFz
cyBhbiBvcGFxdWUgY29va2llIGZyb20KKyAqICAgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmco
KSB0byBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoKS4KKyAqCisgKiAqIFZhbGlkYXRpb24gYWdh
aW5zdCB0aGUgY3Jvc3MgZHJpdmVyIGNvbnRyYWN0IGlzIGltcGxlbWVudGVkIGJ5IHByaW1pbmcK
KyAqICAgbG9ja2RlcCB3aXRoIHRoZSByZWxldmFudCBoaWVyYXJjaHkgYXQgYm9vdC11cC4gVGhp
cyBtZWFucyBldmVuIGp1c3QKKyAqICAgdGVzdGluZyB3aXRoIGEgc2luZ2xlIGRldmljZSBpcyBl
bm91Z2ggdG8gdmFsaWRhdGUgYSBkcml2ZXIsIGF0IGxlYXN0IGFzCisgKiAgIGZhciBhcyBkZWFk
bG9ja3Mgd2l0aCBkbWFfZmVuY2Vfd2FpdCgpIGFnYWluc3QgZG1hX2ZlbmNlX3NpZ25hbCgpIGFy
ZQorICogICBjb25jZXJuZWQuCisgKi8KKyNpZmRlZiBDT05GSUdfTE9DS0RFUAorc3RydWN0IGxv
Y2tkZXBfbWFwCWRtYV9mZW5jZV9sb2NrZGVwX21hcCA9IHsKKwkubmFtZSA9ICJkbWFfZmVuY2Vf
bWFwIgorfTsKKworLyoqCisgKiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyAtIGJlZ2luIGEg
Y3JpdGljYWwgRE1BIGZlbmNlIHNpZ25hbGxpbmcgc2VjdGlvbgorICoKKyAqIERyaXZlcnMgc2hv
dWxkIHVzZSB0aGlzIHRvIGFubm90YXRlIHRoZSBiZWdpbm5pbmcgb2YgYW55IGNvZGUgc2VjdGlv
bgorICogcmVxdWlyZWQgdG8gZXZlbnR1YWxseSBjb21wbGV0ZSAmZG1hX2ZlbmNlIGJ5IGNhbGxp
bmcgZG1hX2ZlbmNlX3NpZ25hbCgpLgorICoKKyAqIFRoZSBlbmQgb2YgdGhlc2UgY3JpdGljYWwg
c2VjdGlvbnMgYXJlIGFubm90YXRlZCB3aXRoCisgKiBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmco
KS4KKyAqCisgKiBSZXR1cm5zOgorICoKKyAqIE9wYXF1ZSBjb29raWUgbmVlZGVkIGJ5IHRoZSBp
bXBsZW1lbnRhdGlvbiwgd2hpY2ggbmVlZHMgdG8gYmUgcGFzc2VkIHRvCisgKiBkbWFfZmVuY2Vf
ZW5kX3NpZ25hbGxpbmcoKS4KKyAqLworYm9vbCBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyh2
b2lkKQoreworCS8qIGV4cGxpY2l0bHkgbmVzdGluZyAuLi4gKi8KKwlpZiAobG9ja19pc19oZWxk
X3R5cGUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMSkpCisJCXJldHVybiB0cnVlOworCisJLyog
cmVseSBvbiBtaWdodF9zbGVlcCBjaGVjayBmb3Igc29mdC9oYXJkaXJxIGxvY2tzICovCisJaWYg
KGluX2F0b21pYygpKQorCQlyZXR1cm4gdHJ1ZTsKKworCS8qIC4uLiBhbmQgbm9uLXJlY3Vyc2l2
ZSByZWFkbG9jayAqLworCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwLCAwLCAw
LCAxLCAxLCBOVUxMLCBfUkVUX0lQXyk7CisKKwlyZXR1cm4gZmFsc2U7Cit9CitFWFBPUlRfU1lN
Qk9MKGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKTsKKworLyoqCisgKiBkbWFfZmVuY2VfZW5k
X3NpZ25hbGxpbmcgLSBlbmQgYSBjcml0aWNhbCBETUEgZmVuY2Ugc2lnbmFsbGluZyBzZWN0aW9u
CisgKgorICogQ2xvc2VzIGEgY3JpdGljYWwgc2VjdGlvbiBhbm5vdGF0aW9uIG9wZW5lZCBieSBk
bWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpLgorICovCit2b2lkIGRtYV9mZW5jZV9lbmRfc2ln
bmFsbGluZyhib29sIGNvb2tpZSkKK3sKKwlpZiAoY29va2llKQorCQlyZXR1cm47CisKKwlsb2Nr
X3JlbGVhc2UoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgX1JFVF9JUF8pOworfQorRVhQT1JUX1NZ
TUJPTChkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcpOworCit2b2lkIF9fZG1hX2ZlbmNlX21pZ2h0
X3dhaXQodm9pZCkKK3sKKwlib29sIHRtcDsKKworCXRtcCA9IGxvY2tfaXNfaGVsZF90eXBlKCZk
bWFfZmVuY2VfbG9ja2RlcF9tYXAsIDEpOworCWlmICh0bXApCisJCWxvY2tfcmVsZWFzZSgmZG1h
X2ZlbmNlX2xvY2tkZXBfbWFwLCBfVEhJU19JUF8pOworCWxvY2tfbWFwX2FjcXVpcmUoJmRtYV9m
ZW5jZV9sb2NrZGVwX21hcCk7CisJbG9ja19tYXBfcmVsZWFzZSgmZG1hX2ZlbmNlX2xvY2tkZXBf
bWFwKTsKKwlpZiAodG1wKQorCQlsb2NrX2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwg
MCwgMCwgMSwgMSwgTlVMTCwgX1RISVNfSVBfKTsKK30KKyNlbmRpZgorCisKIC8qKgogICogZG1h
X2ZlbmNlX3NpZ25hbF9sb2NrZWQgLSBzaWduYWwgY29tcGxldGlvbiBvZiBhIGZlbmNlCiAgKiBA
ZmVuY2U6IHRoZSBmZW5jZSB0byBzaWduYWwKQEAgLTE3MCwxNCArMzI0LDE5IEBAIGludCBkbWFf
ZmVuY2Vfc2lnbmFsKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQogewogCXVuc2lnbmVkIGxvbmcg
ZmxhZ3M7CiAJaW50IHJldDsKKwlib29sIHRtcDsKIAogCWlmICghZmVuY2UpCiAJCXJldHVybiAt
RUlOVkFMOwogCisJdG1wID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKKwogCXNwaW5f
bG9ja19pcnFzYXZlKGZlbmNlLT5sb2NrLCBmbGFncyk7CiAJcmV0ID0gZG1hX2ZlbmNlX3NpZ25h
bF9sb2NrZWQoZmVuY2UpOwogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZs
YWdzKTsKIAorCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyh0bXApOworCiAJcmV0dXJuIHJldDsK
IH0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbCk7CkBAIC0yMTAsNiArMzY5LDggQEAg
ZG1hX2ZlbmNlX3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgYm9vbCBpbnRy
LCBzaWduZWQgbG9uZyB0aW1lb3V0KQogCiAJbWlnaHRfc2xlZXAoKTsKIAorCV9fZG1hX2ZlbmNl
X21pZ2h0X3dhaXQoKTsKKwogCXRyYWNlX2RtYV9mZW5jZV93YWl0X3N0YXJ0KGZlbmNlKTsKIAlp
ZiAoZmVuY2UtPm9wcy0+d2FpdCkKIAkJcmV0ID0gZmVuY2UtPm9wcy0+d2FpdChmZW5jZSwgaW50
ciwgdGltZW91dCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaAppbmRleCAzMzQ3YzU0ZjNhODcuLjNmMjg4ZjdkYjJlZiAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAorKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oCkBAIC0zNTcsNiArMzU3LDE4IEBAIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUo
c3RydWN0IGRtYV9mZW5jZSBfX3JjdSAqKmZlbmNlcCkKIAl9IHdoaWxlICgxKTsKIH0KIAorI2lm
ZGVmIENPTkZJR19MT0NLREVQCitib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKHZvaWQp
Owordm9pZCBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoYm9vbCBjb29raWUpOworI2Vsc2UKK3N0
YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyh2b2lkKQoreworCXJl
dHVybiB0cnVlOworfQorc3RhdGljIGlubGluZSB2b2lkIGRtYV9mZW5jZV9lbmRfc2lnbmFsbGlu
Zyhib29sIGNvb2tpZSkge30KK3N0YXRpYyBpbmxpbmUgdm9pZCBfX2RtYV9mZW5jZV9taWdodF93
YWl0KHZvaWQpIHt9CisjZW5kaWYKKwogaW50IGRtYV9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpOwogaW50IGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKTsKIHNpZ25lZCBsb25nIGRtYV9mZW5jZV9kZWZhdWx0X3dhaXQoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UsCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
