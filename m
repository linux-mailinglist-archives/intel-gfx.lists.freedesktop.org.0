Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D1537149E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 13:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D626E0A2;
	Mon,  3 May 2021 11:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732CB6E0A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 11:57:42 +0000 (UTC)
IronPort-SDR: b93ELaDlWzTuCB6qsR/FPzOgda38l2fLM/NqOfRHdFyBeKVm1peIP6m4ZHfX4FMbNVBMYZZUYy
 O266QDmcIAPg==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="259010266"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="259010266"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 04:57:40 -0700
IronPort-SDR: FP41YiZt1cUEUOZ6BB/q4uju14ZbnsGKqF+c5w2on/PdMHSWzoCkIM4excl37EW/CzFIETUBD+
 qnPebj8inHpQ==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="428262290"
Received: from apurvain-mobl.gar.corp.intel.com (HELO [10.249.254.105])
 ([10.249.254.105])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 04:57:39 -0700
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c3625793-7271-58e9-f9a7-94862eccef20@linux.intel.com>
Date: Mon, 3 May 2021 13:57:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-gfx] Lockdep splat on drm-tip
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIE1hYXJ0ZW4sCgpJIHNhdyB0aGlzIHRoZSBvdGhlciBkYXkgd2hpbGUgd29ya2luZyBvbiB0
aGUgVFRNIGNvbnZlcnNpb246Cgo1OTI1LjUwOTc2NV0gQlVHOiBzbGVlcGluZyBmdW5jdGlvbiBj
YWxsZWQgZnJvbSBpbnZhbGlkIGNvbnRleHQgYXQgCmtlcm5lbC9sb2NraW5nL211dGV4LmM6OTI4
ClsgNTkyNS41MDk3NjldIGluX2F0b21pYygpOiAxLCBpcnFzX2Rpc2FibGVkKCk6IDEsIG5vbl9i
bG9jazogMCwgcGlkOiAKMjE2MDgsIG5hbWU6IGt3b3JrZXIvMjoxClsgNTkyNS41MDk3NzJdIElO
Rk86IGxvY2tkZXAgaXMgdHVybmVkIG9mZi4KWyA1OTI1LjUwOTc3NV0gaXJxIGV2ZW50IHN0YW1w
OiAwClsgNTkyNS41MDk3NzddIGhhcmRpcnFzIGxhc3TCoCBlbmFibGVkIGF0ICgwKTogWzwwMDAw
MDAwMDAwMDAwMDAwPl0gMHgwClsgNTkyNS41MDk3ODFdIGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQg
YXQgKDApOiBbPGZmZmZmZmZmODEwNzNhYTA+XSAKY29weV9wcm9jZXNzKzB4ODUwLzB4MWM3MApb
IDU5MjUuNTA5Nzg2XSBzb2Z0aXJxcyBsYXN0wqAgZW5hYmxlZCBhdCAoMCk6IFs8ZmZmZmZmZmY4
MTA3M2FhMD5dIApjb3B5X3Byb2Nlc3MrMHg4NTAvMHgxYzcwClsgNTkyNS41MDk3ODldIHNvZnRp
cnFzIGxhc3QgZGlzYWJsZWQgYXQgKDApOiBbPDAwMDAwMDAwMDAwMDAwMDA+XSAweDAKWyA1OTI1
LjUwOTc5Ml0gUHJlZW1wdGlvbiBkaXNhYmxlZCBhdDoKWyA1OTI1LjUwOTc5M10gWzxmZmZmZmZm
ZjgxMDdlMmUzPl0gaXJxX2VudGVyX3JjdSsweDEzLzB4NzAKWyA1OTI1LjUwOTc5OF0gQ1BVOiAy
IFBJRDogMjE2MDggQ29tbToga3dvcmtlci8yOjEgVGFpbnRlZDogRyBVwqAgClfCoMKgwqDCoMKg
wqDCoMKgIDUuMTIuMC1yYzctZG1hcmVzdi10aGVsbHN0cisgIzMKWyA1OTI1LjUwOTgwM10gSGFy
ZHdhcmUgbmFtZTogR2lnYWJ5dGUgVGVjaG5vbG9neSBDby4sIEx0ZC4gR0ItWjM5MCAKR2FydWRh
L0dCLVozOTAgR2FydWRhLUNGLCBCSU9TIElHMWMgMTEvMTkvMjAxOQpbIDU5MjUuNTA5ODA3XSBX
b3JrcXVldWU6IGV2ZW50cyBlbmdpbmVfcmV0aXJlIFtpOTE1XQpbIDU5MjUuNTA5ODc0XSBDYWxs
IFRyYWNlOgpbIDU5MjUuNTA5ODc2XcKgIDxJUlE+ClsgNTkyNS41MDk4NzhdwqAgZHVtcF9zdGFj
aysweDc2LzB4OTUKWyA1OTI1LjUwOTg4Ml3CoCBfX19taWdodF9zbGVlcC5jb2xkKzB4ZjIvMHgx
MDMKWyA1OTI1LjUwOTg4N13CoCBfX21pZ2h0X3NsZWVwKzB4NGIvMHg4MApbIDU5MjUuNTA5ODkw
XcKgIF9fbXV0ZXhfbG9jaysweDViLzB4OWIwClsgNTkyNS41MDk4OTNdwqAgPyBsb2NrX3JlbGVh
c2UrMHgxZWMvMHgyYjAKWyA1OTI1LjUwOTg5N13CoCA/IGRlYnVnX29iamVjdF9kZWFjdGl2YXRl
KzB4MTM3LzB4MTYwClsgNTkyNS41MDk5MDJdwqAgPyBpbnRlbF9jb250ZXh0X3Bvc3RfdW5waW4r
MHhiMi8weDE4YyBbaTkxNV0KWyA1OTI1LjUwOTk2MF3CoCA/IHdha2VfdXBfdmFyKzB4MzcvMHg0
MApbIDU5MjUuNTA5OTY0XcKgID8gX19hY3RpdmVfcmV0aXJlKzB4MTJmLzB4MjEwIFtpOTE1XQpb
IDU5MjUuNTEwMDM0XcKgIG11dGV4X2xvY2tfbmVzdGVkKzB4MWIvMHgyMApbIDU5MjUuNTEwMDM3
XcKgID8gaTkxNV9hY3RpdmVfcmVsZWFzZSsweDIyLzB4MzAgW2k5MTVdClsgNTkyNS41MTAxMDVd
wqAgPyBtdXRleF9sb2NrX25lc3RlZCsweDFiLzB4MjAKWyA1OTI1LjUxMDEwOF3CoCBpbnRlbF9j
b250ZXh0X3Bvc3RfdW5waW4rMHhiMi8weDE4YyBbaTkxNV0KWyA1OTI1LjUxMDE2Nl3CoCBfX2lu
dGVsX2NvbnRleHRfcmV0aXJlKzB4MjYvMHg3NCBbaTkxNV0KWyA1OTI1LjUxMDIyM13CoCBfX2Fj
dGl2ZV9yZXRpcmUrMHgxMWUvMHgyMTAgW2k5MTVdClsgNTkyNS41MTAyOTFdwqAgYWN0aXZlX3Jl
dGlyZSsweDJlLzB4NTAgW2k5MTVdClsgNTkyNS41MTAzNTddwqAgbm9kZV9yZXRpcmUrMHgyMy8w
eDMwIFtpOTE1XQpbIDU5MjUuNTEwNDIzXcKgIHNpZ25hbF9pcnFfd29yaysweDMxOC8weDZkMCBb
aTkxNV0KWyA1OTI1LjUxMDQ4MV3CoCBpcnFfd29ya19zaW5nbGUrMHg0MC8weDcwClsgNTkyNS41
MTA0ODVdwqAgaXJxX3dvcmtfcnVuX2xpc3QrMHgyYS8weDQwClsgNTkyNS41MTA0ODhdwqAgaXJx
X3dvcmtfcnVuKzB4MmEvMHg1MApbIDU5MjUuNTEwNDkxXcKgIF9fc3lzdmVjX2lycV93b3JrKzB4
NDEvMHgxYjAKWyA1OTI1LjUxMDQ5NF3CoCBzeXN2ZWNfaXJxX3dvcmsrMHg5My8weGIwClsgNTky
NS41MTA0OTddwqAgPC9JUlE+ClsgNTkyNS41MTA0OTldwqAgYXNtX3N5c3ZlY19pcnFfd29yaysw
eDEyLzB4MjAKWyA1OTI1LjUxMDUwMl0gUklQOiAwMDEwOm1lbWNocl9pbnYrMHg0NC8weGQwClsg
NTkyNS41MTA1MDZdIENvZGU6IDAwIDAwIDQwIDBmIGI2IGNlIDgzIGU4IDAxIDQ5IGI4IDAxIDAx
IDAxIDAxIDAxIDAxIAowMSAwMSA0OSAwZiBhZiBjOCA0OCA4ZCA0NCBjNyAwOCBlYiAwOSA0OCA4
MyBjNyAwOCA0OCAzOSBjNyA3NCA2NCA0OCAzCjkgMGYgPDc0PiBmMiA0OCA4ZCA0NyAwOCA0MCAz
YSAzNyA3NSA3YSA0OCA4MyBjNyAwMSA0OCAzOSBmOCA3NSBmMiAzMSBjMApbIDU5MjUuNTEwNTEz
XSBSU1A6IDAwMTg6ZmZmZmM5MDAwODcwZmQ2OCBFRkxBR1M6IDAwMDAwMjQ2ClsgNTkyNS41MTA1
MTZdIFJBWDogZmZmZmM5MDAwMGJiNzAwMCBSQlg6IGZmZmY4ODgxMWYxNWUwMDAgUkNYOiAKNWE1
YTVhNWE1YTVhNWE1YQpbIDU5MjUuNTEwNTE5XSBSRFg6IDAwMDAwMDAwMDAwMDEwMDAgUlNJOiAw
MDAwMDAwMDAwMDAwMDVhIFJESTogCmZmZmZjOTAwMDBiYjYxYzAKWyA1OTI1LjUxMDUyMl0gUkJQ
OiBmZmZmYzkwMDA4NzBmZDc4IFIwODogMDEwMTAxMDEwMTAxMDEwMSBSMDk6IAowMDAwMDAwMDAw
MDAwMDAwClsgNTkyNS41MTA1MjVdIFIxMDogZmZmZjg4ODEwNWIxNWFlYyBSMTE6IDAwMDAwMDAw
MDAwMDAwMTggUjEyOiAKZmZmZjg4ODEwOTgwY2QwMApbIDU5MjUuNTEwNTI4XSBSMTM6IGZmZmY4
ODgxMWYxNWUwNzggUjE0OiBmZmZmODg4MTFmMTVlMDAwIFIxNTogCmZmZmY4ODgxMWYxNWUwMDAK
WyA1OTI1LjUxMDUzNF3CoCA/IGxyY191bnBpbisweDJmLzB4NTAgW2k5MTVdClsgNTkyNS41MTA1
OTVdwqAgaW50ZWxfY29udGV4dF91bnBpbisweDIzLzB4YzAgW2k5MTVdClsgNTkyNS41MTA2NTJd
wqAgaTkxNV9yZXF1ZXN0X3JldGlyZSsweDIxYi8weDQ1MCBbaTkxNV0KWyA1OTI1LjUxMDcyMl3C
oCByZXRpcmVfcmVxdWVzdHMrMHg1Yi8weDgwIFtpOTE1XQpbIDU5MjUuNTEwNzgyXcKgIGVuZ2lu
ZV9yZXRpcmUrMHg2OC8weGEwIFtpOTE1XQpbIDU5MjUuNTEwODQxXcKgIHByb2Nlc3Nfb25lX3dv
cmsrMHgyMzIvMHg1ODAKWyA1OTI1LjUxMDg0NV3CoCB3b3JrZXJfdGhyZWFkKzB4NTAvMHgzYjAK
WyA1OTI1LjUxMDg0OV3CoCA/IHByb2Nlc3Nfb25lX3dvcmsrMHg1ODAvMHg1ODAKWyA1OTI1LjUx
MDg1Ml3CoCBrdGhyZWFkKzB4MTQzLzB4MTgwClsgNTkyNS41MTA4NTRdwqAgPyBrdGhyZWFkX3Bh
cmsrMHg5MC8weDkwClsgNTkyNS41MTA4NTddwqAgcmV0X2Zyb21fZm9yaysweDFmLzB4MzAKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
