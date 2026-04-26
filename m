Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMBcGfVN72kEAAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:52:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953F9472126
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:52:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A2110E6E1;
	Mon, 27 Apr 2026 11:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hAM7QCOl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1222510E16B
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2026 21:17:51 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2ab46931cf1so71812135ad.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2026 14:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777238270; cv=none;
 d=google.com; s=arc-20240605;
 b=THL+Rt2vj91niIKDtTwR5dOnKABrHBNd5PX7QARJcJrN2THpyuibC9mXDLoRENpGiO
 4405q41/hQa1xe5RJRYtEB69+4vE3ofIR8FZ2O8GUAyCT9DDad+zdqYTyXMeoj/bQry9
 /7xP0RCrQK54VrgYXEr/CvB11Z+A559hrLLRzPA9nyaUOXUX8JZhss6NQ/Y7SPK1t82o
 O/F3Q+lMuqQ/QT95guZhZquOu7wPL/kk9Tbssew6sigo8oAsWNX1MieP77SJKb4P2exj
 pK7liWNGFnRPsRFrSLHANiYy/Mo9seWcRPUkp3C6tMeU5WPc2tk/s/AScw1FVMdOHs0F
 bGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=1NyE1GcJkFnTQ67ZXLoj8uZYOxorTNNfciDFyof8eR4=;
 fh=hiO5FTRHR7JBydXSqw+zoudDtfYFVW0QAiiID6CvOLU=;
 b=BA4r35GVcAOF3+6ZHUmKLustvca920YAg0+njqPLhp8r+EilHorE3Xklc8zFTXfnvs
 lqFWUz/IqmIrQ6I1OMPEo4zvz27nAwH2Hv5aC1v0LftIYqNhtBkrmyxgLXtNl62nKRQ7
 x3ojwkjV/l64ODkxOmCIjHKpeHAbBw+zxJWcUHK0X/UD1NLIKA0QS4B+IUZv03IAXM9w
 k+qtG/OmkKwYNVvYaTWgKxe5SMXRV2/Eoo0WLWu1oYg6BDQy8POKsxeUtVVCHqeHW6VI
 weI5F2Br6um6CznDB/EL/MW3aE6Lo7vARgDWHjrvjuDfBJjd6g2HGQ+6AA1fKaG4pCUt
 E2SQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777238270; x=1777843070; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=1NyE1GcJkFnTQ67ZXLoj8uZYOxorTNNfciDFyof8eR4=;
 b=hAM7QCOltd9XqiPeM+3t1GSN0j0gxxmvzcWbIWszATO+rKM8LCDkKlLvuzU/PsjUOo
 4gN71FMucvWj4hNBvLuaWgnOz10ZQT9lt0nbc6sgXaw5Ox2vdRALs3p4eV8tYFfm45P8
 Z8i4A2pJh8Tk1jSogpJUwKiRlrnoX8SRPZlJU2tHU9stFZmZnrByQiFlABGlxHngfwMn
 9eYpGUGlQhqwGQiDu6iK3Ha/OP2LVzDP3SBXHXhyuABA6cUUDRxv9dwsqAIXYfjiQuxL
 Uv19fEv6O0nD/EM4VZ+ijRTGKDdagDeiLZBR9Crs6b1d3ExGhL7rY0ErvVx5RPPhM/m6
 lEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777238270; x=1777843070;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1NyE1GcJkFnTQ67ZXLoj8uZYOxorTNNfciDFyof8eR4=;
 b=N0E2HFmipvlt0xTFniqy2+6uj8NjF2UQV0/6rjhpHo4Ck8loPELrXK/LZNR+pHQtO4
 ghgncsMn0kixW0vptFbu8SnVoN4SuXxmBS+fwVHi9Yd9z2bMIA5Fv/MYBYeLNYsBHgZk
 LGjOs6HGGa6EWs/Ijpn41aaT75XX1U2ROJBAaEx/FIAIjDUAK1zpThFvb861dLTqSnkK
 junI3tRDF/ZjJzZgAOePK9T4GrYEyQTQV8Z4SeSekdIbpi4wu2cXJT239gK4xXSGxjdp
 ziFilWW5gaZdTAwH6j7k46D5yz8uIlwh039Czw0Aw7+c/UJa1c3bfQAN11MFCPmhKIQI
 0f9g==
X-Gm-Message-State: AOJu0YwmZQkUW3z7PjpV594pgqkPmRJIbHwvrscRi06Xd491tNem8x4d
 I1XUKclOCt7/h7ZR+7ga+YfY7Mi8Gf7y9BWHf4WIKJQvSewgArBY+9q/bYIrpQExCY/B3xYTwpL
 kXgEyP6wvKjqWzdLcqkNvP4wl5NCRdZ2tmk5t
X-Gm-Gg: AeBDiesRiPXwzKUstUXxisK9fkkz0yCNilT9WcOzZHZ45D/KTTaqUDAvDvOyOdyPG16
 rmil+cQ7pGsg28kUsLMRzT1Vi2So8BDysH+BOO7FfD4kiWRN8GUE+wMEdjxVM2w/3pJwKzSRzRi
 lOCDglXyxU5XkAviDcw5/olXRXerW/5dkccnEUlbFloyKNaNXqeVO7gr8DyzVSd+de06JVBm0sL
 nzdOXMPoTPLut1biWsebykON7/Xcq+ZhHGtTDDAdTRTqV8Tm7Qivg9frmpXQfX1exJTadUQ2y5L
 nfNlcz6Bdg8YoV4xhA==
X-Received: by 2002:a17:902:bb96:b0:2b2:5168:2f82 with SMTP id
 d9443c01a7336-2b5f9ed4d0cmr213777345ad.24.1777238269893; Sun, 26 Apr 2026
 14:17:49 -0700 (PDT)
MIME-Version: 1.0
From: Andrea Rabbaglietti <rabbagliettiandrea@gmail.com>
Date: Sun, 26 Apr 2026 23:17:13 +0200
X-Gm-Features: AQROBzAjY01URB-J3EGt7U3bwJ7bU0SFfwu6QP9jrDq1jDOB9wGwTgfFmQOFMVY
Message-ID: <CAENjc+zL0MVJR+t2YzofgiAQ_yqcjTO8kXNg9iNbK=VChVXpSw@mail.gmail.com>
Subject: [PATCH] drm/xe: fix possible GGTT write ordering issue causing hard
 freeze on Lunar Lake
To: intel-gfx@lists.freedesktop.org
Cc: sonny@milton.pro
Content-Type: multipart/mixed; boundary="000000000000c23a2e0650638703"
X-Mailman-Approved-At: Mon, 27 Apr 2026 11:52:17 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 953F9472126
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain,text/x-patch];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rabbagliettiandrea@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ATTACHMENT(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[1.000];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,gitlab.freedesktop.org:url]

--000000000000c23a2e0650638703
Content-Type: multipart/alternative; boundary="000000000000c23a2b0650638701"

--000000000000c23a2b0650638701
Content-Type: text/plain; charset="UTF-8"

Hi,
this patch attempts to fix a reproducible system freeze on Intel Lunar
Lake platforms
under GPU load.

This patch is based on work by @sonny@milton.pro <sonny@milton.pro>

Tested on:
- CPU: Intel Core Ultra 7 258V (Lunar Lake)
- Machine: Lenovo ThinkPad X9-14
- Distro: Fedora 43
- Kernel: 7.0.0 (mainline)

## Problem

Under sustained GPU load (e.g. FurMark VK), the system would hard freeze:
- complete system lockup (no SSH, no TTY)
- no useful dmesg output after the freeze

The issue was reliably reproducible within minutes.

## Root cause hypothesis

The freeze appears to be related to GGTT PTE writes not being properly
flushed/ordered, possibly leading to invalid memory state when pinning
framebuffer VMA (xe_pin_fb_vma).

## Solution

Wrap GGTT update paths with forcewake to ensure MMIO write flushing /
ordering.

## Results

After applying this patch:
- system is stable
- no freezes observed after >6 hours of continuous GPU stress and in 7 days
of daily use.

## Notes

I am available for further testing if needed.

Credits to @sonny@milton.pro for the original patch.

Thanks,
Andrea Rabbaglietti

--000000000000c23a2b0650638701
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br><span>Hi,</span><br><span>this patch attempts to =
fix a reproducible system freeze on Intel Lunar Lake</span><span>=C2=A0plat=
forms under GPU load.</span></div><div><br></div><div><span>This patch is b=
ased on work by=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyChip-1" hr=
ef=3D"mailto:sonny@milton.pro" tabindex=3D"-1">@sonny@milton.pro</a>=C2=A0<=
/span><br><br><span>Tested on:</span><br><span>  - CPU: Intel Core Ultra 7 =
258V (Lunar Lake)</span><br><span>  - Machine: Lenovo ThinkPad X9-14</span>=
<br><span>  - Distro: Fedora 43</span><br><span>  - Kernel: 7.0.0 (mainline=
)</span><br><span><br></span></div><div><span>## Problem</span></div><div><=
br><span>Under sustained GPU load (e.g. FurMark VK), the system would hard =
freeze:</span><br><span>  - complete system lockup (no SSH, no TTY)</span><=
br><span>  - no useful dmesg output after the freeze</span><br><br><span>Th=
e issue was reliably reproducible within minutes.</span><br><br><span>## Ro=
ot cause hypothesis</span><br><br><span>The freeze appears to be related to=
 GGTT PTE writes not being properly</span><br><span>flushed/ordered, possib=
ly leading to invalid memory state when pinning</span><br><span>framebuffer=
 VMA (xe_pin_fb_vma).</span><br><br><span>## Solution</span><br><br><span>W=
rap GGTT update paths with forcewake to ensure MMIO write flushing /</span>=
<br><span>ordering.</span><br><br><span>## Results</span><br><br><span>Afte=
r applying this patch:</span><br><span>  - system is stable</span><br><span=
>  - no freezes observed after &gt;6 hours of continuous GPU stress and in =
7 days of daily use.</span><br><br><span>## Notes</span><br><br><span>I am =
available for further testing if needed.</span><br><br><span>Credits to=C2=
=A0<a class=3D"gmail_plusreply" id=3D"plusReplyChip-0">@</a></span><a class=
=3D"gmail_plusreply" id=3D"plusReplyChip-0">sonny@milton.pro</a><span>=C2=
=A0for the original patch.</span><br><br><span>Thanks,</span><br><span>Andr=
ea Rabbaglietti</span></div></div>

--000000000000c23a2b0650638701--

--000000000000c23a2e0650638703
Content-Type: text/x-patch; charset="UTF-8"; name="lnl-forcewake-fix-7.0.0-rc7.patch"
Content-Disposition: attachment; 
	filename="lnl-forcewake-fix-7.0.0-rc7.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mog9q6s10>
X-Attachment-Id: f_mog9q6s10

RnJvbSBiMmUxNjkwNjdmMGI0OWU4Yzg0MWRhYzk0MGU5NjJiN2U0N2Y0ZTMwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWtvbGF5IE1pa2hheWxvdiA8c29ubnlAbWlsdG9uLnBybz4K
RGF0ZTogRnJpLCAxNyBBcHIgMjAyNiAyMjo0ODo0MCArMDcwMApTdWJqZWN0OiBbUEFUQ0hdIGRy
bS94ZS9nZ3R0OiBQcm90ZWN0IEdHVFQgd3JpdGUgcGF0aHMgd2l0aCBGT1JDRVdBS0UgdG8KIHBy
ZXZlbnQgTU1JTyBwaXBlbGluZSBzdGFsbCBvbiBMTkwKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVu
dC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rp
bmc6IDhiaXQKCk9uIEx1bmFyIExha2UsIFdBIDE1MDE1NDA0NDI1ICh4ZV9tbWlvLmM6MTMxKSBm
bHVzaGVzIHRoZSBDUFUgTU1JTyB3cml0ZQpwaXBlbGluZSBieSBpc3N1aW5nIDQgZHVtbXkgd3Jp
dGVzIHRvIGEgc2NyYXRjaCByZWdpc3RlciBiZWZvcmUgZXZlcnkKTU1JTyByZWFkLiBUaGlzIGZs
dXNoIGlzIHRyaWdnZXJlZCBvbmx5IG9uIHRoZSByZWFkIHBhdGguIEdHVFQgaW5zZXJ0CnBhdGhz
ICh4ZV9nZ3R0X2luc2VydF9ub2RlX3RyYW5zZm9ybSwgX194ZV9nZ3R0X2luc2VydF9ib19hdCkg
aXNzdWUKYmF0Y2hlcyBvZiB3cml0ZXEoKSB0byBHU00gd2l0aCBubyBpbnRlcnZlbmluZyByZWFk
cywgc28gdGhlIHBpcGVsaW5lCm5ldmVyIGRyYWlucyBiZXR3ZWVuIHdyaXRlcy4KCldoZW4gdGhl
IENQVSBzdG9yZSBxdWV1ZSBmaWxscyAoQkVSVDogZnNtX3N0YXRlPTB4MTApLCBhbnkgc3Vic2Vx
dWVudApNTUlPIHdyaXRlIHN0YWxscyBpbmRlZmluaXRlbHksIGNhdXNpbmcgYSBmdWxsIHBsYXRm
b3JtIGZyZWV6ZS4gVGhlCiJGT1JDRVdBS0Ugc3R1Y2sgYXQgdmFsdWUgNiIgc2VlbiBpbiBhbGwg
Y29sbGVjdGVkIGNyYXNoIGR1bXBzIGlzIGEKZG93bnN0cmVhbSBzeW1wdG9tOiBmb3JjZXdha2Ug
cmVxdWVzdCB3cml0ZXMgYWxzbyBzdGFsbCBpbiB0aGUgc2FtZQpjb25nZXN0ZWQgcGlwZWxpbmUu
CgpXcmFwcGluZyB0aGUgd3JpdGUgcGF0aHMgaW4geGVfd2l0aF9mb3JjZV93YWtlKCkgcmVzb2x2
ZXMgdGhpcyBiZWNhdXNlCnhlX2ZvcmNlX3dha2VfZ2V0KCkgcG9sbHMgdGhlIEFDSyByZWdpc3Rl
ciB2aWEgeGVfbW1pb193YWl0MzIoKSwgd2hpY2gKaXMgYSByZWFkIHRoYXQgdHJpZ2dlcnMgbW1p
b19mbHVzaF9wZW5kaW5nX3dyaXRlcygpIGFzIGEgc2lkZSBlZmZlY3QuClRoaXMgaW5qZWN0cyBh
IHBpcGVsaW5lIGZsdXNoIGJlZm9yZSBhbmQgYWZ0ZXIgZWFjaCB3cml0ZSBiYXRjaC4gVGhlCmZp
eCB3b3JrcyBiZWNhdXNlIG9mIHRoaXMgQUNLIHBvbGxpbmcgc2lkZSBlZmZlY3QsIG5vdCBiZWNh
dXNlIHRoZQpyZWdpc3RlcnMgcmVxdWlyZSBmb3JjZXdha2UgZm9yIHBvd2VyIGRvbWFpbiByZWFz
b25zLgoKQXBwbHkgdGhpcyBwcm90ZWN0aW9uIHRvOgogIC0geGVfZ2d0dF9pbnNlcnRfbm9kZV90
cmFuc2Zvcm0oKSBhbmQgX194ZV9nZ3R0X2luc2VydF9ib19hdCgpOiB3cmFwCiAgICB0aGUgUFRF
IHdyaXRlIGJhdGNoZXMgKHByaW1hcnkgY3Jhc2ggcGF0aCwgbW9zdCBpbXBhY3RmdWwgY2hhbmdl
KQogIC0gZ2d0dF91cGRhdGVfYWNjZXNzX2NvdW50ZXIoKTogd3JhcCB0aGUgV2FfMjIwMTkzMzg0
ODcgR01EX0lEIGJhcnJpZXIKICAgIHdyaXRlOyB3aXRob3V0IHRoaXMgdGhlIGJhcnJpZXIgd3Jp
dGUgaXRzZWxmIGNhbiBzdGFsbCB0aGUgcGlwZWxpbmUKICAtIHhlX2dndHRfaW52YWxpZGF0ZSgp
OiB3cmFwIHRoZSBleGlzdGluZyBiYXJyaWVyIHJlYWQgaW4gRk9SQ0VXQUtFCiAgICB0byBwcmV2
ZW50IGEgaGFuZyBpZiBHdUMgaGFzIHBsYWNlZCB0aGUgR1QgaW50byBSQzYKClRoZSBjcmFzaCBp
cyBXYXlsYW5kLWV4Y2x1c2l2ZSBiZWNhdXNlIFdheWxhbmQgY29uY2VudHJhdGVzIHRocmVlCnBh
dHRlcm5zIHNpbXVsdGFuZW91c2x5OiBmcmVxdWVudCBHR1RUIGluc2VydHMgZm9yIHRpbGVkK0ND
UwpmcmFtZWJ1ZmZlcnMgcGVyIG5ldyBjbGllbnQgYnVmZmVyLCBEU0IgaGFyZHdhcmUgRE1BIGJh
dGNoaW5nIH45NjAKZGlzcGxheSByZWdpc3RlciB3cml0ZXMgcGVyIGF0b21pYyBjb21taXQgd2l0
aG91dCBwZXItd3JpdGUgZm9yY2V3YWtlLAphbmQgRkxJUFEgcmVnaXN0ZXIgc3Rvcm1zIG9uIExO
TC9QVEwgbm9uLVBTUiBwYXRocy4gWG9yZyB1c2VzIGxpbmVhcgpmcmFtZWJ1ZmZlcnMgYW5kIGxl
Z2FjeSBjdXJzb3IvZmxpcCBwYXRocyB0aGF0IGF2b2lkIGFsbCB0aHJlZS4KClRoaXMgcGF0Y2gg
aW5jb3Jwb3JhdGVzIGNoYW5nZXMgb3JpZ2luYWxseSBwcm9wb3NlZCBieSBNw6FydG9uIFZpZ2gK
KEBtcnRudmdoKSBjb3ZlcmluZyB4ZV9nZ3R0X2luc2VydF9ub2RlX3RyYW5zZm9ybSgpIGFuZApf
X3hlX2dndHRfaW5zZXJ0X2JvX2F0KCksIHNlZToKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS94ZS9rZXJuZWwvLS93b3JrX2l0ZW1zLzc1MTMjbm90ZV8zNDE4NzYxCgpUZXN0ZWQg
b24gVGhpbmtQYWQgWDEgQ2FyYm9uIEdlbiAxMyAoQ29yZSBVbHRyYSA3IDI1OFYsIExOTCwgWzgw
ODY6NjRhMF0KcmV2IDA0IHN0ZXBwaW5nIEIwKSwgZURQICsgSERNSSBkdWFsLW1vbml0b3IgV2F5
bGFuZCAoSHlwcmxhbmQpLCBnYW1pbmcKd29ya2xvYWRzIChEb29tIDIwMTYgdmlhIFByb3Rvbik6
IDEgd2VlayB1cHRpbWUgdnMuIGNyYXNoIHdpdGhpbiAyaApiZWZvcmUgdGhlIGZpeC4KCkxpbms6
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVsLy0vd29ya19pdGVt
cy83NTEzClNpZ25lZC1vZmYtYnk6IE5pa29sYXkgTWlraGF5bG92IDxzb25ueUBtaWx0b24ucHJv
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9nZ3R0LmMgfCA0NiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAx
MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ2d0dC5j
IGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2dndHQuYwppbmRleCAzNTUyZmEzY2FjNGIuLjk5NjQ4
YjFkMWRhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2dndHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0veGUveGVfZ2d0dC5jCkBAIC0yMCw2ICsyMCw4IEBACiAjaW5jbHVkZSAi
cmVncy94ZV9yZWdzLmgiCiAjaW5jbHVkZSAieGVfYXNzZXJ0LmgiCiAjaW5jbHVkZSAieGVfYm8u
aCIKKyNpbmNsdWRlICJ4ZV9kZXZpY2UuaCIKKyNpbmNsdWRlICJ4ZV9mb3JjZV93YWtlLmgiCiAj
aW5jbHVkZSAieGVfZ3RfcHJpbnRrLmgiCiAjaW5jbHVkZSAieGVfZ3RfdHlwZXMuaCIKICNpbmNs
dWRlICJ4ZV9tYXAuaCIKQEAgLTIwNyw3ICsyMDksMTIgQEAgc3RhdGljIHZvaWQgZ2d0dF91cGRh
dGVfYWNjZXNzX2NvdW50ZXIoc3RydWN0IHhlX2dndHQgKmdndHQpCiAJbG9ja2RlcF9hc3NlcnRf
aGVsZCgmZ2d0dC0+bG9jayk7CiAKIAlpZiAoKCsrZ2d0dC0+YWNjZXNzX2NvdW50ICUgbWF4X2d0
dF93cml0ZXMpID09IDApIHsKKwkJdW5zaWduZWQgaW50IGZ3X3JlZjsKKworCQlmd19yZWYgPSB4
ZV9mb3JjZV93YWtlX2dldChndF90b19mdyhhZmZlY3RlZF9ndCksIFhFX0ZXX0dUKTsKIAkJeGVf
bW1pb193cml0ZTMyKCZhZmZlY3RlZF9ndC0+bW1pbywgR01EX0lELCAweDApOworCQlpZiAoZndf
cmVmKQorCQkJeGVfZm9yY2Vfd2FrZV9wdXQoZ3RfdG9fZncoYWZmZWN0ZWRfZ3QpLCBmd19yZWYp
OwogCQlnZ3R0LT5hY2Nlc3NfY291bnQgPSAwOwogCX0KIH0KQEAgLTU3OCwxMiArNTg1LDE0IEBA
IHN0YXRpYyB2b2lkIHhlX2dndHRfaW52YWxpZGF0ZShzdHJ1Y3QgeGVfZ2d0dCAqZ2d0dCkKIAlz
dHJ1Y3QgeGVfZGV2aWNlICp4ZSA9IHRpbGVfdG9feGUoZ2d0dC0+dGlsZSk7CiAKIAkvKgotCSAq
IFhYWDogQmFycmllciBmb3IgR0dUVCBwYWdlcy4gVW5zdXJlIGV4YWN0bHkgd2h5IHRoaXMgcmVx
dWlyZWQgYnV0Ci0JICogd2l0aG91dCB0aGlzIExOTCBpcyBoYXZpbmcgaXNzdWVzIHdpdGggdGhl
IEd1QyByZWFkaW5nIHNjcmF0Y2ggcGFnZQotCSAqIHZzLiBjb3JyZWN0IEdHVFQgcGFnZS4gTm90
IHBhcnRpY3VsYXJseSBhIGhvdCBjb2RlIHBhdGggc28gYmxpbmRseQotCSAqIGRvIGEgbW1pbyBy
ZWFkIGhlcmUgd2hpY2ggcmVzdWx0cyBpbiBHdUMgcmVhZGluZyBjb3JyZWN0IEdHVFQgcGFnZS4K
KwkgKiBCYXJyaWVyIGZvciBHR1RUIHBhZ2VzLiBXaXRob3V0IHRoaXMgTE5MIGhhcyBpc3N1ZXMg
d2l0aCBHdUMKKwkgKiByZWFkaW5nIHNjcmF0Y2ggcGFnZSB2cy4gY29ycmVjdCBHR1RUIHBhZ2Uu
IE5vdCBhIGhvdCBjb2RlIHBhdGgKKwkgKiBzbyBibGluZGx5IGRvIGEgbW1pbyByZWFkIGhlcmUu
IFdyYXAgaW4gRk9SQ0VXQUtFIHRvIHByZXZlbnQgYQorCSAqIGhhbmcgaWYgR3VDIGhhcyBwbGFj
ZWQgdGhlIEdUIGludG8gUkM2LgogCSAqLwotCXhlX21taW9fcmVhZDMyKHhlX3Jvb3RfdGlsZV9t
bWlvKHhlKSwgVkZfQ0FQX1JFRyk7CisJeGVfd2l0aF9mb3JjZV93YWtlKGZ3X3JlZiwgZ3RfdG9f
ZncoZ2d0dC0+dGlsZS0+cHJpbWFyeV9ndCksIFhFX0ZXX0dUKSB7CisJCXhlX21taW9fcmVhZDMy
KHhlX3Jvb3RfdGlsZV9tbWlvKHhlKSwgVkZfQ0FQX1JFRyk7CisJfQogCiAJLyogRWFjaCBHVCBp
biBhIHRpbGUgaGFzIGl0cyBvd24gVExCIHRvIGNhY2hlIEdHVFQgbG9va3VwcyAqLwogCWdndHRf
aW52YWxpZGF0ZV9ndF90bGIoZ2d0dC0+dGlsZS0+cHJpbWFyeV9ndCk7CkBAIC03NjgsMTAgKzc3
NywxOCBAQCBzdHJ1Y3QgeGVfZ2d0dF9ub2RlICp4ZV9nZ3R0X2luc2VydF9ub2RlX3RyYW5zZm9y
bShzdHJ1Y3QgeGVfZ2d0dCAqZ2d0dCwKIAlpZiAocmV0KQogCQlnb3RvIGVycl91bmxvY2s7CiAK
LQlpZiAodHJhbnNmb3JtKQotCQl0cmFuc2Zvcm0oZ2d0dCwgbm9kZSwgcHRlX2ZsYWdzLCBnZ3R0
LT5wdF9vcHMtPmdndHRfc2V0X3B0ZSwgYXJnKTsKLQllbHNlCi0JCXhlX2dndHRfbWFwX2JvKGdn
dHQsIG5vZGUsIGJvLCBwdGVfZmxhZ3MpOworCS8qCisJICogRW5zdXJlIEdUIGlzIGF3YWtlIGZv
ciBHR1RUIFBURSB3cml0ZXMgdmlhIHdyaXRlcSgpIHRvIEdTTS4KKwkgKiBXaXRob3V0IEZPUkNF
V0FLRSwgdGhlc2Ugd3JpdGVzIGNhbiBoaXQgYSBwb3dlcmVkLWRvd24gR1Qgd2hlbgorCSAqIEd1
QyBpcyBpbiBSQzYsIGNhdXNpbmcgYSBzeXN0ZW0gaGFuZyAoZXNwZWNpYWxseSBmcm9tIHRoZQor
CSAqIF9feGVfcGluX2ZiX3ZtYSBkaXNwbGF5IHBhdGggb24gTHVuYXIgTGFrZSkuCisJICovCisJ
eGVfd2l0aF9mb3JjZV93YWtlKGZ3X3JlZiwgZ3RfdG9fZncoZ2d0dC0+dGlsZS0+cHJpbWFyeV9n
dCksIFhFX0ZXX0dUKSB7CisJCWlmICh0cmFuc2Zvcm0pCisJCQl0cmFuc2Zvcm0oZ2d0dCwgbm9k
ZSwgcHRlX2ZsYWdzLCBnZ3R0LT5wdF9vcHMtPmdndHRfc2V0X3B0ZSwgYXJnKTsKKwkJZWxzZQor
CQkJeGVfZ2d0dF9tYXBfYm8oZ2d0dCwgbm9kZSwgYm8sIHB0ZV9mbGFncyk7CisJfQogCiAJbXV0
ZXhfdW5sb2NrKCZnZ3R0LT5sb2NrKTsKIAlyZXR1cm4gbm9kZTsKQEAgLTg0Myw3ICs4NjAsMTYg
QEAgc3RhdGljIGludCBfX3hlX2dndHRfaW5zZXJ0X2JvX2F0KHN0cnVjdCB4ZV9nZ3R0ICpnZ3R0
LCBzdHJ1Y3QgeGVfYm8gKmJvLAogCQl1MTYgcGF0X2luZGV4ID0gdGlsZV90b194ZShnZ3R0LT50
aWxlKS0+cGF0LmlkeFtjYWNoZV9tb2RlXTsKIAkJdTY0IHB0ZSA9IGdndHQtPnB0X29wcy0+cHRl
X2VuY29kZV9mbGFncyhibywgcGF0X2luZGV4KTsKIAotCQl4ZV9nZ3R0X21hcF9ibyhnZ3R0LCBi
by0+Z2d0dF9ub2RlW3RpbGVfaWRdLCBibywgcHRlKTsKKwkJLyoKKwkJICogRW5zdXJlIEdUIGlz
IGF3YWtlIGZvciBHR1RUIFBURSB3cml0ZXMgdmlhIHdyaXRlcSgpCisJCSAqIHRvIEdTTS4gV2l0
aG91dCBGT1JDRVdBS0UsIHRoZXNlIHdyaXRlcyBjYW4gaGl0IGEKKwkJICogcG93ZXJlZC1kb3du
IEdUIHdoZW4gR3VDIGlzIGluIFJDNiwgY2F1c2luZyBhIHN5c3RlbQorCQkgKiBoYW5nLgorCQkg
Ki8KKwkJeGVfd2l0aF9mb3JjZV93YWtlKGZ3X3JlZiwgZ3RfdG9fZncoZ2d0dC0+dGlsZS0+cHJp
bWFyeV9ndCksIFhFX0ZXX0dUKSB7CisJCQl4ZV9nZ3R0X21hcF9ibyhnZ3R0LCBiby0+Z2d0dF9u
b2RlW3RpbGVfaWRdLCBibywKKwkJCQkgICAgICAgcHRlKTsKKwkJfQogCX0KIAltdXRleF91bmxv
Y2soJmdndHQtPmxvY2spOwogCi0tIAoyLjUzLjAKCg==
--000000000000c23a2e0650638703--
