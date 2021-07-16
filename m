Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC33CBD44
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDF56EA1F;
	Fri, 16 Jul 2021 19:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946356E9E5;
 Fri, 16 Jul 2021 19:59:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596744"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596744"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507239002"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:41 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:17:06 -0700
Message-Id: <20210716201724.54804-34-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/51] drm/i915/guc: Provide mmio list to be
 saved/restored on engine reset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KClRoZSBkcml2
ZXIgbXVzdCBwcm92aWRlIEd1QyB3aXRoIGEgbGlzdCBvZiBtbWlvIHJlZ2lzdGVycwp0aGF0IHNo
b3VsZCBiZSBzYXZlZC9yZXN0b3JlZCBkdXJpbmcgYSBHdUMtYmFzZWQgZW5naW5lIHJlc2V0LgpV
bmZvcnR1bmF0ZWx5LCB0aGUgbGlzdCBtdXN0IGJlIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBhcyBp
dHMgc2l6ZSBpcwp2YXJpYWJsZS4gVGhhdCBtZWFucyB0aGUgZHJpdmVyIG11c3QgZ2VuZXJhdGUg
dGhlIGxpc3QgdHdpY2UgLSBvbmNlIHRvCndvcmsgb3V0IHRoZSBzaXplIGFuZCBhIHNlY29uZCB0
aW1lIHRvIGFjdHVhbGx5IHNhdmUgaXQuCgp2MjoKIChBbGFuIC8gQ0kpCiAgLSBHRU43X0dUX01P
REUgLT4gR0VONl9HVF9NT0RFIHRvIGZpeCBXQSBzZWxmdGVzdCBmYWlsdXJlCgpTaWduZWQtb2Zm
LWJ5OiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBGZXJuYW5kbyBQYWNoZWNvIDxmZXJuYW5kby5wYWNoZWNvQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+CkNjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICAgfCAgNDYgKystLQogLi4uL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kc190eXBlcy5oIHwgICAxICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMgICAgfCAxOTkgKysrKysrKysrKysrKysrKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDEgKwog
NSBmaWxlcyBjaGFuZ2VkLCAyMjIgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggNzI1NjJjMjMz
YWQyLi4zNDczOGNjYWI4YmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwpAQCAtMTUwLDEzICsxNTAsMTQgQEAgc3RhdGljIHZvaWQgX3dhX2FkZChzdHJ1
Y3QgaTkxNV93YV9saXN0ICp3YWwsIGNvbnN0IHN0cnVjdCBpOTE1X3dhICp3YSkKIH0KIAogc3Rh
dGljIHZvaWQgd2FfYWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcs
Ci0JCSAgIHUzMiBjbGVhciwgdTMyIHNldCwgdTMyIHJlYWRfbWFzaykKKwkJICAgdTMyIGNsZWFy
LCB1MzIgc2V0LCB1MzIgcmVhZF9tYXNrLCBib29sIG1hc2tlZF9yZWcpCiB7CiAJc3RydWN0IGk5
MTVfd2Egd2EgPSB7CiAJCS5yZWcgID0gcmVnLAogCQkuY2xyICA9IGNsZWFyLAogCQkuc2V0ICA9
IHNldCwKIAkJLnJlYWQgPSByZWFkX21hc2ssCisJCS5tYXNrZWRfcmVnID0gbWFza2VkX3JlZywK
IAl9OwogCiAJX3dhX2FkZCh3YWwsICZ3YSk7CkBAIC0xNjUsNyArMTY2LDcgQEAgc3RhdGljIHZv
aWQgd2FfYWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsCiBzdGF0
aWMgdm9pZAogd2Ffd3JpdGVfY2xyX3NldChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVf
cmVnX3QgcmVnLCB1MzIgY2xlYXIsIHUzMiBzZXQpCiB7Ci0Jd2FfYWRkKHdhbCwgcmVnLCBjbGVh
ciwgc2V0LCBjbGVhcik7CisJd2FfYWRkKHdhbCwgcmVnLCBjbGVhciwgc2V0LCBjbGVhciwgZmFs
c2UpOwogfQogCiBzdGF0aWMgdm9pZApAQCAtMjAwLDIwICsyMDEsMjAgQEAgd2Ffd3JpdGVfY2xy
KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBjbHIpCiBzdGF0
aWMgdm9pZAogd2FfbWFza2VkX2VuKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdf
dCByZWcsIHUzMiB2YWwpCiB7Ci0Jd2FfYWRkKHdhbCwgcmVnLCAwLCBfTUFTS0VEX0JJVF9FTkFC
TEUodmFsKSwgdmFsKTsKKwl3YV9hZGQod2FsLCByZWcsIDAsIF9NQVNLRURfQklUX0VOQUJMRSh2
YWwpLCB2YWwsIHRydWUpOwogfQogCiBzdGF0aWMgdm9pZAogd2FfbWFza2VkX2RpcyhzdHJ1Y3Qg
aTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogewotCXdhX2FkZCh3
YWwsIHJlZywgMCwgX01BU0tFRF9CSVRfRElTQUJMRSh2YWwpLCB2YWwpOworCXdhX2FkZCh3YWws
IHJlZywgMCwgX01BU0tFRF9CSVRfRElTQUJMRSh2YWwpLCB2YWwsIHRydWUpOwogfQogCiBzdGF0
aWMgdm9pZAogd2FfbWFza2VkX2ZpZWxkX3NldChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5
MTVfcmVnX3QgcmVnLAogCQkgICAgdTMyIG1hc2ssIHUzMiB2YWwpCiB7Ci0Jd2FfYWRkKHdhbCwg
cmVnLCAwLCBfTUFTS0VEX0ZJRUxEKG1hc2ssIHZhbCksIG1hc2spOworCXdhX2FkZCh3YWwsIHJl
ZywgMCwgX01BU0tFRF9GSUVMRChtYXNrLCB2YWwpLCBtYXNrLCB0cnVlKTsKIH0KIAogc3RhdGlj
IHZvaWQgZ2VuNl9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCkBAIC01ODMsMTAgKzU4NCwxMCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91
bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJICAgICBHRU4xMV9C
TEVORF9FTUJfRklYX0RJU0FCTEVfSU5fUkNDKTsKIAogCS8qIFdhRW5hYmxlRmxvYXRCbGVuZE9w
dGltaXphdGlvbjppY2wgKi8KLQl3YV93cml0ZV9jbHJfc2V0KHdhbCwKLQkJCSBHRU4xMF9DQUNI
RV9NT0RFX1NTLAotCQkJIDAsIC8qIHdyaXRlLW9ubHksIHNvIHNraXAgdmFsaWRhdGlvbiAqLwot
CQkJIF9NQVNLRURfQklUX0VOQUJMRShGTE9BVF9CTEVORF9PUFRJTUlaQVRJT05fRU5BQkxFKSk7
CisJd2FfYWRkKHdhbCwgR0VOMTBfQ0FDSEVfTU9ERV9TUywgMCwKKwkgICAgICAgX01BU0tFRF9C
SVRfRU5BQkxFKEZMT0FUX0JMRU5EX09QVElNSVpBVElPTl9FTkFCTEUpLAorCSAgICAgICAwIC8q
IHdyaXRlLW9ubHksIHNvIHNraXAgdmFsaWRhdGlvbiAqLywKKwkgICAgICAgdHJ1ZSk7CiAKIAkv
KiBXYURpc2FibGVHUEdQVU1pZFRocmVhZFByZWVtcHRpb246aWNsICovCiAJd2FfbWFza2VkX2Zp
ZWxkX3NldCh3YWwsIEdFTjhfQ1NfQ0hJQ0tFTjEsCkBAIC02MzEsNyArNjMyLDcgQEAgc3RhdGlj
IHZvaWQgZ2VuMTJfY3R4X2d0X3R1bmluZ19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwKIAkgICAgICAgRkZfTU9ERTIsCiAJICAgICAgIEZGX01PREUyX1REU19USU1FUl9NQVNL
LAogCSAgICAgICBGRl9NT0RFMl9URFNfVElNRVJfMTI4LAotCSAgICAgICAwKTsKKwkgICAgICAg
MCwgZmFsc2UpOwogfQogCiBzdGF0aWMgdm9pZCBnZW4xMl9jdHhfd29ya2Fyb3VuZHNfaW5pdChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCkBAIC02NjksNyArNjcwLDcgQEAgc3RhdGlj
IHZvaWQgZ2VuMTJfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLAogCSAgICAgICBGRl9NT0RFMiwKIAkgICAgICAgRkZfTU9ERTJfR1NfVElNRVJfTUFT
SywKIAkgICAgICAgRkZfTU9ERTJfR1NfVElNRVJfMjI0LAotCSAgICAgICAwKTsKKwkgICAgICAg
MCwgZmFsc2UpOwogCiAJLyoKIAkgKiBXYV8xNDAxMjEzMTIyNzpkZzEKQEAgLTg0Nyw3ICs4NDgs
NyBAQCBoc3dfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCXdhX2FkZCh3YWwsCiAJICAgICAgIEhTV19S
T1dfQ0hJQ0tFTjMsIDAsCiAJICAgICAgIF9NQVNLRURfQklUX0VOQUJMRShIU1dfUk9XX0NISUNL
RU4zX0wzX0dMT0JBTF9BVE9NSUNTX0RJU0FCTEUpLAotCQkwIC8qIFhYWCBkb2VzIHRoaXMgcmVn
IGV4aXN0PyAqLyk7CisJICAgICAgIDAgLyogWFhYIGRvZXMgdGhpcyByZWcgZXhpc3Q/ICovLCB0
cnVlKTsKIAogCS8qIFdhVlNSZWZDb3VudEZ1bGxmb3JjZU1pc3NEaXNhYmxlOmhzdyAqLwogCXdh
X3dyaXRlX2Nscih3YWwsIEdFTjdfRkZfVEhSRUFEX01PREUsIEdFTjdfRkZfVlNfUkVGX0NOVF9G
Rk1FKTsKQEAgLTE5MzcsMTAgKzE5MzgsMTAgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkgKiBk
aXNhYmxlIGJpdCwgd2hpY2ggd2UgZG9uJ3QgdG91Y2ggaGVyZSwgYnV0IGl0J3MgZ29vZAogCQkg
KiB0byBrZWVwIGluIG1pbmQgKHNlZSAzRFNUQVRFX1BTIGFuZCAzRFNUQVRFX1dNKS4KIAkJICov
Ci0JCXdhX2FkZCh3YWwsIEdFTjdfR1RfTU9ERSwgMCwKLQkJICAgICAgIF9NQVNLRURfRklFTEQo
R0VONl9XSVpfSEFTSElOR19NQVNLLAotCQkJCSAgICAgR0VONl9XSVpfSEFTSElOR18xNng0KSwK
LQkJICAgICAgIEdFTjZfV0laX0hBU0hJTkdfMTZ4NCk7CisJCXdhX21hc2tlZF9maWVsZF9zZXQo
d2FsLAorCQkJCSAgICBHRU43X0dUX01PREUsCisJCQkJICAgIEdFTjZfV0laX0hBU0hJTkdfTUFT
SywKKwkJCQkgICAgR0VONl9XSVpfSEFTSElOR18xNng0KTsKIAl9CiAKIAlpZiAoSVNfR1JBUEhJ
Q1NfVkVSKGk5MTUsIDYsIDcpKQpAQCAtMTk5MCwxMCArMTk5MSwxMCBAQCByY3NfZW5naW5lX3dh
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3YWwpCiAJCSAqIGRpc2FibGUgYml0LCB3aGljaCB3ZSBkb24ndCB0b3VjaCBoZXJlLCBidXQg
aXQncyBnb29kCiAJCSAqIHRvIGtlZXAgaW4gbWluZCAoc2VlIDNEU1RBVEVfUFMgYW5kIDNEU1RB
VEVfV00pLgogCQkgKi8KLQkJd2FfYWRkKHdhbCwKLQkJICAgICAgIEdFTjZfR1RfTU9ERSwgMCwK
LQkJICAgICAgIF9NQVNLRURfRklFTEQoR0VONl9XSVpfSEFTSElOR19NQVNLLCBHRU42X1dJWl9I
QVNISU5HXzE2eDQpLAotCQkgICAgICAgR0VONl9XSVpfSEFTSElOR18xNng0KTsKKwkJd2FfbWFz
a2VkX2ZpZWxkX3NldCh3YWwsCisJCQkJICAgIEdFTjZfR1RfTU9ERSwKKwkJCQkgICAgR0VONl9X
SVpfSEFTSElOR19NQVNLLAorCQkJCSAgICBHRU42X1dJWl9IQVNISU5HXzE2eDQpOwogCiAJCS8q
IFdhRGlzYWJsZV9SZW5kZXJDYWNoZV9PcGVyYXRpb25hbEZsdXNoOnNuYiAqLwogCQl3YV9tYXNr
ZWRfZGlzKHdhbCwgQ0FDSEVfTU9ERV8wLCBSQ19PUF9GTFVTSF9FTkFCTEUpOwpAQCAtMjAxNCw3
ICsyMDE1LDcgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQl3YV9hZGQod2FsLCBNSV9NT0RFLAog
CQkgICAgICAgMCwgX01BU0tFRF9CSVRfRU5BQkxFKFZTX1RJTUVSX0RJU1BBVENIKSwKIAkJICAg
ICAgIC8qIFhYWCBiaXQgZG9lc24ndCBzdGljayBvbiBCcm9hZHdhdGVyICovCi0JCSAgICAgICBJ
U19JOTY1RyhpOTE1KSA/IDAgOiBWU19USU1FUl9ESVNQQVRDSCk7CisJCSAgICAgICBJU19JOTY1
RyhpOTE1KSA/IDAgOiBWU19USU1FUl9ESVNQQVRDSCwgdHJ1ZSk7CiAKIAlpZiAoR1JBUEhJQ1Nf
VkVSKGk5MTUpID09IDQpCiAJCS8qCkBAIC0yMDI5LDcgKzIwMzAsOCBAQCByY3NfZW5naW5lX3dh
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3YWwpCiAJCSAqLwogCQl3YV9hZGQod2FsLCBFQ09TS1BELAogCQkgICAgICAgMCwgX01BU0tF
RF9CSVRfRU5BQkxFKEVDT19DT05TVEFOVF9CVUZGRVJfU1JfRElTQUJMRSksCi0JCSAgICAgICAw
IC8qIFhYWCBiaXQgZG9lc24ndCBzdGljayBvbiBCcm9hZHdhdGVyICovKTsKKwkJICAgICAgIDAg
LyogWFhYIGJpdCBkb2Vzbid0IHN0aWNrIG9uIEJyb2Fkd2F0ZXIgKi8sCisJCSAgICAgICB0cnVl
KTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kc190eXBlcy5oCmluZGV4IGMyMTQxMTFlYTM2Ny4uMWU4NzM2ODE3OTVkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kc190eXBl
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzX3R5cGVz
LmgKQEAgLTE1LDYgKzE1LDcgQEAgc3RydWN0IGk5MTVfd2EgewogCXUzMgkJY2xyOwogCXUzMgkJ
c2V0OwogCXUzMgkJcmVhZDsKKwlib29sCQltYXNrZWRfcmVnOwogfTsKIAogc3RydWN0IGk5MTVf
d2FfbGlzdCB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oCmluZGV4IDdmMTRl
MTg3MzAxMC4uMzg5N2FiYjU5ZGJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWMuaApAQCAtNTksNiArNTksNyBAQCBzdHJ1Y3QgaW50ZWxfZ3VjIHsKIAogCXN0cnVjdCBpOTE1
X3ZtYSAqYWRzX3ZtYTsKIAlzdHJ1Y3QgX19ndWNfYWRzX2Jsb2IgKmFkc19ibG9iOworCXUzMiBh
ZHNfcmVnc2V0X3NpemU7CiAKIAlzdHJ1Y3QgaTkxNV92bWEgKmxyY19kZXNjX3Bvb2w7CiAJdm9p
ZCAqbHJjX2Rlc2NfcG9vbF92YWRkcjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19hZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19hZHMuYwppbmRleCBiODIxNDU2NTJkNTcuLjlmZDNjOTExZjVmYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Fkcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19hZHMuYwpAQCAtMyw2ICszLDggQEAKICAqIENv
cHlyaWdodCDCqSAyMDE0LTIwMTkgSW50ZWwgQ29ycG9yYXRpb24KICAqLwogCisjaW5jbHVkZSA8
bGludXgvYnNlYXJjaC5oPgorCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJn
dC9pbnRlbF9scmMuaCIKICNpbmNsdWRlICJpbnRlbF9ndWNfYWRzLmgiCkBAIC0yMyw3ICsyNSwx
MiBAQAogICogICAgICB8IGd1Y19wb2xpY2llcyAgICAgICAgICAgICAgICAgICAgICAgICAgfAog
ICogICAgICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwogICogICAg
ICB8IGd1Y19ndF9zeXN0ZW1faW5mbyAgICAgICAgICAgICAgICAgICAgfAotICogICAgICArLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICogICAgICArLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKyA8PT0gc3RhdGljCisgKiAgICAgIHwgZ3Vj
X21taW9fcmVnW2NvdW50QV0gKGVuZ2luZSAwLjApICAgICB8CisgKiAgICAgIHwgZ3VjX21taW9f
cmVnW2NvdW50Ql0gKGVuZ2luZSAwLjEpICAgICB8CisgKiAgICAgIHwgZ3VjX21taW9fcmVnW2Nv
dW50Q10gKGVuZ2luZSAxLjApICAgICB8CisgKiAgICAgIHwgICAuLi4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8CisgKiAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rIDw9PSBkeW5hbWljCiAgKiAgICAgIHwgcGFkZGluZyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8CiAgKiAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rIDw9PSA0SyBhbGlnbmVkCiAgKiAgICAgIHwgcHJpdmF0ZSBkYXRhICAgICAg
ICAgICAgICAgICAgICAgICAgICB8CkBAIC0zNSwxNiArNDIsMzMgQEAgc3RydWN0IF9fZ3VjX2Fk
c19ibG9iIHsKIAlzdHJ1Y3QgZ3VjX2FkcyBhZHM7CiAJc3RydWN0IGd1Y19wb2xpY2llcyBwb2xp
Y2llczsKIAlzdHJ1Y3QgZ3VjX2d0X3N5c3RlbV9pbmZvIHN5c3RlbV9pbmZvOworCS8qIEZyb20g
aGVyZSBvbiwgbG9jYXRpb24gaXMgZHluYW1pYyEgUmVmZXIgdG8gYWJvdmUgZGlhZ3JhbS4gKi8K
KwlzdHJ1Y3QgZ3VjX21taW9fcmVnIHJlZ3NldFswXTsKIH0gX19wYWNrZWQ7CiAKK3N0YXRpYyB1
MzIgZ3VjX2Fkc19yZWdzZXRfc2l6ZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCit7CisJR0VNX0JV
R19PTighZ3VjLT5hZHNfcmVnc2V0X3NpemUpOworCXJldHVybiBndWMtPmFkc19yZWdzZXRfc2l6
ZTsKK30KKwogc3RhdGljIHUzMiBndWNfYWRzX3ByaXZhdGVfZGF0YV9zaXplKHN0cnVjdCBpbnRl
bF9ndWMgKmd1YykKIHsKIAlyZXR1cm4gUEFHRV9BTElHTihndWMtPmZ3LnByaXZhdGVfZGF0YV9z
aXplKTsKIH0KIAorc3RhdGljIHUzMiBndWNfYWRzX3JlZ3NldF9vZmZzZXQoc3RydWN0IGludGVs
X2d1YyAqZ3VjKQoreworCXJldHVybiBvZmZzZXRvZihzdHJ1Y3QgX19ndWNfYWRzX2Jsb2IsIHJl
Z3NldCk7Cit9CisKIHN0YXRpYyB1MzIgZ3VjX2Fkc19wcml2YXRlX2RhdGFfb2Zmc2V0KHN0cnVj
dCBpbnRlbF9ndWMgKmd1YykKIHsKLQlyZXR1cm4gUEFHRV9BTElHTihzaXplb2Yoc3RydWN0IF9f
Z3VjX2Fkc19ibG9iKSk7CisJdTMyIG9mZnNldDsKKworCW9mZnNldCA9IGd1Y19hZHNfcmVnc2V0
X29mZnNldChndWMpICsKKwkJIGd1Y19hZHNfcmVnc2V0X3NpemUoZ3VjKTsKKwlyZXR1cm4gUEFH
RV9BTElHTihvZmZzZXQpOwogfQogCiBzdGF0aWMgdTMyIGd1Y19hZHNfYmxvYl9zaXplKHN0cnVj
dCBpbnRlbF9ndWMgKmd1YykKQEAgLTgzLDYgKzEwNywxNjUgQEAgc3RhdGljIHZvaWQgZ3VjX21h
cHBpbmdfdGFibGVfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogCX0KIH0KIAorLyoKKyAqIFRo
ZSBzYXZlL3Jlc3RvcmUgcmVnaXN0ZXIgbGlzdCBtdXN0IGJlIHByZS1jYWxjdWxhdGVkIHRvIGEg
dGVtcG9yYXJ5CisgKiBidWZmZXIgb2YgZHJpdmVyIGRlZmluZWQgc2l6ZSBiZWZvcmUgaXQgY2Fu
IGJlIGdlbmVyYXRlZCBpbiBwbGFjZQorICogaW5zaWRlIHRoZSBBRFMuCisgKi8KKyNkZWZpbmUg
TUFYX01NSU9fUkVHUwkxMjgJLyogQXJiaXRyYXJ5IHNpemUsIGluY3JlYXNlIGFzIG5lZWRlZCAq
Lworc3RydWN0IHRlbXBfcmVnc2V0IHsKKwlzdHJ1Y3QgZ3VjX21taW9fcmVnICpyZWdpc3RlcnM7
CisJdTMyIHVzZWQ7CisJdTMyIHNpemU7Cit9OworCitzdGF0aWMgaW50IGd1Y19tbWlvX3JlZ19j
bXAoY29uc3Qgdm9pZCAqYSwgY29uc3Qgdm9pZCAqYikKK3sKKwljb25zdCBzdHJ1Y3QgZ3VjX21t
aW9fcmVnICpyYSA9IGE7CisJY29uc3Qgc3RydWN0IGd1Y19tbWlvX3JlZyAqcmIgPSBiOworCisJ
cmV0dXJuIChpbnQpcmEtPm9mZnNldCAtIChpbnQpcmItPm9mZnNldDsKK30KKworc3RhdGljIHZv
aWQgZ3VjX21taW9fcmVnX2FkZChzdHJ1Y3QgdGVtcF9yZWdzZXQgKnJlZ3NldCwKKwkJCSAgICAg
dTMyIG9mZnNldCwgdTMyIGZsYWdzKQoreworCXUzMiBjb3VudCA9IHJlZ3NldC0+dXNlZDsKKwlz
dHJ1Y3QgZ3VjX21taW9fcmVnIHJlZyA9IHsKKwkJLm9mZnNldCA9IG9mZnNldCwKKwkJLmZsYWdz
ID0gZmxhZ3MsCisJfTsKKwlzdHJ1Y3QgZ3VjX21taW9fcmVnICpzbG90OworCisJR0VNX0JVR19P
Tihjb3VudCA+PSByZWdzZXQtPnNpemUpOworCisJLyoKKwkgKiBUaGUgbW1pbyBsaXN0IGlzIGJ1
aWx0IHVzaW5nIHNlcGFyYXRlIGxpc3RzIHdpdGhpbiB0aGUgZHJpdmVyLgorCSAqIEl0J3MgcG9z
c2libGUgdGhhdCBhdCBzb21lIHBvaW50IHdlIG1heSBhdHRlbXB0IHRvIGFkZCB0aGUgc2FtZQor
CSAqIHJlZ2lzdGVyIG1vcmUgdGhhbiBvbmNlLiBEbyBub3QgY29uc2lkZXIgdGhpcyBhbiBlcnJv
cjsgc2lsZW50bHkKKwkgKiBtb3ZlIG9uIGlmIHRoZSByZWdpc3RlciBpcyBhbHJlYWR5IGluIHRo
ZSBsaXN0LgorCSAqLworCWlmIChic2VhcmNoKCZyZWcsIHJlZ3NldC0+cmVnaXN0ZXJzLCBjb3Vu
dCwKKwkJICAgIHNpemVvZihyZWcpLCBndWNfbW1pb19yZWdfY21wKSkKKwkJcmV0dXJuOworCisJ
c2xvdCA9ICZyZWdzZXQtPnJlZ2lzdGVyc1tjb3VudF07CisJcmVnc2V0LT51c2VkKys7CisJKnNs
b3QgPSByZWc7CisKKwl3aGlsZSAoc2xvdC0tID4gcmVnc2V0LT5yZWdpc3RlcnMpIHsKKwkJR0VN
X0JVR19PTihzbG90WzBdLm9mZnNldCA9PSBzbG90WzFdLm9mZnNldCk7CisJCWlmIChzbG90WzFd
Lm9mZnNldCA+IHNsb3RbMF0ub2Zmc2V0KQorCQkJYnJlYWs7CisKKwkJc3dhcChzbG90WzFdLCBz
bG90WzBdKTsKKwl9Cit9CisKKyNkZWZpbmUgR1VDX01NSU9fUkVHX0FERChyZWdzZXQsIHJlZywg
bWFza2VkKSBcCisJZ3VjX21taW9fcmVnX2FkZChyZWdzZXQsIFwKKwkJCSBpOTE1X21taW9fcmVn
X29mZnNldCgocmVnKSksIFwKKwkJCSAobWFza2VkKSA/IEdVQ19SRUdTRVRfTUFTS0VEIDogMCkK
Kworc3RhdGljIHZvaWQgZ3VjX21taW9fcmVnc2V0X2luaXQoc3RydWN0IHRlbXBfcmVnc2V0ICpy
ZWdzZXQsCisJCQkJIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwljb25zdCB1
MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOworCXN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCA9
ICZlbmdpbmUtPndhX2xpc3Q7CisJc3RydWN0IGk5MTVfd2EgKndhOworCXVuc2lnbmVkIGludCBp
OworCisJcmVnc2V0LT51c2VkID0gMDsKKworCUdVQ19NTUlPX1JFR19BREQocmVnc2V0LCBSSU5H
X01PREVfR0VONyhiYXNlKSwgdHJ1ZSk7CisJR1VDX01NSU9fUkVHX0FERChyZWdzZXQsIFJJTkdf
SFdTX1BHQShiYXNlKSwgZmFsc2UpOworCUdVQ19NTUlPX1JFR19BREQocmVnc2V0LCBSSU5HX0lN
UihiYXNlKSwgZmFsc2UpOworCisJZm9yIChpID0gMCwgd2EgPSB3YWwtPmxpc3Q7IGkgPCB3YWwt
PmNvdW50OyBpKyssIHdhKyspCisJCUdVQ19NTUlPX1JFR19BREQocmVnc2V0LCB3YS0+cmVnLCB3
YS0+bWFza2VkX3JlZyk7CisKKwkvKiBCZSBleHRyYSBwYXJhbm9pZCBhbmQgaW5jbHVkZSBhbGwg
d2hpdGVsaXN0IHJlZ2lzdGVycy4gKi8KKwlmb3IgKGkgPSAwOyBpIDwgUklOR19NQVhfTk9OUFJJ
Vl9TTE9UUzsgaSsrKQorCQlHVUNfTU1JT19SRUdfQUREKHJlZ3NldCwKKwkJCQkgUklOR19GT1JD
RV9UT19OT05QUklWKGJhc2UsIGkpLAorCQkJCSBmYWxzZSk7CisKKwkvKiBhZGQgaW4gbG9jYWwg
TU9DUyByZWdpc3RlcnMgKi8KKwlmb3IgKGkgPSAwOyBpIDwgR0VOOV9MTkNGQ01PQ1NfUkVHX0NP
VU5UOyBpKyspCisJCUdVQ19NTUlPX1JFR19BREQocmVnc2V0LCBHRU45X0xOQ0ZDTU9DUyhpKSwg
ZmFsc2UpOworfQorCitzdGF0aWMgaW50IGd1Y19tbWlvX3JlZ19zdGF0ZV9xdWVyeShzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMp
OworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwllbnVtIGludGVsX2VuZ2luZV9p
ZCBpZDsKKwlzdHJ1Y3QgdGVtcF9yZWdzZXQgdGVtcF9zZXQ7CisJdTMyIHRvdGFsOworCisJLyoK
KwkgKiBOZWVkIHRvIGFjdHVhbGx5IGJ1aWxkIHRoZSBsaXN0IGluIG9yZGVyIHRvIGZpbHRlciBv
dXQKKwkgKiBkdXBsaWNhdGVzIGFuZCBvdGhlciBzdWNoIGRhdGEgZGVwZW5kZW50IGNvbnN0cnVj
dGlvbnMuCisJICovCisJdGVtcF9zZXQuc2l6ZSA9IE1BWF9NTUlPX1JFR1M7CisJdGVtcF9zZXQu
cmVnaXN0ZXJzID0ga21hbGxvY19hcnJheSh0ZW1wX3NldC5zaXplLAorCQkJCQkgIHNpemVvZigq
dGVtcF9zZXQucmVnaXN0ZXJzKSwKKwkJCQkJICBHRlBfS0VSTkVMKTsKKwlpZiAoIXRlbXBfc2V0
LnJlZ2lzdGVycykKKwkJcmV0dXJuIC1FTk9NRU07CisKKwl0b3RhbCA9IDA7CisJZm9yX2VhY2hf
ZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7CisJCWd1Y19tbWlvX3JlZ3NldF9pbml0KCZ0ZW1wX3Nl
dCwgZW5naW5lKTsKKwkJdG90YWwgKz0gdGVtcF9zZXQudXNlZDsKKwl9CisKKwlrZnJlZSh0ZW1w
X3NldC5yZWdpc3RlcnMpOworCisJcmV0dXJuIHRvdGFsICogc2l6ZW9mKHN0cnVjdCBndWNfbW1p
b19yZWcpOworfQorCitzdGF0aWMgdm9pZCBndWNfbW1pb19yZWdfc3RhdGVfaW5pdChzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMsCisJCQkJICAgIHN0cnVjdCBfX2d1Y19hZHNfYmxvYiAqYmxvYikKK3sK
KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7CisJc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lOworCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOworCXN0cnVjdCB0ZW1w
X3JlZ3NldCB0ZW1wX3NldDsKKwlzdHJ1Y3QgZ3VjX21taW9fcmVnX3NldCAqYWRzX3JlZ19zZXQ7
CisJdTMyIGFkZHJfZ2d0dCwgb2Zmc2V0OworCXU4IGd1Y19jbGFzczsKKworCW9mZnNldCA9IGd1
Y19hZHNfcmVnc2V0X29mZnNldChndWMpOworCWFkZHJfZ2d0dCA9IGludGVsX2d1Y19nZ3R0X29m
ZnNldChndWMsIGd1Yy0+YWRzX3ZtYSkgKyBvZmZzZXQ7CisJdGVtcF9zZXQucmVnaXN0ZXJzID0g
KHN0cnVjdCBndWNfbW1pb19yZWcgKikgKCgodTggKikgYmxvYikgKyBvZmZzZXQpOworCXRlbXBf
c2V0LnNpemUgPSBndWMtPmFkc19yZWdzZXRfc2l6ZSAvIHNpemVvZih0ZW1wX3NldC5yZWdpc3Rl
cnNbMF0pOworCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7CisJCS8qIENsYXNz
IGluZGV4IGlzIGNoZWNrZWQgaW4gY2xhc3MgY29udmVydGVyICovCisJCUdFTV9CVUdfT04oZW5n
aW5lLT5pbnN0YW5jZSA+PSBHVUNfTUFYX0lOU1RBTkNFU19QRVJfQ0xBU1MpOworCisJCWd1Y19j
bGFzcyA9IGVuZ2luZV9jbGFzc190b19ndWNfY2xhc3MoZW5naW5lLT5jbGFzcyk7CisJCWFkc19y
ZWdfc2V0ID0gJmJsb2ItPmFkcy5yZWdfc3RhdGVfbGlzdFtndWNfY2xhc3NdW2VuZ2luZS0+aW5z
dGFuY2VdOworCisJCWd1Y19tbWlvX3JlZ3NldF9pbml0KCZ0ZW1wX3NldCwgZW5naW5lKTsKKwkJ
aWYgKCF0ZW1wX3NldC51c2VkKSB7CisJCQlhZHNfcmVnX3NldC0+YWRkcmVzcyA9IDA7CisJCQlh
ZHNfcmVnX3NldC0+Y291bnQgPSAwOworCQkJY29udGludWU7CisJCX0KKworCQlhZHNfcmVnX3Nl
dC0+YWRkcmVzcyA9IGFkZHJfZ2d0dDsKKwkJYWRzX3JlZ19zZXQtPmNvdW50ID0gdGVtcF9zZXQu
dXNlZDsKKworCQl0ZW1wX3NldC5zaXplIC09IHRlbXBfc2V0LnVzZWQ7CisJCXRlbXBfc2V0LnJl
Z2lzdGVycyArPSB0ZW1wX3NldC51c2VkOworCQlhZGRyX2dndHQgKz0gdGVtcF9zZXQudXNlZCAq
IHNpemVvZihzdHJ1Y3QgZ3VjX21taW9fcmVnKTsKKwl9CisKKwlHRU1fQlVHX09OKHRlbXBfc2V0
LnNpemUpOworfQorCiAvKgogICogVGhlIGZpcnN0IDgwIGR3b3JkcyBvZiB0aGUgcmVnaXN0ZXIg
c3RhdGUgY29udGV4dCwgY29udGFpbmluZyB0aGUKICAqIGV4ZWNsaXN0cyBhbmQgcHBndHQgcmVn
aXN0ZXJzLgpAQCAtMTIxLDggKzMwNCw3IEBAIHN0YXRpYyB2b2lkIF9fZ3VjX2Fkc19pbml0KHN0
cnVjdCBpbnRlbF9ndWMgKmd1YykKIAkJICovCiAJCWJsb2ItPmFkcy5nb2xkZW5fY29udGV4dF9s
cmNhW2d1Y19jbGFzc10gPSAwOwogCQlibG9iLT5hZHMuZW5nX3N0YXRlX3NpemVbZ3VjX2NsYXNz
XSA9Ci0JCQlpbnRlbF9lbmdpbmVfY29udGV4dF9zaXplKGd1Y190b19ndChndWMpLAotCQkJCQkJ
ICBlbmdpbmVfY2xhc3MpIC0KKwkJCWludGVsX2VuZ2luZV9jb250ZXh0X3NpemUoZ3QsIGVuZ2lu
ZV9jbGFzcykgLQogCQkJc2tpcHBlZF9zaXplOwogCX0KIApAQCAtMTUzLDYgKzMzNSw5IEBAIHN0
YXRpYyB2b2lkIF9fZ3VjX2Fkc19pbml0KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAlibG9iLT5h
ZHMuc2NoZWR1bGVyX3BvbGljaWVzID0gYmFzZSArIHB0cl9vZmZzZXQoYmxvYiwgcG9saWNpZXMp
OwogCWJsb2ItPmFkcy5ndF9zeXN0ZW1faW5mbyA9IGJhc2UgKyBwdHJfb2Zmc2V0KGJsb2IsIHN5
c3RlbV9pbmZvKTsKIAorCS8qIE1NSU8gc2F2ZS9yZXN0b3JlIGxpc3QgKi8KKwlndWNfbW1pb19y
ZWdfc3RhdGVfaW5pdChndWMsIGJsb2IpOworCiAJLyogUHJpdmF0ZSBEYXRhICovCiAJYmxvYi0+
YWRzLnByaXZhdGVfZGF0YSA9IGJhc2UgKyBndWNfYWRzX3ByaXZhdGVfZGF0YV9vZmZzZXQoZ3Vj
KTsKIApAQCAtMTczLDYgKzM1OCwxMiBAQCBpbnQgaW50ZWxfZ3VjX2Fkc19jcmVhdGUoc3RydWN0
IGludGVsX2d1YyAqZ3VjKQogCiAJR0VNX0JVR19PTihndWMtPmFkc192bWEpOwogCisJLyogTmVl
ZCB0byBjYWxjdWxhdGUgdGhlIHJlZyBzdGF0ZSBzaXplIGR5bmFtaWNhbGx5OiAqLworCXJldCA9
IGd1Y19tbWlvX3JlZ19zdGF0ZV9xdWVyeShndWMpOworCWlmIChyZXQgPCAwKQorCQlyZXR1cm4g
cmV0OworCWd1Yy0+YWRzX3JlZ3NldF9zaXplID0gcmV0OworCiAJc2l6ZSA9IGd1Y19hZHNfYmxv
Yl9zaXplKGd1Yyk7CiAKIAlyZXQgPSBpbnRlbF9ndWNfYWxsb2NhdGVfYW5kX21hcF92bWEoZ3Vj
LCBzaXplLCAmZ3VjLT5hZHNfdm1hLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMjA0Yzk1
YzM5MzUzLi4zNTg0ZTRkMDNkYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTIzMDks
NiArMTIzMDksNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKIAogLyogTU9DUyAoTWVtb3J5IE9i
amVjdCBDb250cm9sIFN0YXRlKSByZWdpc3RlcnMgKi8KICNkZWZpbmUgR0VOOV9MTkNGQ01PQ1Mo
aSkJX01NSU8oMHhiMDIwICsgKGkpICogNCkJLyogTDMgQ2FjaGUgQ29udHJvbCAqLworI2RlZmlu
ZSBHRU45X0xOQ0ZDTU9DU19SRUdfQ09VTlQJMzIKIAogI2RlZmluZSBfX0dFTjlfUkNTMF9NT0NT
MAkweGM4MDAKICNkZWZpbmUgR0VOOV9HRlhfTU9DUyhpKQlfTU1JTyhfX0dFTjlfUkNTMF9NT0NT
MCArIChpKSAqIDQpCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
