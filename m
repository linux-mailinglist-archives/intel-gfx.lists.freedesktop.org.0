Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 102632454B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 03:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1546A8921C;
	Tue, 21 May 2019 01:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 855D289216;
 Tue, 21 May 2019 01:02:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81982A0019;
 Tue, 21 May 2019 01:02:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Tue, 21 May 2019 01:02:07 -0000
Message-ID: <20190521010207.786.47497@emeril.freedesktop.org>
References: <20190521105151.51ffa942@canb.auug.org.au>
X-Patchwork-Hint: ignore
In-Reply-To: <20190521105151.51ffa942@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_linux-next=3A_manual_merge_of_the_drm-misc_tree_with_Linus?=
 =?utf-8?q?=27_tree?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbGludXgtbmV4dDogbWFudWFsIG1lcmdlIG9m
IHRoZSBkcm0tbWlzYyB0cmVlIHdpdGggTGludXMnIHRyZWUKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwODg2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNzViYTk5OWIyYzU2IGxp
bnV4LW5leHQ6IG1hbnVhbCBtZXJnZSBvZiB0aGUgZHJtLW1pc2MgdHJlZSB3aXRoIExpbnVzJyB0
cmVlCi06MTU6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNj
cmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4i
KScgLSBpZTogJ2NvbW1pdCA4MTIyZGU1NDYwMmUgKCJkdC1iaW5kaW5nczogQ29udmVydCB2ZW5k
b3IgcHJlZml4ZXMgdG8ganNvbi1zY2hlbWEiKScKIzE1OiAKICA4MTIyZGU1NDYwMmUgKCJkdC1i
aW5kaW5nczogQ29udmVydCB2ZW5kb3IgcHJlZml4ZXMgdG8ganNvbi1zY2hlbWEiKQoKLToxOTog
RVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0
eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAn
Y29tbWl0IGI0YTJjMDA1NWE0ZiAoImR0LWJpbmRpbmdzOiBBZGQgdmVuZG9yIHByZWZpeCBmb3Ig
VlhUIEx0ZCIpJwojMTk6IAogIGI0YTJjMDA1NWE0ZiAoImR0LWJpbmRpbmdzOiBBZGQgdmVuZG9y
IHByZWZpeCBmb3IgVlhUIEx0ZCIpCgotOjIwOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5F
OiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVt
IDc1IGNoYXJzIHBlciBsaW5lKQojMjA6IAogIGIxYjBkMzZiZGIxNSAoImR0LWJpbmRpbmdzOiBk
cm0vcGFuZWw6IHNpbXBsZTogQWRkIGJpbmRpbmcgZm9yIFRGQyBTOTcwMFJUV1Y0M1RSLTAxQiIp
CgotOjIwOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3Jp
cHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+Iikn
IC0gaWU6ICdjb21taXQgYjFiMGQzNmJkYjE1ICgiZHQtYmluZGluZ3M6IGRybS9wYW5lbDogc2lt
cGxlOiBBZGQgYmluZGluZyBmb3IgVEZDIFM5NzAwUlRXVjQzVFItMDFCIiknCiMyMDogCiAgYjFi
MGQzNmJkYjE1ICgiZHQtYmluZGluZ3M6IGRybS9wYW5lbDogc2ltcGxlOiBBZGQgYmluZGluZyBm
b3IgVEZDIFM5NzAwUlRXVjQzVFItMDFCIikKCi06MjE6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBs
ZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMg
b2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCBmYmQ4YjY5YWI2MTYgKCJk
dC1iaW5kaW5nczogQWRkIHZlbmRvciBwcmVmaXggZm9yIEV2ZXJ2aXNpb24gRWxlY3Ryb25pY3Mi
KScKIzIxOiAKICBmYmQ4YjY5YWI2MTYgKCJkdC1iaW5kaW5nczogQWRkIHZlbmRvciBwcmVmaXgg
Zm9yIEV2ZXJ2aXNpb24gRWxlY3Ryb25pY3MiKQoKLTo2MjogRVJST1I6TUlTU0lOR19TSUdOX09G
RjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lKHMpCgp0b3RhbDogNSBlcnJvcnMsIDEgd2Fy
bmluZ3MsIDAgY2hlY2tzLCAyNCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
