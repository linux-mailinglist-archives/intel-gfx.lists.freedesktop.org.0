Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6384DE8C6E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:10:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C68D6EC41;
	Tue, 29 Oct 2019 16:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DE406EC41;
 Tue, 29 Oct 2019 16:10:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E8F8A47E8;
 Tue, 29 Oct 2019 16:10:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 29 Oct 2019 16:10:02 -0000
Message-ID: <20191029161002.12910.38982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191028220325.9325-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191028220325.9325-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/blt=3A_fixup_block=5Fsize_rounding_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvYmx0OiBmaXh1cCBibG9ja19z
aXplIHJvdW5kaW5nIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjg2NzAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVn
IExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzIwNl9mdWxsIC0+IFBhdGNod29ya18xNTAzOV9m
dWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
ClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdl
cyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUwMzlfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUK
ICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5n
ZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBh
dGNod29ya18xNTAzOV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cg
dGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1
Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhh
dmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTAzOV9mdWxsOgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QHJ1bm5lckBh
Ym9ydGVkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMV0KICAg
WzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTAzOS9zaGFyZC1hcGwzL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAojIyMjIFN1cHByZXNz
ZWQgIyMjIwoKICBUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNo
aW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFs
bCByZXN1bHQuCgogICogaWd0QGdlbV9yZWdfcmVhZEB0aW1lc3RhbXAtbW9ub3RvbmljOgogICAg
LSB7c2hhcmQtdGdsYn06ICAgICAgIE5PVFJVTiAtPiBbRE1FU0ctV0FSTl1bMl0gKzIgc2ltaWxh
ciBpc3N1ZXMKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTAzOS9zaGFyZC10Z2xiNS9pZ3RAZ2VtX3JlZ19yZWFkQHRpbWVzdGFtcC1t
b25vdG9uaWMuaHRtbAoKICAqIGlndEBrbXNfYmlnX2ZiQHktdGlsZWQtMTZicHAtcm90YXRlLTA6
CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgW1BBU1NdWzNdIC0+IFtJTkNPTVBMRVRFXVs0XSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFyZC10Z2xiNy9pZ3RAa21zX2JpZ19mYkB5LXRpbGVkLTE2
YnBwLXJvdGF0ZS0wLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9zaGFyZC10Z2xiNy9pZ3RAa21zX2JpZ19mYkB5LXRp
bGVkLTE2YnBwLXJvdGF0ZS0wLmh0bWwKCiAgKiB7aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtZC1j
dXJzb3ItZHBtc306CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgTk9UUlVOIC0+IFtETUVTRy1G
QUlMXVs1XQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MDM5L3NoYXJkLXRnbGI4L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWQtY3Vy
c29yLWRwbXMuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0
aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUwMzlfZnVsbCB0aGF0IGNvbWUgZnJvbSBr
bm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoK
ICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMzOgogICAgLSBzaGFyZC1rYmw6ICAgICAg
ICAgIFtQQVNTXVs2XSAtPiBbRE1FU0ctV0FSTl1bN10gKFtmZG8jMTA4NTY2XSkgKzQgc2ltaWxh
ciBpc3N1ZXMKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MjA2L3NoYXJkLWtibDYvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQGJjczAtczMuaHRt
bAogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1MDM5L3NoYXJkLWtibDMvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQGJjczAtczMuaHRtbAoK
ICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLWRpcnR5LWNyZWF0ZToKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbUEFTU11bOF0gLT4gW1NLSVBdWzldIChbZmRvIzEwOTI3Nl0gLyBbZmRv
IzExMjA4MF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLWljbGIyL2lndEBnZW1fY3R4X2lz
b2xhdGlvbkB2Y3MxLWRpcnR5LWNyZWF0ZS5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQtaWNsYjYvaWd0QGdl
bV9jdHhfaXNvbGF0aW9uQHZjczEtZGlydHktY3JlYXRlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNf
YXN5bmNAY29uY3VycmVudC13cml0ZXMtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQ
QVNTXVsxMF0gLT4gW1NLSVBdWzExXSAoW2ZkbyMxMTIxNDZdKSArMyBzaW1pbGFyIGlzc3Vlcwog
ICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MjA2L3NoYXJkLWljbGI1L2lndEBnZW1fZXhlY19hc3luY0Bjb25jdXJyZW50LXdyaXRlcy1ic2Qu
aHRtbAogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTAzOS9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfYXN5bmNAY29uY3VycmVudC13
cml0ZXMtYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAdmNzMS1mZHM6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzEyXSAtPiBbU0tJUF1bMTNdIChbZmRvIzExMjA4
MF0pICsxNyBzaW1pbGFyIGlzc3VlcwogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19wYXJh
bGxlbEB2Y3MxLWZkcy5odG1sCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWljbGI2L2lndEBnZW1fZXhlY19wYXJh
bGxlbEB2Y3MxLWZkcy5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQt
aW50ZXJydXB0aWJsZS10aHJhc2hpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1Nd
WzE0XSAtPiBbRE1FU0ctV0FSTl1bMTVdIChbZmRvIzExMTYyNl0gLyBbZmRvIzExMTc4M10pCiAg
IFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcy
MDYvc2hhcmQtc2tsMy9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRp
YmxlLXRocmFzaGluZy5odG1sCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLXNrbDEwL2lndEBnZW1fcGVyc2lzdGVu
dF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtdGhyYXNoaW5nLmh0bWwKCiAgKiBpZ3RAZ2Vt
X3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5OgogICAgLSBz
aGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxNl0gLT4gW0RNRVNHLVdBUk5dWzE3XSAoW2ZkbyMx
MTE4NzBdKQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MjA2L3NoYXJkLWhzdzYvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1p
bnZhbGlkYXRlLW92ZXJsYXAtYnVzeS5odG1sCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWhzdzEvaWd0QGdlbV91
c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVzeS5odG1sCgogICog
aWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtY3ljbGVzOgogICAgLSBzaGFyZC1zbmI6
ICAgICAgICAgIFtQQVNTXVsxOF0gLT4gW0RNRVNHLVdBUk5dWzE5XSAoW2ZkbyMxMTE4NzBdKSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtc25iNy9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3lu
Yy11bm1hcC1jeWNsZXMuaHRtbAogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9zaGFyZC1zbmIxL2lndEBnZW1fdXNlcnB0cl9i
bGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICogaWd0QGk5MTVfcG1fcmM2X3Jlc2lkZW5j
eUByYzYtYWNjdXJhY3k6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzIwXSAtPiBb
U0tJUF1bMjFdIChbZmRvIzEwOTI3MV0pCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtc25iNS9pZ3RAaTkxNV9wbV9yYzZf
cmVzaWRlbmN5QHJjNi1hY2N1cmFjeS5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLXNuYjYvaWd0QGk5MTVf
cG1fcmM2X3Jlc2lkZW5jeUByYzYtYWNjdXJhY3kuaHRtbAoKICAqIGlndEBpOTE1X3N1c3BlbmRA
ZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRpbGVkOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQ
QVNTXVsyMl0gLT4gW0lOQ09NUExFVEVdWzIzXSAoW2ZkbyMxMDM2NjVdKQogICBbMjJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLWti
bDEvaWd0QGk5MTVfc3VzcGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAogICBb
MjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTAzOS9zaGFyZC1rYmwzL2lndEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRp
bGVkLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yYi12cy1mbGlwYi1hdG9t
aWMtdHJhbnNpdGlvbnM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzI0XSAtPiBb
SU5DT01QTEVURV1bMjVdIChbZmRvIzEwMzU0MF0pCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaHN3OC9pZ3RAa21zX2N1
cnNvcl9sZWdhY3lAY3Vyc29yYi12cy1mbGlwYi1hdG9taWMtdHJhbnNpdGlvbnMuaHRtbAogICBb
MjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTAzOS9zaGFyZC1oc3c1L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3JiLXZzLWZsaXBiLWF0
b21pYy10cmFuc2l0aW9ucy5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1p
bnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsyNl0gLT4gW0RN
RVNHLVdBUk5dWzI3XSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJk
LWFwbDIvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAg
WzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUwMzkvc2hhcmQtYXBsMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGli
bGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVu
LXByaS1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11b
MjhdIC0+IFtGQUlMXVsyOV0gKFtmZG8jMTAzMTY3XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzI4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9z
aGFyZC1pY2xiNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1w
cmktaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9zaGFyZC1pY2xiMS9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1yZW5kZXIu
aHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXNo
cmZiLXBsZmxpcC1ibHQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzMwXSAtPiBb
RkFJTF1bMzFdIChbZmRvIzEwMzE2N10pCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtc2tsMi9pZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1zaHJmYi1wbGZsaXAtYmx0Lmh0bWwKICAgWzMx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUw
Mzkvc2hhcmQtc2tsNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Ny
bi1zaHJmYi1wbGZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEt
dGlsaW5nLXk6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzMyXSAtPiBbRkFJTF1b
MzNdIChbZmRvIzEwMzE2Nl0pCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaWNsYjUvaWd0QGttc19wbGFuZV9sb3dyZXNA
cGlwZS1hLXRpbGluZy15Lmh0bWwKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQtaWNsYjEvaWd0QGttc19wbGFuZV9s
b3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlf
bW1hcF9jcHU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzM0XSAtPiBbU0tJUF1b
MzVdIChbZmRvIzEwOTQ0MV0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFszNF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaWNsYjIvaWd0
QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBfY3B1Lmh0bWwKICAgWzM1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQtaWNsYjYv
aWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBfY3B1Lmh0bWwKCiAgKiBpZ3RAcHJpbWVfYnVz
eUBoYW5nLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzM2XSAtPiBbU0tJ
UF1bMzddIChbZmRvIzEwOTI3Nl0pICsyMCBzaW1pbGFyIGlzc3VlcwogICBbMzZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLWljbGIx
L2lndEBwcmltZV9idXN5QGhhbmctYnNkMi5odG1sCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWljbGI2L2lndEBw
cmltZV9idXN5QGhhbmctYnNkMi5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAg
KiBpZ3RAZ2VtX2J1c3lAYnVzeS12Y3MxOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQ
XVszOF0gKFtmZG8jMTEyMDgwXSkgLT4gW1BBU1NdWzM5XSArMTUgc2ltaWxhciBpc3N1ZXMKICAg
WzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIw
Ni9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2J1c3lAYnVzeS12Y3MxLmh0bWwKICAgWzM5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQt
aWNsYjQvaWd0QGdlbV9idXN5QGJ1c3ktdmNzMS5odG1sCgogICogaWd0QGdlbV9jdHhfaXNvbGF0
aW9uQHZjczEtbm9uZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNDBdIChbZmRv
IzEwOTI3Nl0gLyBbZmRvIzExMjA4MF0pIC0+IFtQQVNTXVs0MV0gKzEgc2ltaWxhciBpc3N1ZQog
ICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MjA2L3NoYXJkLWljbGI2L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbmUuaHRtbAogICBb
NDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTAzOS9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1ub25lLmh0bWwKCiAg
KiBpZ3RAZ2VtX2N0eF9zd2l0Y2hAcXVldWUtbGlnaHQ6CiAgICAtIHtzaGFyZC10Z2xifTogICAg
ICAgW0lOQ09NUExFVEVdWzQyXSAoW2ZkbyMxMTE2NzJdKSAtPiBbUEFTU11bNDNdCiAgIFs0Ml06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hh
cmQtdGdsYjYvaWd0QGdlbV9jdHhfc3dpdGNoQHF1ZXVlLWxpZ2h0Lmh0bWwKICAgWzQzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hh
cmQtdGdsYjUvaWd0QGdlbV9jdHhfc3dpdGNoQHF1ZXVlLWxpZ2h0Lmh0bWwKCiAgKiBpZ3RAZ2Vt
X2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbU0tJUF1bNDRdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVs0NV0gKzE5IHNpbWlsYXIgaXNz
dWVzCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzcyMDYvc2hhcmQtaWNsYjUvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGluZGVwZW5kZW50LWJz
ZDIuaHRtbAogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTAzOS9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBl
bmRlbnQtYnNkMi5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXIt
Y2hhaW4tYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0Nl0gKFtmZG8jMTEy
MTQ2XSkgLT4gW1BBU1NdWzQ3XSArMTMgc2ltaWxhciBpc3N1ZXMKICAgWzQ2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFyZC1pY2xiMS9p
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2QuaHRtbAogICBbNDdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAz
OS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1i
c2QuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWNoYWluLWJz
ZDE6CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgW0lOQ09NUExFVEVdWzQ4XSAoW2ZkbyMxMTE2
MDZdIC8gW2ZkbyMxMTE2NzddKSAtPiBbUEFTU11bNDldCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtdGdsYjYvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtY2hhaW4tYnNkMS5odG1sCiAgIFs0OV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3No
YXJkLXRnbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWNoYWluLWJzZDEu
aHRtbAoKICAqIGlndEBnZW1fZmVuY2VfdGhyYXNoQGJvLXdyaXRlLXZlcmlmeS10aHJlYWRlZC1u
b25lOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs1MF0gKFtmZG8jMTA3
NzEzXSkgLT4gW1BBU1NdWzUxXQogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLWljbGI3L2lndEBnZW1fZmVuY2VfdGhyYXNo
QGJvLXdyaXRlLXZlcmlmeS10aHJlYWRlZC1ub25lLmh0bWwKICAgWzUxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQtaWNsYjQv
aWd0QGdlbV9mZW5jZV90aHJhc2hAYm8td3JpdGUtdmVyaWZ5LXRocmVhZGVkLW5vbmUuaHRtbAoK
ICAqIGlndEBnZW1fbGluZWFyX2JsaXRzQG5vcm1hbDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAg
ICBbSU5DT01QTEVURV1bNTJdIChbZmRvIzEwMzkyN10pIC0+IFtQQVNTXVs1M10KICAgWzUyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFy
ZC1hcGw4L2lndEBnZW1fbGluZWFyX2JsaXRzQG5vcm1hbC5odG1sCiAgIFs1M106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWFw
bDEvaWd0QGdlbV9saW5lYXJfYmxpdHNAbm9ybWFsLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3Rl
bnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFzaGluZzoKICAgIC0ge3NoYXJkLXRn
bGJ9OiAgICAgICBbRkFJTF1bNTRdIChbZmRvIzExMjAzN10pIC0+IFtQQVNTXVs1NV0KICAgWzU0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9z
aGFyZC10Z2xiNi9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxl
LXRocmFzaGluZy5odG1sCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLXRnbGIyL2lndEBnZW1fcGVyc2lzdGVudF9y
ZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtdGhyYXNoaW5nLmh0bWwKCiAgKiBpZ3RAZ2VtX3Vz
ZXJwdHJfYmxpdHNAZG1hYnVmLXN5bmM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0RNRVNH
LVdBUk5dWzU2XSAoW2ZkbyMxMTE4NzBdKSAtPiBbUEFTU11bNTddCiAgIFs1Nl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaHN3Mi9p
Z3RAZ2VtX3VzZXJwdHJfYmxpdHNAZG1hYnVmLXN5bmMuaHRtbAogICBbNTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9zaGFyZC1oc3c3
L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BkbWFidWYtc3luYy5odG1sCgogICogaWd0QGdlbV93b3Jr
YXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1mZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1F
U0ctV0FSTl1bNThdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs1OV0gKzMgc2ltaWxhciBpc3N1
ZXMKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzIwNi9zaGFyZC1rYmwyL2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtZmQu
aHRtbAogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTAzOS9zaGFyZC1rYmwyL2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1
bWUtZmQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBzaGFyZC1z
a2w6ICAgICAgICAgIFtUSU1FT1VUXVs2MF0gKFtmZG8jMTEyMTYyXSkgLT4gW1BBU1NdWzYxXQog
ICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MjA2L3NoYXJkLXNrbDgvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbNjFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9z
aGFyZC1za2wzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zs
aXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRkFJ
TF1bNjJdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs2M10KICAgWzYyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFyZC1nbGs2L2lndEBr
bXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKICAgWzYzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQtZ2xrMS9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCgogICogaWd0QGttc19mbGlw
QGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAg
IFtJTkNPTVBMRVRFXVs2NF0gKFtmZG8jMTAzNTQwXSkgLT4gW1BBU1NdWzY1XQogICBbNjRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJk
LWhzdzYvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAg
WzY1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUwMzkvc2hhcmQtaHN3MS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGli
bGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3Ju
LXByaS1pbmRmYi1kcmF3LW1tYXAtY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlM
XVs2Nl0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzY3XSArNSBzaW1pbGFyIGlzc3VlcwogICBb
NjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2
L3NoYXJkLWljbGI0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3Ju
LXByaS1pbmRmYi1kcmF3LW1tYXAtY3B1Lmh0bWwKICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMzkvc2hhcmQtaWNsYjMvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctbW1h
cC1jcHUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjU2NS1k
cmF3LXJlbmRlcjoKICAgIC0ge3NoYXJkLXRnbGJ9OiAgICAgICBbRkFJTF1bNjhdIChbZmRvIzEw
MzE2N10pIC0+IFtQQVNTXVs2OV0gKzEgc2ltaWxhciBpc3N1ZQogICBbNjhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLXRnbGI2L2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjU2NS1kcmF3LXJlbmRlci5odG1sCiAg
IFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1MDM5L3NoYXJkLXRnbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjU2
NS1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
c3VzcGVuZDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNzBdIChbZmRv
IzEwODU2Nl0pIC0+IFtQQVNTXVs3MV0gKzQgc2ltaWxhciBpc3N1ZXMKICAgWzcwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFyZC1hcGw0
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICBbNzFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9z
aGFyZC1hcGw3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAoK
ICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXNwci1pbmRm
Yi1vbm9mZjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNzJdIChbZmRvIzEwMzE2
N10pIC0+IFtQQVNTXVs3M10KICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFyZC1za2w2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1vbm9mZi5odG1sCiAgIFs3M106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJk
LXNrbDEwL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXNwci1p
bmRmYi1vbm9mZi5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292
ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNzRdIChbZmRvIzEw
ODE0NV0gLyBbZmRvIzExMDQwM10pIC0+IFtQQVNTXVs3NV0KICAgWzc0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFyZC1za2wxL2lndEBr
bXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbNzVdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAzOS9z
aGFyZC1za2w3L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMu
aHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfYmFzaWM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW1NLSVBdWzc2XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNzddCiAgIFs3Nl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaWNs
YjcvaWd0QGttc19wc3JAcHNyMl9iYXNpYy5odG1sCiAgIFs3N106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWljbGIyL2lndEBr
bXNfcHNyQHBzcjJfYmFzaWMuaHRtbAoKICAqIHtpZ3RAcGVyZl9wbXVAc2VtYXBob3JlLWJ1c3kt
dmVjczB9OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtETUVTRy1XQVJOXVs3OF0gKFtmZG8j
MTExNjI2XSkgLT4gW1BBU1NdWzc5XQogICBbNzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjA2L3NoYXJkLXNrbDEwL2lndEBwZXJmX3BtdUBzZW1h
cGhvcmUtYnVzeS12ZWNzMC5odG1sCiAgIFs3OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLXNrbDYvaWd0QHBlcmZfcG11QHNl
bWFwaG9yZS1idXN5LXZlY3MwLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBn
ZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W0ZBSUxdWzgwXSAoW2ZkbyMxMTEzMjldKSAtPiBbU0tJUF1bODFdIChbZmRvIzEwOTI3Nl0gLyBb
ZmRvIzExMjA4MF0pCiAgIFs4MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaWNsYjEvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEt
bm9ucHJpdi5odG1sCiAgIFs4MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWljbGI2L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2
Y3MxLW5vbnByaXYuaHRtbAoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJlc2V0LWJz
ZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzgyXSAoW2ZkbyMxMTEzMzBdKSAt
PiBbU0tJUF1bODNdIChbZmRvIzEwOTI3Nl0pCiAgIFs4Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMDYvc2hhcmQtaWNsYjIvaWd0QGdlbV9tb2Nz
X3NldHRpbmdzQG1vY3MtcmVzZXQtYnNkMi5odG1sCiAgIFs4M106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJkLWljbGI3L2lndEBn
ZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJlc2V0LWJzZDIuaHRtbAoKICAqIGlndEBrbXNfY29udGVu
dF9wcm90ZWN0aW9uQHNybToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbSU5DT01QTEVURV1b
ODRdIChbZmRvIzEwMzkyN10pIC0+IFtGQUlMXVs4NV0gKFtmZG8jMTEwMzIxXSkKICAgWzg0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIwNi9zaGFy
ZC1hcGwzL2lndEBrbXNfY29udGVudF9wcm90ZWN0aW9uQHNybS5odG1sCiAgIFs4NV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDM5L3NoYXJk
LWFwbDcvaWd0QGttc19jb250ZW50X3Byb3RlY3Rpb25Ac3JtLmh0bWwKCiAgKiBpZ3RAa21zX2Rw
X2RzY0BiYXNpYy1kc2MtZW5hYmxlLWVkcDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRE1F
U0ctV0FSTl1bODZdIChbZmRvIzEwNzcyNF0pIC0+IFtTS0lQXVs4N10gKFtmZG8jMTA5MzQ5XSkK
ICAgWzg2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzIwNi9zaGFyZC1pY2xiMi9pZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2MtZW5hYmxlLWVkcC5odG1s
CiAgIFs4N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1MDM5L3NoYXJkLWljbGI3L2lndEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRw
Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFu
cyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRo
ZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDMx
NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjYK
ICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMzE2NwogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDM2NjVdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM2NjUKICBbZmRvIzEwMzkyN106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtmZG8jMTA1MzYz
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAg
W2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDc3MTMKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwOTI3MV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtm
ZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA5Mjc2CiAgW2ZkbyMxMDkzNDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDkzNDkKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTEwMzIxXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMzIxCiAgW2ZkbyMxMTA0MDNdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA0MDMKICBbZmRv
IzExMTMyOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTMyOQogIFtmZG8jMTExMzMwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExMzMwCiAgW2ZkbyMxMTE2MDZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2MDYKICBbZmRvIzExMTYyNl06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTYyNgogIFtmZG8jMTExNjcyXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjcyCiAgW2ZkbyMx
MTE2NzddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2
NzcKICBbZmRvIzExMTc4M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTc4MwogIFtmZG8jMTExODMxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTExODMxCiAgW2ZkbyMxMTE4NzBdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4NzAKICBbZmRvIzExMTk5OF06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTk5OAogIFtmZG8jMTEy
MDM3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDM3
CiAgW2ZkbyMxMTIwODBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTIwODAKICBbZmRvIzExMjE0Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMjE0NgogIFtmZG8jMTEyMTYyXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTYyCgoKUGFydGljaXBhdGluZyBob3N0cyAo
MTEgLT4gMTEpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFuZ2VzIGlu
IHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBD
STogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83MjA2IC0+IFBhdGNod29y
a18xNTAzOQoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzIwNjogMTk3ZmY0YzI0
YzY3NjJhYzViYmQ4YzUzNjRkNmY4NDBmYjk5MjljNSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MjQ4OiA4MWU1NWYxZjk3ZDczZTQ4ZjAwY2FhN2U0
ZmI5ODI5NTAyM2M1YWZhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAv
aW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE1MDM5OiA0ZmM0MTM1NmU1YjNhNGNkODU1N2U2
ODA5N2NiNGFmYzI2NGVhYTU5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNp
L2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzkKCj09IExvZ3MgPT0K
CkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTAzOS9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
