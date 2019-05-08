Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D72D7175A9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 12:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25FE89310;
	Wed,  8 May 2019 10:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F62895C4;
 Wed,  8 May 2019 10:10:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16487694-1500050 
 for multiple; Wed, 08 May 2019 11:10:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 11:09:49 +0100
Message-Id: <20190508100958.32637-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508100958.32637-1-chris@chris-wilson.co.uk>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 07/16] i915: Add gem_ctx_clone
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXhlcmNpc2UgY2xvbmluZyBjb250ZXh0cywgYW4gZXh0ZW5zaW9uIG9mIG1lcmVseSBjcmVhdGlu
ZyBvbmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiB0ZXN0cy9NYWtlZmlsZS5zb3VyY2VzICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1
L2dlbV9jdHhfY2xvbmUuYyB8IDQ2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiB0ZXN0cy9tZXNvbi5idWlsZCAgICAgICAgICB8ICAgMSArCiAzIGZpbGVzIGNoYW5nZWQs
IDQ2MiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvaTkxNS9nZW1fY3R4
X2Nsb25lLmMKCmRpZmYgLS1naXQgYS90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzIGIvdGVzdHMvTWFr
ZWZpbGUuc291cmNlcwppbmRleCAxYTU0MWQyMDYuLmUxYjdmZWViMiAxMDA2NDQKLS0tIGEvdGVz
dHMvTWFrZWZpbGUuc291cmNlcworKysgYi90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCkBAIC0yMSw2
ICsyMSw3IEBAIFRFU1RTX3Byb2dzID0gXAogCWRybV9pbXBvcnRfZXhwb3J0IFwKIAlkcm1fbW0g
XAogCWRybV9yZWFkIFwKKwlpOTE1L2dlbV9jdHhfY2xvbmUgXAogCWk5MTUvZ2VtX3ZtX2NyZWF0
ZSBcCiAJa21zXzNkIFwKIAlrbXNfYWRkZmJfYmFzaWMgXApkaWZmIC0tZ2l0IGEvdGVzdHMvaTkx
NS9nZW1fY3R4X2Nsb25lLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfY2xvbmUuYwpuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAuLmNkYzViZjQxMwotLS0gL2Rldi9udWxsCisrKyBi
L3Rlc3RzL2k5MTUvZ2VtX2N0eF9jbG9uZS5jCkBAIC0wLDAgKzEsNDYwIEBACisvKgorICogQ29w
eXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqCisgKiBQZXJtaXNzaW9uIGlzIGhl
cmVieSBncmFudGVkLCBmcmVlIG9mIGNoYXJnZSwgdG8gYW55IHBlcnNvbiBvYnRhaW5pbmcgYQor
ICogY29weSBvZiB0aGlzIHNvZnR3YXJlIGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gZmls
ZXMgKHRoZSAiU29mdHdhcmUiKSwKKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQg
cmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KKyAqIHRoZSByaWdodHMg
dG8gdXNlLCBjb3B5LCBtb2RpZnksIG1lcmdlLCBwdWJsaXNoLCBkaXN0cmlidXRlLCBzdWJsaWNl
bnNlLAorICogYW5kL29yIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwgYW5kIHRvIHBlcm1p
dCBwZXJzb25zIHRvIHdob20gdGhlCisgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28s
IHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgorICoKKyAqIFRoZSBhYm92ZSBj
b3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIChpbmNsdWRpbmcgdGhl
IG5leHQKKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBz
dWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKKyAqIFNvZnR3YXJlLgorICoKKyAqIFRIRSBTT0ZU
V0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBF
WFBSRVNTIE9SCisgKiBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVEIFRPIFRIRSBX
QVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJTElUWSwKKyAqIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxB
UiBQVVJQT1NFIEFORCBOT05JTkZSSU5HRU1FTlQuICBJTiBOTyBFVkVOVCBTSEFMTAorICogVEhF
IEFVVEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERB
TUFHRVMgT1IgT1RIRVIKKyAqIExJQUJJTElUWSwgV0hFVEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09O
VFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5HCisgKiBGUk9NLCBPVVQgT0YgT1IgSU4g
Q09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SIE9USEVSIERFQUxJTkdT
CisgKiBJTiBUSEUgU09GVFdBUkUuCisgKi8KKworI2luY2x1ZGUgImlndC5oIgorI2luY2x1ZGUg
ImlndF9ndC5oIgorI2luY2x1ZGUgImk5MTUvZ2VtX3ZtLmgiCisjaW5jbHVkZSAiaTkxNV9kcm0u
aCIKKworc3RhdGljIGludCBjdHhfY3JlYXRlX2lvY3RsKGludCBpOTE1LCBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dCAqYXJnKQoreworCWludCBlcnI7CisKKwllcnIgPSAw
OworCWlmIChpZ3RfaW9jdGwoaTkxNSwgRFJNX0lPQ1RMX0k5MTVfR0VNX0NPTlRFWFRfQ1JFQVRF
X0VYVCwgYXJnKSkgeworCQllcnIgPSAtZXJybm87CisJCWlndF9hc3N1bWUoZXJyKTsKKwl9CisK
KwllcnJubyA9IDA7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGJvb2wgaGFzX2N0eF9jbG9u
ZShpbnQgaTkxNSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dF9j
bG9uZSBleHQgPSB7CisJCXsgLm5hbWUgPSBJOTE1X0NPTlRFWFRfQ1JFQVRFX0VYVF9DTE9ORSB9
LAorCQkuY2xvbmVfaWQgPSAtMSwKKwl9OworCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9j
cmVhdGVfZXh0IGNyZWF0ZSA9IHsKKwkJLmZsYWdzID0gSTkxNV9DT05URVhUX0NSRUFURV9GTEFH
U19VU0VfRVhURU5TSU9OUywKKwkJLmV4dGVuc2lvbnMgPSB0b191c2VyX3BvaW50ZXIoJmV4dCks
CisJfTsKKwlyZXR1cm4gY3R4X2NyZWF0ZV9pb2N0bChpOTE1LCAmY3JlYXRlKSA9PSAtRU5PRU5U
OworfQorCitzdGF0aWMgdm9pZCBpbnZhbGlkX2Nsb25lKGludCBpOTE1KQoreworCXN0cnVjdCBk
cm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0X2Nsb25lIGV4dCA9IHsKKwkJeyAubmFtZSA9
IEk5MTVfQ09OVEVYVF9DUkVBVEVfRVhUX0NMT05FIH0sCisJfTsKKwlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2NvbnRleHRfY3JlYXRlX2V4dCBjcmVhdGUgPSB7CisJCS5mbGFncyA9IEk5MTVfQ09OVEVY
VF9DUkVBVEVfRkxBR1NfVVNFX0VYVEVOU0lPTlMsCisJCS5leHRlbnNpb25zID0gdG9fdXNlcl9w
b2ludGVyKCZleHQpLAorCX07CisKKwlpZ3RfYXNzZXJ0X2VxKGN0eF9jcmVhdGVfaW9jdGwoaTkx
NSwgJmNyZWF0ZSksIDApOworCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3JlYXRlLmN0eF9p
ZCk7CisKKwlleHQuZmxhZ3MgPSAtMTsgLyogSG9wZWZ1bGx5IHdlIHdvbid0IHJ1biBvdXQgb2Yg
ZmxhZ3MgKi8KKwlpZ3RfYXNzZXJ0X2VxKGN0eF9jcmVhdGVfaW9jdGwoaTkxNSwgJmNyZWF0ZSks
IC1FSU5WQUwpOworCWV4dC5mbGFncyA9IDA7CisKKwlleHQuYmFzZS5uZXh0X2V4dGVuc2lvbiA9
IC0xOworCWlndF9hc3NlcnRfZXEoY3R4X2NyZWF0ZV9pb2N0bChpOTE1LCAmY3JlYXRlKSwgLUVG
QVVMVCk7CisJZXh0LmJhc2UubmV4dF9leHRlbnNpb24gPSB0b191c2VyX3BvaW50ZXIoJmV4dCk7
CisJaWd0X2Fzc2VydF9lcShjdHhfY3JlYXRlX2lvY3RsKGk5MTUsICZjcmVhdGUpLCAtRTJCSUcp
OworCWV4dC5iYXNlLm5leHRfZXh0ZW5zaW9uID0gMDsKKworCWV4dC5jbG9uZV9pZCA9IC0xOwor
CWlndF9hc3NlcnRfZXEoY3R4X2NyZWF0ZV9pb2N0bChpOTE1LCAmY3JlYXRlKSwgLUVOT0VOVCk7
CisJZXh0LmNsb25lX2lkID0gMDsKK30KKworc3RhdGljIHZvaWQgY2xvbmVfZmxhZ3MoaW50IGk5
MTUpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHRfc2V0cGFyYW0g
c2V0ID0geworCQl7IC5uYW1lID0gSTkxNV9DT05URVhUX0NSRUFURV9FWFRfU0VUUEFSQU0gfSwK
KwkJeyAucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFSQU1fUkVDT1ZFUkFCTEUgfSwKKwl9OworCXN0
cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0X2Nsb25lIGV4dCA9IHsKKwkJeyAu
bmFtZSA9IEk5MTVfQ09OVEVYVF9DUkVBVEVfRVhUX0NMT05FIH0sCisJCS5mbGFncyA9IEk5MTVf
Q09OVEVYVF9DTE9ORV9GTEFHUywKKwl9OworCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9j
cmVhdGVfZXh0IGNyZWF0ZSA9IHsKKwkJLmZsYWdzID0gSTkxNV9DT05URVhUX0NSRUFURV9GTEFH
U19VU0VfRVhURU5TSU9OUywKKwkJLmV4dGVuc2lvbnMgPSB0b191c2VyX3BvaW50ZXIoJmV4dCks
CisJfTsKKwlpbnQgZXhwZWN0ZWQ7CisKKwlzZXQucGFyYW0udmFsdWUgPSAxOyAvKiBkZWZhdWx0
IGlzIHJlY292ZXJhYmxlICovCisJaWd0X3JlcXVpcmUoX19nZW1fY29udGV4dF9zZXRfcGFyYW0o
aTkxNSwgJnNldC5wYXJhbSkgPT0gMCk7CisKKwlmb3IgKGludCBwYXNzID0gMDsgcGFzcyA8IDI7
IHBhc3MrKykgeyAvKiBjbG9uaW5nIGRlZmF1bHQsIHRoZW4gY2hpbGQgKi8KKwkJaWd0X2RlYnVn
KCJDbG9uaW5nICVkXG4iLCBleHQuY2xvbmVfaWQpOworCQlpZ3RfYXNzZXJ0X2VxKGN0eF9jcmVh
dGVfaW9jdGwoaTkxNSwgJmNyZWF0ZSksIDApOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBleHQu
Y2xvbmVfaWQ7CisJCWdlbV9jb250ZXh0X2dldF9wYXJhbShpOTE1LCAmc2V0LnBhcmFtKTsKKwkJ
ZXhwZWN0ZWQgPSBzZXQucGFyYW0udmFsdWU7CisKKwkJc2V0LnBhcmFtLmN0eF9pZCA9IGNyZWF0
ZS5jdHhfaWQ7CisJCWdlbV9jb250ZXh0X2dldF9wYXJhbShpOTE1LCAmc2V0LnBhcmFtKTsKKwor
CQlpZ3RfYXNzZXJ0X2VxX3U2NChzZXQucGFyYW0ucGFyYW0sCisJCQkJICBJOTE1X0NPTlRFWFRf
UEFSQU1fUkVDT1ZFUkFCTEUpOworCQlpZ3RfYXNzZXJ0X2VxKChpbnQpc2V0LnBhcmFtLnZhbHVl
LCBleHBlY3RlZCk7CisKKwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjcmVhdGUuY3R4X2lk
KTsKKworCQlleHBlY3RlZCA9IHNldC5wYXJhbS52YWx1ZSA9IDA7CisJCXNldC5wYXJhbS5jdHhf
aWQgPSBleHQuY2xvbmVfaWQ7CisJCWdlbV9jb250ZXh0X3NldF9wYXJhbShpOTE1LCAmc2V0LnBh
cmFtKTsKKworCQlpZ3RfYXNzZXJ0X2VxKGN0eF9jcmVhdGVfaW9jdGwoaTkxNSwgJmNyZWF0ZSks
IDApOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBjcmVhdGUuY3R4X2lkOworCQlnZW1fY29udGV4
dF9nZXRfcGFyYW0oaTkxNSwgJnNldC5wYXJhbSk7CisKKwkJaWd0X2Fzc2VydF9lcV91NjQoc2V0
LnBhcmFtLnBhcmFtLAorCQkJCSAgSTkxNV9DT05URVhUX1BBUkFNX1JFQ09WRVJBQkxFKTsKKwkJ
aWd0X2Fzc2VydF9lcSgoaW50KXNldC5wYXJhbS52YWx1ZSwgZXhwZWN0ZWQpOworCisJCWdlbV9j
b250ZXh0X2Rlc3Ryb3koaTkxNSwgY3JlYXRlLmN0eF9pZCk7CisKKwkJLyogY2xvbmUgYnV0IHRo
ZW4gcmVzZXQgcHJpb3JpdHkgdG8gZGVmYXVsdC4uLiAqLworCQlzZXQucGFyYW0uY3R4X2lkID0g
MDsKKwkJc2V0LnBhcmFtLnZhbHVlID0gMTsKKwkJZXh0LmJhc2UubmV4dF9leHRlbnNpb24gPSB0
b191c2VyX3BvaW50ZXIoJnNldCk7CisJCWlndF9hc3NlcnRfZXEoY3R4X2NyZWF0ZV9pb2N0bChp
OTE1LCAmY3JlYXRlKSwgMCk7CisJCWV4dC5iYXNlLm5leHRfZXh0ZW5zaW9uID0gMDsKKworCQkv
KiBuZXcgY29udGV4dCBzaG91bGQgaGF2ZSB1cGRhdGVkIHByaW8uLi4gKi8KKwkJc2V0LnBhcmFt
LmN0eF9pZCA9IGNyZWF0ZS5jdHhfaWQ7CisJCWdlbV9jb250ZXh0X2dldF9wYXJhbShpOTE1LCAm
c2V0LnBhcmFtKTsKKwkJaWd0X2Fzc2VydF9lcV91NjQoc2V0LnBhcmFtLnZhbHVlLCAxKTsKKwor
CQkvKiBidXQgb3JpZ2luYWwgY29udGV4dCBzaG91bGQgaGF2ZSBkZWZhdWx0IHByaW8gKi8KKwkJ
c2V0LnBhcmFtLmN0eF9pZCA9IGV4dC5jbG9uZV9pZDsKKwkJZ2VtX2NvbnRleHRfZ2V0X3BhcmFt
KGk5MTUsICZzZXQucGFyYW0pOworCQlpZ3RfYXNzZXJ0X2VxX3U2NChzZXQucGFyYW0udmFsdWUs
IDApOworCisJCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3JlYXRlLmN0eF9pZCk7CisJCWV4
dC5jbG9uZV9pZCA9IGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1KTsKKwl9CisKKwlnZW1fY29udGV4
dF9kZXN0cm95KGk5MTUsIGV4dC5jbG9uZV9pZCk7Cit9CisKK3N0YXRpYyB2b2lkIGNsb25lX2Vu
Z2luZXMoaW50IGk5MTUpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9l
eHRfc2V0cGFyYW0gc2V0ID0geworCQl7IC5uYW1lID0gSTkxNV9DT05URVhUX0NSRUFURV9FWFRf
U0VUUEFSQU0gfSwKKwkJeyAucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFSQU1fRU5HSU5FUyB9LAor
CX07CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHRfY2xvbmUgZXh0ID0g
eworCQl7IC5uYW1lID0gSTkxNV9DT05URVhUX0NSRUFURV9FWFRfQ0xPTkUgfSwKKwkJLmZsYWdz
ID0gSTkxNV9DT05URVhUX0NMT05FX0VOR0lORVMsCisJfTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2NvbnRleHRfY3JlYXRlX2V4dCBjcmVhdGUgPSB7CisJCS5mbGFncyA9IEk5MTVfQ09OVEVYVF9D
UkVBVEVfRkxBR1NfVVNFX0VYVEVOU0lPTlMsCisJCS5leHRlbnNpb25zID0gdG9fdXNlcl9wb2lu
dGVyKCZleHQpLAorCX07CisJSTkxNV9ERUZJTkVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTKGV4cGVj
dGVkLCA2NCk7CisJSTkxNV9ERUZJTkVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTKGVuZ2luZXMsIDY0
KTsKKwl1aW50NjRfdCBleF9zaXplOworCisJbWVtc2V0KCZleHBlY3RlZCwgMCwgc2l6ZW9mKGV4
cGVjdGVkKSk7CisJbWVtc2V0KCZlbmdpbmVzLCAwLCBzaXplb2YoZW5naW5lcykpOworCisJaWd0
X3JlcXVpcmUoX19nZW1fY29udGV4dF9zZXRfcGFyYW0oaTkxNSwgJnNldC5wYXJhbSkgPT0gMCk7
CisKKwlmb3IgKGludCBwYXNzID0gMDsgcGFzcyA8IDI7IHBhc3MrKykgeyAvKiBjbG9uaW5nIGRl
ZmF1bHQsIHRoZW4gY2hpbGQgKi8KKwkJaWd0X2RlYnVnKCJDbG9uaW5nICVkXG4iLCBleHQuY2xv
bmVfaWQpOworCQlpZ3RfYXNzZXJ0X2VxKGN0eF9jcmVhdGVfaW9jdGwoaTkxNSwgJmNyZWF0ZSks
IDApOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBleHQuY2xvbmVfaWQ7CisJCXNldC5wYXJhbS5z
aXplID0gc2l6ZW9mKGV4cGVjdGVkKTsKKwkJc2V0LnBhcmFtLnZhbHVlID0gdG9fdXNlcl9wb2lu
dGVyKCZleHBlY3RlZCk7CisJCWdlbV9jb250ZXh0X2dldF9wYXJhbShpOTE1LCAmc2V0LnBhcmFt
KTsKKwkJZXhfc2l6ZSA9IHNldC5wYXJhbS5zaXplOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBj
cmVhdGUuY3R4X2lkOworCQlzZXQucGFyYW0uc2l6ZSA9IHNpemVvZihlbmdpbmVzKTsKKwkJc2V0
LnBhcmFtLnZhbHVlID0gdG9fdXNlcl9wb2ludGVyKCZlbmdpbmVzKTsKKwkJZ2VtX2NvbnRleHRf
Z2V0X3BhcmFtKGk5MTUsICZzZXQucGFyYW0pOworCisJCWlndF9hc3NlcnRfZXFfdTY0KHNldC5w
YXJhbS5wYXJhbSwgSTkxNV9DT05URVhUX1BBUkFNX0VOR0lORVMpOworCQlpZ3RfYXNzZXJ0X2Vx
X3U2NChzZXQucGFyYW0uc2l6ZSwgZXhfc2l6ZSk7CisJCWlndF9hc3NlcnQoIW1lbWNtcCgmZW5n
aW5lcywgJmV4cGVjdGVkLCBleF9zaXplKSk7CisKKwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1
LCBjcmVhdGUuY3R4X2lkKTsKKworCQlleHBlY3RlZC5lbmdpbmVzWzBdLmVuZ2luZV9jbGFzcyA9
CisJCQlJOTE1X0VOR0lORV9DTEFTU19JTlZBTElEOworCQlleHBlY3RlZC5lbmdpbmVzWzBdLmVu
Z2luZV9pbnN0YW5jZSA9CisJCQlJOTE1X0VOR0lORV9DTEFTU19JTlZBTElEX05PTkU7CisJCWV4
X3NpemUgPSAoc2l6ZW9mKHN0cnVjdCBpOTE1X2NvbnRleHRfcGFyYW1fZW5naW5lcykgKworCQkJ
ICAgc2l6ZW9mKGV4cGVjdGVkLmVuZ2luZXNbMF0pKTsKKworCQlzZXQucGFyYW0uY3R4X2lkID0g
ZXh0LmNsb25lX2lkOworCQlzZXQucGFyYW0uc2l6ZSA9IGV4X3NpemU7CisJCXNldC5wYXJhbS52
YWx1ZSA9IHRvX3VzZXJfcG9pbnRlcigmZXhwZWN0ZWQpOworCQlnZW1fY29udGV4dF9zZXRfcGFy
YW0oaTkxNSwgJnNldC5wYXJhbSk7CisKKwkJaWd0X2Fzc2VydF9lcShjdHhfY3JlYXRlX2lvY3Rs
KGk5MTUsICZjcmVhdGUpLCAwKTsKKworCQlzZXQucGFyYW0uY3R4X2lkID0gY3JlYXRlLmN0eF9p
ZDsKKwkJc2V0LnBhcmFtLnNpemUgPSBzaXplb2YoZW5naW5lcyk7CisJCXNldC5wYXJhbS52YWx1
ZSA9IHRvX3VzZXJfcG9pbnRlcigmZW5naW5lcyk7CisJCWdlbV9jb250ZXh0X2dldF9wYXJhbShp
OTE1LCAmc2V0LnBhcmFtKTsKKworCQlpZ3RfYXNzZXJ0X2VxX3U2NChzZXQucGFyYW0uc2l6ZSwg
ZXhfc2l6ZSk7CisJCWlndF9hc3NlcnQoIW1lbWNtcCgmZW5naW5lcywgJmV4cGVjdGVkLCBleF9z
aXplKSk7CisKKwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjcmVhdGUuY3R4X2lkKTsKKwor
CQkvKiBjbG9uZSBidXQgdGhlbiByZXNldCBlbmdpbmVzIHRvIGRlZmF1bHQgKi8KKwkJc2V0LnBh
cmFtLmN0eF9pZCA9IDA7CisJCXNldC5wYXJhbS5zaXplID0gMDsKKwkJc2V0LnBhcmFtLnZhbHVl
ID0gMDsKKwkJZXh0LmJhc2UubmV4dF9leHRlbnNpb24gPSB0b191c2VyX3BvaW50ZXIoJnNldCk7
CisKKwkJaWd0X2Fzc2VydF9lcShjdHhfY3JlYXRlX2lvY3RsKGk5MTUsICZjcmVhdGUpLCAwKTsK
KwkJZXh0LmJhc2UubmV4dF9leHRlbnNpb24gPSAwOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBj
cmVhdGUuY3R4X2lkOworCQlzZXQucGFyYW0uc2l6ZSA9IHNpemVvZihlbmdpbmVzKTsKKwkJc2V0
LnBhcmFtLnZhbHVlID0gdG9fdXNlcl9wb2ludGVyKCZlbmdpbmVzKTsKKwkJZ2VtX2NvbnRleHRf
Z2V0X3BhcmFtKGk5MTUsICZzZXQucGFyYW0pOworCQlpZ3RfYXNzZXJ0X2VxX3U2NChzZXQucGFy
YW0uc2l6ZSwgMCk7CisKKwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjcmVhdGUuY3R4X2lk
KTsKKworCQkvKiBBbmQgY2hlY2sgd2UgaWdub3JlIHRoZSBmbGFnICovCisJCWV4dC5mbGFncyA9
IDA7CisJCWlndF9hc3NlcnRfZXEoY3R4X2NyZWF0ZV9pb2N0bChpOTE1LCAmY3JlYXRlKSwgMCk7
CisJCWV4dC5mbGFncyA9IEk5MTVfQ09OVEVYVF9DTE9ORV9FTkdJTkVTOworCisJCXNldC5wYXJh
bS5jdHhfaWQgPSBjcmVhdGUuY3R4X2lkOworCQlzZXQucGFyYW0uc2l6ZSA9IHNpemVvZihlbmdp
bmVzKTsKKwkJc2V0LnBhcmFtLnZhbHVlID0gdG9fdXNlcl9wb2ludGVyKCZlbmdpbmVzKTsKKwkJ
Z2VtX2NvbnRleHRfZ2V0X3BhcmFtKGk5MTUsICZzZXQucGFyYW0pOworCQlpZ3RfYXNzZXJ0X2Vx
X3U2NChzZXQucGFyYW0uc2l6ZSwgMCk7CisKKwkJZXh0LmNsb25lX2lkID0gZ2VtX2NvbnRleHRf
Y3JlYXRlKGk5MTUpOworCX0KKworCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgZXh0LmNsb25l
X2lkKTsKK30KKworc3RhdGljIHZvaWQgY2xvbmVfc2NoZWR1bGVyKGludCBpOTE1KQoreworCXN0
cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0X3NldHBhcmFtIHNldCA9IHsKKwkJ
eyAubmFtZSA9IEk5MTVfQ09OVEVYVF9DUkVBVEVfRVhUX1NFVFBBUkFNIH0sCisJCXsgLnBhcmFt
ID0gSTkxNV9DT05URVhUX1BBUkFNX1BSSU9SSVRZIH0sCisJfTsKKwlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2NvbnRleHRfY3JlYXRlX2V4dF9jbG9uZSBleHQgPSB7CisJCXsgLm5hbWUgPSBJOTE1X0NP
TlRFWFRfQ1JFQVRFX0VYVF9DTE9ORSB9LAorCQkuZmxhZ3MgPSBJOTE1X0NPTlRFWFRfQ0xPTkVf
U0NIRURBVFRSLAorCX07CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHQg
Y3JlYXRlID0geworCQkuZmxhZ3MgPSBJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1VTRV9FWFRF
TlNJT05TLAorCQkuZXh0ZW5zaW9ucyA9IHRvX3VzZXJfcG9pbnRlcigmZXh0KSwKKwl9OworCWlu
dCBleHBlY3RlZDsKKworCWlndF9yZXF1aXJlKF9fZ2VtX2NvbnRleHRfc2V0X3BhcmFtKGk5MTUs
ICZzZXQucGFyYW0pID09IDApOworCisJZm9yIChpbnQgcGFzcyA9IDA7IHBhc3MgPCAyOyBwYXNz
KyspIHsgLyogY2xvbmluZyBkZWZhdWx0LCB0aGVuIGNoaWxkICovCisJCWlndF9kZWJ1ZygiQ2xv
bmluZyAlZFxuIiwgZXh0LmNsb25lX2lkKTsKKwkJaWd0X2Fzc2VydF9lcShjdHhfY3JlYXRlX2lv
Y3RsKGk5MTUsICZjcmVhdGUpLCAwKTsKKworCQlzZXQucGFyYW0uY3R4X2lkID0gZXh0LmNsb25l
X2lkOworCQlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnNldC5wYXJhbSk7CisJCWV4cGVj
dGVkID0gc2V0LnBhcmFtLnZhbHVlOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBjcmVhdGUuY3R4
X2lkOworCQlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnNldC5wYXJhbSk7CisKKwkJaWd0
X2Fzc2VydF9lcV91NjQoc2V0LnBhcmFtLnBhcmFtLCBJOTE1X0NPTlRFWFRfUEFSQU1fUFJJT1JJ
VFkpOworCQlpZ3RfYXNzZXJ0X2VxKChpbnQpc2V0LnBhcmFtLnZhbHVlLCBleHBlY3RlZCk7CisK
KwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjcmVhdGUuY3R4X2lkKTsKKworCQlleHBlY3Rl
ZCA9IHNldC5wYXJhbS52YWx1ZSA9IDE7CisJCXNldC5wYXJhbS5jdHhfaWQgPSBleHQuY2xvbmVf
aWQ7CisJCWdlbV9jb250ZXh0X3NldF9wYXJhbShpOTE1LCAmc2V0LnBhcmFtKTsKKworCQlpZ3Rf
YXNzZXJ0X2VxKGN0eF9jcmVhdGVfaW9jdGwoaTkxNSwgJmNyZWF0ZSksIDApOworCisJCXNldC5w
YXJhbS5jdHhfaWQgPSBjcmVhdGUuY3R4X2lkOworCQlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkx
NSwgJnNldC5wYXJhbSk7CisKKwkJaWd0X2Fzc2VydF9lcV91NjQoc2V0LnBhcmFtLnBhcmFtLCBJ
OTE1X0NPTlRFWFRfUEFSQU1fUFJJT1JJVFkpOworCQlpZ3RfYXNzZXJ0X2VxKChpbnQpc2V0LnBh
cmFtLnZhbHVlLCBleHBlY3RlZCk7CisKKwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjcmVh
dGUuY3R4X2lkKTsKKworCQkvKiBjbG9uZSBidXQgdGhlbiByZXNldCBwcmlvcml0eSB0byBkZWZh
dWx0ICovCisJCXNldC5wYXJhbS5jdHhfaWQgPSAwOworCQlzZXQucGFyYW0udmFsdWUgPSAwOwor
CQlleHQuYmFzZS5uZXh0X2V4dGVuc2lvbiA9IHRvX3VzZXJfcG9pbnRlcigmc2V0KTsKKwkJaWd0
X2Fzc2VydF9lcShjdHhfY3JlYXRlX2lvY3RsKGk5MTUsICZjcmVhdGUpLCAwKTsKKwkJZXh0LmJh
c2UubmV4dF9leHRlbnNpb24gPSAwOworCisJCXNldC5wYXJhbS5jdHhfaWQgPSBjcmVhdGUuY3R4
X2lkOworCQlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnNldC5wYXJhbSk7CisJCWlndF9h
c3NlcnRfZXFfdTY0KHNldC5wYXJhbS52YWx1ZSwgMCk7CisKKwkJc2V0LnBhcmFtLmN0eF9pZCA9
IGV4dC5jbG9uZV9pZDsKKwkJZ2VtX2NvbnRleHRfZ2V0X3BhcmFtKGk5MTUsICZzZXQucGFyYW0p
OworCQlpZ3RfYXNzZXJ0X2VxX3U2NChzZXQucGFyYW0udmFsdWUsIDEpOworCisJCWdlbV9jb250
ZXh0X2Rlc3Ryb3koaTkxNSwgY3JlYXRlLmN0eF9pZCk7CisJCWV4dC5jbG9uZV9pZCA9IGdlbV9j
b250ZXh0X2NyZWF0ZShpOTE1KTsKKwl9CisKKwlnZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIGV4
dC5jbG9uZV9pZCk7Cit9CisKK3N0YXRpYyB1aW50MzJfdCBfX2JhdGNoX2NyZWF0ZShpbnQgaTkx
NSwgdWludDMyX3Qgb2Zmc2V0KQoreworCWNvbnN0IHVpbnQzMl90IGJiZSA9IE1JX0JBVENIX0JV
RkZFUl9FTkQ7CisJdWludDMyX3QgaGFuZGxlOworCisJaGFuZGxlID0gZ2VtX2NyZWF0ZShpOTE1
LCBBTElHTihvZmZzZXQgKyA0LCA0MDk2KSk7CisJZ2VtX3dyaXRlKGk5MTUsIGhhbmRsZSwgb2Zm
c2V0LCAmYmJlLCBzaXplb2YoYmJlKSk7CisKKwlyZXR1cm4gaGFuZGxlOworfQorCitzdGF0aWMg
dWludDMyX3QgYmF0Y2hfY3JlYXRlKGludCBpOTE1KQoreworCXJldHVybiBfX2JhdGNoX2NyZWF0
ZShpOTE1LCAwKTsKK30KKworc3RhdGljIHZvaWQgY2hlY2tfc2FtZV92bShpbnQgaTkxNSwgdWlu
dDMyX3QgY3R4X2EsIHVpbnQzMl90IGN0eF9iKQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhl
Y19vYmplY3QyIGJhdGNoID0geworCQkuaGFuZGxlID0gYmF0Y2hfY3JlYXRlKGk5MTUpLAorCX07
CisJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiBlYiA9IHsKKwkJLmJ1ZmZlcnNfcHRy
ID0gdG9fdXNlcl9wb2ludGVyKCZiYXRjaCksCisJCS5idWZmZXJfY291bnQgPSAxLAorCX07CisK
KwkvKiBGaXJzdCB2ZXJpZnkgdGhhdCB3ZSB0cnkgdG8gdXNlICJzb2Z0cGlubmluZyIgYnkgZGVm
YXVsdCAqLworCWJhdGNoLm9mZnNldCA9IDQ4IDw8IDIwOworCWViLnJzdmQxID0gY3R4X2E7CisJ
Z2VtX2V4ZWNidWYoaTkxNSwgJmViKTsKKwlpZ3RfYXNzZXJ0X2VxX3U2NChiYXRjaC5vZmZzZXQs
IDQ4IDw8IDIwKTsKKworCS8qIEFuIGFscmVhZHkgYWN0aXZlIFZNQSB3aWxsIHRyeSB0byBrZWVw
IGl0cyBvZmZzZXQgKi8KKwliYXRjaC5vZmZzZXQgPSAwOworCWViLnJzdmQxID0gY3R4X2I7CisJ
Z2VtX2V4ZWNidWYoaTkxNSwgJmViKTsKKwlpZ3RfYXNzZXJ0X2VxX3U2NChiYXRjaC5vZmZzZXQs
IDQ4IDw8IDIwKTsKKworCWdlbV9zeW5jKGk5MTUsIGJhdGNoLmhhbmRsZSk7CisJZ2VtX2Nsb3Nl
KGk5MTUsIGJhdGNoLmhhbmRsZSk7CisKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsgLyogZXZp
Y3QgdGhlIHZtYSAqLworfQorCitzdGF0aWMgdm9pZCBjbG9uZV92bShpbnQgaTkxNSkKK3sKKwlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gc2V0ID0geworCQkucGFyYW0gPSBJOTE1
X0NPTlRFWFRfUEFSQU1fVk0sCisJfTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3Jl
YXRlX2V4dF9jbG9uZSBleHQgPSB7CisJCXsgLm5hbWUgPSBJOTE1X0NPTlRFWFRfQ1JFQVRFX0VY
VF9DTE9ORSB9LAorCQkuZmxhZ3MgPSBJOTE1X0NPTlRFWFRfQ0xPTkVfVk0sCisJfTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dCBjcmVhdGUgPSB7CisJCS5mbGFncyA9
IEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxBR1NfVVNFX0VYVEVOU0lPTlMsCisJCS5leHRlbnNpb25z
ID0gdG9fdXNlcl9wb2ludGVyKCZleHQpLAorCX07CisJdWludDMyX3Qgdm1faWRbMl07CisKKwlp
Z3RfcmVxdWlyZShfX2dlbV9jb250ZXh0X3NldF9wYXJhbShpOTE1LCAmc2V0KSA9PSAtRU5PRU5U
KTsKKworCS8qIFNjcnViIHRoZSBWTSBmb3Igb3VyIHRlc3RzICovCisJaTkxNSA9IGdlbV9yZW9w
ZW5fZHJpdmVyKGk5MTUpOworCisJc2V0LmN0eF9pZCA9IGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1
KTsKKwlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnNldCk7CisJdm1faWRbMF0gPSBzZXQu
dmFsdWU7CisJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBzZXQuY3R4X2lkKTsKKworCXZtX2lk
WzFdID0gZ2VtX3ZtX2NyZWF0ZShpOTE1KTsKKworCWZvciAoaW50IHBhc3MgPSAwOyBwYXNzIDwg
MjsgcGFzcysrKSB7IC8qIGNsb25pbmcgZGVmYXVsdCwgdGhlbiBjaGlsZCAqLworCQlpZ3RfZGVi
dWcoIkNsb25pbmcgJWRcbiIsIGV4dC5jbG9uZV9pZCk7CisKKwkJaWd0X2Fzc2VydF9lcShjdHhf
Y3JlYXRlX2lvY3RsKGk5MTUsICZjcmVhdGUpLCAwKTsKKwkJY2hlY2tfc2FtZV92bShpOTE1LCBl
eHQuY2xvbmVfaWQsIGNyZWF0ZS5jdHhfaWQpOworCQlnZW1fY29udGV4dF9kZXN0cm95KGk5MTUs
IGNyZWF0ZS5jdHhfaWQpOworCisJCXNldC52YWx1ZSA9IHZtX2lkW3Bhc3NdOworCQlzZXQuY3R4
X2lkID0gZXh0LmNsb25lX2lkOworCQlnZW1fY29udGV4dF9zZXRfcGFyYW0oaTkxNSwgJnNldCk7
CisKKwkJaWd0X2Fzc2VydF9lcShjdHhfY3JlYXRlX2lvY3RsKGk5MTUsICZjcmVhdGUpLCAwKTsK
KwkJY2hlY2tfc2FtZV92bShpOTE1LCBleHQuY2xvbmVfaWQsIGNyZWF0ZS5jdHhfaWQpOworCQln
ZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIGNyZWF0ZS5jdHhfaWQpOworCisJCWV4dC5jbG9uZV9p
ZCA9IGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1KTsKKwl9CisKKwlnZW1fY29udGV4dF9kZXN0cm95
KGk5MTUsIGV4dC5jbG9uZV9pZCk7CisKKwlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUo
dm1faWQpOyBpKyspCisJCWdlbV92bV9kZXN0cm95KGk5MTUsIHZtX2lkW2ldKTsKKworCWNsb3Nl
KGk5MTUpOworfQorCitpZ3RfbWFpbgoreworCWludCBpOTE1ID0gLTE7CisKKwlpZ3RfZml4dHVy
ZSB7CisJCWk5MTUgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsKKwkJaWd0X3JlcXVp
cmVfZ2VtKGk5MTUpOworCQlnZW1fcmVxdWlyZV9jb250ZXh0cyhpOTE1KTsKKworCQlpZ3RfcmVx
dWlyZShoYXNfY3R4X2Nsb25lKGk5MTUpKTsKKwkJaWd0X2ZvcmtfaGFuZ19kZXRlY3RvcihpOTE1
KTsKKwl9CisKKwlpZ3Rfc3VidGVzdCgiaW52YWxpZCIpCisJCWludmFsaWRfY2xvbmUoaTkxNSk7
CisKKwlpZ3Rfc3VidGVzdCgiZW5naW5lcyIpCisJCWNsb25lX2VuZ2luZXMoaTkxNSk7CisKKwlp
Z3Rfc3VidGVzdCgiZmxhZ3MiKQorCQljbG9uZV9mbGFncyhpOTE1KTsKKworCWlndF9zdWJ0ZXN0
KCJzY2hlZHVsZXIiKQorCQljbG9uZV9zY2hlZHVsZXIoaTkxNSk7CisKKwlpZ3Rfc3VidGVzdCgi
dm0iKQorCQljbG9uZV92bShpOTE1KTsKKworCWlndF9maXh0dXJlIHsKKwkJaWd0X3N0b3BfaGFu
Z19kZXRlY3RvcigpOworCQljbG9zZShpOTE1KTsKKwl9Cit9CmRpZmYgLS1naXQgYS90ZXN0cy9t
ZXNvbi5idWlsZCBiL3Rlc3RzL21lc29uLmJ1aWxkCmluZGV4IGU3ZGJjNTc1Ni4uMzgxMGJkNzYw
IDEwMDY0NAotLS0gYS90ZXN0cy9tZXNvbi5idWlsZAorKysgYi90ZXN0cy9tZXNvbi5idWlsZApA
QCAtMTA5LDYgKzEwOSw3IEBAIGk5MTVfcHJvZ3MgPSBbCiAJJ2dlbV9jc19wcmVmZXRjaCcsCiAJ
J2dlbV9jc190bGInLAogCSdnZW1fY3R4X2JhZF9kZXN0cm95JywKKwknZ2VtX2N0eF9jbG9uZScs
CiAJJ2dlbV9jdHhfY3JlYXRlJywKIAknZ2VtX2N0eF9leGVjJywKIAknZ2VtX2N0eF9pc29sYXRp
b24nLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
