Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8CA2C4CC0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 02:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0856E4BB;
	Thu, 26 Nov 2020 01:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4536E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 01:45:04 +0000 (UTC)
IronPort-SDR: vyDYfTAlHFyY/U2fndE6tl47T2pgoQO0iW9zBv7oMBmlpgN40tqeFg4P1P2quoCuMueX1ZyPHB
 g0h1xv9og1HQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="169663952"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="169663952"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 17:45:04 -0800
IronPort-SDR: zJhsZISN6zolVB+cjXsvSs3la757HJkgnz0WqsJXQMDiYcEiSB4G7giyU+C8ptErAFYJjMk15Q
 H6xKhhySqVSA==
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="479162524"
Received: from xingzhen-mobl.ccr.corp.intel.com (HELO [10.238.4.68])
 ([10.238.4.68])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 17:44:57 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Oliver Sang <oliver.sang@intel.com>
References: <20201111155811.GB24657@xsang-OptiPlex-9020>
 <160527763346.5566.3471508802857132043@jlahtine-mobl.ger.corp.intel.com>
 <20201119072018.GA15197@xsang-OptiPlex-9020>
 <160625087275.29168.7080737993781611765@build.alporthouse.com>
From: Xing Zhengjun <zhengjun.xing@linux.intel.com>
Message-ID: <ab9ebc5a-7d79-8003-c7bc-5cf0923983c6@linux.intel.com>
Date: Thu, 26 Nov 2020 09:44:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <160625087275.29168.7080737993781611765@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [drm/i915/gem] 59dd13ad31:
 phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second
 -54.0% regression
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
Cc: feng.tang@intel.com, tiejun.li@intel.com, guangli.li@intel.com,
 frank.du@intel.com, guobing.chen@intel.com, jiebin.sun@intel.com,
 Shuhua.Fan@intel.com, Matthew Auld <matthew.auld@intel.com>,
 fan.zhao@intel.com, ying.huang@intel.com, shan.kang@intel.com,
 zhengjun.xing@intel.com, Wenhuan.Huang@intel.com,
 intel-gfx@lists.freedesktop.org, lkp@lists.01.org, ming.a.chen@intel.com,
 yu.ma@intel.com, jessica.ji@intel.com, dapeng1.mi@intel.com,
 wangyang.guo@intel.com, LKML <linux-kernel@vger.kernel.org>,
 gengxin.xie@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMS8yNS8yMDIwIDQ6NDcgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIE9s
aXZlciBTYW5nICgyMDIwLTExLTE5IDA3OjIwOjE4KQo+PiBPbiBGcmksIE5vdiAxMywgMjAyMCBh
dCAwNDoyNzoxM1BNICswMjAwLCBKb29uYXMgTGFodGluZW4gd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+
PiBDb3VsZCB5b3UgYWRkIGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcgaW50byByZXBv
cnRzIGdvaW5nCj4+PiBmb3J3YXJkLgo+Pj4KPj4+IFF1b3Rpbmcga2VybmVsIHRlc3Qgcm9ib3Qg
KDIwMjAtMTEtMTEgMTc6NTg6MTEpCj4+Pj4KPj4+PiBHcmVldGluZywKPj4+Pgo+Pj4+IEZZSSwg
d2Ugbm90aWNlZCBhIC01NC4wJSByZWdyZXNzaW9uIG9mIHBob3Jvbml4LXRlc3Qtc3VpdGUuanhy
ZW5kZXJtYXJrLlJhZGlhbEdyYWRpZW50UGFpbnQuMTAyNHgxMDI0Lm9wZXJhdGlvbnNfcGVyX3Nl
Y29uZCBkdWUgdG8gY29tbWl0Ogo+Pj4KPj4+IEhvdyBtYW55IHJ1bnMgYXJlIHRoZXJlIG9uIHRo
ZSBiYWQgdmVyc2lvbiB0byBlbnN1cmUgdGhlIGJpc2VjdCBpcwo+Pj4gcmVwZWF0YWJsZT8KPj4K
Pj4gdGVzdCA0IHRpbWVzLgo+PiB6eGluZ0Bpbm46L3Jlc3VsdC9waG9yb25peC10ZXN0LXN1aXRl
L3BlcmZvcm1hbmNlLXRydWUtUmFkaWFsX0dyYWRpZW50X1BhaW50LTEwMjR4MTAyNC1qeHJlbmRl
cm1hcmstMS4yLjQtdWNvZGU9MHhkNi1tb25pdG9yPWRhMzlhM2VlL2xrcC1jZmwtZDEvZGViaWFu
LXg4Nl82NC1waG9yb25peC94ODZfNjQtcmhlbC04LjMvZ2NjLTkvNTlkZDEzYWQzMTA3OTM3NTdl
MzRhZmE0ODlkZDZmYzg1NDRmYzNkYSQgZ3JlcCAtciAib3BlcmF0aW9uc19wZXJfc2Vjb25kIiAq
L3N0YXRzLmpzb24KPj4gMC9zdGF0cy5qc29uOiAicGhvcm9uaXgtdGVzdC1zdWl0ZS5qeHJlbmRl
cm1hcmsuUmFkaWFsR3JhZGllbnRQYWludC4xMDI0eDEwMjQub3BlcmF0aW9uc19wZXJfc2Vjb25k
IjogNDEzMy40ODc5MzIsCj4+IDEvc3RhdHMuanNvbjogInBob3Jvbml4LXRlc3Qtc3VpdGUuanhy
ZW5kZXJtYXJrLlJhZGlhbEdyYWRpZW50UGFpbnQuMTAyNHgxMDI0Lm9wZXJhdGlvbnNfcGVyX3Nl
Y29uZCI6IDQxMjAuNDIxNTAzLAo+PiAyL3N0YXRzLmpzb246ICJwaG9yb25peC10ZXN0LXN1aXRl
Lmp4cmVuZGVybWFyay5SYWRpYWxHcmFkaWVudFBhaW50LjEwMjR4MTAyNC5vcGVyYXRpb25zX3Bl
cl9zZWNvbmQiOiA0MTg4LjQxNDgzNSwKPj4gMy9zdGF0cy5qc29uOiAicGhvcm9uaXgtdGVzdC1z
dWl0ZS5qeHJlbmRlcm1hcmsuUmFkaWFsR3JhZGllbnRQYWludC4xMDI0eDEwMjQub3BlcmF0aW9u
c19wZXJfc2Vjb25kIjogNDA2OC41NDk1MTQsCj4gCj4gYSB3L28gcmV2ZXJ0IChkcm0tdGlwKQo+
IGIgdy8gcmV2ZXJ0Cj4gK21CLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPiB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAuLmIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfAo+IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC4uYi5hYSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLi4uLmEuYSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKPiB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuLi4uYS5hICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IHwgICAgICAgICAgICAgICAgICAgICAgYiAg
YiAgLi4uLi4uLi5hICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4g
fCAgICAgICAgICAgICAgICAgICBiICBiICBiIGIuLi4uLi4uLi4gYSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKPiB8ICAgICAgICAgICAgICAgICAgIGIgIGJiIGJiYi4u
Li4uLi4uLi4uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IHxiICAg
ICAgICAgICAgICAgYWIgYmJhYi5iYi5iLi4uLi4uLi4uLi4uYmEgYiBhIGEgICAgICAgICAgICBh
YiAgICAgICAgICAgICAgIGF8Cj4gfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfF9fQV9f
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8TUFffCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfAo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gICAgICBOICAgICAgICAg
ICAgICAgIE1pbiAgICAgICAgICAgTWF4ICAgICAgICBNZWRpYW4gICAgICAgICAgIEF2ZyAgICAg
ICAgU3RkZGV2Cj4gYSAxMjAgICAgICAgICAgMzYyMS44NzYxICAgICA3MzU2LjQ0NDIgICAgIDQ2
MDYuNzg5NSAgICAgNDYwNy45MTMyICAgICAxNTYuMTc2OTMKPiBiIDEyMCAgICAgICAgICAyNjY0
LjA1NjMgICAgIDYzNTkuOTY4NiAgICAgNDUxOS41MDM2ICAgICA0NTM0LjQ0NjMgICAgIDk1LjQ3
MTEyMQo+IAo+IFRoZSBwYXRjaCBpcyBub3QgZXhwZWN0ZWQgdG8gaGF2ZSBhbnkgaW1wYWN0IG9u
IHRoZSBtYWNoaW5lIHlvdSBhcmUgdGVzdGluZyBvbi4KPiAtQ2hyaXMKPiAKCldoYXQncyB5b3Vy
IGNvZGUgYmFzZT8KRm9yIG15IHNpZGU6CjEpIHN5bmMgdGhlIGNvZGUgdG8gdGhlIGhlYWQgb2Yg
TGludXggbWFpbmxpbmUKMikgZ2l0IHJlc2V0IC0taGFyZCA1OWRkMTNhZDMxCjMpIGdpdCByZXZl
cnQgNTlkZDEzYWQzMTA3CldlIGNvbXBhcmUgdGhlIHRlc3QgcmVzdWx0IG9mIGNvbW1pdCA1OWRk
MTNhZDMxMDcgKHN0ZXAgMikgYW5kIAoyMDUyODQ3YjA2ZjggKHN0ZXAgMywgcmV2ZXJ0IDU5ZGQx
M2FkMzEwNyksIHRoZSByZWdyZXNzaW9uIHNob3VsZCAKcmVsYXRlZCB3aXRoIDU5ZGQxM2FkMzEw
Ny4gRWFjaCB0ZXN0IGNhc2Ugd2UgcnVuIDUgdGltZXMuCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09CnRib3hfZ3JvdXAvdGVzdGNhc2Uvcm9vdGZzL2tjb25maWcvY29tcGlsZXIvbmVl
ZF94L3Rlc3Qvb3B0aW9uX2Evb3B0aW9uX2IvY3B1ZnJlcV9nb3Zlcm5vci91Y29kZS9kZWJ1Zy1z
ZXR1cDoKIApsa3AtY2ZsLWQxL3Bob3Jvbml4LXRlc3Qtc3VpdGUvZGViaWFuLXg4Nl82NC1waG9y
b25peC94ODZfNjQtcmhlbC04LjMvZ2NjLTkvdHJ1ZS9qeHJlbmRlcm1hcmstMS4yLjQvUmFkaWFs
IApHcmFkaWVudCBQYWludC8xMDI0eDEwMjQvcGVyZm9ybWFuY2UvMHhkZS9yZWdyZXNzaW9uX3Rl
c3QKCmNvbW1pdDoKICAgMGRjY2RiYTUxZTg1MjI3MWEzZGJjOTM1ODM3NWY0Yzg4MmI4NjNmMgog
ICA1OWRkMTNhZDMxMDc5Mzc1N2UzNGFmYTQ4OWRkNmZjODU0NGZjM2RhCiAgIDIwNTI4NDdiMDZm
ODYzYTAyOGY3ZjNiYmM2MjQwMWUwNDNiMzQzMDEgKHJldmVydCA1OWRkMTNhZDMxMDcpCgowZGNj
ZGJhNTFlODUyMjcxIDU5ZGQxM2FkMzEwNzkzNzU3ZTM0YWZhNDg5ZCAyMDUyODQ3YjA2Zjg2M2Ew
MjhmN2YzYmJjNjIKLS0tLS0tLS0tLS0tLS0tLSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0g
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgICAgICAlc3RkZGV2ICAgICAlY2hhbmdl
ICAgICAgICAgJXN0ZGRldiAgICAgJWNoYW5nZSAgICAgICAgICVzdGRkZXYKICAgICAgICAgICAg
ICBcICAgICAgICAgIHwgICAgICAgICAgICAgICAgXCAgICAgICAgICB8ICAgICAgICAgICAgICAg
IFwKICAgICAgIDgxNDUgwrEgIDIlICAgICAtNTMuMSUgICAgICAgMzgxNyDCsSAgMyUgICAgICAt
MS44JSAgICAgICA3OTk1IAogCnBob3Jvbml4LXRlc3Qtc3VpdGUuanhyZW5kZXJtYXJrLlJhZGlh
bEdyYWRpZW50UGFpbnQuMTAyNHgxMDI0Lm9wZXJhdGlvbnNfcGVyX3NlY29uZAoKCi0tIApaaGVu
Z2p1biBYaW5nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
