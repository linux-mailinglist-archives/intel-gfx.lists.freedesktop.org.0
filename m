Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0F21C459
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 10:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF8989015;
	Tue, 14 May 2019 08:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7457389015
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 08:04:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16548149-1500050 
 for multiple; Tue, 14 May 2019 09:04:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 09:04:39 +0100
Message-Id: <20190514080439.23931-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514074409.23456-2-chris@chris-wilson.co.uk>
References: <20190514074409.23456-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Truly bump ready tasks ahead of
 busywaits
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY29tbWl0IGI3NDA0YzdlY2IzOCAoImRybS9pOTE1OiBCdW1wIHJlYWR5IHRhc2tzIGFoZWFk
IG9mCmJ1c3l3YWl0cyIpLCBJIHRyaWVkIGN1dHRpbmcgYSBjb3JuZXIgaW4gb3JkZXIgdG8gbm90
IGluc3RhbGwgYSBzaWduYWwKZm9yIGVhY2ggb2Ygb3VyIGRlcGVuZGVuY2llcywgYW5kIG9ubHkg
bGlzdGVuZWQgdG8gcmVxdWVzdHMgb24gd2hpY2ggd2UKd2VyZSBpbnRlbmRpbmcgdG8gYnVzeXdh
aXQuIFRoZSBjb21wcm9taXNlIHRoYXQgd2FzIG1hZGUgd2FzIHRoYXQKaW5zdGVhZCBvZiB0aGVu
IGJlaW5nIGFibGUgdG8gcHJvbWl0ZSB0aGUgcmVxdWVzdCB3aXRoIGEgZnVsbApOT1NFTUFQSE9S
RSBsaWtlIGl0cyBub24tYnVzeXdhaXRpbmcgYnJldGhyZW4sIGFzIHdlIGhhZCBub3QgZW5zdXJl
ZCB3ZQpoYWQgY2xlYXJlZCB0aGUgc2VtYXBob3JlIGNoYWluLCB3ZSBzZXR0bGVkIGZvciBvbmx5
IHVzaW5nIHRoZSBORVdDTElFTlQKYm9vc3QuIFdpdGggYW4gb3ZlciBzYXR1cmF0ZWQgc3lzdGVt
IHdpdGggbXVsdGlwbGUgTkVXQ0xJRU5UUyBpbiBmbGlnaHQKYXQgYW55IHRpbWUsIHRoaXMgd2Fz
IGZvdW5kIHRvIGJlIGFuIGluYWRlcXVhdGUgcHJvbW90aW9uIGFuZCBsZWZ0IHVzCndpdGggYSBt
dWNoIHBvb3JlciBzY2hlZHVsaW5nIG9yZGVyIHRoYW4gcHJpb3IgdG8gdXNpbmcgc2VtYXBob3Jl
cy4KClRoZSBvdXRjb21lIG9mIHRoaXMgcGF0Y2gsIGlzIHRoYXQgYWxsIHJlcXVlc3RzIGhhdmUg
Tk9TRU1BUEhPUkUKcHJpb3JpdHkgd2hlbiB0aGV5IGhhdmUgbm8gZGVwZW5kZW5jaWVzIGFuZCBh
cmUgcmVhZHkgdG8gcnVuIGFuZCBub3QKYnVzeXdhaXQsIHJlc3RvcmluZyB0aGUgcHJlLXNlbWFw
aG9yZSBvcmRlcmluZyBvbiBzYXR1cmF0ZWQgc3lzdGVtcy4KCldlIGNhbiBkZW1vbnN0cmF0ZSB0
aGUgZWZmZWN0IG9mIHBvb3Igc2NoZWR1bGluZyBvcmRlciBieSBvdmVyc2F0dXJhdGluZwp0aGUg
c3lzdGVtIHVzaW5nIGdlbV93c2ltIG9uIGEgc3lzdGVtIHdpdGggbXVsdGlwbGUgdmNzIGVuZ2lu
ZXMKKGkuZSBydW5uaW5nIHRoZSBzYW1lIHdvcmtsb2FkcyBhY3Jvc3MgbW9yZSBjbGllbnRzIHRo
YW4gcmVxdWlyZWQgZm9yCnBlYWsgdGhyb3VnaHB1dCwgZS5nLiBtZWRpYV9sb2FkX2JhbGFuY2Vf
MTdpNy53c2ltIC1jNCAtYiBjb250ZXh0KToKCnggdjUuMSAobm9ybWFsaXplZCkKKyB0aXAKKiBm
aXgKKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLSsKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeCAgIHwKfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeCAgIHwK
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgeCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeCAgIHwKfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAleCAgIHwKfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICUleCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICUleCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUleCAgIHwKfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICUleCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICUleCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUleCAgIHwKfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICUleCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICUleCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUleCAgIHwKfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUl
eCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICUjeCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUjeCAgIHwKfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUjeCAg
IHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICUjeCAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUjeCAgIHwKfCAgICAgICAgICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICUjeHggIHwK
fCAgICAgICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICUjeHggIHwKfCAgICAgICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJSUjeHggIHwKfCAgICAgICAgICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSUjeHggIHwKfCAg
ICAgICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJSUjeHggIHwKfCAgICAgICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgJSUjeHggIHwKfCAgICAgICAgICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSUjI3ggIHwKfCAgICAg
ICAgICsrKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJSUjI3ggIHwKfCAgICAgICAgICsrKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgJSUjI3ggIHwKfCAgICAgICAgICsrKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSUjI3ggIHwKfCAgICAgICAg
KysrKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
JSUjI3ggIHwKfCAgICAgICAgKysrKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJSUjI3ggIHwKfCAgICAgICAgKysrKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSUjI3h4IHwKfCAgICAgICAgKysr
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSMj
I3h4IHwKfCAgICAgICAgKysrKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJSMjI3h4IHwKfCAgICAgICAgKysrKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSMjI3h4IHwKfCAgICAgICAgKysrKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSMjI3h4
IHwKfCAgICAgICAgKysrKyArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJSNPI3h4IHwKfCAgICAgICAgKysrKyArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSNPI3h4IHwKfCAgICAgICAgKysrKysrICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJSNPI3h4IHwK
fCAgICAgICArKysrKysrKysrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgJU9PT3h4eHwKfCAgICAgICArKysrKysrKysrICAgICAgICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAlI09PTyN4eHwKfCAgICAgKyArKysrKysrKysrKysg
KysgKysrKysgICAgKyAgICAgICAgICAgICAgICAgICAgICAgICsrICAgIEBAT09PTyN4eHwKfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8QV98IHwKfHxfX19fX19fX19fTV9fX19fX19BX19fX19fX19fX19fX19fX19fX198
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfEFffCAgIHwKKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLSsKICAgIE4gICAgICAgICAgIE1pbiAgICAgICAgICAgTWF4ICAgICAgICBNZWRp
YW4gICAgICAgICAgIEF2ZyAgICAgICAgU3RkZGV2CnggMTIwICAgICAgIDAuOTk0NTYgICAgICAg
MS4wMDYyOCAgICAgIDAuOTk5OTg1ICAgICAxLjAwMDE1NDUgIDAuMDAyNDM4NzEzOQorIDEyMCAg
ICAgIDAuODczMDIxICAgICAgIDEuMDAwMzcgICAgICAwLjg4NDEzNCAgICAwLjkwMTQ4NzUyICAg
MC4wMzkxOTA4NjIKRGlmZmVyZW5jZSBhdCA5OS41JSBjb25maWRlbmNlCgktMC4wOTg2NjcgKy8t
IDAuMDExMDc2MgoJLTkuODY1MTclICsvLSAxLjEwNzQ1JQoJKFN0dWRlbnQncyB0LCBwb29sZWQg
cyA9IDAuMDI3NzY1NykKJSAxMjAgICAgICAwLjk5MDIwNyAgICAgICAxLjAwMTY1ICAgICAwLjk5
NzAyNjUgICAgMC45OTY5OTc0OCAgICAgMC4wMDIxMDI0CkRpZmZlcmVuY2UgYXQgOTkuNSUgY29u
ZmlkZW5jZQoJLTAuMDAzMTU3ICsvLSAwLjAwMDkwODI0NQoJLTAuMzE1NjUxJSArLy0gMC4wOTA4
MTA1JQoJKFN0dWRlbnQncyB0LCBwb29sZWQgcyA9IDAuMDAyMjc2NzgpCgpGaXhlczogYjc0MDRj
N2VjYjM4ICgiZHJtL2k5MTU6IEJ1bXAgcmVhZHkgdGFza3MgYWhlYWQgb2YgYnVzeXdhaXRzIikK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogRG1pdHJ5IFJv
Z296aGtpbiA8ZG1pdHJ5LnYucm9nb3poa2luQGludGVsLmNvbT4KQ2M6IERtaXRyeSBFcm1pbG92
IDxkbWl0cnkuZXJtaWxvdkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZXF1ZXN0LmMgfCAzMSArKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMKaW5kZXggNGU2YTdmMzdmZmZjLi5iY2IzYjU0Y2I4MDYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC01NzMsMTggKzU3Myw3IEBAIHNlbWFwaG9yZV9u
b3RpZnkoc3RydWN0IGk5MTVfc3dfZmVuY2UgKmZlbmNlLCBlbnVtIGk5MTVfc3dfZmVuY2Vfbm90
aWZ5IHN0YXRlKQogCiAJc3dpdGNoIChzdGF0ZSkgewogCWNhc2UgRkVOQ0VfQ09NUExFVEU6Ci0J
CS8qCi0JCSAqIFdlIG9ubHkgY2hlY2sgYSBzbWFsbCBwb3J0aW9uIG9mIG91ciBkZXBlbmRlbmNp
ZXMKLQkJICogYW5kIHNvIGNhbm5vdCBndWFyYW50ZWUgdGhhdCB0aGVyZSByZW1haW5zIG5vCi0J
CSAqIHNlbWFwaG9yZSBjaGFpbiBhY3Jvc3MgYWxsLiBJbnN0ZWFkIG9mIG9wdGluZwotCQkgKiBm
b3IgdGhlIGZ1bGwgTk9TRU1BUEhPUkUgYm9vc3QsIHdlIGdvIGZvciB0aGUKLQkJICogc21hbGxl
ciAoYnV0IHN0aWxsIHByZWVtcHRpbmcpIGJvb3N0IG9mCi0JCSAqIE5FV0NMSUVOVC4gVGhpcyB3
aWxsIGJlIGVub3VnaCB0byBib29zdCBvdmVyCi0JCSAqIGEgYnVzeXdhaXRpbmcgcmVxdWVzdCAo
YXMgdGhhdCBjYW5ub3QgYmUKLQkJICogTkVXQ0xJRU5UKSB3aXRob3V0IGFjY2lkZW50YWxseSBi
b29zdGluZwotCQkgKiBhIGJ1c3l3YWl0IG92ZXIgcmVhbCB3b3JrIGVsc2V3aGVyZS4KLQkJICov
Ci0JCWk5MTVfc2NoZWR1bGVfYnVtcF9wcmlvcml0eShyZXF1ZXN0LCBJOTE1X1BSSU9SSVRZX05F
V0NMSUVOVCk7CisJCWk5MTVfc2NoZWR1bGVfYnVtcF9wcmlvcml0eShyZXF1ZXN0LCBJOTE1X1BS
SU9SSVRZX05PU0VNQVBIT1JFKTsKIAkJYnJlYWs7CiAKIAljYXNlIEZFTkNFX0ZSRUU6CkBAIC04
NTAsMTIgKzgzOSw2IEBAIGVtaXRfc2VtYXBob3JlX3dhaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAq
dG8sCiAJaWYgKGVyciA8IDApCiAJCXJldHVybiBlcnI7CiAKLQllcnIgPSBpOTE1X3N3X2ZlbmNl
X2F3YWl0X2RtYV9mZW5jZSgmdG8tPnNlbWFwaG9yZSwKLQkJCQkJICAgICZmcm9tLT5mZW5jZSwg
MCwKLQkJCQkJICAgIEk5MTVfRkVOQ0VfR0ZQKTsKLQlpZiAoZXJyIDwgMCkKLQkJcmV0dXJuIGVy
cjsKLQogCS8qIE9ubHkgc3VibWl0IG91ciBzcGlubmVyIGFmdGVyIHRoZSBzaWduYWxlciBpcyBy
dW5uaW5nISAqLwogCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24odG8sIGZyb20s
IGdmcCk7CiAJaWYgKGVycikKQEAgLTkyMSw4ICs5MDQsMTggQEAgaTkxNV9yZXF1ZXN0X2F3YWl0
X3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sIHN0cnVjdCBpOTE1X3JlcXVlc3QgKmZy
b20pCiAJCQkJCQkgICAgJmZyb20tPmZlbmNlLCAwLAogCQkJCQkJICAgIEk5MTVfRkVOQ0VfR0ZQ
KTsKIAl9CisJaWYgKHJldCA8IDApCisJCXJldHVybiByZXQ7CisKKwlpZiAodG8tPnNjaGVkLmZs
YWdzICYgSTkxNV9TQ0hFRF9IQVNfU0VNQVBIT1JFX0NIQUlOKSB7CisJCXJldCA9IGk5MTVfc3df
ZmVuY2VfYXdhaXRfZG1hX2ZlbmNlKCZ0by0+c2VtYXBob3JlLAorCQkJCQkJICAgICZmcm9tLT5m
ZW5jZSwgMCwKKwkJCQkJCSAgICBJOTE1X0ZFTkNFX0dGUCk7CisJCWlmIChyZXQgPCAwKQorCQkJ
cmV0dXJuIHJldDsKKwl9CiAKLQlyZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7CisJcmV0dXJuIDA7
CiB9CiAKIGludAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
