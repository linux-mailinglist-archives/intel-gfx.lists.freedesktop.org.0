Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C6D1F5CFB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 22:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A141E6E85A;
	Wed, 10 Jun 2020 20:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDF06E85A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 20:20:14 +0000 (UTC)
IronPort-SDR: DD6zanfDTflIA1o+xdBk2byB21/qQT78nrZIDWBX86E3GVRFPbbnIYxUmSbLN9ZrXgfW+ls7mQ
 S1ajK59H/zbw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 13:20:14 -0700
IronPort-SDR: mICvJU2zormngb0z81FehEvrvmma3KyVRZ0WF3VYREMfczu+4MdwC9y15eVNsdIsAwyU+Mcl/4
 Q0NWQ5etbooA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="349974965"
Received: from rdvivi-losangeles.jf.intel.com ([10.165.21.202])
 by orsmga001.jf.intel.com with ESMTP; 10 Jun 2020 13:20:13 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jun 2020 13:18:07 -0700
Message-Id: <20200610201807.191440-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <159163988890.30073.8976615673203599761@build.alporthouse.com>
References: <159163988890.30073.8976615673203599761@build.alporthouse.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Include asm sources for {ivb,
 hsw}_clear_kernel.c
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
Cc: Alexandre Oliva <lxoliva@fsfla.org>, Jani Nikula <jani.nikula@intel.com>,
 stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxleGFuZHJlIE9saXZhIGhhcyByZWNlbnRseSByZW1vdmVkIHRoZXNlIGZpbGVzIGZyb20gTGlu
dXggTGlicmUKd2l0aCBjb25jZXJucyB0aGF0IHRoZSBzb3VyY2VzIHdlcmVuJ3QgYXZhaWxhYmxl
LgoKVGhlIHNvdXJjZXMgYXJlIGF2YWlsYWJsZSBvbiBJR1QgcmVwb3NpdG9yeSwgYW5kIG9ubHkg
b3BlbiBzb3VyY2UKdG9vbHMgYXJlIHVzZWQgdG8gZ2VuZXJhdGUgdGhlIHtpdmIsaHN3fV9jbGVh
cl9rZXJuZWwuYyBmaWxlcy4KCkhvd2V2ZXIsIHRoZSByZW1haW5pbmcgY29uY2VybiBmcm9tIEFs
ZXhhbmRyZSBPbGl2YSB3YXMgYXJvdW5kCkdQTCBsaWNlbnNlIGFuZCB0aGUgc291cmNlIG5vdCBi
ZWVuIHByZXNlbnQgd2hlbiBkaXN0cmlidXRpbmcKdGhlIGNvZGUuCgpTbywgaXQgbG9va3MgbGlr
ZSAyIGFsdGVybmF0aXZlcyBhcmUgcG9zc2libGUsIHRoZSB1c2Ugb2YKbGludXgtZmlybXdhcmUu
Z2l0IHJlcG9zaXRvcnkgdG8gc3RvcmUgdGhlIGJsb2Igb3IgbWFraW5nIHN1cmUKdGhhdCB0aGUg
c291cmNlIGlzIGFsc28gcHJlc2VudCBpbiBvdXIgdHJlZS4gU2luY2UgdGhlIGdvYWwKaXMgdG8g
bGltaXQgdGhlIGk5MTUgZmlybXdhcmUgdG8gb25seSB0aGUgbWljcm8tY29udHJvbGxlciBibG9i
cwpsZXQncyBtYWtlIHN1cmUgdGhhdCB3ZSBkbyBpbmNsdWRlIHRoZSBhc20gc291cmNlcyBoZXJl
IGluIG91ciB0cmVlLgoKQnR3LCBJIHRyaWVkIHRvIGhhdmUgc29tZSBkaWxpZ2VuY2UgaGVyZSBh
bmQgbWFrZSBzdXJlIHRoYXQgdGhlCmFzbXMgdGhhdCB0aGVzZSBjb21taXRzIGFyZSBhZGRpbmcg
YXJlIHRydWx5IHRoZSBzb3VyY2UgZm9yCnRoZSBtZW50aW9uZWQgZmlsZXM6CgppZ3QkIC4vc2Ny
aXB0cy9nZW5lcmF0ZV9jbGVhcl9rZXJuZWwuc2ggLWcgaXZiIFwKICAgICAtbSB+L21lc2EvYnVp
bGQvc3JjL2ludGVsL3Rvb2xzL2k5NjVfYXNtCk91dHB1dCBmaWxlIG5vdCBzcGVjaWZpZWQgLSB1
c2luZyBkZWZhdWx0IGZpbGUgIml2Yi1jYl9hc3NlbWJsZWQiCgpHZW5lcmF0aW5nIGdlbjcgQ0Ig
S2VybmVsIGFzc2VtYmxlZCBmaWxlICJpdmJfY2xlYXJfa2VybmVsLmMiCmZvciBpOTE1IGRyaXZl
ci4uLgoKaWd0JCBkaWZmIH4vaTkxNS9kcm0tdGlwL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2l2
Yl9jbGVhcl9rZXJuZWwuYyBcCiAgICAgaXZiX2NsZWFyX2tlcm5lbC5jCgo8ICAqIEdlbmVyYXRl
ZCBieTogSUdUIEdwdSBUb29scyBvbiBGcmkgMjEgRmViIDIwMjAgMDU6Mjk6MzIgQU0gVVRDCj4g
ICogR2VuZXJhdGVkIGJ5OiBJR1QgR3B1IFRvb2xzIG9uIE1vbiAwOCBKdW4gMjAyMCAxMDowMDo1
NCBBTSBQRFQKNjFjNjEKPCB9Owo+IH07ClwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQoKaWd0
JCAuL3NjcmlwdHMvZ2VuZXJhdGVfY2xlYXJfa2VybmVsLnNoIC1nIGhzdyBcCiAgICAgLW0gfi9t
ZXNhL2J1aWxkL3NyYy9pbnRlbC90b29scy9pOTY1X2FzbQpPdXRwdXQgZmlsZSBub3Qgc3BlY2lm
aWVkIC0gdXNpbmcgZGVmYXVsdCBmaWxlICJoc3ctY2JfYXNzZW1ibGVkIgoKR2VuZXJhdGluZyBn
ZW43LjUgQ0IgS2VybmVsIGFzc2VtYmxlZCBmaWxlICJoc3dfY2xlYXJfa2VybmVsLmMiCmZvciBp
OTE1IGRyaXZlci4uLgoKaWd0JCBkaWZmIH4vaTkxNS9kcm0tdGlwL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2hzd19jbGVhcl9rZXJuZWwuYyBcCiAgICAgaHN3X2NsZWFyX2tlcm5lbC5jCjVjNQo8
ICAqIEdlbmVyYXRlZCBieTogSUdUIEdwdSBUb29scyBvbiBGcmkgMjEgRmViIDIwMjAgMDU6MzA6
MTMgQU0gVVRDCj4gICogR2VuZXJhdGVkIGJ5OiBJR1QgR3B1IFRvb2xzIG9uIE1vbiAwOCBKdW4g
MjAyMCAxMDowMTo0MiBBTSBQRFQKNjFjNjEKPCB9Owo+IH07ClwgTm8gbmV3bGluZSBhdCBlbmQg
b2YgZmlsZQoKVXNlZCBJR1QgYW5kIE1lc2EgbWFzdGVyIHJlcG9zaXRvcmllcyBmcm9tIEZyaSBK
dW4gNSAyMDIwKQpJR1Q6IDUzZThjODc4YTZmYiAoInRlc3RzL2ttc19jaGFtZWxpdW06IEZvcmNl
IHJlcHJvYmUgYWZ0ZXIgcmVwbHVnZ2luZwogICAgIHRoZSBjb25uZWN0b3IiKQpNZXNhOiA1ZDEz
Yzc0NzdlYjEgKCJyYWR2OiBzZXQga2VlcF9zdGF0aXN0aWNfaW5mbyB3aXRoCiAgICAgIFJBRFZf
REVCVUc9c2hhZGVyc3RhdHMiKQpNZXNhIGJ1aWx0IHdpdGg6IG1lc29uIGJ1aWxkIC1EIHBsYXRm
b3Jtcz1kcm0seDExIC1EIGRyaS1kcml2ZXJzPWk5NjUgXAogICAgICAgICAgICAgICAgIC1EIGdh
bGxpdW0tZHJpdmVycz1pcmlzIC1EIHByZWZpeD0vdXNyIFwKCQkgLUQgbGliZGlyPS91c3IvbGli
NjQvIC1EdG9vbHM9aW50ZWwgXAoJCSAtRGt1bGthbi1kcml2ZXJzPWludGVsICYmIG5pbmphIC1D
IGJ1aWxkCgp2MjogSGVhZGVyIGNsZWFuLXVwIGFuZCBpbmNsdWRlIGJ1aWxkIGluc3RydWN0aW9u
cyBpbiBhIHJlYWRtZSAoQ2hyaXMpCiAgICBNb2RpZmllZCBjb21taXQgbWVzc2FnZSB0byByZXNw
ZWN0IGNoZWNrLXBhdGNoCgpSZWZlcmVuY2U6IGh0dHA6Ly93d3cuZnNmbGEub3JnL3BpcGVybWFp
bC9saW51eC1saWJyZS8yMDIwLUp1bmUvMDAzMzc0Lmh0bWwKUmVmZXJlbmNlOiBodHRwOi8vd3d3
LmZzZmxhLm9yZy9waXBlcm1haWwvbGludXgtbGlicmUvMjAyMC1KdW5lLzAwMzM3NS5odG1sCkZp
eGVzOiA0N2Y4MjUzZDJiODkgKCJkcm0vaTkxNS9nZW43OiBDbGVhciBhbGwgRVUvTDMgcmVzaWR1
YWwgY29udGV4dHMiKQpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjUuNysKQ2M6IEFs
ZXhhbmRyZSBPbGl2YSA8bHhvbGl2YUBmc2ZsYS5vcmc+CkNjOiBQcmF0aGFwIEt1bWFyIFZhbHNh
biA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPgpDYzogQWtlZW0gRyBBYm9kdW5yaW4g
PGFrZWVtLmcuYWJvZHVucmluQGludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2hhZGVycy9SRUFETUUgICAgICAgIHwgIDQ2ICsrKysrKysKIC4uLi9k
cm0vaTkxNS9ndC9zaGFkZXJzL2NsZWFyX2tlcm5lbC9oc3cuYXNtICB8IDExOSArKysrKysrKysr
KysrKysrKysKIC4uLi9kcm0vaTkxNS9ndC9zaGFkZXJzL2NsZWFyX2tlcm5lbC9pdmIuYXNtICB8
IDExNyArKysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAyODIgaW5zZXJ0aW9ucygr
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NoYWRlcnMvUkVB
RE1FCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2hhZGVycy9j
bGVhcl9rZXJuZWwvaHN3LmFzbQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NoYWRlcnMvY2xlYXJfa2VybmVsL2l2Yi5hc20KCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zaGFkZXJzL1JFQURNRSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NoYWRlcnMvUkVBRE1FCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4u
ZTdlOTZkNzA3M2M3Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2hhZGVycy9SRUFETUUKQEAgLTAsMCArMSw0NiBAQAorQVNNIHNvdXJjZXMgZm9yIGF1dG8gZ2Vu
ZXJhdGVkIHNoYWRlcnMKKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CisK
K1RoZSBpOTE1L2d0L2hzd19jbGVhcl9rZXJuZWwuYyBhbmQgaTkxNS9ndC9pdmJfY2xlYXJfa2Vy
bmVsLmMgZmlsZXMgY29udGFpbgorcHJlLWNvbXBpbGVkIGJhdGNoIGNodW5rcyB0aGF0IHdpbGwg
Y2xlYXIgYW55IHJlc2lkdWFsIHJlbmRlciBjYWNoZSBkdXJpbmcKK2NvbnRleHQgc3dpdGNoLgor
CitUaGV5IGFyZSBnZW5lcmF0ZWQgZnJvbSB0aGVpciByZXNwZWN0aXZlIHBsYXRmb3JtIEFTTSBm
aWxlcyBwcmVzZW50IG9uCitpOTE1L2d0L3NoYWRlcnMvY2xlYXJfa2VybmVsIGRpcmVjdG9yeS4K
KworVGhlIGdlbmVyYXRlZCAuYyBmaWxlcyBzaG91bGQgbmV2ZXIgYmUgbW9kaWZpZWQgZGlyZWN0
bHkuIEluc3RlYWQsIGFueSBtb2RpZmljYXRpb24KK25lZWRzIHRvIGJlIGRvbmUgb24gdGhlIG9u
IHRoZWlyIHJlc3BlY3RpdmUgQVNNIGZpbGVzIGFuZCBidWlsZCBpbnN0cnVjdGlvbnMgYmVsb3cK
K25lZWRlcyB0byBiZSBmb2xsb3dlZC4KKworQnVpbGRpbmcKKz09PT09PT09CisKK0Vudmlyb25t
ZW50CistLS0tLS0tLS0tLQorCitJR1QgR1BVIHRvb2wgc2NyaXB0cyBhbmQgdGhlIE1lc2EncyBp
OTY1IGluc3RydWN0aW9uIGFzc2VtYmxlciB0b29sIGFyZSB1c2VkCitvbiBidWlsZGluZy4KKwor
UGxlYXNlIG1ha2Ugc3VyZSB5b3VyIE1lc2EgdG9vbCBpcyBjb21waWxlZCB3aXRoICItRHRvb2xz
PWludGVsIiBhbmQKKyItRGRyaS1kcml2ZXJzPWk5NjUiLCBhbmQgcnVuIHRoaXMgc2NyaXB0IGZy
b20gSUdUIHNvdXJjZSByb290IGRpcmVjdG9yeSIKKworVGhlIGluc3RydWN0aW9ucyBiZWxsb3cg
YXNzdW1lOgorICAgICogIElHVCBncHUgdG9vbHMgc291cmNlIGNvZGUgaXMgbG9jYXRlZCBvbiB5
b3VyIGhvbWUgZGlyZWN0b3J5ICh+KSBhcyB+L2lndAorICAgICogIE1lc2Egc291cmNlIGNvZGUg
aXMgbG9jYXRlZCBvbiB5b3VyIGhvbWUgZGlyZWN0b3J5ICh+KSBhcyB+L21lc2EKKyAgICAgICBh
bmQgYnVpbHQgdW5kZXIgdGhlIH4vbWVzYS9idWlsZCBkaXJlY3RvcnkKKyAgICAqICBMaW51eCBr
ZXJuZWwgc291cmNlIGNvZGUgaXMgdW5kZXIgeW91ciBob21lIGRpcmVjdG9yeSAofikgYXMgfi9s
aW51eAorCitJbnN0cnVjdGlvbnMKKy0tLS0tLS0tLS0tLQorCit+ICQgY3Agfi9saW51eC9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zaGFkZXJzL2NsZWFyX2tlcm5lbC9pdmIuYXNtIFwKKyAgICAg
ICB+L2lndC9saWIvaTkxNS9zaGFkZXJzL2NsZWFyX2tlcm5lbC9pdmIuYXNtCit+ICQgY2Qgfi9p
Z3QKK2lndCAkIC4vc2NyaXB0cy9nZW5lcmF0ZV9jbGVhcl9rZXJuZWwuc2ggLWcgaXZiIFwKKyAg
ICAgIC1tIH4vbWVzYS9idWlsZC9zcmMvaW50ZWwvdG9vbHMvaTk2NV9hc20KKworfiAkIGNwIH4v
bGludXgvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2hhZGVycy9jbGVhcl9rZXJuZWwvaHN3LmFz
bSBcCisgICAgfi9pZ3QvbGliL2k5MTUvc2hhZGVycy9jbGVhcl9rZXJuZWwvaHN3LmFzbQorfiAk
IGNkIH4vaWd0CitpZ3QgJCAuL3NjcmlwdHMvZ2VuZXJhdGVfY2xlYXJfa2VybmVsLnNoIC1nIGhz
dyBcCisgICAgICAtbSB+L21lc2EvYnVpbGQvc3JjL2ludGVsL3Rvb2xzL2k5NjVfYXNtClwgTm8g
bmV3bGluZSBhdCBlbmQgb2YgZmlsZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2hhZGVycy9jbGVhcl9rZXJuZWwvaHN3LmFzbSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NoYWRlcnMvY2xlYXJfa2VybmVsL2hzdy5hc20KbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwLi41ZmRmMzg0YmI2MjEKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zaGFkZXJzL2NsZWFyX2tlcm5lbC9oc3cuYXNtCkBAIC0wLDAgKzEsMTE5
IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0IMKp
IDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisvKgorICogS2VybmVsIGZvciBQQVZQIGJ1
ZmZlciBjbGVhci4KKyAqCisgKgkxLiBDbGVhciBhbGwgNjQgR1JGIHJlZ2lzdGVycyBhc3NpZ25l
ZCB0byB0aGUga2VybmVsIHdpdGggZGVzaWduYXRlZCB2YWx1ZTsKKyAqCTIuIFdyaXRlIDMyeDE2
IGJsb2NrIG9mIGFsbCAiMCIgdG8gcmVuZGVyIHRhcmdldCBidWZmZXIgd2hpY2ggaW5kaXJlY3Rs
eSBjbGVhcnMKKyAqCSAgIDUxMiBieXRlcyBvZiBSZW5kZXIgQ2FjaGUuCisgKi8KKworLyogU3Rv
cmUgZGVzaWduYXRlZCAiY2xlYXIgR1JGIiB2YWx1ZSAqLworbW92KDEpICAgICAgICAgIGYwLjE8
MT5VVyAgICAgICBnMS4yPDAsMSwwPlVXICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFOIH07
CisKKy8qKgorICogQ3VyYmUgRm9ybWF0CisgKgorICogRFcgMS4wIC0gQmxvY2sgT2Zmc2V0IHRv
IHdyaXRlIFJlbmRlciBDYWNoZQorICogRFcgMS4xIFsxNTowXSAtIENsZWFyIFdvcmQKKyAqIERX
IDEuMiAtIERlbGF5IGl0ZXJhdGlvbnMKKyAqIERXIDEuMyAtIEVuYWJsZSBJbnN0cnVtZW50YXRp
b24gKG9ubHkgZm9yIGRlYnVnKQorICogRFcgMS40IC0gUnN2ZCAoaW50ZW5kZWQgZm9yIGNvbnRl
eHQgSUQpCisgKiBEVyAxLjUgLSBbMzE6MTZdOlNsaWNlQ291bnQsIFsxNTowXTpTdWJTbGljZVBl
clNsaWNlQ291bnQKKyAqIERXIDEuNiAtIFJzdmQgTUJaIChpbnRlbmRlZCBmb3IgRW5hYmxlIFdh
aXQgb24gVG90YWwgVGhyZWFkIENvdW50KQorICogRFcgMS43IC0gUnN2ZCBNQlogKGludGVkZWQg
Zm9yIFRvdGFsIFRocmVhZCBDb3VudCkKKyAqCisgKiBCaW5kaW5nIFRhYmxlCisgKgorICogQlRJ
IDA6IDJEIFN1cmZhY2UgdG8gaGVscCBjbGVhciBMMyAoUmVuZGVyL0RhdGEgQ2FjaGUpCisgKiBC
VEkgMTogV2FpdC9JbnN0cnVtZW50YXRpb24gQnVmZmVyCisgKiAgU2l6ZSA6IChTbGljZUNvdW50
ICogU3ViU2xpY2VDb3VudCAgKiAxNiBFVXMvU3ViU2xpY2UpIHJvd3MgKiAoMTYgdGhyZWFkcy9F
VSkgY29scyAoRm9ybWF0IFIzMl9VSU5UKQorICogICAgICAgICBFeHBlY3RlZCB0byBiZSBpbml0
aWFsaXplZCB0byAwIGJ5IGRyaXZlci9hbm90aGVyIGtlcm5lbAorICogIExheW91dDoKKyAqICAg
ICAgICAgIFJvd046IEhpc3RvZ3JhbSBmb3IgRVUtTjogKFNsaWNlSUQqU3ViU2xpY2VQZXJTbGlj
ZUNvdW50ICsgU1NJRCkqMTYgKyBFVUlEIFthc3N1bWUgbWF4IDE2IEVVcyAvIFNTXQorICogICAg
ICAgICAgQ29sLWtbRFcta106IFRocmVhZHMgRXhlY3V0ZWQgb24gVGhyZWFkSUQtayBmb3IgRVUt
TgorICovCithZGQoMSkgICAgICAgICAgZzEuMjwxPlVEICAgICAgIGcxLjI8MCwxLDA+VUQgICAw
eDAwMDAwMDAxVUQgICAgeyBhbGlnbjEgMU4gfTsgLyogTG9vcCBjb3VudCB0byBkZWxheSBrZXJu
ZWw6IEluaXQgdG8gKGcxLjIgKyAxKSAqLworY21wLnouZjAuMCgxKSAgIG51bGw8MT5VRCAgICAg
ICBnMS4zPDAsMSwwPlVEICAgMHgwMDAwMDAwMFVEICAgIHsgYWxpZ24xIDFOIH07CisoK2YwLjAp
IGptcGkoMSkgMzUyRCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
eyBhbGlnbjEgV0VfYWxsIDFOIH07CisKKy8qKgorICogU3RhdGUgUmVnaXN0ZXIgaGFzIGluZm8g
b24gd2hlcmUgdGhpcyB0aHJlYWQgaXMgcnVubmluZworICoJSVZCOiBzcjAuMCA6OiBbMTU6MTNd
OiBNQlosIDEyOiBIU0lEIChIYWxmLVNsaWNlIElEKSwgWzExOjhdRVVJRCwgWzI6MF0gVGhyZWFk
U2xvdElECisgKglIU1c6IHNyMC4wIDo6IDE1OiBNQlosIFsxNDoxM106IFNsaWNlSUQsIDEyOiBI
U0lEIChIYWxmLVNsaWNlIElEKSwgWzExOjhdRVVJRCwgWzI6MF0gVGhyZWFkU2xvdElECisgKi8K
K21vdig4KSAgICAgICAgICBnMzwxPlVEICAgICAgICAgMHgwMDAwMDAwMFVEICAgICAgICAgICAg
ICAgICAgICB7IGFsaWduMSAxUSB9Oworc2hyKDEpICAgICAgICAgIGczPDE+RCAgICAgICAgICBz
cjA8MCwxLDA+RCAgICAgMTJEICAgICAgICAgICAgIHsgYWxpZ24xIDFOIH07CithbmQoMSkgICAg
ICAgICAgZzM8MT5EICAgICAgICAgIGczPDAsMSwwPkQgICAgICAxRCAgICAgICAgICAgICAgeyBh
bGlnbjEgMU4gfTsgLyogZzMgaGFzIEhTSUQgKi8KK3NocigxKSAgICAgICAgICBnMy4xPDE+RCAg
ICAgICAgc3IwPDAsMSwwPkQgICAgIDEzRCAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OworYW5k
KDEpICAgICAgICAgIGczLjE8MT5EICAgICAgICBnMy4xPDAsMSwwPkQgICAgM0QgICAgICAgICAg
ICAgIHsgYWxpZ24xIDFOIH07IC8qIGczLjEgaGFzIHNsaWNlSUQgKi8KK211bCgxKSAgICAgICAg
ICBnMy41PDE+RCAgICAgICAgZzMuMTwwLDEsMD5EICAgIGcxLjEwPDAsMSwwPlVXICB7IGFsaWdu
MSAxTiB9OworYWRkKDEpICAgICAgICAgIGczPDE+RCAgICAgICAgICBnMzwwLDEsMD5EICAgICAg
ZzMuNTwwLDEsMD5EICAgIHsgYWxpZ24xIDFOIH07IC8qIGczID0gc2xpY2VJRCAqIFN1YlNsaWNl
UGVyU2xpY2VDb3VudCArIEhTSUQgKi8KK3NocigxKSAgICAgICAgICBnMy4yPDE+RCAgICAgICAg
c3IwPDAsMSwwPkQgICAgIDhEICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OworYW5kKDEpICAg
ICAgICAgIGczLjI8MT5EICAgICAgICBnMy4yPDAsMSwwPkQgICAgMTVEICAgICAgICAgICAgIHsg
YWxpZ24xIDFOIH07IC8qIGczLjIgPSBFVUlEICovCittdWwoMSkgICAgICAgICAgZzMuNDwxPkQg
ICAgICAgIGczPDAsMSwwPkQgICAgICAxNkQgICAgICAgICAgICAgeyBhbGlnbjEgMU4gfTsKK2Fk
ZCgxKSAgICAgICAgICBnMy4yPDE+RCAgICAgICAgZzMuMjwwLDEsMD5EICAgIGczLjQ8MCwxLDA+
RCAgICB7IGFsaWduMSAxTiB9OyAvKiBnMy4yIG5vdyBwb2ludHMgdG8gRVUgcm93IG51bWJlciAo
WS1waXhlbCA9IFYgYWRkcmVzcyApICBpbiBpbnN0cnVtZW50YXRpb24gc3VyZiAqLworCittb3Yo
OCkgICAgICAgICAgZzU8MT5VRCAgICAgICAgIDB4MDAwMDAwMDBVRCAgICAgICAgICAgICAgICAg
ICAgeyBhbGlnbjEgMVEgfTsKK2FuZCgxKSAgICAgICAgICBnMy4zPDE+RCAgICAgICAgc3IwPDAs
MSwwPkQgICAgIDdEICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OworbXVsKDEpICAgICAgICAg
IGczLjM8MT5EICAgICAgICBnMy4zPDAsMSwwPkQgICAgNEQgICAgICAgICAgICAgIHsgYWxpZ24x
IDFOIH07CisKK21vdig4KSAgICAgICAgICBnNDwxPlVEICAgICAgICAgZzA8OCw4LDE+VUQgICAg
ICAgICAgICAgICAgICAgICB7IGFsaWduMSAxUSB9OyAvKiBJbml0aWFsaXplIG1lc3NhZ2UgaGVh
ZGVyIHdpdGggZzAgKi8KK21vdigxKSAgICAgICAgICBnNDwxPlVEICAgICAgICAgZzMuMzwwLDEs
MD5VRCAgICAgICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OyAvKiBCbG9jayBvZmZzZXQgKi8K
K21vdigxKSAgICAgICAgICBnNC4xPDE+VUQgICAgICAgZzMuMjwwLDEsMD5VRCAgICAgICAgICAg
ICAgICAgICB7IGFsaWduMSAxTiB9OyAvKiBCbG9jayBvZmZzZXQgKi8KK21vdigxKSAgICAgICAg
ICBnNC4yPDE+VUQgICAgICAgMHgwMDAwMDAwM1VEICAgICAgICAgICAgICAgICAgICB7IGFsaWdu
MSAxTiB9OyAvKiBCbG9jayBzaXplICgxIHJvdyB4IDQgYnl0ZXMpICovCithbmQoMSkgICAgICAg
ICAgZzQuMzwxPlVEICAgICAgIGc0LjM8MCwxLDA+VVcgICAweGZmZmZmZmZmVUQgICAgeyBhbGln
bjEgMU4gfTsKKworLyogTWVkaWEgYmxvY2sgcmVhZCB0byBmZXRjaCBjdXJyZW50IHZhbHVlIGF0
IHNwZWNpZmllZCBsb2NhdGlvbiBpbiBpbnN0cnVtZW50YXRpb24gYnVmZmVyICovCitzZW5kYyg4
KSAgICAgICAgZzU8MT5VRCAgICAgICAgIGc0PDgsOCwxPkYgICAgICAweDAyMTkwMDAxCisKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZW5kZXIgTXNnRGVzYzogbWVkaWEgYmxvY2sgcmVh
ZCBNc2dDdHJsID0gMHgwIFN1cmZhY2UgPSAxIG1sZW4gMSBybGVuIDEgeyBhbGlnbjEgMVEgfTsK
K2FkZCgxKSAgICAgICAgICBnNTwxPkQgICAgICAgICAgZzU8MCwxLDA+RCAgICAgIDFEICAgICAg
ICAgICAgICB7IGFsaWduMSAxTiB9OworCisvKiBNZWRpYSBibG9jayB3cml0ZSBmb3IgdXBkYXRl
ZCB2YWx1ZSBhdCBzcGVjaWZpZWQgbG9jYXRpb24gaW4gaW5zdHJ1bWVudGF0aW9uIGJ1ZmZlciAq
Lworc2VuZGMoOCkgICAgICAgIGc1PDE+VUQgICAgICAgICBnNDw4LDgsMT5GICAgICAgMHgwNDBh
ODAwMQorICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbmRlciBNc2dEZXNjOiBtZWRpYSBi
bG9jayB3cml0ZSBNc2dDdHJsID0gMHgwIFN1cmZhY2UgPSAxIG1sZW4gMiBybGVuIDAgeyBhbGln
bjEgMVEgfTsKKworLyogRGVsYXkgdGhyZWFkIGZvciBzcGVjaWZpZWQgcGFyYW1ldGVyICovCith
ZGQubnouZjAuMCgxKSAgZzEuMjwxPlVEICAgICAgIGcxLjI8MCwxLDA+VUQgICAtMUQgICAgICAg
ICAgICAgeyBhbGlnbjEgMU4gfTsKKygrZjAuMCkgam1waSgxKSAtMzJEICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7IGFsaWduMSBXRV9hbGwgMU4gfTsKKworLyog
U3RvcmUgZGVzaWduYXRlZCAiY2xlYXIgR1JGIiB2YWx1ZSAqLworbW92KDEpICAgICAgICAgIGYw
LjE8MT5VVyAgICAgICBnMS4yPDAsMSwwPlVXICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFO
IH07CisKKy8qIEluaXRpYWxpemUgbG9vcGluZyBwYXJhbWV0ZXJzICovCittb3YoMSkgICAgICAg
ICAgYTA8MT5EICAgICAgICAgIDBEICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeyBhbGln
bjEgMU4gfTsgLyogSW5pdGlhbGl6ZSBhMC4wOnc9MCAqLworbW92KDEpICAgICAgICAgIGEwLjQ8
MT5XICAgICAgICAxMjdXICAgICAgICAgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFOIH07
IC8qIExvb3AgY291bnQuIEVhY2ggbG9vcCBjb250YWlucyAxNiBHUkYncyAqLworCisvKiBXcml0
ZSAzMngxNiBhbGwgIjAiIGJsb2NrICovCittb3YoOCkgICAgICAgICAgZzI8MT5VRCAgICAgICAg
IGcwPDgsOCwxPlVEICAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgMVEgfTsKK21vdig4KSAg
ICAgICAgICBnMTI3PDE+VUQgICAgICAgZzA8OCw4LDE+VUQgICAgICAgICAgICAgICAgICAgICB7
IGFsaWduMSAxUSB9OworbW92KDIpICAgICAgICAgIGcyPDE+VUQgICAgICAgICBnMTwyLDIsMT5V
VyAgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFOIH07Cittb3YoMSkgICAgICAgICAgZzIu
MjwxPlVEICAgICAgIDB4MDAwZjAwMGZVRCAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgMU4g
fTsgLyogQmxvY2sgc2l6ZSAoMTZ4MTYpICovCithbmQoMSkgICAgICAgICAgZzIuMzwxPlVEICAg
ICAgIGcyLjM8MCwxLDA+VVcgICAweGZmZmZmZmVmVUQgICAgeyBhbGlnbjEgMU4gfTsKK21vdigx
NikgICAgICAgICBnMzwxPlVEICAgICAgICAgMHgwMDAwMDAwMFVEICAgICAgICAgICAgICAgICAg
ICB7IGFsaWduMSAxSCB9OworbW92KDE2KSAgICAgICAgIGc0PDE+VUQgICAgICAgICAweDAwMDAw
MDAwVUQgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFIIH07Cittb3YoMTYpICAgICAgICAg
ZzU8MT5VRCAgICAgICAgIDB4MDAwMDAwMDBVRCAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEg
MUggfTsKK21vdigxNikgICAgICAgICBnNjwxPlVEICAgICAgICAgMHgwMDAwMDAwMFVEICAgICAg
ICAgICAgICAgICAgICB7IGFsaWduMSAxSCB9OworbW92KDE2KSAgICAgICAgIGc3PDE+VUQgICAg
ICAgICAweDAwMDAwMDAwVUQgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFIIH07Cittb3Yo
MTYpICAgICAgICAgZzg8MT5VRCAgICAgICAgIDB4MDAwMDAwMDBVRCAgICAgICAgICAgICAgICAg
ICAgeyBhbGlnbjEgMUggfTsKK21vdigxNikgICAgICAgICBnOTwxPlVEICAgICAgICAgMHgwMDAw
MDAwMFVEICAgICAgICAgICAgICAgICAgICB7IGFsaWduMSAxSCB9OworbW92KDE2KSAgICAgICAg
IGcxMDwxPlVEICAgICAgICAweDAwMDAwMDAwVUQgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24x
IDFIIH07CitzZW5kYyg4KSAgICAgICAgbnVsbDwxPlVEICAgICAgIGcyPDgsOCwxPkYgICAgICAw
eDEyMGE4MDAwCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVuZGVyIE1zZ0Rlc2M6IG1l
ZGlhIGJsb2NrIHdyaXRlIE1zZ0N0cmwgPSAweDAgU3VyZmFjZSA9IDAgbWxlbiA5IHJsZW4gMCB7
IGFsaWduMSAxUSB9OworYWRkKDEpICAgICAgICAgIGcyPDE+VUQgICAgICAgICBnMTwwLDEsMD5V
VyAgICAgMHgwMDEwVVcgICAgICAgIHsgYWxpZ24xIDFOIH07CitzZW5kYyg4KSAgICAgICAgbnVs
bDwxPlVEICAgICAgIGcyPDgsOCwxPkYgICAgICAweDEyMGE4MDAwCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVuZGVyIE1zZ0Rlc2M6IG1lZGlhIGJsb2NrIHdyaXRlIE1zZ0N0cmwgPSAw
eDAgU3VyZmFjZSA9IDAgbWxlbiA5IHJsZW4gMCB7IGFsaWduMSAxUSB9OworCisvKiBOb3csIGNs
ZWFyIGFsbCBHUkYgcmVnaXN0ZXJzICovCithZGQubnouZjAuMCgxKSAgYTAuNDwxPlcgICAgICAg
IGEwLjQ8MCwxLDA+VyAgICAtMVcgICAgICAgICAgICAgeyBhbGlnbjEgMU4gfTsKK21vdigxNikg
ICAgICAgICBnW2EwXTwxPlVXICAgICAgZjAuMTwwLDEsMD5VVyAgICAgICAgICAgICAgICAgICB7
IGFsaWduMSAxSCB9OworYWRkKDEpICAgICAgICAgIGEwPDE+RCAgICAgICAgICBhMDwwLDEsMD5E
ICAgICAgMzJEICAgICAgICAgICAgIHsgYWxpZ24xIDFOIH07CisoK2YwLjApIGptcGkoMSkgLTY0
RCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgV0Vf
YWxsIDFOIH07CisKKy8qIFRlcm1pbmFudGUgdGhlIHRocmVhZCAqLworc2VuZGMoOCkgICAgICAg
IG51bGw8MT5VRCAgICAgICBnMTI3PDgsOCwxPkYgICAgMHg4MjAwMDAxMAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHRocmVhZF9zcGF3bmVyIE1zZ0Rlc2M6IG1sZW4gMSBybGVuIDAgICAg
ICAgICAgIHsgYWxpZ24xIDFRIEVPVCB9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2hhZGVycy9jbGVhcl9rZXJuZWwvaXZiLmFzbSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NoYWRlcnMvY2xlYXJfa2VybmVsL2l2Yi5hc20KbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwMDAwLi45N2M3YWM5ZTM4NTQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zaGFkZXJzL2NsZWFyX2tlcm5lbC9pdmIuYXNtCkBAIC0wLDAgKzEs
MTE3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0
IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisvKgorICogS2VybmVsIGZvciBQQVZQ
IGJ1ZmZlciBjbGVhci4KKyAqCisgKgkxLiBDbGVhciBhbGwgNjQgR1JGIHJlZ2lzdGVycyBhc3Np
Z25lZCB0byB0aGUga2VybmVsIHdpdGggZGVzaWduYXRlZCB2YWx1ZTsKKyAqCTIuIFdyaXRlIDMy
eDE2IGJsb2NrIG9mIGFsbCAiMCIgdG8gcmVuZGVyIHRhcmdldCBidWZmZXIgd2hpY2ggaW5kaXJl
Y3RseSBjbGVhcnMKKyAqCSAgIDUxMiBieXRlcyBvZiBSZW5kZXIgQ2FjaGUuCisgKi8KKworLyog
U3RvcmUgZGVzaWduYXRlZCAiY2xlYXIgR1JGIiB2YWx1ZSAqLworbW92KDEpICAgICAgICAgIGYw
LjE8MT5VVyAgICAgICBnMS4yPDAsMSwwPlVXICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFO
IH07CisKKy8qKgorICogQ3VyYmUgRm9ybWF0CisgKgorICogRFcgMS4wIC0gQmxvY2sgT2Zmc2V0
IHRvIHdyaXRlIFJlbmRlciBDYWNoZQorICogRFcgMS4xIFsxNTowXSAtIENsZWFyIFdvcmQKKyAq
IERXIDEuMiAtIERlbGF5IGl0ZXJhdGlvbnMKKyAqIERXIDEuMyAtIEVuYWJsZSBJbnN0cnVtZW50
YXRpb24gKG9ubHkgZm9yIGRlYnVnKQorICogRFcgMS40IC0gUnN2ZCAoaW50ZW5kZWQgZm9yIGNv
bnRleHQgSUQpCisgKiBEVyAxLjUgLSBbMzE6MTZdOlNsaWNlQ291bnQsIFsxNTowXTpTdWJTbGlj
ZVBlclNsaWNlQ291bnQKKyAqIERXIDEuNiAtIFJzdmQgTUJaIChpbnRlbmRlZCBmb3IgRW5hYmxl
IFdhaXQgb24gVG90YWwgVGhyZWFkIENvdW50KQorICogRFcgMS43IC0gUnN2ZCBNQlogKGludGVk
ZWQgZm9yIFRvdGFsIFRocmVhZCBDb3VudCkKKyAqCisgKiBCaW5kaW5nIFRhYmxlCisgKgorICog
QlRJIDA6IDJEIFN1cmZhY2UgdG8gaGVscCBjbGVhciBMMyAoUmVuZGVyL0RhdGEgQ2FjaGUpCisg
KiBCVEkgMTogV2FpdC9JbnN0cnVtZW50YXRpb24gQnVmZmVyCisgKiAgU2l6ZSA6IChTbGljZUNv
dW50ICogU3ViU2xpY2VDb3VudCAgKiAxNiBFVXMvU3ViU2xpY2UpIHJvd3MgKiAoMTYgdGhyZWFk
cy9FVSkgY29scyAoRm9ybWF0IFIzMl9VSU5UKQorICogICAgICAgICBFeHBlY3RlZCB0byBiZSBp
bml0aWFsaXplZCB0byAwIGJ5IGRyaXZlci9hbm90aGVyIGtlcm5lbAorICogIExheW91dCA6Cisg
KiAgICAgICAgICAgUm93TjogSGlzdG9ncmFtIGZvciBFVS1OOiAoU2xpY2VJRCpTdWJTbGljZVBl
clNsaWNlQ291bnQgKyBTU0lEKSoxNiArIEVVSUQgW2Fzc3VtZSBtYXggMTYgRVVzIC8gU1NdCisg
KiAgICAgICAgICAgQ29sLWtbRFcta106IFRocmVhZHMgRXhlY3V0ZWQgb24gVGhyZWFkSUQtayBm
b3IgRVUtTgorICovCithZGQoMSkgICAgICAgICAgZzEuMjwxPlVEICAgICAgIGcxLjI8MCwxLDA+
VUQgICAweDAwMDAwMDAxVUQgICAgeyBhbGlnbjEgMU4gfTsgLyogTG9vcCBjb3VudCB0byBkZWxh
eSBrZXJuZWw6IEluaXQgdG8gKGcxLjIgKyAxKSAqLworY21wLnouZjAuMCgxKSAgIG51bGw8MT5V
RCAgICAgICBnMS4zPDAsMSwwPlVEICAgMHgwMDAwMDAwMFVEICAgIHsgYWxpZ24xIDFOIH07Ciso
K2YwLjApIGptcGkoMSkgNDREICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgeyBhbGlnbjEgV0VfYWxsIDFOIH07CisKKy8qKgorICogU3RhdGUgUmVnaXN0ZXIgaGFz
IGluZm8gb24gd2hlcmUgdGhpcyB0aHJlYWQgaXMgcnVubmluZworICoJSVZCOiBzcjAuMCA6OiBb
MTU6MTNdOiBNQlosIDEyOiBIU0lEIChIYWxmLVNsaWNlIElEKSwgWzExOjhdRVVJRCwgWzI6MF0g
VGhyZWFkU2xvdElECisgKglIU1c6IHNyMC4wIDo6IDE1OiBNQlosIFsxNDoxM106IFNsaWNlSUQs
IDEyOiBIU0lEIChIYWxmLVNsaWNlIElEKSwgWzExOjhdRVVJRCwgWzI6MF0gVGhyZWFkU2xvdElE
CisgKi8KK21vdig4KSAgICAgICAgICBnMzwxPlVEICAgICAgICAgMHgwMDAwMDAwMFVEICAgICAg
ICAgICAgICAgICAgICB7IGFsaWduMSAxUSB9Oworc2hyKDEpICAgICAgICAgIGczPDE+RCAgICAg
ICAgICBzcjA8MCwxLDA+RCAgICAgMTJEICAgICAgICAgICAgIHsgYWxpZ24xIDFOIH07CithbmQo
MSkgICAgICAgICAgZzM8MT5EICAgICAgICAgIGczPDAsMSwwPkQgICAgICAxRCAgICAgICAgICAg
ICAgeyBhbGlnbjEgMU4gfTsgLyogZzMgaGFzIEhTSUQgKi8KK3NocigxKSAgICAgICAgICBnMy4x
PDE+RCAgICAgICAgc3IwPDAsMSwwPkQgICAgIDEzRCAgICAgICAgICAgICB7IGFsaWduMSAxTiB9
OworYW5kKDEpICAgICAgICAgIGczLjE8MT5EICAgICAgICBnMy4xPDAsMSwwPkQgICAgM0QgICAg
ICAgICAgICAgIHsgYWxpZ24xIDFOIH07IC8qIGczLjEgaGFzIHNsaWNlSUQgKi8KK211bCgxKSAg
ICAgICAgICBnMy41PDE+RCAgICAgICAgZzMuMTwwLDEsMD5EICAgIGcxLjEwPDAsMSwwPlVXICB7
IGFsaWduMSAxTiB9OworYWRkKDEpICAgICAgICAgIGczPDE+RCAgICAgICAgICBnMzwwLDEsMD5E
ICAgICAgZzMuNTwwLDEsMD5EICAgIHsgYWxpZ24xIDFOIH07IC8qIGczID0gc2xpY2VJRCAqIFN1
YlNsaWNlUGVyU2xpY2VDb3VudCArIEhTSUQgKi8KK3NocigxKSAgICAgICAgICBnMy4yPDE+RCAg
ICAgICAgc3IwPDAsMSwwPkQgICAgIDhEICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OworYW5k
KDEpICAgICAgICAgIGczLjI8MT5EICAgICAgICBnMy4yPDAsMSwwPkQgICAgMTVEICAgICAgICAg
ICAgIHsgYWxpZ24xIDFOIH07IC8qIGczLjIgPSBFVUlEICovCittdWwoMSkgICAgICAgICAgZzMu
NDwxPkQgICAgICAgIGczPDAsMSwwPkQgICAgICAxNkQgICAgICAgICAgICAgeyBhbGlnbjEgMU4g
fTsKK2FkZCgxKSAgICAgICAgICBnMy4yPDE+RCAgICAgICAgZzMuMjwwLDEsMD5EICAgIGczLjQ8
MCwxLDA+RCAgICB7IGFsaWduMSAxTiB9OyAvKiBnMy4yIG5vdyBwb2ludHMgdG8gRVUgcm93IG51
bWJlciAoWS1waXhlbCA9IFYgYWRkcmVzcyApICBpbiBpbnN0cnVtZW50YXRpb24gc3VyZiAqLwor
Cittb3YoOCkgICAgICAgICAgZzU8MT5VRCAgICAgICAgIDB4MDAwMDAwMDBVRCAgICAgICAgICAg
ICAgICAgICAgeyBhbGlnbjEgMVEgfTsKK2FuZCgxKSAgICAgICAgICBnMy4zPDE+RCAgICAgICAg
c3IwPDAsMSwwPkQgICAgIDdEICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OworbXVsKDEpICAg
ICAgICAgIGczLjM8MT5EICAgICAgICBnMy4zPDAsMSwwPkQgICAgNEQgICAgICAgICAgICAgIHsg
YWxpZ24xIDFOIH07CisKK21vdig4KSAgICAgICAgICBnNDwxPlVEICAgICAgICAgZzA8OCw4LDE+
VUQgICAgICAgICAgICAgICAgICAgICB7IGFsaWduMSAxUSB9OyAvKiBJbml0aWFsaXplIG1lc3Nh
Z2UgaGVhZGVyIHdpdGggZzAgKi8KK21vdigxKSAgICAgICAgICBnNDwxPlVEICAgICAgICAgZzMu
MzwwLDEsMD5VRCAgICAgICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OyAvKiBCbG9jayBvZmZz
ZXQgKi8KK21vdigxKSAgICAgICAgICBnNC4xPDE+VUQgICAgICAgZzMuMjwwLDEsMD5VRCAgICAg
ICAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OyAvKiBCbG9jayBvZmZzZXQgKi8KK21vdigxKSAg
ICAgICAgICBnNC4yPDE+VUQgICAgICAgMHgwMDAwMDAwM1VEICAgICAgICAgICAgICAgICAgICB7
IGFsaWduMSAxTiB9OyAvKiBCbG9jayBzaXplICgxIHJvdyB4IDQgYnl0ZXMpICovCithbmQoMSkg
ICAgICAgICAgZzQuMzwxPlVEICAgICAgIGc0LjM8MCwxLDA+VVcgICAweGZmZmZmZmZmVUQgICAg
eyBhbGlnbjEgMU4gfTsKKworLyogTWVkaWEgYmxvY2sgcmVhZCB0byBmZXRjaCBjdXJyZW50IHZh
bHVlIGF0IHNwZWNpZmllZCBsb2NhdGlvbiBpbiBpbnN0cnVtZW50YXRpb24gYnVmZmVyICovCitz
ZW5kYyg4KSAgICAgICAgZzU8MT5VRCAgICAgICAgIGc0PDgsOCwxPkYgICAgICAweDAyMTkwMDAx
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVuZGVyIE1zZ0Rlc2M6IG1lZGlhIGJsb2Nr
IHJlYWQgTXNnQ3RybCA9IDB4MCBTdXJmYWNlID0gMSBtbGVuIDEgcmxlbiAxIHsgYWxpZ24xIDFR
IH07CithZGQoMSkgICAgICAgICAgZzU8MT5EICAgICAgICAgIGc1PDAsMSwwPkQgICAgICAxRCAg
ICAgICAgICAgICAgeyBhbGlnbjEgMU4gfTsKKworLyogTWVkaWEgYmxvY2sgd3JpdGUgZm9yIHVw
ZGF0ZWQgdmFsdWUgYXQgc3BlY2lmaWVkIGxvY2F0aW9uIGluIGluc3RydW1lbnRhdGlvbiBidWZm
ZXIgKi8KK3NlbmRjKDgpICAgICAgICBnNTwxPlVEICAgICAgICAgZzQ8OCw4LDE+RiAgICAgIDB4
MDQwYTgwMDEKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW5kZXIgTXNnRGVzYzogbWVk
aWEgYmxvY2sgd3JpdGUgTXNnQ3RybCA9IDB4MCBTdXJmYWNlID0gMSBtbGVuIDIgcmxlbiAwIHsg
YWxpZ24xIDFRIH07CisvKiBEZWxheSB0aHJlYWQgZm9yIHNwZWNpZmllZCBwYXJhbWV0ZXIgKi8K
K2FkZC5uei5mMC4wKDEpICBnMS4yPDE+VUQgICAgICAgZzEuMjwwLDEsMD5VRCAgIC0xRCAgICAg
ICAgICAgICB7IGFsaWduMSAxTiB9OworKCtmMC4wKSBqbXBpKDEpIC00RCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIFdFX2FsbCAxTiB9OworCisv
KiBTdG9yZSBkZXNpZ25hdGVkICJjbGVhciBHUkYiIHZhbHVlICovCittb3YoMSkgICAgICAgICAg
ZjAuMTwxPlVXICAgICAgIGcxLjI8MCwxLDA+VVcgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEg
MU4gfTsKKworLyogSW5pdGlhbGl6ZSBsb29waW5nIHBhcmFtZXRlcnMgKi8KK21vdigxKSAgICAg
ICAgICBhMDwxPkQgICAgICAgICAgMEQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7IGFs
aWduMSAxTiB9OyAvKiBJbml0aWFsaXplIGEwLjA6dz0wICovCittb3YoMSkgICAgICAgICAgYTAu
NDwxPlcgICAgICAgIDEyN1cgICAgICAgICAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgMU4g
fTsgLyogTG9vcCBjb3VudC4gRWFjaCBsb29wIGNvbnRhaW5zIDE2IEdSRidzICovCisKKy8qIFdy
aXRlIDMyeDE2IGFsbCAiMCIgYmxvY2sgKi8KK21vdig4KSAgICAgICAgICBnMjwxPlVEICAgICAg
ICAgZzA8OCw4LDE+VUQgICAgICAgICAgICAgICAgICAgICB7IGFsaWduMSAxUSB9OworbW92KDgp
ICAgICAgICAgIGcxMjc8MT5VRCAgICAgICBnMDw4LDgsMT5VRCAgICAgICAgICAgICAgICAgICAg
IHsgYWxpZ24xIDFRIH07Cittb3YoMikgICAgICAgICAgZzI8MT5VRCAgICAgICAgIGcxPDIsMiwx
PlVXICAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgMU4gfTsKK21vdigxKSAgICAgICAgICBn
Mi4yPDE+VUQgICAgICAgMHgwMDBmMDAwZlVEICAgICAgICAgICAgICAgICAgICB7IGFsaWduMSAx
TiB9OyAvKiBCbG9jayBzaXplICgxNngxNikgKi8KK2FuZCgxKSAgICAgICAgICBnMi4zPDE+VUQg
ICAgICAgZzIuMzwwLDEsMD5VVyAgIDB4ZmZmZmZmZWZVRCAgICB7IGFsaWduMSAxTiB9OworbW92
KDE2KSAgICAgICAgIGczPDE+VUQgICAgICAgICAweDAwMDAwMDAwVUQgICAgICAgICAgICAgICAg
ICAgIHsgYWxpZ24xIDFIIH07Cittb3YoMTYpICAgICAgICAgZzQ8MT5VRCAgICAgICAgIDB4MDAw
MDAwMDBVRCAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgMUggfTsKK21vdigxNikgICAgICAg
ICBnNTwxPlVEICAgICAgICAgMHgwMDAwMDAwMFVEICAgICAgICAgICAgICAgICAgICB7IGFsaWdu
MSAxSCB9OworbW92KDE2KSAgICAgICAgIGc2PDE+VUQgICAgICAgICAweDAwMDAwMDAwVUQgICAg
ICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFIIH07Cittb3YoMTYpICAgICAgICAgZzc8MT5VRCAg
ICAgICAgIDB4MDAwMDAwMDBVRCAgICAgICAgICAgICAgICAgICAgeyBhbGlnbjEgMUggfTsKK21v
digxNikgICAgICAgICBnODwxPlVEICAgICAgICAgMHgwMDAwMDAwMFVEICAgICAgICAgICAgICAg
ICAgICB7IGFsaWduMSAxSCB9OworbW92KDE2KSAgICAgICAgIGc5PDE+VUQgICAgICAgICAweDAw
MDAwMDAwVUQgICAgICAgICAgICAgICAgICAgIHsgYWxpZ24xIDFIIH07Cittb3YoMTYpICAgICAg
ICAgZzEwPDE+VUQgICAgICAgIDB4MDAwMDAwMDBVRCAgICAgICAgICAgICAgICAgICAgeyBhbGln
bjEgMUggfTsKK3NlbmRjKDgpICAgICAgICBudWxsPDE+VUQgICAgICAgZzI8OCw4LDE+RiAgICAg
IDB4MTIwYTgwMDAKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW5kZXIgTXNnRGVzYzog
bWVkaWEgYmxvY2sgd3JpdGUgTXNnQ3RybCA9IDB4MCBTdXJmYWNlID0gMCBtbGVuIDkgcmxlbiAw
IHsgYWxpZ24xIDFRIH07CithZGQoMSkgICAgICAgICAgZzI8MT5VRCAgICAgICAgIGcxPDAsMSww
PlVXICAgICAweDAwMTBVVyAgICAgICAgeyBhbGlnbjEgMU4gfTsKK3NlbmRjKDgpICAgICAgICBu
dWxsPDE+VUQgICAgICAgZzI8OCw4LDE+RiAgICAgIDB4MTIwYTgwMDAKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZW5kZXIgTXNnRGVzYzogbWVkaWEgYmxvY2sgd3JpdGUgTXNnQ3RybCA9
IDB4MCBTdXJmYWNlID0gMCBtbGVuIDkgcmxlbiAwIHsgYWxpZ24xIDFRIH07CisKKy8qIE5vdywg
Y2xlYXIgYWxsIEdSRiByZWdpc3RlcnMgKi8KK2FkZC5uei5mMC4wKDEpICBhMC40PDE+VyAgICAg
ICAgYTAuNDwwLDEsMD5XICAgIC0xVyAgICAgICAgICAgICB7IGFsaWduMSAxTiB9OworbW92KDE2
KSAgICAgICAgIGdbYTBdPDE+VVcgICAgICBmMC4xPDAsMSwwPlVXICAgICAgICAgICAgICAgICAg
IHsgYWxpZ24xIDFIIH07CithZGQoMSkgICAgICAgICAgYTA8MT5EICAgICAgICAgIGEwPDAsMSww
PkQgICAgICAzMkQgICAgICAgICAgICAgeyBhbGlnbjEgMU4gfTsKKygrZjAuMCkgam1waSgxKSAt
OEQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7IGFsaWduMSBX
RV9hbGwgMU4gfTsKKworLyogVGVybWluYW50ZSB0aGUgdGhyZWFkICovCitzZW5kYyg4KSAgICAg
ICAgbnVsbDwxPlVEICAgICAgIGcxMjc8OCw4LDE+RiAgICAweDgyMDAwMDEwCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdGhyZWFkX3NwYXduZXIgTXNnRGVzYzogbWxlbiAxIHJsZW4gMCAg
ICAgICAgICAgeyBhbGlnbjEgMVEgRU9UIH07Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
